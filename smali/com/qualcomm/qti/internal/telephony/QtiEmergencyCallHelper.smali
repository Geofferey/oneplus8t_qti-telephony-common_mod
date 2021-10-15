.class public Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;
.super Ljava/lang/Object;
.source "QtiEmergencyCallHelper.java"


# static fields
.field private static final ALLOW_ECALL_ENHANCEMENT_PROPERTY:Ljava/lang/String; = "persist.vendor.radio.enhance_ecall"

.field private static final INVALID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "QtiEmergencyCallHelper"

.field private static final PRIMARY_STACK_MODEMID:I = 0x0

.field private static final PROVISIONED:I = 0x1

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhoneIdForECall(Landroid/content/Context;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .line 48
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    .line 50
    .local v0, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 51
    .local v1, "voicePhoneId":I
    const/4 v2, -0x1

    .line 53
    .local v2, "phoneId":I
    nop

    .line 54
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 55
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 57
    .local v4, "phoneCount":I
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby(Landroid/content/Context;)Z

    move-result v5

    const-string v6, "QtiEmergencyCallHelper"

    if-nez v5, :cond_1

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMultiSimConfiguration: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v5

    sget-object v7, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-eq v5, v7, :cond_1

    .line 65
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v5, v8

    .line 68
    .local v9, "phone":Lcom/android/internal/telephony/Phone;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Go through all phones, phoneId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " PhoneState: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " PhoneType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v10, v11, :cond_0

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call already active on phoneId: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    return v5

    .line 65
    .end local v9    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 80
    :cond_1
    const/4 v5, 0x0

    .local v5, "phId":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 81
    invoke-static {v5}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 82
    .local v7, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    .line 83
    .local v8, "ss":I
    if-nez v8, :cond_2

    .line 84
    move v2, v5

    .line 85
    if-ne v2, v1, :cond_2

    goto :goto_2

    .line 80
    .end local v7    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v8    # "ss":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 88
    .end local v5    # "phId":I
    :cond_3
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Voice phoneId in service = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v5, -0x1

    if-ne v2, v5, :cond_5

    .line 91
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->getPrimaryStackPhoneId(Landroid/content/Context;)I

    move-result v2

    .line 92
    const/4 v8, 0x0

    .local v8, "phId":I
    :goto_3
    if-ge v8, v4, :cond_5

    .line 93
    invoke-static {v8}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 94
    .restart local v9    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    .line 95
    .local v10, "ss":I
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 96
    move v2, v8

    .line 97
    if-ne v2, v1, :cond_4

    goto :goto_4

    .line 92
    .end local v9    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v10    # "ss":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 101
    .end local v8    # "phId":I
    :cond_5
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Voice phoneId in Limited service = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-ne v2, v5, :cond_7

    .line 104
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->getPrimaryStackPhoneId(Landroid/content/Context;)I

    move-result v2

    .line 105
    const/4 v5, 0x0

    .restart local v5    # "phId":I
    :goto_5
    if-ge v5, v4, :cond_7

    .line 108
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v8

    .line 110
    .local v8, "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_6

    .line 112
    invoke-virtual {v8, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 114
    move v2, v5

    .line 115
    if-ne v2, v1, :cond_6

    goto :goto_6

    .line 105
    .end local v8    # "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 121
    .end local v5    # "phId":I
    :cond_7
    :goto_6
    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v5

    .line 122
    .local v5, "dataPhoneId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dataPhoneId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " from telephony"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->shouldConsiderDataPhoneId()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 126
    move v2, v5

    .line 127
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set dataPhoneId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " as preferred id for E911"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " preferred phoneId ="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v2
.end method

.method public static getPrimaryStackPhoneId(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "modemUuId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 140
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v2, -0x1

    .line 141
    .local v2, "primayStackPhoneId":I
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 142
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 144
    .local v3, "phoneCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const-string v5, "QtiEmergencyCallHelper"

    if-ge v4, v3, :cond_3

    .line 146
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 147
    if-nez v1, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Logical Modem id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " phoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 153
    goto :goto_1

    .line 158
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 159
    move v2, v4

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Primay Stack phone id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " selected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    goto :goto_2

    .line 144
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 166
    .end local v4    # "i":I
    :cond_3
    :goto_2
    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    .line 167
    const-string v4, "Returning default phone id"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v2, 0x0

    .line 171
    :cond_4
    return v2
.end method

.method private static inUS()Z
    .locals 7

    .line 304
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 305
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 306
    .local v1, "numeric1":Ljava/lang/String;
    const/4 v2, 0x0

    .line 308
    .local v2, "numeric2":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v2

    .line 313
    :cond_0
    const-string v5, "sys.radio.country_iso"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 315
    .local v5, "countryCode":Ljava/lang/String;
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isNACarrier(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isNACarrier(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "us"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 318
    :cond_1
    return v4

    .line 316
    :cond_2
    :goto_0
    return v3
.end method

.method public static isDeviceInSingleStandby(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 175
    const-string v0, "persist.vendor.radio.enhance_ecall"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "QtiEmergencyCallHelper"

    if-nez v0, :cond_0

    .line 176
    const-string v0, "persist.vendor.radio.enhance_ecall not enabled"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v2

    .line 180
    :cond_0
    nop

    .line 181
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 182
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 186
    .local v4, "phoneCnt":I
    if-ne v4, v1, :cond_1

    .line 187
    return v1

    .line 189
    :cond_1
    const/4 v5, 0x0

    .local v5, "phoneId":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 191
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v6

    .line 193
    .local v6, "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    .line 194
    invoke-virtual {v6, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v7

    if-eq v7, v1, :cond_2

    goto :goto_1

    .line 189
    .end local v6    # "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 196
    .restart local v6    # "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    :cond_3
    :goto_1
    const-string v2, "modem is in single standby mode"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return v1

    .line 201
    .end local v5    # "phoneId":I
    .end local v6    # "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    :cond_4
    const-string v1, "modem is in dual standby mode"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return v2
.end method

.method public static isEmergencyNumInternal(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .line 285
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "isEmergencyNum":Z
    const/4 v1, -0x1

    .line 208
    .local v1, "subscriptionId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    .line 209
    .local v2, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 210
    .local v3, "phones":[Lcom/android/internal/telephony/Phone;
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 212
    .local v6, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 213
    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 211
    .end local v6    # "phone":Lcom/android/internal/telephony/Phone;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 216
    :cond_0
    nop

    .line 217
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v4

    .line 216
    invoke-static {v4, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    .line 220
    :cond_1
    return v0
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "isLocalEmergencyNum":Z
    const/4 v1, -0x1

    .line 226
    .local v1, "subscriptionId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    .line 227
    .local v2, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 229
    .local v3, "phones":[Lcom/android/internal/telephony/Phone;
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 231
    .local v6, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 232
    nop

    .line 233
    invoke-static {p0, v1, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 230
    .end local v6    # "phone":Lcom/android/internal/telephony/Phone;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 236
    :cond_0
    nop

    .line 237
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v4

    .line 236
    invoke-static {p0, v4, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 240
    :cond_1
    return v0
.end method

.method private static isNACarrier(Ljava/lang/String;)Z
    .locals 1
    .param p0, "numeric"    # Ljava/lang/String;

    .line 290
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    const-string v0, "310"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    const-string v0, "311"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    const-string v0, "312"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    const-string v0, "313"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    const-string v0, "314"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    const-string v0, "315"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    const-string v0, "316"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 300
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "isPotentialEmergencyNum":Z
    const/4 v1, -0x1

    .line 246
    .local v1, "subscriptionId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    .line 247
    .local v2, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 249
    .local v3, "phones":[Lcom/android/internal/telephony/Phone;
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 251
    .local v6, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 252
    nop

    .line 253
    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 250
    .end local v6    # "phone":Lcom/android/internal/telephony/Phone;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 256
    :cond_0
    nop

    .line 257
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v4

    .line 256
    invoke-static {v4, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    .line 260
    :cond_1
    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "isPotentialLocalEmergencyNum":Z
    const/4 v1, -0x1

    .line 266
    .local v1, "subscriptionId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    .line 267
    .local v2, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 269
    .local v3, "phones":[Lcom/android/internal/telephony/Phone;
    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 271
    .local v6, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 272
    nop

    .line 273
    invoke-static {p0, v1, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 270
    .end local v6    # "phone":Lcom/android/internal/telephony/Phone;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 277
    :cond_0
    nop

    .line 278
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v4

    .line 277
    invoke-static {p0, v4, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 281
    :cond_1
    return v0
.end method

.method private static shouldConsiderDataPhoneId()Z
    .locals 6

    .line 322
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 323
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 324
    .local v1, "numeric1":Ljava/lang/String;
    const/4 v2, 0x0

    .line 326
    .local v2, "numeric2":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v2

    .line 331
    :cond_0
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isNACarrier(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isNACarrier(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->inUS()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 335
    :cond_1
    return v4

    .line 332
    :cond_2
    :goto_0
    return v3
.end method
