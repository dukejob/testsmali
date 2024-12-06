.class public Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;
.super Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;
.source "WifiStateAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction$WifiStateBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "WifiStateAction"

.field private static instance:Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;


# instance fields
.field private mIsFirstInitialized:Z

.field private mIsWifiOn:Z

.field private mWifiState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->LOCK:Ljava/lang/Object;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    const/4 v1, -0x1

    iput v1, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->mWifiState:I

    .line 30
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->mIsWifiOn:Z

    .line 31
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->mIsFirstInitialized:Z

    .line 35
    const-string v1, "broadcast.wifi_on"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v1

    const-string v2, "broadcast.wifi_off"

    .line 36
    invoke-static {v2}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v2

    add-int v0, v1, v2

    .line 37
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->setDailyRecordNum(I)V

    .line 38
    const-string v1, "WifiStateAction"

    const-string v2, "WifiStateAction"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method static synthetic access$002(Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->mWifiState:I

    return p1
.end method

.method private static destroyWifiStateActionInstance()V
    .locals 2

    .prologue
    .line 135
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;

    .line 137
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;

    const-string v2, "WifiStateAction"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;

    .line 46
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;

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


# virtual methods
.method public destroy()Z
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->destroy()Z

    .line 130
    invoke-static {}, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->destroyWifiStateActionInstance()V

    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public enable()V
    .locals 8

    .prologue
    .line 55
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->enable()V

    .line 56
    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_2

    .line 57
    new-instance v4, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction$WifiStateBroadcastReceiver;

    invoke-direct {v4, p0}, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction$WifiStateBroadcastReceiver;-><init>(Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;)V

    iput-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    .line 61
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v7

    .line 60
    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 62
    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 63
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    const-string v2, "0"

    .line 64
    .local v2, "value":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 65
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 66
    .local v1, "state":I
    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 67
    :cond_0
    const-string v2, "1"

    .line 70
    .end local v1    # "state":I
    :cond_1
    const-string v4, "wireless_networks/wifi_status"

    const-string v5, "wifi_status"

    invoke-static {v4, v5, v2}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v4, "WifiStateAction"

    const-string v5, "enabled"

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    return-void
.end method

.method protected execute()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 98
    iget v2, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->mWifiState:I

    if-ne v2, v0, :cond_2

    .line 99
    iget-boolean v2, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->mIsWifiOn:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->mIsFirstInitialized:Z

    if-eqz v2, :cond_3

    .line 100
    :cond_0
    const-string v2, "broadcast.wifi_off"

    invoke-static {v2}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;)V

    .line 101
    const-string v2, "wireless_networks/wifi_status"

    const-string v3, "wifi_status"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-boolean v2, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->mIsFirstInitialized:Z

    if-eqz v2, :cond_1

    .line 104
    iput-boolean v1, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->mIsFirstInitialized:Z

    .line 106
    :cond_1
    iput-boolean v1, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->mIsWifiOn:Z

    .line 119
    :goto_0
    return v0

    .line 109
    :cond_2
    iget v2, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->mWifiState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 110
    iget-boolean v2, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->mIsWifiOn:Z

    if-nez v2, :cond_3

    .line 111
    const-string v1, "broadcast.wifi_on"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;)V

    .line 112
    const-string v1, "wireless_networks/wifi_status"

    const-string v2, "wifi_status"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iput-boolean v0, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->mIsWifiOn:Z

    goto :goto_0

    .line 118
    :cond_3
    const-string v0, "WifiStateAction"

    const-string v2, "ignore transition or duplicate data."

    invoke-static {v0, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 119
    goto :goto_0
.end method
