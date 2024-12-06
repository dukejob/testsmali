.class public final Lcom/huawei/opcollect/collector/pullcollection/Collection;
.super Ljava/lang/Object;
.source "Collection.java"


# static fields
.field private static final FIRST_SLOT:I = 0x0

.field private static final INVALID_SUBSCRIPTION_ID:I = -0x1

.field private static final SECOND_SLOT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CollectionImp"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getIMSI(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .prologue
    .line 90
    if-nez p1, :cond_1

    .line 91
    const-string v2, "CollectionImp"

    const-string v3, "context is null."

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, ""

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 94
    :cond_1
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 95
    .local v1, "manager":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_2

    .line 96
    const-string v2, "CollectionImp"

    const-string v3, "Get TelephonyManager failed."

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, ""

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {v1, p2}, Lcom/huawei/android/telephony/TelephonyManagerEx;->getSubscriberId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "imsi":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public getAllPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    if-nez p1, :cond_1

    .line 111
    const-string v3, "CollectionImp"

    const-string v4, "context is null."

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, ""

    .line 130
    :cond_0
    :goto_0
    return-object v2

    .line 114
    :cond_1
    new-instance v1, Landroid/telephony/MSimTelephonyManager;

    invoke-direct {v1, p1}, Landroid/telephony/MSimTelephonyManager;-><init>(Landroid/content/Context;)V

    .line 115
    .local v1, "mSimTelephonyManager":Landroid/telephony/MSimTelephonyManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/telephony/MSimTelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "firstPhoneNumber":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/telephony/MSimTelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "secondPhoneNumber":Ljava/lang/String;
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    .line 119
    const-string v2, ""

    goto :goto_0

    .line 122
    :cond_2
    if-eqz v0, :cond_0

    .line 126
    if-nez v2, :cond_3

    move-object v2, v0

    .line 127
    goto :goto_0

    .line 130
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getBuildNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultDataSlotIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 82
    .local v0, "mainSlot":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :cond_0
    const-string v1, "CollectionImp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/huawei/opcollect/collector/pullcollection/Collection;->getIMSI(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    const-string v0, "ro.hardware"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lcom/huawei/android/os/SystemPropertiesEx;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 38
    .local v1, "locale":Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v0, "languageStr":Ljava/lang/StringBuilder;
    const-string v2, "{language:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v2, ",country:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
