.class public Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;
.super Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;
.source "GpsStateAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$GpsStateBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "GpsStateAction"

.field private static instance:Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;


# instance fields
.field private mIsGpsOn:Z

.field private mIsInitialized:Z

.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->LOCK:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->instance:Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->mLocationManager:Landroid/location/LocationManager;

    .line 32
    iput-boolean v2, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->mIsInitialized:Z

    .line 33
    iput-boolean v2, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->mIsGpsOn:Z

    .line 44
    const-string v1, "contentobserver.gps_on"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v1

    const-string v2, "contentobserver.gps_off"

    .line 45
    invoke-static {v2}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v2

    add-int v0, v1, v2

    .line 46
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->setDailyRecordNum(I)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->mIsGpsOn:Z

    return v0
.end method

.method static synthetic access$102(Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->mIsGpsOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->mIsInitialized:Z

    return v0
.end method

.method static synthetic access$202(Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->mIsInitialized:Z

    return p1
.end method

.method private static destroyGpsStateActionInstance()V
    .locals 2

    .prologue
    .line 122
    sget-object v1, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->instance:Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    .line 124
    monitor-exit v1

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    sget-object v1, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->instance:Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    const-string v2, "GpsStateAction"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->instance:Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    .line 60
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->instance:Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public destroy()Z
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->destroy()Z

    .line 117
    invoke-static {}, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->destroyGpsStateActionInstance()V

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public enable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->enable()V

    .line 99
    iget-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 100
    new-instance v1, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$GpsStateBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$GpsStateBroadcastReceiver;-><init>(Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$1;)V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    iget-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->mLocationManager:Landroid/location/LocationManager;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v3

    .line 104
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 107
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected execute()Z
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->execute()Z

    .line 135
    iget-boolean v1, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->mIsGpsOn:Z

    if-eqz v1, :cond_0

    const-string v0, "contentobserver.gps_on"

    .line 136
    .local v0, "eventType":Ljava/lang/String;
    :goto_0
    const-string v1, "GpsStateAction"

    invoke-static {v1, v0}, Lcom/huawei/opcollect/utils/OPCollectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {v0}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x1

    return v1

    .line 135
    .end local v0    # "eventType":Ljava/lang/String;
    :cond_0
    const-string v0, "contentobserver.gps_off"

    goto :goto_0
.end method
