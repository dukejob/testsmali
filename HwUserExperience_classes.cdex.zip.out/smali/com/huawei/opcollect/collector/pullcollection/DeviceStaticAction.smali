.class public Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;
.super Lcom/huawei/opcollect/strategy/Action;
.source "DeviceStaticAction.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "DeviceStaticAction"

.field private static instance:Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;


# instance fields
.field private mCollection:Lcom/huawei/opcollect/collector/pullcollection/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->LOCK:Ljava/lang/Object;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->instance:Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/strategy/Action;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->mCollection:Lcom/huawei/opcollect/collector/pullcollection/Collection;

    .line 32
    new-instance v0, Lcom/huawei/opcollect/collector/pullcollection/Collection;

    invoke-direct {v0}, Lcom/huawei/opcollect/collector/pullcollection/Collection;-><init>()V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->mCollection:Lcom/huawei/opcollect/collector/pullcollection/Collection;

    .line 33
    const-class v0, Lcom/huawei/nb/model/collectencrypt/RawDeviceInfo;

    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->queryDailyRecordNum(Ljava/lang/Class;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->setDailyRecordNum(I)V

    .line 34
    return-void
.end method

.method private collectRawDeviceStaticData()V
    .locals 3

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->getRawDeviceInfo()Lcom/huawei/nb/model/collectencrypt/RawDeviceInfo;

    move-result-object v0

    .line 77
    .local v0, "rawDeviceInfo":Lcom/huawei/nb/model/collectencrypt/RawDeviceInfo;
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 79
    return-void
.end method

.method private static destroyDeviceStaticActionInstance()V
    .locals 2

    .prologue
    .line 58
    sget-object v1, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->instance:Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;

    .line 60
    monitor-exit v1

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v1, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->instance:Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;

    const-string v2, "RawDeviceInfo"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->instance:Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;

    .line 41
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->instance:Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getRawDeviceInfo()Lcom/huawei/nb/model/collectencrypt/RawDeviceInfo;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Lcom/huawei/nb/model/collectencrypt/RawDeviceInfo;

    invoke-direct {v0}, Lcom/huawei/nb/model/collectencrypt/RawDeviceInfo;-><init>()V

    .line 83
    .local v0, "rawDeviceInfo":Lcom/huawei/nb/model/collectencrypt/RawDeviceInfo;
    iget-object v1, p0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->mCollection:Lcom/huawei/opcollect/collector/pullcollection/Collection;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/pullcollection/Collection;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawDeviceInfo;->setMDeviceName(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->mCollection:Lcom/huawei/opcollect/collector/pullcollection/Collection;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/pullcollection/Collection;->getHardwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawDeviceInfo;->setMHardwareVer(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->mCollection:Lcom/huawei/opcollect/collector/pullcollection/Collection;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/pullcollection/Collection;->getBuildNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawDeviceInfo;->setMSoftwareVer(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->mCollection:Lcom/huawei/opcollect/collector/pullcollection/Collection;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/pullcollection/Collection;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawDeviceInfo;->setMLanguageRegion(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/huawei/opcollect/utils/OPCollectUtils;->getCurrentTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawDeviceInfo;->setMTimeStamp(Ljava/util/Date;)V

    .line 88
    iget-object v1, p0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->mCollection:Lcom/huawei/opcollect/collector/pullcollection/Collection;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/huawei/opcollect/collector/pullcollection/Collection;->getAllPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawDeviceInfo;->setMPhoneNum(Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawDeviceInfo;->setMReservedInt(Ljava/lang/Integer;)V

    .line 90
    invoke-static {}, Lcom/huawei/opcollect/utils/OPCollectUtils;->formatCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawDeviceInfo;->setMReservedText(Ljava/lang/String;)V

    .line 91
    return-object v0
.end method


# virtual methods
.method public destroy()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/Action;->destroy()Z

    .line 53
    invoke-static {}, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->destroyDeviceStaticActionInstance()V

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method protected execute()Z
    .locals 2

    .prologue
    .line 70
    const-string v0, "DeviceStaticAction"

    const-string v1, "execute"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/DeviceStaticAction;->collectRawDeviceStaticData()V

    .line 72
    const/4 v0, 0x1

    return v0
.end method
