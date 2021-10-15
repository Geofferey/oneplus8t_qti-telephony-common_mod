.class public final enum Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;
.super Ljava/lang/Enum;
.source "QcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Hook2QcrilCmdReqType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum AKA_END_EAP_SESSION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum AKA_GET_BIND_SUBSCRIPTION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum AKA_GET_EAP_SESSION_KEY_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum AKA_SEND_EAP_PKG_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum AKA_SET_BIND_SUBSCRIPTION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum AKA_START_EAP_SESSION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_E_NONE:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_FORCE_SEARCH_NETWORK:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_GET_Country_Code:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_GET_NR_INFO:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_GET_SA_NSA_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_GET_TX_RX_INFO:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_MAX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_RADIO_FTM_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_RADIO_LPM_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_RADIO_OFF_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_RADIO_ON_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_SET_5G_BAND_PREF:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_SET_EARFCN_PCI_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_SET_MODEM_ENDC_FEATURE:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_SET_NR_5G_CDRX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_SET_PRX_DRX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

.field public static final enum QCRILHOOK_SET_SA_NSA_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 2305
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "QCRILHOOK_E_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_E_NONE:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2306
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "QCRILHOOK_RADIO_FTM_CMD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_FTM_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2307
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "QCRILHOOK_RADIO_ON_CMD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_ON_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2308
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "QCRILHOOK_RADIO_LPM_CMD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_LPM_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2309
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "QCRILHOOK_RADIO_OFF_CMD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_OFF_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2310
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "QCRILHOOK_GET_Country_Code"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_GET_Country_Code:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2311
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "AKA_START_EAP_SESSION_CMD"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_START_EAP_SESSION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2312
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "AKA_END_EAP_SESSION_CMD"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_END_EAP_SESSION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2313
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "AKA_SEND_EAP_PKG_CMD"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_SEND_EAP_PKG_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2314
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "AKA_GET_EAP_SESSION_KEY_CMD"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_GET_EAP_SESSION_KEY_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2315
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "AKA_GET_BIND_SUBSCRIPTION_CMD"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_GET_BIND_SUBSCRIPTION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2316
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "AKA_SET_BIND_SUBSCRIPTION_CMD"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_SET_BIND_SUBSCRIPTION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2317
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "QCRILHOOK_SET_EARFCN_PCI_CMD"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_SET_EARFCN_PCI_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2318
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "QCRILHOOK_SET_SA_NSA_CMD"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_SET_SA_NSA_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2319
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "QCRILHOOK_SET_PRX_DRX_CMD"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_SET_PRX_DRX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2320
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "QCRILHOOK_SET_NR_5G_CDRX_CMD"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v15}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_SET_NR_5G_CDRX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2321
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "QCRILHOOK_GET_NR_INFO"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v15}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_GET_NR_INFO:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2322
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "QCRILHOOK_GET_TX_RX_INFO"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v15}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_GET_TX_RX_INFO:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2323
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "QCRILHOOK_SET_5G_BAND_PREF"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v15}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_SET_5G_BAND_PREF:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2324
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "QCRILHOOK_SET_MODEM_ENDC_FEATURE"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v15}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_SET_MODEM_ENDC_FEATURE:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2325
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "QCRILHOOK_FORCE_SEARCH_NETWORK"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v15}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_FORCE_SEARCH_NETWORK:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2326
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "QCRILHOOK_GET_SA_NSA_CMD"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v15}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_GET_SA_NSA_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2327
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const-string v1, "QCRILHOOK_MAX_CMD"

    const/16 v15, 0x16

    const v14, 0x7fffffff

    invoke-direct {v0, v1, v15, v14}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_MAX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    .line 2304
    const/16 v1, 0x17

    new-array v1, v1, [Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    sget-object v14, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_E_NONE:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    aput-object v14, v1, v2

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_FTM_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_ON_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_LPM_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_OFF_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_GET_Country_Code:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_START_EAP_SESSION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_END_EAP_SESSION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_SEND_EAP_PKG_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_GET_EAP_SESSION_KEY_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    aput-object v2, v1, v11

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_GET_BIND_SUBSCRIPTION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    aput-object v2, v1, v12

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_SET_BIND_SUBSCRIPTION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    aput-object v2, v1, v13

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_SET_EARFCN_PCI_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_SET_SA_NSA_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_SET_PRX_DRX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_SET_NR_5G_CDRX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_GET_NR_INFO:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_GET_TX_RX_INFO:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_SET_5G_BAND_PREF:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_SET_MODEM_ENDC_FEATURE:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_FORCE_SEARCH_NETWORK:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_GET_SA_NSA_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const/16 v2, 0x16

    aput-object v0, v1, v2

    sput-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->$VALUES:[Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2332
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2329
    const/4 p1, 0x0

    iput p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value:I

    .line 2333
    iput p3, p0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value:I

    .line 2334
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2304
    const-class v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;
    .locals 1

    .line 2304
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->$VALUES:[Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v0}, [Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 2338
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value:I

    return v0
.end method
