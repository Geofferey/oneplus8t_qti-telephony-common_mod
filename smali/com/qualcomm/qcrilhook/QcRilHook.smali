.class public Lcom/qualcomm/qcrilhook/QcRilHook;
.super Ljava/lang/Object;
.source "QcRilHook.java"

# interfaces
.implements Lcom/qualcomm/qcrilhook/IQcRilHook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;,
        Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;,
        Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;
    }
.end annotation


# static fields
.field public static final ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW:Ljava/lang/String; = "com.qualcomm.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

.field private static final AVOIDANCE_BUFF_LEN:I = 0xa4

.field private static final BYTE_SIZE:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_PHONE:I = 0x0

.field public static final GET_REQUEST_SIMLOCK_NONCE:I = 0xa8

.field private static final INT_SIZE:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "QC_RIL_OEM_HOOK"

.field private static final MAX_PDC_ID_LEN:I = 0x7c

.field private static final MAX_REQUEST_BUFFER_SIZE:I = 0x400

.field private static final MAX_SPC_LEN:I = 0x6

.field public static final QCRIL_MSG_TUNNEL_PACKAGE_NAME:Ljava/lang/String; = "com.qualcomm.qcrilmsgtunnel"

.field public static final QCRIL_MSG_TUNNEL_SERVICE_NAME:Ljava/lang/String; = "com.qualcomm.qcrilmsgtunnel.QcrilMsgTunnelService"

.field private static final RESPONSE_BUFFER_SIZE:I = 0x800

.field public static final SET_REQUEST_SIMLOCK_RSSB:I = 0xa9

.field private static final VDBG:Z

.field private static mOnServiceConnectedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private static mPeriscopeSerivceData:[I

.field private static mRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;


# instance fields
.field private final ENCODING:Ljava/lang/String;

.field private mBound:Z

.field private mContext:Landroid/content/Context;

.field private mCr:Landroid/content/ContentResolver;

.field private final mHeaderSize:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mOemIdentifier:Ljava/lang/String;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

.field private mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

.field private mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mPeriscopeSerivceData:[I

    .line 2006
    new-instance v0, Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-direct {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;-><init>()V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mOnServiceConnectedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, "QOEMHOOK"

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mOemIdentifier:Ljava/lang/String;

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    .line 96
    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 98
    const-string v1, "ISO-8859-1"

    iput-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->ENCODING:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mCr:Landroid/content/ContentResolver;

    .line 188
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qcrilhook/QcRilHook$1;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1886
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$6;

    invoke-direct {v0, p0}, Lcom/qualcomm/qcrilhook/QcRilHook$6;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    .line 122
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 124
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    const-string v1, "QC_RIL_OEM_HOOK"

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-direct {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;-><init>()V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    goto :goto_0

    .line 129
    :cond_0
    const-string v0, " registrant created "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_1

    .line 133
    const-string v0, "QcRilOemHook Service Failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 135
    :cond_1
    const-string v0, "QcRilOemHook Service Created Successfully"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, "QOEMHOOK"

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mOemIdentifier:Ljava/lang/String;

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    .line 96
    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 98
    const-string v1, "ISO-8859-1"

    iput-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->ENCODING:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mCr:Landroid/content/ContentResolver;

    .line 188
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qcrilhook/QcRilHook$1;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1886
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$6;

    invoke-direct {v0, p0}, Lcom/qualcomm/qcrilhook/QcRilHook$6;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    .line 150
    iput-object p2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 152
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    const-string v1, "QC_RIL_OEM_HOOK"

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-direct {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;-><init>()V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    goto :goto_0

    .line 157
    :cond_0
    const-string v0, " registrant created 1 "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    .line 163
    if-eqz p1, :cond_1

    .line 167
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.qualcomm.qcrilmsgtunnel"

    const-string v3, "com.qualcomm.qcrilmsgtunnel.QcrilMsgTunnelService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v2, "Starting QcrilMsgTunnel Service"

    invoke-direct {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 173
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 175
    .local v2, "status":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to bind service returned with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 178
    :try_start_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 179
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.qualcomm.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    iget-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    const-string v4, "Registering for intent ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v3    # "filter":Landroid/content/IntentFilter;
    goto :goto_1

    .line 182
    :catch_0
    move-exception v3

    .line 183
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uncaught Exception while while registering ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW intent. Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 164
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "status":Z
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/qualcomm/qcrilhook/QcRilHook;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qcrilhook/QcRilHook;
    .param p1, "x1"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qcrilhook/QcRilHook;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 61
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qcrilhook/QcRilHook;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 61
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    return-object v0
.end method

.method static synthetic access$202(Lcom/qualcomm/qcrilhook/QcRilHook;Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qcrilhook/QcRilHook;
    .param p1, "x1"    # Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 61
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    return-object p1
.end method

.method static synthetic access$302(Lcom/qualcomm/qcrilhook/QcRilHook;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qcrilhook/QcRilHook;
    .param p1, "x1"    # Z

    .line 61
    iput-boolean p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/qualcomm/qcrilhook/QcRilHook;)Lcom/qualcomm/qcrilhook/QcRilHookCallback;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 61
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    return-object v0
.end method

.method private addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "requestId"    # I
    .param p3, "requestSize"    # I

    .line 304
    const-string v0, "QOEMHOOK"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 307
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 310
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 311
    return-void
.end method

.method public static ascallByteToString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 3100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3101
    .local v0, "ret":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 3102
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    .line 3103
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    .line 3104
    .local v2, "c":C
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3101
    .end local v2    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3107
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static byte2ToShort(BB)I
    .locals 2
    .param p0, "low"    # B
    .param p1, "high"    # B

    .line 3015
    shl-int/lit8 v0, p1, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    and-int/lit16 v1, p0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "bytes"    # [B

    .line 287
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 288
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 289
    return-object v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 1923
    const-string v0, "QC_RIL_OEM_HOOK"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 3363
    const-string v0, "QcRilHook"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 3359
    const-string v0, "QcRilHook"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3360
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .line 1931
    return-void
.end method

.method public static declared-synchronized notifyOnServiceConnect()V
    .locals 3

    const-class v0, Lcom/qualcomm/qcrilhook/QcRilHook;

    monitor-enter v0

    .line 2026
    :try_start_0
    const-string v1, "QC_RIL_OEM_HOOK"

    const-string v2, "Notifying registrants: OnServiceConnect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook;->mOnServiceConnectedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2028
    monitor-exit v0

    return-void

    .line 2025
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2
    .param p0, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1879
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    if-eqz v0, :cond_0

    .line 1880
    invoke-virtual {v0, p0}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    goto :goto_0

    .line 1882
    :cond_0
    const-string v0, "QC_RIL_OEM_HOOK"

    const-string v1, "QcRilOemHook notifyRegistrants Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :goto_0
    return-void
.end method

.method private opReverseData([BI)[B
    .locals 4
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .line 3441
    new-array v0, p2, [B

    .line 3442
    .local v0, "rData":[B
    rem-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 3443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opReverseData() length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t divisible by 4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->loge(Ljava/lang/String;)V

    .line 3444
    return-object v0

    .line 3447
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    div-int/lit8 v2, p2, 0x4

    if-ge v1, v2, :cond_1

    .line 3448
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x0

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p1, v3

    aput-byte v3, v0, v2

    .line 3449
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p1, v3

    aput-byte v3, v0, v2

    .line 3450
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    aput-byte v3, v0, v2

    .line 3451
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x0

    aget-byte v3, p1, v3

    aput-byte v3, v0, v2

    .line 3447
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3454
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static register(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1842
    new-instance v0, Lorg/codeaurora/telephony/utils/Registrant;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/telephony/utils/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1843
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    monitor-enter v1

    .line 1844
    :try_start_0
    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v2, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 1845
    monitor-exit v1

    .line 1846
    return-void

    .line 1845
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static registerOnServiceConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 2011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerOnServiceConnected, H:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QC_RIL_OEM_HOOK"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    new-instance v0, Lorg/codeaurora/telephony/utils/Registrant;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/telephony/utils/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2013
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook;->mOnServiceConnectedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 2014
    return-void
.end method

.method private sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "request"    # [B

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method private sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "request"    # [B
    .param p3, "phoneId"    # I

    .line 327
    const-string v0, "QC_RIL_OEM_HOOK"

    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 329
    .local v1, "response":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendRilOemHookMsg: Outgoing Data is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 332
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    invoke-interface {v3, p2, v1, p3}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;->sendOemRilRequestRaw([B[BI)I

    move-result v3

    .line 333
    .local v3, "retVal":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendOemRilRequestRaw returns value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 334
    if-ltz v3, :cond_1

    .line 335
    const/4 v4, 0x0

    .line 337
    .local v4, "validResponseBytes":[B
    if-lez v3, :cond_0

    .line 338
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    move-object v4, v5

    .line 340
    :cond_0
    new-instance v5, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6, v4, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 341
    .end local v4    # "validResponseBytes":[B
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    goto :goto_0

    .line 347
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_1
    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    .line 348
    .restart local v4    # "validResponseBytes":[B
    mul-int/lit8 v5, v3, -0x1

    invoke-static {v5}, Lorg/codeaurora/telephony/utils/CommandException;->fromRilErrno(I)Lorg/codeaurora/telephony/utils/CommandException;

    move-result-object v5

    .line 349
    .local v5, "ex":Lorg/codeaurora/telephony/utils/CommandException;
    new-instance v6, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-direct {v6, p2, v4, v5}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 360
    .end local v4    # "validResponseBytes":[B
    .end local v5    # "ex":Lorg/codeaurora/telephony/utils/CommandException;
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :goto_0
    goto :goto_1

    .line 356
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    .end local v3    # "retVal":I
    :catch_0
    move-exception v3

    .line 357
    .local v3, "e":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NullPointerException caught at sendOemRilRequestRaw.RequestID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". Return Error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v4, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    goto :goto_1

    .line 351
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 352
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendOemRilRequestRaw RequestID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " exception, unable to send RIL request from this application"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    new-instance v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v4, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 360
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    nop

    .line 362
    :goto_1
    return-object v0
.end method

.method private sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "request"    # [B
    .param p3, "oemHookCb"    # Lcom/qualcomm/qcrilhook/IOemHookCallback;
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 375
    const-string v0, "QC_RIL_OEM_HOOK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRilOemHookMsgAsync: Outgoing Data is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-static {p2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    invoke-interface {v1, p2, p3, p4}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;->sendOemRilRequestRawAsync([BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 383
    :catch_0
    move-exception v1

    .line 384
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException caught at sendOemRilRequestRawAsync.RequestID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Throw to the caller"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    throw v1

    .line 380
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 381
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendOemRilRequestRawAsync RequestID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " exception, unable to send RIL request from this application"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 388
    return-void
.end method

.method public static unregister(Landroid/os/Handler;)V
    .locals 2
    .param p0, "h"    # Landroid/os/Handler;

    .line 1849
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    monitor-enter v0

    .line 1850
    :try_start_0
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, p0}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1851
    monitor-exit v0

    .line 1852
    return-void

    .line 1851
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static unregisterOnServiceConnected(Landroid/os/Handler;)V
    .locals 2
    .param p0, "h"    # Landroid/os/Handler;

    .line 2019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterOnServiceConnected, H:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QC_RIL_OEM_HOOK"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mOnServiceConnectedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p0}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2021
    return-void
.end method

.method private validateInternalState()V
    .locals 2

    .line 257
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    return-void

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "QcRilHook is in disposed state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public akaEndEapSession()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2510
    const/4 v0, 0x1

    .line 2511
    .local v0, "result":Z
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v2, 0x8

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 2512
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2514
    .local v3, "buf":Ljava/nio/ByteBuffer;
    const v4, 0x89006

    invoke-direct {p0, v3, v4, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2515
    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_END_EAP_SESSION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2517
    const-string v2, "QC_RIL_OEM_HOOK"

    const-string v5, "akaEndEapSession enter "

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    invoke-direct {p0, v4, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    .line 2520
    .local v2, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 2522
    const/4 v0, 0x0

    .line 2525
    :cond_0
    return v0
.end method

.method public akaGetBindSubscription()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2577
    const/4 v0, 0x0

    .line 2578
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v2, 0x8

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 2579
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2581
    .local v3, "buf":Ljava/nio/ByteBuffer;
    const v4, 0x89006

    invoke-direct {p0, v3, v4, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2582
    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_GET_BIND_SUBSCRIPTION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2584
    const-string v2, "QC_RIL_OEM_HOOK"

    const-string v5, "akaGetBindSubscription enter "

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    invoke-direct {p0, v4, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v4

    .line 2587
    .local v4, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 2593
    :try_start_0
    new-instance v5, Ljava/lang/String;

    iget-object v6, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    const-string v7, "ISO-8859-1"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 2597
    nop

    .line 2598
    return-object v0

    .line 2594
    :catch_0
    move-exception v5

    .line 2595
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "unsupport ISO-8859-1"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    const/4 v2, 0x0

    return-object v2

    .line 2589
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public akaGetEapSessionKey()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2551
    const/4 v0, 0x0

    .line 2552
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v2, 0x8

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 2553
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2555
    .local v3, "buf":Ljava/nio/ByteBuffer;
    const v4, 0x89006

    invoke-direct {p0, v3, v4, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2556
    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_GET_EAP_SESSION_KEY_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2558
    const-string v2, "QC_RIL_OEM_HOOK"

    const-string v5, "akaGetEapSessionKey enter "

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    invoke-direct {p0, v4, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v4

    .line 2561
    .local v4, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 2567
    :try_start_0
    new-instance v5, Ljava/lang/String;

    iget-object v6, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    const-string v7, "ISO-8859-1"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 2571
    nop

    .line 2572
    return-object v0

    .line 2568
    :catch_0
    move-exception v5

    .line 2569
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "unsupport ISO-8859-1"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    const/4 v2, 0x0

    return-object v2

    .line 2563
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public akaSendEapPackage(I[B)[B
    .locals 5
    .param p1, "len"    # I
    .param p2, "pkg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2530
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 2531
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2533
    .local v1, "buf":Ljava/nio/ByteBuffer;
    add-int/lit8 v2, p1, 0x8

    add-int/lit8 v2, v2, 0x4

    const v3, 0x89006

    invoke-direct {p0, v1, v3, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2534
    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_SEND_EAP_PKG_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2535
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2536
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2538
    const-string v2, "QC_RIL_OEM_HOOK"

    const-string v4, "akaSendEapPackage enter "

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    invoke-direct {p0, v3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    .line 2541
    .local v2, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 2546
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    return-object v3

    .line 2543
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public akaSetBindSubscription(I)Ljava/lang/String;
    .locals 8
    .param p1, "bind_subs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2603
    const/4 v0, 0x0

    .line 2604
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    .line 2605
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2607
    .local v3, "buf":Ljava/nio/ByteBuffer;
    const v4, 0x89006

    invoke-direct {p0, v3, v4, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2608
    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_SET_BIND_SUBSCRIPTION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2609
    int-to-byte v2, p1

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2611
    const-string v2, "QC_RIL_OEM_HOOK"

    const-string v5, "akaGetBindSubscription enter "

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    invoke-direct {p0, v4, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v4

    .line 2614
    .local v4, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 2620
    :try_start_0
    new-instance v5, Ljava/lang/String;

    iget-object v6, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    const-string v7, "ISO-8859-1"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 2624
    nop

    .line 2625
    return-object v0

    .line 2621
    :catch_0
    move-exception v5

    .line 2622
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "unsupport ISO-8859-1"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    const/4 v2, 0x0

    return-object v2

    .line 2616
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public akaStartEapSession(IIILjava/lang/String;)Z
    .locals 6
    .param p1, "eap_method"    # I
    .param p2, "eap_sim_aka_algo"    # I
    .param p3, "user_id_len"    # I
    .param p4, "user_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2487
    const/4 v0, 0x1

    .line 2488
    .local v0, "result":Z
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0xa

    new-array v1, v1, [B

    .line 2489
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2491
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const v3, 0x89006

    const/16 v4, 0x12

    invoke-direct {p0, v2, v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2492
    sget-object v4, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_START_EAP_SESSION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v4}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2493
    int-to-byte v4, p1

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2494
    int-to-byte v4, p2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2495
    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2496
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2498
    const-string v4, "QC_RIL_OEM_HOOK"

    const-string v5, "akaStartEapSession enter "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    invoke-direct {p0, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v3

    .line 2501
    .local v3, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 2503
    const/4 v0, 0x0

    .line 2506
    :cond_0
    return v0
.end method

.method public dispose()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 264
    iget-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    if-eqz v0, :cond_0

    .line 265
    const-string v0, "dispose(): Unbinding service"

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 267
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-interface {v0}, Lcom/qualcomm/qcrilhook/QcRilHookCallback;->onQcRilHookDisconnected()V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    .line 270
    :cond_0
    const-string v0, "dispose(): Unregistering receiver"

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    .line 274
    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 275
    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 277
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 1875
    const-string v0, "is destroyed"

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1876
    return-void
.end method

.method public forceNetworkSearch()Lorg/codeaurora/telephony/utils/AsyncResult;
    .locals 5

    .line 3527
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 3528
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 3530
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const-string v3, "QC_RIL_OEM_HOOK"

    const-string v4, "forceNetworkSearch"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3532
    const v3, 0x89006

    invoke-direct {p0, v2, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 3533
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_FORCE_SEARCH_NETWORK:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3535
    invoke-direct {p0, v3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 3536
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    return-object v1
.end method

.method public getLpluslSupportStatus()Z
    .locals 5

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "status":Z
    const v1, 0x8005e

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 402
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 403
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 404
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

    .line 407
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

    invoke-direct {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 408
    return v0
.end method

.method public getNrInfo()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3492
    const/4 v0, 0x0

    .line 3493
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    .line 3494
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 3496
    .local v3, "buf":Ljava/nio/ByteBuffer;
    const v4, 0x89006

    invoke-direct {p0, v3, v4, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 3497
    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_GET_NR_INFO:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3499
    const-string v2, "QC_RIL_OEM_HOOK"

    const-string v5, "getNrInfo"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    invoke-direct {p0, v4, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    .line 3502
    .local v2, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 3507
    const/4 v4, 0x1

    return v4

    .line 3504
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    iget-object v5, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getNrMode(I)I
    .locals 8
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2671
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 2672
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2674
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const v3, 0x89006

    invoke-direct {p0, v2, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2675
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_GET_SA_NSA_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNrMode phoneId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "QC_RIL_OEM_HOOK"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    invoke-direct {p0, v3, v0, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 2679
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v5, 0x0

    aput-byte v5, v3, v5

    .line 2680
    .local v3, "response":[B
    const/4 v5, -0x1

    .line 2681
    .local v5, "nrMode":I
    iget-object v6, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_1

    .line 2682
    iget-object v6, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 2683
    iget-object v4, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, [B

    .line 2684
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 2685
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNrMode, nrMode: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 2687
    :cond_0
    const-string v6, "getNrMode: Null Response"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2690
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNrMode: Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    :goto_0
    return v5
.end method

.method public getRegionalCountryCode()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2404
    const/4 v0, 0x0

    .line 2405
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v2, 0x8

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 2406
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2408
    .local v3, "buf":Ljava/nio/ByteBuffer;
    const v4, 0x89006

    invoke-direct {p0, v3, v4, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2409
    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_GET_Country_Code:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2411
    const-string v2, "QC_RIL_OEM_HOOK"

    const-string v5, "oemSetRadioFTM enter "

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    invoke-direct {p0, v4, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v4

    .line 2414
    .local v4, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 2420
    :try_start_0
    new-instance v5, Ljava/lang/String;

    iget-object v6, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    const-string v7, "ISO-8859-1"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 2424
    nop

    .line 2425
    return-object v0

    .line 2421
    :catch_0
    move-exception v5

    .line 2422
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "unsupport ISO-8859-1"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    const/4 v2, 0x0

    return-object v2

    .line 2416
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getTxRxInfo()Lorg/codeaurora/telephony/utils/AsyncResult;
    .locals 5

    .line 3512
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 3513
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 3515
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const-string v3, "QC_RIL_OEM_HOOK"

    const-string v4, "getTxRxInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    const v3, 0x89006

    invoke-direct {p0, v2, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 3518
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_GET_TX_RX_INFO:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3520
    invoke-direct {p0, v3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 3521
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    return-object v1
.end method

.method public isDisposed()Z
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Lorg/codeaurora/telephony/utils/AsyncResult;
    .locals 6
    .param p1, "rilcmd"    # Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;
    .param p2, "data"    # [B
    .param p3, "datalen"    # I

    .line 2038
    if-ltz p3, :cond_2

    const/16 v0, 0x400

    if-le p3, v0, :cond_0

    goto :goto_1

    .line 2043
    :cond_0
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    mul-int/lit8 v1, p3, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 2044
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2046
    .local v1, "buf":Ljava/nio/ByteBuffer;
    mul-int/lit8 v2, p3, 0x1

    add-int/lit8 v2, v2, 0x8

    const v3, 0x89001

    invoke-direct {p0, v1, v3, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2047
    invoke-virtual {p1}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2048
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2049
    if-eqz p2, :cond_1

    if-lez p3, :cond_1

    .line 2051
    array-length v2, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-byte v5, p2, v4

    .line 2052
    .local v5, "b":B
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2051
    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2056
    :cond_1
    invoke-direct {p0, v3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    .line 2057
    .local v2, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    return-object v2

    .line 2040
    .end local v0    # "payload":[B
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_2
    :goto_1
    const-string v0, "QC_RIL_OEM_HOOK"

    const-string v1, "QCRIL_EVT_OEM_HOOK_AP2MODEM_REQ length error "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    const/4 v0, 0x0

    return-object v0
.end method

.method public oemGetQcomGetNvSdCfg()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3173
    const/4 v0, 0x0

    .line 3174
    .local v0, "ret":Z
    const-string v1, "QC_RIL_OEM_HOOK"

    const-string v2, "oemGetQcomGetNvSdCfg enter "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_NV_SD_CFG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v3, 0x1

    new-array v4, v3, [B

    const/4 v5, 0x0

    aput-byte v5, v4, v5

    invoke-virtual {p0, v2, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    .line 3178
    .local v2, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 3182
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 3184
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 3185
    .local v3, "bytes":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oemGetQcomGetNvSdCfg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    iget-object v1, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    return-object v1

    .line 3188
    .end local v3    # "bytes":[B
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 3180
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public oemGetQcomSimLockCategoryData()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2266
    const/4 v0, 0x0

    .line 2267
    .local v0, "ret":Z
    const-string v1, "QC_RIL_OEM_HOOK"

    const-string v2, "oemGetQcomSimLockCategoryData enter "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_SIMLOCK_CATEGORY_DATA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v3, 0x1

    new-array v4, v3, [B

    const/4 v5, 0x0

    aput-byte v5, v4, v5

    invoke-virtual {p0, v2, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    .line 2271
    .local v2, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 2275
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 2277
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    .line 2278
    .local v4, "bytes":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SimLock category type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v5, v4, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Number of NW codes: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v4, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    iget-object v1, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    return-object v1

    .line 2281
    .end local v4    # "bytes":[B
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 2273
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public oemGetQcomSimLockFuseStatus()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2287
    const-string v0, "QC_RIL_OEM_HOOK"

    const-string v1, "oemGetQcomSimLockFuseStatus enter "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_SIMLOCK_FUSE_STATUS:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v2, 0x1

    new-array v3, v2, [B

    const/4 v4, 0x0

    aput-byte v4, v3, v4

    invoke-virtual {p0, v1, v3, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 2291
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 2295
    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 2297
    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 2298
    .local v3, "bytes":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Secboot status for modem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, v3, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " SIMLOCK fuse status: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v3, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    iget-object v0, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0

    .line 2301
    .end local v3    # "bytes":[B
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 2293
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public oemGetQcomSimLockStatus()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2238
    const/4 v0, 0x0

    .line 2239
    .local v0, "ret":Z
    const-string v1, "QC_RIL_OEM_HOOK"

    const-string v2, "oemGetQcomSimLockStatus enter "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_SIMLOCK_STATUS:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v3, 0x1

    new-array v4, v3, [B

    const/4 v5, 0x0

    aput-byte v5, v4, v5

    invoke-virtual {p0, v2, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    .line 2243
    .local v2, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 2247
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 2249
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    .line 2250
    .local v4, "bytes":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oemGetQcomSimLockStatus return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    aget-byte v1, v4, v3

    if-ne v1, v3, :cond_0

    .line 2253
    const/4 v0, 0x1

    goto :goto_0

    .line 2257
    :cond_0
    const/4 v0, 0x0

    .line 2260
    .end local v4    # "bytes":[B
    :cond_1
    :goto_0
    return v0

    .line 2245
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public oemGetSimLockRemainedTimes()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2085
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 2086
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2087
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, -0x1

    .line 2089
    .local v3, "ret":I
    const-string v4, "QC_RIL_OEM_HOOK"

    const-string v5, "oemGetSimLockRemainedTimes enter "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    const v5, 0x89005

    invoke-direct {p0, v2, v5, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2091
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->SIMLOCK_GET_RE_TIMES:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->value()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2093
    invoke-direct {p0, v5, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 2094
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    .line 2099
    iget-object v5, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 2101
    iget-object v5, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 2102
    .local v5, "bytes":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oemGetSimLockRemainedTimes return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    aget-byte v8, v5, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    aget-byte v4, v5, v7

    and-int/lit16 v3, v4, 0xff

    .line 2105
    .end local v5    # "bytes":[B
    :cond_0
    return v3

    .line 2096
    :cond_1
    const-string v5, "oemGetSimLockRemainedTimes return exception "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "oemGetSimLockRemainedTimes exc exception"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public oemRecoverRadioMode()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2374
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 2375
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2377
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const v3, 0x89006

    invoke-direct {p0, v2, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2378
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 2382
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mCr:Landroid/content/ContentResolver;

    .line 2383
    const/4 v4, 0x0

    const-string v5, "airplane_mode_on"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2385
    .local v1, "airplaneMode":I
    if-lez v1, :cond_0

    .line 2387
    sget-object v4, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_LPM_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v4}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 2391
    :cond_0
    sget-object v4, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_ON_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v4}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2394
    :goto_0
    const-string v4, "QC_RIL_OEM_HOOK"

    const-string v5, "oemRecoverRadioMode enter "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    invoke-direct {p0, v3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v3

    .line 2397
    .local v3, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 2401
    return-void

    .line 2399
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    iget-object v5, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 2380
    .end local v1    # "airplaneMode":I
    .end local v3    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "mContext is null"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public oemSetRadioFTM()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2343
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 2344
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2346
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const v3, 0x89006

    invoke-direct {p0, v2, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2347
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_FTM_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2349
    const-string v1, "QC_RIL_OEM_HOOK"

    const-string v4, "oemSetRadioFTM enter "

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    invoke-direct {p0, v3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 2352
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 2356
    return-void

    .line 2354
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    iget-object v4, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public oemSetRadioLPM()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2359
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 2360
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2362
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const v3, 0x89006

    invoke-direct {p0, v2, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2363
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_LPM_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2365
    const-string v1, "QC_RIL_OEM_HOOK"

    const-string v4, "oemSetRadioFTM enter "

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    invoke-direct {p0, v3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 2368
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 2372
    return-void

    .line 2370
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    iget-object v4, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public oemSetSimLockUnslEnable()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2204
    const/4 v0, 0x0

    .line 2205
    .local v0, "ret":Z
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v2, 0x8

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 2206
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2208
    .local v3, "buf":Ljava/nio/ByteBuffer;
    const v4, 0x89005

    invoke-direct {p0, v3, v4, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2209
    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->SIMLOCK_SET_UNSL_ENABLE:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->value()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2211
    const-string v2, "QC_RIL_OEM_HOOK"

    const-string v5, "oemSetSimLockUnslEnable enter "

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    invoke-direct {p0, v4, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v4

    .line 2214
    .local v4, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    .line 2219
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 2221
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 2222
    .local v5, "bytes":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oemSetSimLockUnslEnable return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    aget-byte v8, v5, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    aget-byte v2, v5, v7

    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    .line 2225
    const/4 v0, 0x1

    goto :goto_0

    .line 2229
    :cond_0
    const/4 v0, 0x0

    .line 2232
    .end local v5    # "bytes":[B
    :cond_1
    :goto_0
    return v0

    .line 2216
    :cond_2
    const-string v5, "oemSetSimLockUnslEnable return exception "

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public oemSimLockLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)B
    .locals 11
    .param p1, "imei1"    # Ljava/lang/String;
    .param p2, "imei2"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2163
    .local v0, "imei1_imei2_pwd":Ljava/lang/String;
    const/4 v1, -0x1

    .line 2164
    .local v1, "ret":B
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2165
    .local v2, "len":I
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v3, v3, 0x8

    mul-int/lit8 v4, v2, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 2166
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 2168
    .local v4, "buf":Ljava/nio/ByteBuffer;
    const-string v5, "QC_RIL_OEM_HOOK"

    const-string v6, "oemSimLockLock enter "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xf

    if-ne v6, v7, :cond_2

    .line 2170
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 2171
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_2

    .line 2177
    mul-int/lit8 v6, v2, 0x1

    add-int/lit8 v6, v6, 0x8

    const v7, 0x89005

    invoke-direct {p0, v4, v7, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2178
    sget-object v6, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->SIMLOCK_LOCKED_REQ:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    invoke-virtual {v6}, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->value()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2179
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2180
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2182
    invoke-direct {p0, v7, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v6

    .line 2184
    .local v6, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v7, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_1

    .line 2189
    iget-object v7, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 2191
    iget-object v7, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    .line 2192
    .local v7, "bytes":[B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "oemSimLockLock return "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    aget-byte v10, v7, v9

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    aget-byte v1, v7, v9

    .line 2195
    .end local v7    # "bytes":[B
    :cond_0
    return v1

    .line 2186
    :cond_1
    const-string v7, "oemSimLockLock return exception "

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    new-instance v5, Ljava/lang/RuntimeException;

    iget-object v7, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 2173
    .end local v6    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_2
    const-string v6, "oemSimLockLock params length error "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "input params length error"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public oemSimLockUnlock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)B
    .locals 11
    .param p1, "imei1"    # Ljava/lang/String;
    .param p2, "imei2"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2118
    .local v0, "imei1_imei2_pwd":Ljava/lang/String;
    const/4 v1, -0x1

    .line 2119
    .local v1, "ret":B
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2120
    .local v2, "len":I
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v3, v3, 0x8

    mul-int/lit8 v4, v2, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 2121
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 2123
    .local v4, "buf":Ljava/nio/ByteBuffer;
    const-string v5, "QC_RIL_OEM_HOOK"

    const-string v6, "oemSimLockUnlock enter "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xf

    if-ne v6, v7, :cond_2

    .line 2125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 2126
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_2

    .line 2132
    mul-int/lit8 v6, v2, 0x1

    add-int/lit8 v6, v6, 0x8

    const v7, 0x89005

    invoke-direct {p0, v4, v7, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2133
    sget-object v6, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->SIMLOCK_UNLOCK_REQ:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    invoke-virtual {v6}, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->value()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2134
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2135
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2137
    invoke-direct {p0, v7, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v6

    .line 2139
    .local v6, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v7, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_1

    .line 2144
    iget-object v7, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 2146
    iget-object v7, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    .line 2147
    .local v7, "bytes":[B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "oemSimLockUnlock return "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    aget-byte v10, v7, v9

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    aget-byte v1, v7, v9

    .line 2150
    .end local v7    # "bytes":[B
    :cond_0
    return v1

    .line 2141
    :cond_1
    const-string v7, "oemSimLockUnlock return exception "

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    new-instance v5, Ljava/lang/RuntimeException;

    iget-object v7, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 2128
    .end local v6    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_2
    const-string v6, "oemSimLockUnlock params length error "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "input params length error"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public oemSprintUiccUnlockRequest(ILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "requestId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 3115
    const-string v0, ""

    .line 3116
    .local v0, "req":Ljava/lang/String;
    const-string v1, ""

    .line 3121
    .local v1, "res":Ljava/lang/String;
    const/16 v2, 0xa8

    if-ne v2, p1, :cond_0

    goto :goto_0

    .line 3123
    :cond_0
    const/16 v2, 0xa9

    const/4 v3, 0x0

    if-ne v2, p1, :cond_6

    .line 3124
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 3127
    :cond_1
    move-object v0, p2

    .line 3132
    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 3133
    .local v3, "data":[B
    array-length v4, v3

    .line 3135
    .local v4, "datalen":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oemSprintUiccUnlockRequest datalen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "QC_RIL_OEM_HOOK"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    mul-int/lit8 v7, v4, 0x1

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x8

    new-array v5, v5, [B

    .line 3138
    .local v5, "payload":[B
    invoke-static {v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 3139
    .local v7, "buf":Ljava/nio/ByteBuffer;
    mul-int/lit8 v8, v4, 0x1

    add-int/lit8 v8, v8, 0x8

    const v9, 0x8900f

    invoke-direct {p0, v7, v9, v8}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 3140
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3141
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3142
    if-eqz v3, :cond_2

    if-lez v4, :cond_2

    .line 3144
    array-length v8, v3

    move v10, v2

    :goto_1
    if-ge v10, v8, :cond_2

    aget-byte v11, v3, v10

    .line 3145
    .local v11, "b":B
    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 3144
    .end local v11    # "b":B
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3149
    :cond_2
    invoke-direct {p0, v9, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v8

    .line 3150
    .local v8, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v9, v8, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_3

    .line 3152
    const-string v2, "oemSprintUiccUnlockRequest return exception "

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3154
    :cond_3
    iget-object v9, v8, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v9, :cond_4

    .line 3156
    iget-object v9, v8, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [B

    .line 3157
    .local v9, "bytes":[B
    invoke-static {v9, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 3158
    .local v2, "strBase64":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "oemSprintUiccUnlockRequest GET_REQUEST_SIMLOCK_NONCE "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    move-object v1, v2

    .line 3160
    .end local v2    # "strBase64":Ljava/lang/String;
    .end local v9    # "bytes":[B
    goto :goto_2

    .line 3161
    :cond_4
    const-string v2, "oemSprintUiccUnlockRequest SET_REQUEST_SIMLOCK_RSSB success"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    const-string v1, "success"

    .line 3165
    :goto_2
    return-object v1

    .line 3125
    .end local v3    # "data":[B
    .end local v4    # "datalen":I
    .end local v5    # "payload":[B
    .end local v7    # "buf":Ljava/nio/ByteBuffer;
    .end local v8    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_5
    :goto_3
    return-object v3

    .line 3129
    :cond_6
    return-object v3
.end method

.method public oem_dispose()V
    .locals 2

    .line 2032
    const-string v0, "QC_RIL_OEM_HOOK"

    const-string v1, "[oem] dispose of QcRilHook."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->dispose()V

    .line 2034
    return-void
.end method

.method public opTransferDataUsageByteToStringFormat([B)Ljava/lang/String;
    .locals 6
    .param p1, "data"    # [B

    .line 3401
    array-length v0, p1

    const/16 v1, 0x60

    if-eq v0, v1, :cond_0

    .line 3402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong data length, data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->loge(Ljava/lang/String;)V

    .line 3403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Wrong data length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3405
    :cond_0
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->opReverseData([BI)[B

    move-result-object v0

    .line 3406
    .local v0, "rData":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opTransferDataUsageByteToStringFormat() reverse data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logi(Ljava/lang/String;)V

    .line 3408
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3410
    .local v1, "payload":Ljava/nio/ByteBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3411
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "idle_mode_duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sleep_mode_duration: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rx_mode_duration: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tx_mode_duration_len: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  tx_mode_duration[TX_POWER_LEVEL_ONE]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  tx_mode_duration[TX_POWER_LEVEL_TWO]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  tx_mode_duration[TX_POWER_LEVEL_THREE]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  tx_mode_duration[TX_POWER_LEVEL_FOUR]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  tx_mode_duration[TX_POWER_LEVEL_FIVE]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modem_tech_active_time_len: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  modem_tech_active_time[POWER_1X_TECH]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  modem_tech_active_time[POWER_DO_TECH]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  modem_tech_active_time[POWER_WCDMA1_TECH]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  modem_tech_active_time[POWER_WCDMA2_TECH]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  modem_tech_active_time[POWER_LTE1_TECH]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  modem_tech_active_time[POWER_LTE2_TECH]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  modem_tech_active_time[POWER_TDSCDMA_TECH]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  modem_tech_active_time[POWER_GERAN1_TECH]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  modem_tech_active_time[POWER_GERAN2_TECH]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wlan_active_time: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gps_active_time: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modem_active_vote_status: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wlan_active_vote_status: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gps_active_vote_status: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "opTransferDataUsageByteToStringFormat result: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->logi(Ljava/lang/String;)V

    .line 3437
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public qcRilAbortNetworkScan(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 1363
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1364
    const/4 v0, 0x0

    .line 1365
    .local v0, "retval":Z
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v1, v1, [B

    .line 1367
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1369
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const v3, 0x8005f

    invoke-direct {p0, v2, v3, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1371
    invoke-direct {p0, v3, v1, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v3

    .line 1374
    .local v3, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1375
    const/4 v0, 0x1

    goto :goto_0

    .line 1377
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QCRIL cancel ongoing nw scan returned exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "QC_RIL_OEM_HOOK"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :goto_0
    return v0
.end method

.method public qcRilActivateConfig(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 741
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilActivateConfig(II)Z

    move-result v0

    return v0
.end method

.method public qcRilActivateConfig(II)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "mbnType"    # I

    .line 755
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 756
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 757
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 758
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const v3, 0x80032

    const/4 v4, 0x5

    invoke-direct {p0, v2, v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 759
    int-to-byte v4, p1

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 760
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 762
    invoke-direct {p0, v3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v3

    .line 763
    .local v3, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRIL_EVT_HOOK_ACT_CONFIGS failed w/ "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "QC_RIL_OEM_HOOK"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v1, 0x0

    return v1

    .line 768
    :cond_0
    return v1
.end method

.method public qcRilCdmaAvoidCurNwk()Z
    .locals 4

    .line 1263
    const/4 v0, 0x0

    .line 1264
    .local v0, "retval":Z
    const v1, 0x8000e

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 1266
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1267
    const/4 v0, 0x1

    goto :goto_0

    .line 1269
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QCRIL Avoid the current cdma network Command returned Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QC_RIL_OEM_HOOK"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :goto_0
    return v0
.end method

.method public qcRilCdmaClearAvoidanceList()Z
    .locals 4

    .line 1298
    const/4 v0, 0x0

    .line 1299
    .local v0, "retval":Z
    const v1, 0x8000f

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 1301
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1302
    const/4 v0, 0x1

    goto :goto_0

    .line 1304
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QCRIL Clear the cdma avoidance list Command returned Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QC_RIL_OEM_HOOK"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :goto_0
    return v0
.end method

.method public qcRilCdmaGetAvoidanceList()[B
    .locals 6

    .line 1311
    const/4 v0, 0x0

    .line 1312
    .local v0, "retval":[B
    const v1, 0x80010

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 1314
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v3, "QC_RIL_OEM_HOOK"

    if-nez v2, :cond_2

    .line 1315
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1320
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 1321
    .local v2, "result":[B
    array-length v4, v2

    const/16 v5, 0xa4

    if-ne v4, v5, :cond_0

    .line 1324
    move-object v0, v2

    goto :goto_0

    .line 1326
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QCRIL Get unexpected cdma avoidance list buffer length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    .end local v2    # "result":[B
    :goto_0
    goto :goto_1

    .line 1330
    :cond_1
    const-string v2, "QCRIL Get cdma avoidance list command returned a null result."

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1334
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRIL Get the cdma avoidance list Command returned Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :goto_1
    return-object v0
.end method

.method public qcRilCleanupConfigs()Z
    .locals 4

    .line 873
    const/4 v0, 0x0

    .line 874
    .local v0, "retval":Z
    const v1, 0x8001f

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 876
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 877
    const/4 v0, 0x1

    goto :goto_0

    .line 879
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QCRIL_EVT_HOOK_DELETE_ALL_CONFIGS failed w/ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QC_RIL_OEM_HOOK"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :goto_0
    return v0
.end method

.method public qcRilDeactivateConfigs()Z
    .locals 1

    .line 886
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilDeactivateConfigs(I)Z

    move-result v0

    return v0
.end method

.method public qcRilDeactivateConfigs(I)Z
    .locals 6
    .param p1, "mbnType"    # I

    .line 899
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 900
    const/4 v0, 0x0

    .line 901
    .local v0, "retval":Z
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v2, 0x4

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 902
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 904
    .local v3, "reqBuffer":Ljava/nio/ByteBuffer;
    const v4, 0x8002c

    invoke-direct {p0, v3, v4, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 905
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 907
    invoke-direct {p0, v4, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    .line 909
    .local v2, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 910
    const/4 v0, 0x1

    goto :goto_0

    .line 912
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QCRIL_EVT_HOOK_DEACT_CONFIGS failed w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "QC_RIL_OEM_HOOK"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :goto_0
    return v0
.end method

.method public qcRilEnableAutoMode(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 820
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 821
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 822
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 823
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const v3, 0x80022

    const/4 v4, 0x5

    invoke-direct {p0, v2, v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 824
    int-to-byte v4, p1

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 826
    invoke-direct {p0, v3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v3

    .line 827
    .local v3, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRIL_EVT_HOOK_ENABLE_MODEM_UPDATE failed w/ "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "QC_RIL_OEM_HOOK"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const/4 v1, 0x0

    return v1

    .line 832
    :cond_0
    return v1
.end method

.method public qcRilGetAllConfigs()Z
    .locals 3

    .line 856
    const v0, 0x80017

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v0

    .line 857
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QCRIL_EVT_HOOK_GET_AVAILABLE_CONFIGS failed w/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QC_RIL_OEM_HOOK"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/4 v1, 0x0

    return v1

    .line 862
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public qcRilGetAvailableConfigs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 844
    const-string v0, "QC_RIL_OEM_HOOK"

    const-string v1, "qcRilGetAvailableConfigs is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const/4 v0, 0x0

    return-object v0
.end method

.method public qcRilGetCABandCombo(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "numeric"    # Ljava/lang/String;

    .line 3227
    const-string v0, "qcRilGetCABandCombo failed: "

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 3228
    const/4 v1, 0x0

    .line 3231
    .local v1, "result":Ljava/lang/String;
    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_UST_CAPABILITY_OPERATE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v3, 0x1

    new-array v4, v3, [B

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    invoke-virtual {p0, v2, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    .line 3233
    .local v2, "caState":Lorg/codeaurora/telephony/utils/AsyncResult;
    const/4 v4, 0x0

    const-string v5, "QC_RIL_OEM_HOOK"

    if-eqz v2, :cond_5

    iget-object v7, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_5

    iget-object v7, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_5

    .line 3234
    iget-object v7, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    .line 3235
    .local v7, "state":[B
    aget-byte v6, v7, v6

    if-ne v6, v3, :cond_4

    .line 3236
    const-string v3, "qcRilGetCABandCombo, CA enabled, then get CA combos."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    .end local v7    # "state":[B
    nop

    .line 3246
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v6, 0x4

    add-int/2addr v3, v6

    new-array v3, v3, [B

    .line 3247
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 3250
    .local v7, "reqBuffer":Ljava/nio/ByteBuffer;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "qcRilGetCABandCombo numeric: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    const v8, 0x89011

    invoke-direct {p0, v7, v8, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 3252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3256
    nop

    .line 3258
    invoke-direct {p0, v8, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v6

    .line 3259
    .local v6, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v8, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_0

    .line 3260
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    return-object v4

    .line 3264
    :cond_0
    iget-object v0, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 3265
    const-string v0, "qcRilGetCABandCombo null response for a get request."

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    return-object v4

    .line 3270
    :cond_1
    :try_start_1
    iget-object v0, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3272
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 3273
    .local v8, "paramCount":I
    if-gez v8, :cond_2

    .line 3274
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid count:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3275
    return-object v4

    .line 3278
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 3279
    .local v9, "stringLen":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "string len = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    if-gez v9, :cond_3

    .line 3281
    return-object v4

    .line 3284
    :cond_3
    new-array v10, v9, [B

    .line 3285
    .local v10, "data":[B
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 3287
    new-instance v11, Ljava/lang/String;

    const-string v12, "ISO-8859-1"

    invoke-direct {v11, v10, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v11

    .line 3291
    .end local v1    # "result":Ljava/lang/String;
    .end local v8    # "paramCount":I
    .end local v9    # "stringLen":I
    .end local v10    # "data":[B
    .local v0, "result":Ljava/lang/String;
    nop

    .line 3293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcRilGetCABandCombo returned: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    return-object v0

    .line 3288
    .end local v0    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3289
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v8, "qcRilGetCABandCombo NOT supported ENCODING"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    return-object v4

    .line 3253
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v6    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :catch_1
    move-exception v6

    .line 3254
    .local v6, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    return-object v4

    .line 3238
    .end local v3    # "payload":[B
    .end local v6    # "e":Ljava/lang/Exception;
    .local v7, "state":[B
    :cond_4
    const-string v0, "qcRilGetCABandCombo, CA not enabled, return null."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    return-object v4

    .line 3242
    .end local v7    # "state":[B
    :cond_5
    const-string v0, "qcRilGetCABandCombo, Get CA state error, return null."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    return-object v4
.end method

.method public qcRilGetConfig()Ljava/lang/String;
    .locals 1

    .line 464
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetConfig(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public qcRilGetConfig(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .line 476
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetConfig(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public qcRilGetConfig(II)Ljava/lang/String;
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "mbnType"    # I

    .line 422
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 425
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 427
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const v3, 0x80016

    const/4 v4, 0x5

    invoke-direct {p0, v2, v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 428
    int-to-byte v4, p1

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 429
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 431
    invoke-direct {p0, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v3

    .line 433
    .local v3, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v5, "QC_RIL_OEM_HOOK"

    if-eqz v4, :cond_0

    .line 434
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL_EVT_HOOK_GET_CONFIG failed w/ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-object v0

    .line 439
    :cond_0
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 440
    const-string v4, "QCRIL_EVT_HOOK_GET_CONFIG failed w/ null result"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-object v0

    .line 446
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 450
    nop

    .line 451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QCRIL_EVT_HOOK_GET_CONFIG returned w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 453
    return-object v0

    .line 447
    :catch_0
    move-exception v4

    .line 448
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "unsupport ISO-8859-1"

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 449
    const/4 v5, 0x0

    return-object v5
.end method

.method public qcRilGetCsgId()I
    .locals 5

    .line 1215
    const/4 v0, -0x1

    .line 1216
    .local v0, "csgId":I
    const v1, 0x80018

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 1217
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v3, "QC_RIL_OEM_HOOK"

    if-nez v2, :cond_1

    .line 1218
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1219
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 1220
    .local v2, "response":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 1221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcRilGetCsgId: csg Id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1222
    .end local v2    # "response":[B
    goto :goto_0

    .line 1223
    :cond_0
    const-string v2, "qcRilGetCsgId: Null Response"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1226
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcRilGetCsgId: Exception "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :goto_0
    return v0
.end method

.method public qcRilGetHiddenMenuDataLteHM00117()[I
    .locals 10

    .line 2884
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 2885
    .local v1, "result":[I
    const-string v2, "QC_RIL_OEM_HOOK"

    const-string v3, " QCRILHOOK_GET_HIDDEN_MENU_HM00117_REQ "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    const v3, 0x8900c

    invoke-virtual {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v3

    .line 2887
    .local v3, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 2888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRILHOOK_GET_HIDDEN_MENU_HM00117_REQ  failed: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    return-object v5

    .line 2892
    :cond_0
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 2893
    const-string v0, "QCRILHOOK_GET_HIDDEN_MENU_HM00117_REQ  null response for a get request"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    return-object v5

    .line 2898
    :cond_1
    :try_start_0
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    invoke-static {v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 2900
    .local v4, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 2902
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 2903
    .local v6, "low":B
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 2904
    .local v7, "high":B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " QCRILHOOK_GET_HIDDEN_MENU_HM00117_REQ:low = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",high = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2905
    invoke-static {v6, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->byte2ToShort(BB)I

    move-result v8

    aput v8, v1, v5

    .line 2906
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " QCRILHOOK_GET_HIDDEN_MENU_HM00117_REQ:result["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v1, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2900
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2911
    .end local v4    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v5    # "i":I
    .end local v6    # "low":B
    .end local v7    # "high":B
    :cond_2
    goto :goto_1

    .line 2909
    :catch_0
    move-exception v0

    .line 2910
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QCRILHOOK_GET_HIDDEN_MENU_HM00117_REQ failed to parse payload w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRILHOOK_GET_HIDDEN_MENU_HM00117_REQ returned: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public qcRilGetHiddenMenuValue(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 13
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 2746
    const-string v0, "QC_RIL_OEM_HOOK"

    const/4 v1, 0x0

    .line 2747
    .local v1, "payload":[B
    const/4 v2, 0x0

    .line 2748
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 2750
    .local v3, "result":[Ljava/lang/String;
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-array v1, v4, [B

    .line 2751
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2754
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRILHOOK_GET_HIDDEN_MENU_VALUE_REQ request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0x89009

    invoke-direct {p0, v2, v6, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2756
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2761
    nop

    .line 2762
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QCRILHOOK_GET_HIDDEN_MENU_VALUE_REQ reqbuffer: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    invoke-direct {p0, v6, v1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v5

    .line 2765
    .local v5, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v6, v5, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_0

    .line 2766
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QCRILHOOK_GET_HIDDEN_MENU_VALUE_REQ  failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    return-object v4

    .line 2770
    :cond_0
    iget-object v6, v5, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v6, :cond_1

    .line 2771
    const-string v6, "QCRILHOOK_GET_HIDDEN_MENU_VALUE_REQ  null response for a get request"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    return-object v4

    .line 2776
    :cond_1
    :try_start_1
    iget-object v6, v5, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    invoke-static {v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 2778
    .local v6, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 2779
    .local v7, "paraCount":I
    if-gez v7, :cond_2

    .line 2780
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid count:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    return-object v4

    .line 2783
    :cond_2
    new-array v8, v7, [Ljava/lang/String;

    move-object v3, v8

    .line 2784
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_4

    .line 2785
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 2786
    .local v9, "stringLen":I
    if-gez v9, :cond_3

    .line 2787
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid string["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] length:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    return-object v4

    .line 2790
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "string len = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    new-array v10, v9, [B

    .line 2792
    .local v10, "data":[B
    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2794
    :try_start_2
    new-instance v11, Ljava/lang/String;

    const-string v12, "ISO-8859-1"

    invoke-direct {v11, v10, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v11, v3, v8
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2798
    nop

    .line 2784
    .end local v9    # "stringLen":I
    .end local v10    # "data":[B
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2795
    .restart local v9    # "stringLen":I
    .restart local v10    # "data":[B
    :catch_0
    move-exception v11

    .line 2796
    .local v11, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    const-string v12, "unsupport ISO-8859-1"

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2797
    return-object v4

    .line 2802
    .end local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "paraCount":I
    .end local v8    # "i":I
    .end local v9    # "stringLen":I
    .end local v10    # "data":[B
    .end local v11    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    goto :goto_1

    .line 2800
    :catch_1
    move-exception v4

    .line 2801
    .local v4, "e":Ljava/nio/BufferUnderflowException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QCRILHOOK_GET_HIDDEN_MENU_VALUE_REQ failed to parse payload w/ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    .end local v4    # "e":Ljava/nio/BufferUnderflowException;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRILHOOK_GET_HIDDEN_MENU_VALUE_REQ returned: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    return-object v3

    .line 2757
    .end local v5    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :catch_2
    move-exception v5

    .line 2759
    .local v5, "e":Ljava/nio/BufferOverflowException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QCRILHOOK_GET_HIDDEN_MENU_VALUE_REQ failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    return-object v4
.end method

.method public qcRilGetMetaInfoForConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "config"    # Ljava/lang/String;

    .line 966
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetMetaInfoForConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public qcRilGetMetaInfoForConfig(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "mbnType"    # I

    .line 971
    const-string v0, "unsupport ISO-8859-1"

    const-string v1, "ISO-8859-1"

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 972
    const/4 v2, 0x0

    .line 973
    .local v2, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .line 975
    .local v3, "payload":[B
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const-string v5, "QC_RIL_OEM_HOOK"

    if-nez v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x7c

    if-gt v4, v6, :cond_2

    .line 977
    const/4 v4, 0x0

    :try_start_0
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v7, v7

    add-int/2addr v6, v7

    new-array v6, v6, [B

    move-object v3, v6

    .line 978
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 979
    .local v6, "buf":Ljava/nio/ByteBuffer;
    nop

    .line 980
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, 0x4

    .line 979
    const v8, 0x80021

    invoke-direct {p0, v6, v8, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 981
    invoke-virtual {v6, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 982
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 986
    nop

    .line 988
    .end local v6    # "buf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v8, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v6

    .line 990
    .local v6, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v7, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_0

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QCRIL_EVT_HOOK_GET_META_INFO failed w/ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-object v2

    .line 996
    :cond_0
    iget-object v7, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v7, :cond_1

    .line 997
    const-string v0, "QCRIL_EVT_HOOK_GET_META_INFO failed w/ null result"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    return-object v2

    .line 1003
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/String;

    iget-object v7, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    invoke-direct {v5, v7, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v5

    .line 1007
    nop

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QCRIL_EVT_HOOK_GET_META_INFO returned w/ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1009
    .end local v6    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    goto :goto_0

    .line 1004
    .restart local v6    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :catch_0
    move-exception v1

    .line 1005
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1006
    return-object v4

    .line 983
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v6    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :catch_1
    move-exception v1

    .line 984
    .restart local v1    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 985
    return-object v4

    .line 1010
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get meta info with incorrect config id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :goto_0
    return-object v2
.end method

.method public qcRilGetOemVersionOfFile(Ljava/lang/String;)[B
    .locals 7
    .param p1, "file"    # Ljava/lang/String;

    .line 620
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 621
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 622
    return-object v1

    .line 624
    :cond_0
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 625
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 626
    .local v2, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const v4, 0x80030

    invoke-direct {p0, v2, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 627
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 629
    invoke-direct {p0, v4, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v3

    .line 630
    .local v3, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v5, "QC_RIL_OEM_HOOK"

    if-eqz v4, :cond_1

    .line 631
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_FILE failed w/ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return-object v1

    .line 635
    :cond_1
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 636
    const-string v4, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_FILE failed w/ null result"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-object v1

    .line 641
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_FILE returned w/ "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 642
    iget-object v1, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    return-object v1
.end method

.method public qcRilGetOemVersionOfID(Ljava/lang/String;)[B
    .locals 7
    .param p1, "config_id"    # Ljava/lang/String;

    .line 698
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 699
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "QC_RIL_OEM_HOOK"

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x7c

    if-le v0, v3, :cond_0

    goto :goto_0

    .line 704
    :cond_0
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    new-array v0, v0, [B

    .line 705
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 706
    .local v3, "buf":Ljava/nio/ByteBuffer;
    nop

    .line 707
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 706
    const v5, 0x80031

    invoke-direct {p0, v3, v5, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 709
    :try_start_0
    const-string v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    nop

    .line 715
    invoke-direct {p0, v5, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v4

    .line 716
    .local v4, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 717
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_ID failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    return-object v2

    .line 721
    :cond_1
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_2

    .line 722
    const-string v5, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_ID failed w/ null result"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    return-object v2

    .line 727
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_ID returned w/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 728
    iget-object v1, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    return-object v1

    .line 710
    .end local v4    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :catch_0
    move-exception v1

    .line 711
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "unsupport ISO-8859-1"

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 712
    return-object v2

    .line 700
    .end local v0    # "payload":[B
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    :cond_3
    :goto_0
    const-string v0, "invalid config_id"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    return-object v2
.end method

.method public qcRilGetPreferredNetworkAcqOrder(I)B
    .locals 9
    .param p1, "phoneId"    # I

    .line 1451
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1452
    const/4 v0, 0x0

    .line 1453
    .local v0, "acq_order":B
    const v1, 0x8001c

    .line 1454
    .local v1, "requestId":I
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v2, v2, [B

    .line 1455
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1457
    .local v3, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x4

    invoke-direct {p0, v3, v1, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1458
    invoke-direct {p0, v1, v2, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v4

    .line 1460
    .local v4, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v6, "QC_RIL_OEM_HOOK"

    if-nez v5, :cond_1

    .line 1461
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 1462
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 1463
    .local v5, "result":[B
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1464
    .local v6, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 1465
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "acq order is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1466
    .end local v5    # "result":[B
    .end local v6    # "byteBuf":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 1467
    :cond_0
    const-string v5, "no acq order result return"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1470
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QCRIL set acq order cmd returned exception: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :goto_0
    return v0
.end method

.method public qcRilGetPreferredNetworkBandPref(II)B
    .locals 9
    .param p1, "bandType"    # I
    .param p2, "phoneId"    # I

    .line 1693
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1694
    const/4 v0, 0x0

    .line 1695
    .local v0, "band_pref":B
    const v1, 0x80026

    .line 1696
    .local v1, "requestId":I
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v2, v2, [B

    .line 1697
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1699
    .local v3, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x4

    invoke-direct {p0, v3, v1, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1700
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1702
    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v4

    .line 1704
    .local v4, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v6, "QC_RIL_OEM_HOOK"

    if-nez v5, :cond_1

    .line 1705
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 1706
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 1707
    .local v5, "result":[B
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1708
    .local v6, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 1709
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "band pref is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1710
    .end local v5    # "result":[B
    .end local v6    # "byteBuf":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 1711
    :cond_0
    const-string v5, "no band pref result return"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1714
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QCRIL get band perf cmd returned exception: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :goto_0
    return v0
.end method

.method public qcRilGetPrioritySub()I
    .locals 7

    .line 1057
    const/4 v0, 0x0

    .line 1058
    .local v0, "retval":I
    const v1, 0x80008

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 1060
    .local v1, "result":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v3, "QC_RIL_OEM_HOOK"

    if-eqz v2, :cond_0

    .line 1061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRIL  get priority sub Command returned Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1063
    :cond_0
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1064
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 1065
    .local v2, "buf":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1066
    .local v4, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 1067
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "qcRilGetPrioritySub: priority subscription is :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    .end local v2    # "buf":[B
    .end local v4    # "byteBuf":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 1069
    :cond_1
    const-string v2, "QCRIL get priority sub Command returned null response "

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :goto_0
    return v0
.end method

.method public qcRilGetPrioritySubscription()I
    .locals 5

    .line 1232
    const/4 v0, 0x0

    .line 1233
    .local v0, "subscriptionIndex":I
    const v1, 0x80008

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 1234
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v3, "QC_RIL_OEM_HOOK"

    if-nez v2, :cond_1

    .line 1235
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1236
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 1237
    .local v2, "response":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 1238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcRilGetPrioritySubscription: subscriptionIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1240
    .end local v2    # "response":[B
    goto :goto_0

    .line 1241
    :cond_0
    const-string v2, "qcRilGetPrioritySubscription: Null Response"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1244
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcRilGetPrioritySubscription: Exception "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :goto_0
    return v0
.end method

.method public qcRilGetQcVersionOfFile(Ljava/lang/String;)[B
    .locals 7
    .param p1, "file"    # Ljava/lang/String;

    .line 585
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 586
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 587
    return-object v1

    .line 589
    :cond_0
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 590
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 591
    .local v2, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const v4, 0x8002d

    invoke-direct {p0, v2, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 592
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 594
    invoke-direct {p0, v4, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v3

    .line 595
    .local v3, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v5, "QC_RIL_OEM_HOOK"

    if-eqz v4, :cond_1

    .line 596
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_FILE failed w/ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return-object v1

    .line 600
    :cond_1
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 601
    const-string v4, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_FILE failed w/ null result"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-object v1

    .line 606
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_FILE returned w/ "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 607
    iget-object v1, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    return-object v1
.end method

.method public qcRilGetQcVersionOfID(Ljava/lang/String;)[B
    .locals 7
    .param p1, "configId"    # Ljava/lang/String;

    .line 655
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 656
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "QC_RIL_OEM_HOOK"

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x7c

    if-le v0, v3, :cond_0

    goto :goto_0

    .line 661
    :cond_0
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    new-array v0, v0, [B

    .line 662
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 663
    .local v3, "buf":Ljava/nio/ByteBuffer;
    nop

    .line 664
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 663
    const v5, 0x8002f

    invoke-direct {p0, v3, v5, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 666
    :try_start_0
    const-string v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    nop

    .line 672
    invoke-direct {p0, v5, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v4

    .line 673
    .local v4, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 674
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_ID failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-object v2

    .line 678
    :cond_1
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_2

    .line 679
    const-string v5, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_ID failed w/ null result"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return-object v2

    .line 684
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_ID returned w/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 685
    iget-object v1, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    return-object v1

    .line 667
    .end local v4    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :catch_0
    move-exception v1

    .line 668
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "unsupport ISO-8859-1"

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 669
    return-object v2

    .line 657
    .end local v0    # "payload":[B
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    :cond_3
    :goto_0
    const-string v0, "invalid config id"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return-object v2
.end method

.method public qcRilGetSlotStatus()[B
    .locals 5

    .line 1730
    const v0, 0x800da

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v0

    .line 1731
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    const-string v3, "QC_RIL_OEM_HOOK"

    if-eqz v1, :cond_0

    .line 1732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRIL_EVT_HOOK_GET_SLOTS_STATUS_REQ failed w/ "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    return-object v2

    .line 1736
    :cond_0
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 1737
    const-string v1, "QCRIL_EVT_HOOK_GET_SLOTS_STATUS_REQ failed w/ null result"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    return-object v2

    .line 1742
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QCRIL_EVT_HOOK_GET_SLOTS_STATUS_REQ returned w/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1743
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    return-object v1
.end method

.method public qcRilGetTuneAway()Z
    .locals 7

    .line 1173
    const/4 v0, 0x0

    .line 1175
    .local v0, "tuneAway":Z
    const v1, 0x80006

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 1177
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v3, "QC_RIL_OEM_HOOK"

    if-nez v2, :cond_2

    .line 1178
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1179
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 1180
    .local v2, "response":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1181
    .local v3, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 1182
    .local v4, "tuneAwayValue":B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "qcRilGetTuneAway: tuneAwayValue "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1184
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1185
    const/4 v0, 0x1

    .line 1187
    .end local v2    # "response":[B
    .end local v3    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "tuneAwayValue":B
    :cond_0
    goto :goto_0

    .line 1188
    :cond_1
    const-string v2, "qcRilGetTuneAway: Null Response"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1191
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcRilGetTuneAway: Exception "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :goto_0
    return v0
.end method

.method public qcRilGoCrash()Z
    .locals 6

    .line 2430
    const/4 v0, 0x0

    .line 2431
    .local v0, "retval":Z
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v1, v1, [B

    .line 2433
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2435
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const v3, 0x89007

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2437
    invoke-direct {p0, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v3

    .line 2439
    .local v3, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 2440
    const/4 v0, 0x1

    goto :goto_0

    .line 2442
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QCRIL go crash returned exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "QC_RIL_OEM_HOOK"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    :goto_0
    return v0
.end method

.method public qcRilGoDormant(Ljava/lang/String;)Z
    .locals 4
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 1023
    const/4 v0, 0x0

    .line 1024
    .local v0, "retval":Z
    const v1, 0x80003

    invoke-virtual {p0, v1, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(ILjava/lang/String;)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 1026
    .local v1, "result":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1028
    const/4 v0, 0x1

    goto :goto_0

    .line 1030
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Go Dormant Command returned Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QC_RIL_OEM_HOOK"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :goto_0
    return v0
.end method

.method public qcRilGoDormant(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .line 1039
    const/4 v0, 0x0

    .line 1040
    .local v0, "retval":Z
    const v1, 0x80003

    invoke-virtual {p0, v1, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(ILjava/lang/String;I)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 1042
    .local v1, "result":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1044
    const/4 v0, 0x1

    goto :goto_0

    .line 1046
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Go Dormant Command returned Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QC_RIL_OEM_HOOK"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :goto_0
    return v0
.end method

.method public qcRilInformShutDown(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QCRIL Inform shutdown for phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1251
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook$2;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V

    .line 1257
    .local v0, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    const v2, 0x8000a

    invoke-virtual {p0, v2, v1, v0, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 1259
    const/4 v1, 0x1

    return v1
.end method

.method public qcRilNvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "parm1"    # Ljava/lang/String;
    .param p3, "parm2"    # Ljava/lang/String;
    .param p4, "phoneId"    # I

    .line 2830
    const-string v0, "QC_RIL_OEM_HOOK"

    const/4 v1, 0x0

    .line 2831
    .local v1, "payload":[B
    const/4 v2, 0x0

    .line 2832
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 2833
    .local v3, "bts":[B
    const/4 v4, 0x0

    .line 2834
    .local v4, "result":Ljava/lang/String;
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-array v1, v5, [B

    .line 2835
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2838
    const/4 v5, 0x0

    :try_start_0
    const-string v6, "QCRILHOOK_RECOVERY_NV_WRITE_REQ"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const v7, 0x8900b

    invoke-direct {p0, v2, v7, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2840
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2841
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2842
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2843
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2844
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2845
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2846
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2851
    nop

    .line 2852
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QCRILHOOK_RECOVERY_NV_WRITE_REQ reqbuffer: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    invoke-direct {p0, v7, v1, p4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v6

    .line 2855
    .local v6, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v7, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_0

    .line 2856
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QCRILHOOK_RECOVERY_NV_WRITE_REQ  failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    return-object v5

    .line 2860
    :cond_0
    iget-object v7, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v7, :cond_1

    .line 2861
    const-string v7, "QCRILHOOK_RECOVERY_NV_WRITE_REQ  null response for a get request"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    return-object v5

    .line 2865
    :cond_1
    iget-object v0, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 2866
    .end local v3    # "bts":[B
    .local v0, "bts":[B
    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->ascallByteToString([BII)Ljava/lang/String;

    move-result-object v3

    .line 2868
    .end local v4    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    return-object v3

    .line 2847
    .end local v0    # "bts":[B
    .end local v6    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    .local v3, "bts":[B
    .restart local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 2849
    .local v6, "e":Ljava/nio/BufferOverflowException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QCRILHOOK_RECOVERY_NV_WRITE_REQ failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    return-object v5
.end method

.method public qcRilOpCsgNetworkScan()[B
    .locals 5

    .line 3460
    const v0, 0x80193

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v0

    .line 3461
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 3462
    .local v1, "response":[B
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v3, "QC_RIL_OEM_HOOK"

    if-nez v2, :cond_1

    .line 3463
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 3464
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [B

    .line 3465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qcRilOpCsgNetworkScan, response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 3467
    :cond_0
    const-string v2, "qcRilGetCsgId: Null Response"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3470
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcRilGetCsgId: Exception "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    :goto_0
    return-object v1
.end method

.method public qcRilOpSelectFemtocellByCsgId(J)Z
    .locals 5
    .param p1, "csgId"    # J

    .line 3476
    const/4 v0, 0x0

    .line 3477
    .local v0, "returnValue":Z
    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 3479
    .local v1, "payload":B
    const v2, 0x80194

    invoke-virtual {p0, v2, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(IB)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    .line 3481
    .local v2, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 3482
    const/4 v0, 0x1

    goto :goto_0

    .line 3484
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcRilOpSelectFemtocellByCsgId: Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QC_RIL_OEM_HOOK"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    :goto_0
    return v0
.end method

.method public qcRilOpStartModemActivityDetect()Z
    .locals 4

    .line 3367
    const/4 v0, 0x0

    .line 3369
    .local v0, "returnValue":Z
    const v1, 0x80191

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 3370
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 3371
    const-string v2, "qcRilOpStartModemActivityDetect success"

    invoke-direct {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->logi(Ljava/lang/String;)V

    .line 3372
    const/4 v0, 0x1

    goto :goto_0

    .line 3374
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qcRilOpStartModemActivityDetect failed, Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->loge(Ljava/lang/String;)V

    .line 3376
    :goto_0
    return v0
.end method

.method public qcRilOpStopModemActivityDetect()Ljava/lang/String;
    .locals 5

    .line 3380
    const v0, 0x80192

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v0

    .line 3381
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 3382
    .local v1, "rilResponse":[B
    const-string v2, ""

    .line 3383
    .local v2, "result":Ljava/lang/String;
    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 3384
    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 3385
    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [B

    .line 3386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcRilOpStopModemActivityDetect, rilResponse.length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", rilResponse:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3387
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3386
    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->logi(Ljava/lang/String;)V

    .line 3388
    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->opTransferDataUsageByteToStringFormat([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3390
    :cond_0
    const-string v3, "qcRilOpStopModemActivityDetect: Null Response"

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->loge(Ljava/lang/String;)V

    .line 3391
    const-string v2, "Error: Null Response"

    goto :goto_0

    .line 3394
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcRilOpStopModemActivityDetect: Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->loge(Ljava/lang/String;)V

    .line 3395
    const-string v2, "Error: ar.exception != NULL"

    .line 3397
    :goto_0
    return-object v2
.end method

.method public qcRilPerformIncrManualScan(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 1342
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1343
    const/4 v0, 0x0

    .line 1344
    .local v0, "retval":Z
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v1, v1, [B

    .line 1346
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1348
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const v3, 0x80012

    invoke-direct {p0, v2, v3, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1350
    invoke-direct {p0, v3, v1, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v3

    .line 1353
    .local v3, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1354
    const/4 v0, 0x1

    goto :goto_0

    .line 1356
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QCRIL perform incr manual scan returned exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "QC_RIL_OEM_HOOK"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :goto_0
    return v0
.end method

.method public qcRilRecNvWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "parm1"    # Ljava/lang/String;
    .param p3, "parm2"    # Ljava/lang/String;
    .param p4, "phoneId"    # I

    .line 3019
    const-string v0, "QC_RIL_OEM_HOOK"

    const/4 v1, 0x0

    .line 3020
    .local v1, "payload":[B
    const/4 v2, 0x0

    .line 3021
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 3022
    .local v3, "bts":[B
    const/4 v4, 0x0

    .line 3023
    .local v4, "result":Ljava/lang/String;
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-array v1, v5, [B

    .line 3024
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 3027
    const/4 v5, 0x0

    :try_start_0
    const-string v6, "QCRILHOOK_RECOVERY_NV_WRITE_REQ"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const v7, 0x8900b

    invoke-direct {p0, v2, v7, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 3029
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3030
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3031
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 3032
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3033
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 3034
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3035
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3040
    nop

    .line 3041
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QCRILHOOK_RECOVERY_NV_WRITE_REQ reqbuffer: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    invoke-direct {p0, v7, v1, p4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v6

    .line 3044
    .local v6, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v7, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_0

    .line 3045
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QCRILHOOK_RECOVERY_NV_WRITE_REQ  failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    return-object v5

    .line 3049
    :cond_0
    iget-object v7, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v7, :cond_1

    .line 3050
    const-string v7, "QCRILHOOK_RECOVERY_NV_WRITE_REQ  null response for a get request"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    return-object v5

    .line 3054
    :cond_1
    iget-object v0, v6, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 3055
    .end local v3    # "bts":[B
    .local v0, "bts":[B
    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->ascallByteToString([BII)Ljava/lang/String;

    move-result-object v3

    .line 3057
    .end local v4    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    return-object v3

    .line 3036
    .end local v0    # "bts":[B
    .end local v6    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    .local v3, "bts":[B
    .restart local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 3038
    .local v6, "e":Ljava/nio/BufferOverflowException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QCRILHOOK_RECOVERY_NV_WRITE_REQ failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    return-object v5
.end method

.method public qcRilSelectConfig(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "subMask"    # I

    .line 920
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSelectConfig(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public qcRilSelectConfig(Ljava/lang/String;II)Z
    .locals 8
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "subMask"    # I
    .param p3, "mbnType"    # I

    .line 935
    const-string v0, "ISO-8859-1"

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 936
    const/4 v1, 0x0

    .line 937
    .local v1, "payload":[B
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "QC_RIL_OEM_HOOK"

    const/4 v4, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x7c

    if-gt v2, v5, :cond_1

    .line 939
    :try_start_0
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v5, 0x1

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x4

    .line 940
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v2, v6

    new-array v2, v2, [B

    move-object v1, v2

    .line 941
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 942
    .local v2, "buf":Ljava/nio/ByteBuffer;
    nop

    .line 943
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x5

    .line 942
    const v7, 0x80020

    invoke-direct {p0, v2, v7, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 944
    int-to-byte v6, p2

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 945
    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 946
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    nop

    .line 952
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v7, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v0

    .line 953
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 954
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QCRIL_EVT_HOOK_SEL_CONFIG failed w/ "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    return v4

    .line 958
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_0
    nop

    .line 962
    return v5

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "unsupport ISO-8859-1"

    invoke-direct {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 949
    return v4

    .line 959
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select with incorrect config id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    return v4
.end method

.method public qcRilSendApnInfo(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "isValid"    # I
    .param p4, "phoneId"    # I

    .line 1580
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1581
    const v0, 0x8002a

    .line 1582
    .local v0, "requestId":I
    new-instance v1, Lcom/qualcomm/qcrilhook/QcRilHook$5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook$5;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V

    .line 1588
    .local v1, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0xc

    .line 1589
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    .line 1590
    .local v2, "payloadSize":I
    const/16 v3, 0x400

    if-le v2, v3, :cond_0

    .line 1591
    const-string v3, "QC_RIL_OEM_HOOK"

    const-string v4, "APN sent is larger than maximum buffer. Bail out"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    return-void

    .line 1594
    :cond_0
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/2addr v3, v2

    new-array v3, v3, [B

    .line 1595
    .local v3, "request":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1596
    .local v4, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v4, v0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1597
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1598
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1599
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1600
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1601
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1602
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1603
    invoke-virtual {v4, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1604
    invoke-direct {p0, v0, v3, v1, p4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 1605
    return-void
.end method

.method public qcRilSendDDSInfo(III)Z
    .locals 7
    .param p1, "dds"    # I
    .param p2, "reason"    # I
    .param p3, "phoneId"    # I

    .line 1608
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1609
    const/4 v0, 0x0

    .line 1610
    .local v0, "retval":Z
    const v1, 0x80027

    .line 1611
    .local v1, "requestId":I
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v3, 0x8

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 1612
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1614
    .local v4, "reqBuffer":Ljava/nio/ByteBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dds phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1615
    invoke-direct {p0, v4, v1, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1616
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1617
    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1619
    invoke-direct {p0, v1, v2, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v3

    .line 1620
    .local v3, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1621
    const/4 v0, 0x1

    goto :goto_0

    .line 1623
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL send dds sub info returned exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "QC_RIL_OEM_HOOK"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :goto_0
    return v0
.end method

.method public qcRilSendDataEnableStatus(II)V
    .locals 5
    .param p1, "enable"    # I
    .param p2, "phoneId"    # I

    .line 1520
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1521
    const v0, 0x80028

    .line 1522
    .local v0, "requestId":I
    new-instance v1, Lcom/qualcomm/qcrilhook/QcRilHook$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook$3;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V

    .line 1528
    .local v1, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v3, 0x4

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 1529
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1530
    .local v4, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v4, v0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1531
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1532
    invoke-direct {p0, v0, v2, v1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 1533
    return-void
.end method

.method public qcRilSendDataRoamingEnableStatus(II)V
    .locals 5
    .param p1, "enable"    # I
    .param p2, "phoneId"    # I

    .line 1546
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1547
    const v0, 0x80029

    .line 1548
    .local v0, "requestId":I
    new-instance v1, Lcom/qualcomm/qcrilhook/QcRilHook$4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook$4;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V

    .line 1554
    .local v1, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v3, 0x4

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 1555
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1556
    .local v4, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v4, v0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1557
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1558
    invoke-direct {p0, v0, v2, v1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 1559
    return-void
.end method

.method public qcRilSendProtocolBufferMessage([BI)[B
    .locals 5
    .param p1, "protocolBuffer"    # [B
    .param p2, "phoneId"    # I

    .line 1136
    const/4 v0, 0x0

    .line 1137
    .local v0, "returnValue":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qcRilSendProtoBufMessage: protocolBuffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1139
    const v1, 0x80065

    invoke-virtual {p0, v1, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 1141
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v3, "QC_RIL_OEM_HOOK"

    if-eqz v2, :cond_0

    .line 1142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcRilSendProtoBufMessage: Exception "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    return-object v0

    .line 1145
    :cond_0
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 1146
    const-string v2, "QCRIL_EVT_HOOK_PROTOBUF_MSG returned null"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    return-object v0

    .line 1149
    :cond_1
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    return-object v2
.end method

.method public qcRilSetCABandCombo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "CACombos"    # Ljava/lang/String;

    .line 3298
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 3301
    const/4 v0, 0x1

    .line 3302
    .local v0, "isCAEnabled":Z
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_UST_CAPABILITY_OPERATE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v2, 0x1

    new-array v3, v2, [B

    const/4 v4, 0x5

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    invoke-virtual {p0, v1, v3, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 3304
    .local v1, "queryAr":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v1, :cond_1

    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 3305
    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 3306
    .local v3, "state":[B
    aget-byte v4, v3, v5

    if-ne v4, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    move v0, v4

    .line 3307
    .end local v3    # "state":[B
    goto :goto_1

    .line 3308
    :cond_1
    const/4 v0, 0x0

    .line 3310
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcRilSetCABandCombo, current CA state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QC_RIL_OEM_HOOK"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    const/4 v3, 0x3

    .line 3313
    .local v3, "setCAState":I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3314
    const/4 v3, 0x4

    .line 3317
    :cond_2
    if-eqz v0, :cond_3

    const/4 v6, 0x4

    if-eq v3, v6, :cond_4

    :cond_3
    if-nez v0, :cond_5

    const/4 v6, 0x3

    if-ne v3, v6, :cond_5

    :cond_4
    move v6, v2

    goto :goto_2

    :cond_5
    move v6, v5

    .line 3320
    .local v6, "needUpdateCAState":Z
    :goto_2
    if-eqz v6, :cond_7

    .line 3321
    sget-object v7, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_UST_CAPABILITY_OPERATE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    new-array v8, v2, [B

    int-to-byte v9, v3

    aput-byte v9, v8, v5

    invoke-virtual {p0, v7, v8, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v7

    .line 3323
    .local v7, "setAr":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v7, :cond_6

    iget-object v8, v7, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_6

    .line 3324
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "qcRilSetCABandCombo, set CA state to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3326
    :cond_6
    const-string v2, "qcRilSetCABandCombo, set CA state error, return false."

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    return v5

    .line 3332
    .end local v7    # "setAr":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_7
    :goto_3
    iget v7, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-array v7, v7, [B

    .line 3333
    .local v7, "payload":[B
    invoke-static {v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 3336
    .local v8, "buf":Ljava/nio/ByteBuffer;
    nop

    .line 3337
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x8

    .line 3336
    const v10, 0x89012

    invoke-direct {p0, v8, v10, v9}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 3338
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3339
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3340
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3344
    nop

    .line 3346
    invoke-direct {p0, v10, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v9

    .line 3347
    .local v9, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v10, v9, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_8

    .line 3348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "qcRilSetCABandCombo failed w/ "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    return v5

    .line 3352
    :cond_8
    return v2

    .line 3341
    .end local v9    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :catch_0
    move-exception v2

    .line 3342
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "qcRilSetCABandCombo failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    return v5
.end method

.method public qcRilSetCdmaSubSrcWithSpc(ILjava/lang/String;)Z
    .locals 10
    .param p1, "cdmaSubscription"    # I
    .param p2, "spc"    # Ljava/lang/String;

    .line 1094
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1095
    const/4 v0, 0x0

    .line 1097
    .local v0, "retval":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qcRilSetCdmaSubSrcWithSpc: Set Cdma Subscription to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "QC_RIL_OEM_HOOK"

    if-nez v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x6

    if-gt v1, v3, :cond_4

    .line 1101
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 1106
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1107
    .local v4, "buf":Ljava/nio/ByteBuffer;
    int-to-byte v5, p1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1108
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1110
    const v5, 0x8000b

    invoke-virtual {p0, v5, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v5

    .line 1112
    .local v5, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v6, v5, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_2

    .line 1113
    iget-object v2, v5, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 1114
    iget-object v2, v5, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 1115
    .local v2, "result":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1116
    .local v6, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 1117
    .local v7, "succeed":B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "QCRIL Set Cdma Subscription Source Command "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    if-ne v7, v3, :cond_0

    const-string v9, "Succeed."

    goto :goto_0

    :cond_0
    const-string v9, "Failed."

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1117
    invoke-direct {p0, v8}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1119
    if-ne v7, v3, :cond_1

    .line 1120
    const/4 v0, 0x1

    goto :goto_1

    .line 1122
    :cond_1
    const/4 v0, 0x0

    .line 1124
    .end local v2    # "result":[B
    .end local v6    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v7    # "succeed":B
    :goto_1
    goto :goto_2

    .line 1126
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL Set Cdma Subscription Source Command returned Exception: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    .end local v1    # "payload":[B
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v5    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_3
    :goto_2
    goto :goto_3

    .line 1130
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QCRIL Set Cdma Subscription Source Command incorrect SPC: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :goto_3
    return v0
.end method

.method public qcRilSetConfig(Ljava/lang/String;)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .line 557
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public qcRilSetConfig(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "subMask"    # I

    .line 572
    invoke-virtual {p0, p1, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "subMask"    # I

    .line 491
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 7
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "subMask"    # I
    .param p4, "mbnType"    # I

    .line 508
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 509
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "QC_RIL_OEM_HOOK"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x7c

    if-gt v0, v3, :cond_1

    .line 510
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 511
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x4

    .line 512
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    new-array v0, v0, [B

    .line 513
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 518
    .local v3, "buf":Ljava/nio/ByteBuffer;
    nop

    .line 519
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 518
    const v5, 0x80015

    invoke-direct {p0, v3, v5, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 520
    int-to-byte v4, p3

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 521
    invoke-virtual {v3, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 522
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 523
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 525
    :try_start_0
    const-string v4, "ISO-8859-1"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    nop

    .line 530
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 532
    invoke-direct {p0, v5, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v4

    .line 533
    .local v4, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 534
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL_EVT_HOOK_SET_CONFIG failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return v2

    .line 538
    .end local v0    # "payload":[B
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    .end local v4    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_0
    nop

    .line 543
    const/4 v0, 0x1

    return v0

    .line 526
    .restart local v0    # "payload":[B
    .restart local v3    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 527
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "unsupport ISO-8859-1"

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 528
    return v2

    .line 539
    .end local v0    # "payload":[B
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set with incorrect config id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return v2
.end method

.method public qcRilSetFieldTestMode(IBI)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "ratType"    # B
    .param p3, "enable"    # I

    .line 1276
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1277
    const/4 v0, 0x0

    .line 1279
    .local v0, "retval":Z
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    .line 1280
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1282
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const v3, 0x80013

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1283
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1284
    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "ratType ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1286
    invoke-direct {p0, v3, v1, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v3

    .line 1288
    .local v3, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1289
    const/4 v0, 0x1

    goto :goto_0

    .line 1291
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QCRIL enable engineer mode cmd returned exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "QC_RIL_OEM_HOOK"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :goto_0
    return v0
.end method

.method public qcRilSetHiddenMenuDataLteHM00117(III)Z
    .locals 6
    .param p1, "type"    # I
    .param p2, "value"    # I
    .param p3, "phoneId"    # I

    .line 2919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QCRILHOOK_SET_HIDDEN_MENU_HM00117_REQ:type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QC_RIL_OEM_HOOK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 2921
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mPeriscopeSerivceData:[I

    .line 2923
    :cond_0
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v2, 0x8

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 2924
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2926
    .local v3, "buf":Ljava/nio/ByteBuffer;
    const v4, 0x8900d

    invoke-direct {p0, v3, v4, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2927
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2928
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2930
    invoke-direct {p0, v4, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    .line 2931
    .local v2, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 2932
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QCRILHOOK_SET_HIDDEN_MENU_HM00117_REQ failed w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    const/4 v1, 0x0

    return v1

    .line 2936
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public qcRilSetHiddenMenuDataLteHM00117BsrMaxStage(II)Z
    .locals 1
    .param p1, "value"    # I
    .param p2, "phoneId"    # I

    .line 2952
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetHiddenMenuDataLteHM00117(III)Z

    move-result v0

    return v0
.end method

.method public qcRilSetHiddenMenuDataLteHM00117CustomScanEnabled(II)Z
    .locals 1
    .param p1, "value"    # I
    .param p2, "phoneId"    # I

    .line 2992
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetHiddenMenuDataLteHM00117(III)Z

    move-result v0

    return v0
.end method

.method public qcRilSetHiddenMenuDataLteHM00117HandupEnabled(II)Z
    .locals 1
    .param p1, "value"    # I
    .param p2, "phoneId"    # I

    .line 2960
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetHiddenMenuDataLteHM00117(III)Z

    move-result v0

    return v0
.end method

.method public qcRilSetHiddenMenuDataLteHM00117LteHdrScanInterval(II)Z
    .locals 1
    .param p1, "value"    # I
    .param p2, "phoneId"    # I

    .line 3000
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetHiddenMenuDataLteHM00117(III)Z

    move-result v0

    return v0
.end method

.method public qcRilSetHiddenMenuDataLteHM00117MaxScanTime(II)Z
    .locals 1
    .param p1, "value"    # I
    .param p2, "phoneId"    # I

    .line 2984
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetHiddenMenuDataLteHM00117(III)Z

    move-result v0

    return v0
.end method

.method public qcRilSetHiddenMenuDataLteHM00117NextLTE(II)Z
    .locals 1
    .param p1, "value"    # I
    .param p2, "phoneId"    # I

    .line 2944
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetHiddenMenuDataLteHM00117(III)Z

    move-result v0

    return v0
.end method

.method public qcRilSetHiddenMenuDataLteHM00117PsActiveDuration(II)Z
    .locals 1
    .param p1, "value"    # I
    .param p2, "phoneId"    # I

    .line 2968
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetHiddenMenuDataLteHM00117(III)Z

    move-result v0

    return v0
.end method

.method public qcRilSetHiddenMenuDataLteHM00117PsDormancy(II)Z
    .locals 1
    .param p1, "value"    # I
    .param p2, "phoneId"    # I

    .line 2976
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetHiddenMenuDataLteHM00117(III)Z

    move-result v0

    return v0
.end method

.method public qcRilSetHiddenMenuValue(ILjava/lang/String;I)Z
    .locals 5
    .param p1, "request"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 2811
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 2812
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2814
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    const v3, 0x8900a

    invoke-direct {p0, v1, v3, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2815
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2816
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2817
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2819
    invoke-direct {p0, v3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    .line 2820
    .local v2, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 2821
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QCRILHOOK_SET_HIDDEN_MENU_VALUE_REQ failed w/ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QC_RIL_OEM_HOOK"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    const/4 v3, 0x0

    return v3

    .line 2826
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public qcRilSetLteBandPriority([Ljava/lang/String;I)Z
    .locals 9
    .param p1, "bandPriorityList"    # [Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 3061
    const/4 v0, 0x0

    .line 3062
    .local v0, "dataLength":I
    array-length v1, p1

    .line 3063
    .local v1, "bandPriorityLength":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qcRilSetLteBandPriority() bandPriorityLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QC_RIL_OEM_HOOK"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3065
    aget-object v4, p1, v2

    if-eqz v4, :cond_0

    .line 3066
    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    .line 3067
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qcRilSetLteBandPriority() i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " dataLength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3071
    .end local v2    # "i":I
    :cond_1
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v2, v2, 0x4

    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v2, v4

    add-int/2addr v2, v0

    new-array v2, v2, [B

    .line 3072
    .local v2, "payload":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 3075
    .local v4, "buf":Ljava/nio/ByteBuffer;
    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v0

    const/4 v6, 0x0

    const v7, 0x8900e

    :try_start_0
    invoke-direct {p0, v4, v7, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 3077
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3078
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_3

    .line 3079
    aget-object v8, p1, v5

    if-eqz v8, :cond_2

    .line 3080
    aget-object v8, p1, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3081
    aget-object v8, p1, v5

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3078
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3087
    .end local v5    # "i":I
    :cond_3
    nop

    .line 3089
    invoke-direct {p0, v7, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v5

    .line 3090
    .local v5, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v7, v5, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_4

    .line 3091
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "qcRilSetLteBandPriority failed w/ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    return v6

    .line 3096
    :cond_4
    const/4 v3, 0x1

    return v3

    .line 3084
    .end local v5    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :catch_0
    move-exception v5

    .line 3085
    .local v5, "e":Ljava/nio/BufferOverflowException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QCRILHOOK_SET_HIDDEN_MENU_LTE_BAND_PRIORITY_REQ failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    return v6
.end method

.method public qcRilSetLteTuneaway(ZI)Z
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "phoneId"    # I

    .line 1487
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1488
    const/4 v0, 0x0

    .line 1489
    .local v0, "retval":Z
    move v1, p1

    .line 1490
    .local v1, "tuneaway":B
    const v2, 0x8002b

    .line 1491
    .local v2, "requestId":I
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 1492
    .local v3, "request":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1495
    .local v5, "reqBuffer":Ljava/nio/ByteBuffer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qcRilSetLteTuneaway enable :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1496
    invoke-direct {p0, v5, v2, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1497
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1499
    invoke-direct {p0, v2, v3, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v4

    .line 1500
    .local v4, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v6, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_0

    .line 1501
    const/4 v0, 0x1

    goto :goto_0

    .line 1503
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QCRIL set lte tune away returned exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "QC_RIL_OEM_HOOK"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :goto_0
    return v0
.end method

.method public qcRilSetPreferredNetworkAcqOrder(II)Z
    .locals 7
    .param p1, "acqOrder"    # I
    .param p2, "phoneId"    # I

    .line 1420
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1421
    const/4 v0, 0x0

    .line 1422
    .local v0, "retval":Z
    const v1, 0x8001b

    .line 1423
    .local v1, "requestId":I
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v3, 0x4

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 1424
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1427
    .local v4, "reqBuffer":Ljava/nio/ByteBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "acq order: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1428
    invoke-direct {p0, v4, v1, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1429
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1431
    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v3

    .line 1432
    .local v3, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1433
    const/4 v0, 0x1

    goto :goto_0

    .line 1435
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL set acq order cmd returned exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "QC_RIL_OEM_HOOK"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :goto_0
    return v0
.end method

.method public qcRilSetPreferredNetworkBandPref(II)Z
    .locals 7
    .param p1, "bandPref"    # I
    .param p2, "phoneId"    # I

    .line 1661
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1662
    const/4 v0, 0x0

    .line 1663
    .local v0, "retval":Z
    const v1, 0x80025

    .line 1664
    .local v1, "requestId":I
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v3, 0x4

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 1665
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1668
    .local v4, "reqBuffer":Ljava/nio/ByteBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "band pref: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1669
    invoke-direct {p0, v4, v1, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1670
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1672
    invoke-direct {p0, v1, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v3

    .line 1673
    .local v3, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1674
    const/4 v0, 0x1

    goto :goto_0

    .line 1676
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL set band pref cmd returned exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "QC_RIL_OEM_HOOK"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :goto_0
    return v0
.end method

.method public qcRilSetPrioritySub(I)Z
    .locals 6
    .param p1, "priorityIndex"    # I

    .line 1076
    const/4 v0, 0x0

    .line 1077
    .local v0, "retval":Z
    int-to-byte v1, p1

    .line 1079
    .local v1, "payload":B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qcRilSetPrioritySub: Outgoing priority subscription is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QC_RIL_OEM_HOOK"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const v2, 0x80007

    invoke-virtual {p0, v2, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(IB)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    .line 1082
    .local v2, "result":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1083
    const/4 v0, 0x1

    goto :goto_0

    .line 1085
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QCRIL set priority sub Command returned Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :goto_0
    return v0
.end method

.method public qcRilSetPrioritySubscription(I)Z
    .locals 5
    .param p1, "priorityIndex"    # I

    .line 1197
    const/4 v0, 0x0

    .line 1198
    .local v0, "returnValue":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qcRilSetPrioritySubscription: PrioritySubscription to be set to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1201
    int-to-byte v1, p1

    .line 1202
    .local v1, "payload":B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qcRilSetPrioritySubscription: PrioritySubscription payload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1204
    const v2, 0x80007

    invoke-virtual {p0, v2, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(IB)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    .line 1206
    .local v2, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1207
    const/4 v0, 0x1

    goto :goto_0

    .line 1209
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcRilSetPrioritySubscription: Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QC_RIL_OEM_HOOK"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :goto_0
    return v0
.end method

.method public qcRilSetTuneAway(Z)Z
    .locals 5
    .param p1, "tuneAway"    # Z

    .line 1153
    const/4 v0, 0x0

    .line 1154
    .local v0, "returnValue":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qcRilSetTuneAway: tuneAway Value to be set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1156
    const/4 v1, 0x0

    .line 1157
    .local v1, "payload":B
    if-eqz p1, :cond_0

    .line 1158
    const/4 v1, 0x1

    .line 1160
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qcRilSetTuneAway: tuneAway payload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1162
    const v2, 0x80005

    invoke-virtual {p0, v2, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(IB)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    .line 1164
    .local v2, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 1165
    const/4 v0, 0x1

    goto :goto_0

    .line 1167
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qcRilSetTuneAway: Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QC_RIL_OEM_HOOK"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :goto_0
    return v0
.end method

.method public qcRilSetVoiceRoamingRequest(I)Z
    .locals 7
    .param p1, "value"    # I

    .line 3205
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 3206
    const/4 v0, 0x0

    .line 3207
    .local v0, "retval":Z
    const v1, 0x89010

    .line 3208
    .local v1, "requestId":I
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v3, 0x4

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 3209
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 3211
    .local v4, "reqBuffer":Ljava/nio/ByteBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set voice roaming: type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 3212
    invoke-direct {p0, v4, v1, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 3213
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3215
    invoke-direct {p0, v1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v3

    .line 3216
    .local v3, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 3217
    const/4 v0, 0x1

    goto :goto_0

    .line 3219
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL set voice roaming returned exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "QC_RIL_OEM_HOOK"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    :goto_0
    return v0
.end method

.method public qcRilValidateConfig(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "configId"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 783
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 784
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "QC_RIL_OEM_HOOK"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x7c

    if-le v0, v3, :cond_0

    goto :goto_0

    .line 788
    :cond_0
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    new-array v0, v0, [B

    .line 789
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 790
    .local v3, "buf":Ljava/nio/ByteBuffer;
    const v4, 0x8002e

    .line 791
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    .line 790
    invoke-direct {p0, v3, v4, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 792
    int-to-byte v4, p2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 794
    :try_start_0
    const-string v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    nop

    .line 799
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 801
    const v4, 0x80021

    invoke-direct {p0, v4, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v4

    .line 802
    .local v4, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 803
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL_EVT_HOOK_VALIDATE_CONFIG failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    return v2

    .line 807
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 795
    .end local v4    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :catch_0
    move-exception v1

    .line 796
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "unsupport ISO-8859-1"

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 797
    return v2

    .line 785
    .end local v0    # "payload":[B
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    :cond_2
    :goto_0
    const-string v0, "invalid config id"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    return v2
.end method

.method public qcrilSetBuiltInPLMNList([BI)Z
    .locals 7
    .param p1, "payload"    # [B
    .param p2, "phoneId"    # I

    .line 1384
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1385
    const/4 v0, 0x0

    .line 1386
    .local v0, "retval":Z
    const-string v1, "QC_RIL_OEM_HOOK"

    if-nez p1, :cond_0

    .line 1387
    const-string v2, "payload is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    const/4 v1, 0x0

    return v1

    .line 1391
    :cond_0
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 1392
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1394
    .local v3, "reqBuffer":Ljava/nio/ByteBuffer;
    array-length v4, p1

    const v5, 0x80011

    invoke-direct {p0, v3, v5, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1396
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1398
    invoke-direct {p0, v5, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v4

    .line 1400
    .local v4, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    .line 1401
    const/4 v0, 0x1

    goto :goto_0

    .line 1403
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QCRIL set builtin PLMN list returned exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :goto_0
    return v0
.end method

.method public registerForExtendedDbmIntl(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1867
    return-void
.end method

.method public registerForFieldTestData(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1857
    return-void
.end method

.method public sendQcRilHookMsg(I)Lorg/codeaurora/telephony/utils/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I

    .line 1747
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1748
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v0, v0, [B

    .line 1749
    .local v0, "request":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1751
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1753
    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(IB)Lorg/codeaurora/telephony/utils/AsyncResult;
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "payload"    # B

    .line 1757
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(IBI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public sendQcRilHookMsg(IBI)Lorg/codeaurora/telephony/utils/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # B
    .param p3, "phoneId"    # I

    .line 1760
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1761
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1762
    .local v0, "request":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1764
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v2, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1765
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1767
    invoke-direct {p0, p1, v0, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    return-object v1
.end method

.method public sendQcRilHookMsg(II)Lorg/codeaurora/telephony/utils/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # I

    .line 1785
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1786
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1787
    .local v0, "request":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1789
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v2, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1790
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1792
    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    return-object v1
.end method

.method public sendQcRilHookMsg(ILjava/lang/String;)Lorg/codeaurora/telephony/utils/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # Ljava/lang/String;

    .line 1796
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1797
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1798
    .local v0, "request":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1800
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v1, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1801
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1803
    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(ILjava/lang/String;I)Lorg/codeaurora/telephony/utils/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # Ljava/lang/String;
    .param p3, "SubId"    # I

    .line 1809
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1810
    .local v0, "request":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1812
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v1, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1813
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1815
    invoke-direct {p0, p1, v0, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B

    .line 1771
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public sendQcRilHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B
    .param p3, "phoneId"    # I

    .line 1774
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1775
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1776
    .local v0, "request":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1778
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    array-length v2, p2

    invoke-direct {p0, v1, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1779
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1781
    invoke-direct {p0, p1, v0, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B
    .param p3, "oemHookCb"    # Lcom/qualcomm/qcrilhook/OemHookCallback;

    .line 1820
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 1821
    return-void
.end method

.method public sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B
    .param p3, "oemHookCb"    # Lcom/qualcomm/qcrilhook/OemHookCallback;
    .param p4, "phoneId"    # I

    .line 1825
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1826
    const/4 v0, 0x0

    .line 1827
    .local v0, "payloadLength":I
    if-eqz p2, :cond_0

    .line 1828
    array-length v0, p2

    .line 1831
    :cond_0
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/2addr v1, v0

    new-array v1, v1, [B

    .line 1832
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1834
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v2, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1835
    if-eqz p2, :cond_1

    .line 1836
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1838
    :cond_1
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 1839
    return-void
.end method

.method public set5gBandPref(Z)Z
    .locals 7
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2724
    const/4 v0, 0x0

    .line 2725
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    .line 2726
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2728
    .local v3, "buf":Ljava/nio/ByteBuffer;
    const v4, 0x89006

    invoke-direct {p0, v3, v4, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2729
    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_SET_5G_BAND_PREF:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2730
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2732
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set5gBandPref:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "QC_RIL_OEM_HOOK"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    invoke-direct {p0, v4, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v4

    .line 2735
    .local v4, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    .line 2740
    return v2

    .line 2737
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setEarfcnAndPCI(II)Ljava/lang/String;
    .locals 5
    .param p1, "earfcn"    # I
    .param p2, "PCI"    # I

    .line 2629
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 2630
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2632
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const v3, 0x89006

    invoke-direct {p0, v2, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2633
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_SET_EARFCN_PCI_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2634
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2635
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEarfcnAndPCI Earfcn:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",PCI:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "QC_RIL_OEM_HOOK"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    invoke-direct {p0, v3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 2639
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    const-string v3, "failed"

    goto :goto_0

    :cond_0
    const-string v3, "success"

    :goto_0
    return-object v3
.end method

.method public setFactoryModeModemGPIO(II)Z
    .locals 7
    .param p1, "status"    # I
    .param p2, "num"    # I

    .line 2450
    const/4 v0, 0x0

    .line 2451
    .local v0, "retval":Z
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v2, 0x8

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 2453
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2455
    .local v3, "reqBuffer":Ljava/nio/ByteBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFactoryModeModemGPIO status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", GPIO num:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "QC_RIL_OEM_HOOK"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    const v4, 0x89008

    invoke-direct {p0, v3, v4, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2457
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2458
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2460
    invoke-direct {p0, v4, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    .line 2462
    .local v2, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 2463
    const/4 v0, 0x1

    goto :goto_0

    .line 2465
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Factory Mode Modem GPIO returned exception "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    :goto_0
    return v0
.end method

.method public setLocalCallHold(IZ)Z
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 1629
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1630
    const/4 v0, 0x0

    .line 1631
    .local v0, "retval":Z
    move v1, p2

    .line 1632
    .local v1, "lchStatus":B
    const v2, 0x81b58

    .line 1633
    .local v2, "requestId":I
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 1634
    .local v3, "request":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1636
    .local v5, "reqBuffer":Ljava/nio/ByteBuffer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setLocalCallHold: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1637
    invoke-direct {p0, v5, v2, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1638
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1640
    invoke-direct {p0, v2, v3, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v4

    .line 1641
    .local v4, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v6, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_0

    .line 1642
    const-string v6, "setLocalCallHold success"

    invoke-direct {p0, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1643
    const/4 v0, 0x1

    goto :goto_0

    .line 1645
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QCRIL setLocalCallHold returned exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "QC_RIL_OEM_HOOK"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :goto_0
    return v0
.end method

.method public setModemEndcFeatureState(Z)Lorg/codeaurora/telephony/utils/AsyncResult;
    .locals 5
    .param p1, "state"    # Z

    .line 3542
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 3543
    .local v0, "payload":[B
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 3545
    .local v2, "buf":Ljava/nio/ByteBuffer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setModemEndcFeatureState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QC_RIL_OEM_HOOK"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    const v3, 0x89006

    invoke-direct {p0, v2, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 3548
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_SET_MODEM_ENDC_FEATURE:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3549
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3551
    invoke-direct {p0, v3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    .line 3552
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    return-object v1
.end method

.method public setNr5gCdrx(Z)Z
    .locals 7
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2700
    const/4 v0, 0x0

    .line 2701
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    .line 2702
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2704
    .local v3, "buf":Ljava/nio/ByteBuffer;
    const v4, 0x89006

    invoke-direct {p0, v3, v4, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2705
    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_SET_NR_5G_CDRX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2706
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2708
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNr5gCdrx enable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "QC_RIL_OEM_HOOK"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    invoke-direct {p0, v4, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v4

    .line 2711
    .local v4, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    .line 2716
    return v2

    .line 2713
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setNrMode(II)Z
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2644
    const/4 v0, 0x0

    .line 2645
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    const/16 v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    .line 2646
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2648
    .local v3, "buf":Ljava/nio/ByteBuffer;
    const v4, 0x89006

    invoke-direct {p0, v3, v4, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2649
    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_SET_SA_NSA_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2650
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2651
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNrMode phoneId:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mode:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "QC_RIL_OEM_HOOK"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    invoke-direct {p0, v4, v1, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v2

    .line 2656
    .local v2, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 2662
    :try_start_0
    new-instance v4, Ljava/lang/String;

    iget-object v6, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    const-string v7, "ISO-8859-1"

    invoke-direct {v4, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 2666
    nop

    .line 2667
    const/4 v4, 0x1

    return v4

    .line 2663
    :catch_0
    move-exception v4

    .line 2664
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "unsupport ISO-8859-1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    const/4 v5, 0x0

    return v5

    .line 2658
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    iget-object v5, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public unregisterForExtendedDbmIntl(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 1872
    return-void
.end method

.method public unregisterForFieldTestData(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 1862
    return-void
.end method
