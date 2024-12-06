.class public Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;
.super Ljava/lang/Object;
.source "NetAssistantManager.java"


# static fields
.field private static final INVALID_DATA:J = -0x1L

.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "NetAssistantManager"

.field private static instance:Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;


# instance fields
.field private mNetAssistantService:Lcom/huawei/netassistant/service/INetAssistantService;

.field private mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->LOCK:Ljava/lang/Object;

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->instance:Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->mNetAssistantService:Lcom/huawei/netassistant/service/INetAssistantService;

    .line 36
    if-eqz p1, :cond_0

    .line 37
    const-string v0, "netstats"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 39
    :cond_0
    return-void
.end method

.method private checkNotificationBinder()V
    .locals 5

    .prologue
    .line 51
    iget-object v2, p0, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->mNetAssistantService:Lcom/huawei/netassistant/service/INetAssistantService;

    if-eqz v2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    :try_start_0
    const-string v2, "com.huawei.netassistant.service.netassistantservice"

    invoke-static {v2}, Lcom/huawei/android/os/ServiceManagerEx;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 56
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 57
    invoke-static {v0}, Lcom/huawei/netassistant/service/INetAssistantService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/netassistant/service/INetAssistantService;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->mNetAssistantService:Lcom/huawei/netassistant/service/INetAssistantService;

    .line 58
    const-string v2, "NetAssistantManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNetAssistantService="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->mNetAssistantService:Lcom/huawei/netassistant/service/INetAssistantService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v0    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "NetAssistantManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getService exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-object v1, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->instance:Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;

    invoke-direct {v0, p0}, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->instance:Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;

    .line 46
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->instance:Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getMobileBytes(Ljava/lang/String;JJ)J
    .locals 10
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 123
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->querySummaryForDevice(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    .line 124
    .local v0, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    if-nez v0, :cond_0

    .line 125
    const-wide/16 v2, -0x1

    .line 133
    .end local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :goto_0
    return-wide v2

    .line 127
    .restart local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :cond_0
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 128
    .end local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :catch_0
    move-exception v8

    .line 129
    .local v8, "e":Landroid/os/RemoteException;
    const-string v1, "NetAssistantManager"

    const-string v2, "RemoteException in get mobile bytes"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_1
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 130
    :catch_1
    move-exception v8

    .line 131
    .local v8, "e":Ljava/lang/SecurityException;
    const-string v1, "NetAssistantManager"

    const-string v2, "error in get mobile bytes"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getWifiBytes(JJ)J
    .locals 9
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 108
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->querySummaryForDevice(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    .line 109
    .local v0, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    if-nez v0, :cond_0

    .line 110
    const-wide/16 v2, -0x1

    .line 118
    .end local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :goto_0
    return-wide v2

    .line 112
    .restart local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :cond_0
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 113
    .end local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :catch_0
    move-exception v8

    .line 114
    .local v8, "e":Landroid/os/RemoteException;
    const-string v1, "NetAssistantManager"

    const-string v2, "RemoteException error in get wifi bytes"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_1
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 115
    :catch_1
    move-exception v8

    .line 116
    .local v8, "e":Ljava/lang/SecurityException;
    const-string v1, "NetAssistantManager"

    const-string v2, "error in get wifi bytes"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private querySummaryForDevice(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;
    .locals 9
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    if-nez v0, :cond_0

    .line 139
    const-string v0, "NetAssistantManager"

    const-string v1, "mNetworkStatsManager is null."

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getMobileLeftBytes(Ljava/lang/String;)J
    .locals 6
    .param p1, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->checkNotificationBinder()V

    .line 86
    iget-object v4, p0, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->mNetAssistantService:Lcom/huawei/netassistant/service/INetAssistantService;

    if-nez v4, :cond_0

    .line 87
    const-string v4, "NetAssistantManager"

    const-string v5, "client proxy is null"

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-wide/16 v4, -0x1

    .line 92
    :goto_0
    return-wide v4

    .line 90
    :cond_0
    iget-object v4, p0, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->mNetAssistantService:Lcom/huawei/netassistant/service/INetAssistantService;

    invoke-interface {v4, p1}, Lcom/huawei/netassistant/service/INetAssistantService;->getMonthlyTotalBytes(Ljava/lang/String;)J

    move-result-wide v0

    .line 91
    .local v0, "total":J
    iget-object v4, p0, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->mNetAssistantService:Lcom/huawei/netassistant/service/INetAssistantService;

    invoke-interface {v4, p1}, Lcom/huawei/netassistant/service/INetAssistantService;->getMonthMobileTotalBytes(Ljava/lang/String;)J

    move-result-wide v2

    .line 92
    .local v2, "used":J
    sub-long v4, v0, v2

    goto :goto_0
.end method

.method public getTodayMobileTotalBytes(Ljava/lang/String;)J
    .locals 6
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {}, Lcom/huawei/opcollect/utils/OPCollectUtils;->getDayStartTimeMills()J

    move-result-wide v2

    .line 73
    .local v2, "dayStartMills":J
    invoke-static {}, Lcom/huawei/opcollect/utils/OPCollectUtils;->getCurrentTimeMills()J

    move-result-wide v4

    .local v4, "currentTimeMills":J
    move-object v0, p0

    move-object v1, p1

    .line 74
    invoke-direct/range {v0 .. v5}, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->getMobileBytes(Ljava/lang/String;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTodayWifiTotalBytes()J
    .locals 6

    .prologue
    .line 101
    invoke-static {}, Lcom/huawei/opcollect/utils/OPCollectUtils;->getDayStartTimeMills()J

    move-result-wide v2

    .line 102
    .local v2, "dayStartMills":J
    invoke-static {}, Lcom/huawei/opcollect/utils/OPCollectUtils;->getCurrentTimeMills()J

    move-result-wide v0

    .line 103
    .local v0, "currentTimeMills":J
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/huawei/opcollect/collector/pullcollection/NetAssistantManager;->getWifiBytes(JJ)J

    move-result-wide v4

    return-wide v4
.end method
