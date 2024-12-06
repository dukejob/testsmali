.class public Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;
.super Lcom/huawei/opcollect/strategy/Action;
.source "DeviceStatusInfoAction.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "DeviceStatusInfoAction"

.field private static instance:Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;


# instance fields
.field private mCollection:Lcom/huawei/opcollect/collector/pullcollection/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->LOCK:Ljava/lang/Object;

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->instance:Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/strategy/Action;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    const-class v0, Lcom/huawei/nb/model/collectencrypt/RawDeviceStatusInfo;

    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->queryDailyRecordNum(Ljava/lang/Class;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->setDailyRecordNum(I)V

    .line 37
    new-instance v0, Lcom/huawei/opcollect/collector/pullcollection/Collection;

    invoke-direct {v0}, Lcom/huawei/opcollect/collector/pullcollection/Collection;-><init>()V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->mCollection:Lcom/huawei/opcollect/collector/pullcollection/Collection;

    .line 38
    return-void
.end method

.method private collectRawDeviceStatusInfoData()Z
    .locals 3

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->getRawDeviceStatusInfo()Lcom/huawei/nb/model/collectencrypt/RawDeviceStatusInfo;

    move-result-object v0

    .line 80
    .local v0, "rawDeviceStatusInfo":Lcom/huawei/nb/model/collectencrypt/RawDeviceStatusInfo;
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 82
    const/4 v1, 0x1

    return v1
.end method

.method private static destroyDeviceStatusInfoActionInstance()V
    .locals 2

    .prologue
    .line 62
    sget-object v1, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->instance:Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    sget-object v1, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->instance:Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;

    const-string v2, "RawDeviceStatusInfo"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->instance:Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;

    .line 45
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->instance:Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getMobileLeftBytes()J
    .locals 7

    .prologue
    .line 117
    iget-object v4, p0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;

    move-result-object v1

    .line 119
    .local v1, "netAssistantManager":Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;
    :try_start_0
    iget-object v4, p0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->mCollection:Lcom/huawei/opcollect/collector/pullcollection/Collection;

    iget-object v5, p0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/huawei/opcollect/collector/pullcollection/Collection;->getDefaultDataSlotIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->getMobileLeftBytes(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 124
    .local v2, "left":J
    :goto_0
    return-wide v2

    .line 120
    .end local v2    # "left":J
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "DeviceStatusInfoAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-wide/16 v2, 0x0

    .restart local v2    # "left":J
    goto :goto_0
.end method

.method private getRawDeviceStatusInfo()Lcom/huawei/nb/model/collectencrypt/RawDeviceStatusInfo;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Lcom/huawei/nb/model/collectencrypt/RawDeviceStatusInfo;

    invoke-direct {v0}, Lcom/huawei/nb/model/collectencrypt/RawDeviceStatusInfo;-><init>()V

    .line 87
    .local v0, "rawDeviceStatusInfo":Lcom/huawei/nb/model/collectencrypt/RawDeviceStatusInfo;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawDeviceStatusInfo;->setMTimeStamp(Ljava/util/Date;)V

    .line 88
    iget-object v1, p0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->mContext:Landroid/content/Context;

    const-string v2, "2.11.2"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectUtils;->checkODMFApiVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/opcollect/utils/OPCollectUtils;->getThirdPartyAppList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawDeviceStatusInfo;->setMAppInstalled(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/opcollect/utils/OPCollectUtils;->getAppUsageState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawDeviceStatusInfo;->setMAppUsageTime(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->getTodayWifiTotalBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawDeviceStatusInfo;->setMWifiDataTotal(Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->getTodayMobileTotalBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawDeviceStatusInfo;->setMMobileDataTotal(Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->getMobileLeftBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawDeviceStatusInfo;->setMMobileDataSurplus(Ljava/lang/String;)V

    .line 95
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawDeviceStatusInfo;->setMReservedInt(Ljava/lang/Integer;)V

    .line 96
    invoke-static {}, Lcom/huawei/opcollect/utils/OPCollectUtils;->formatCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawDeviceStatusInfo;->setMReservedText(Ljava/lang/String;)V

    .line 97
    return-object v0
.end method

.method private getTodayMobileTotalBytes()J
    .locals 4

    .prologue
    .line 106
    iget-object v1, p0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;

    move-result-object v0

    .line 107
    .local v0, "netAssistantManager":Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;
    iget-object v1, p0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->mCollection:Lcom/huawei/opcollect/collector/pullcollection/Collection;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/huawei/opcollect/collector/pullcollection/Collection;->getDefaultDataSlotIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->getTodayMobileTotalBytes(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method private getTodayWifiTotalBytes()J
    .locals 4

    .prologue
    .line 128
    iget-object v1, p0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;

    move-result-object v0

    .line 129
    .local v0, "netAssistantManager":Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;
    invoke-virtual {v0}, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->getTodayWifiTotalBytes()J

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public destroy()Z
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/Action;->destroy()Z

    .line 57
    invoke-static {}, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->destroyDeviceStatusInfoActionInstance()V

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method protected execute()Z
    .locals 2

    .prologue
    .line 74
    const-string v0, "DeviceStatusInfoAction"

    const-string v1, "execute"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/DeviceStatusInfoAction;->collectRawDeviceStatusInfoData()Z

    move-result v0

    return v0
.end method
