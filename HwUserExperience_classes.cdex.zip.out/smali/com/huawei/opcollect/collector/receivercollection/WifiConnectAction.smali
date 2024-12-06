.class public Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;
.super Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;
.source "WifiConnectAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction$WifiConnectBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DOT:Ljava/lang/String; = "."

.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "WifiConnectAction"

.field private static instance:Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;


# instance fields
.field private mConnectivityType:I

.field private mWifiInfoStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->LOCK:Ljava/lang/Object;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    const/4 v1, -0x1

    iput v1, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->mConnectivityType:I

    .line 41
    const-string v1, ""

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->mWifiInfoStr:Ljava/lang/String;

    .line 45
    const-string v1, "broadcast.wifi_connected"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v1

    const-string v2, "broadcast.wifi_disconnected"

    .line 46
    invoke-static {v2}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v2

    add-int v0, v1, v2

    .line 47
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->setDailyRecordNum(I)V

    .line 48
    const-string v1, "WifiConnectAction"

    const-string v2, "WifiConnectAction"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method static synthetic access$002(Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->mConnectivityType:I

    return p1
.end method

.method private static destroyWifiConnectActionInstance()V
    .locals 2

    .prologue
    .line 167
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;

    .line 169
    monitor-exit v1

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;

    const-string v2, "WifiConnectAction"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;

    .line 56
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private intToIP(I)Ljava/lang/String;
    .locals 2
    .param p1, "intIp"    # I

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "sb":Ljava/lang/StringBuffer;
    and-int/lit16 v1, p1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    const v1, 0xffff

    and-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    const v1, 0xffffff

    and-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x10

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    ushr-int/lit8 v1, p1, 0x18

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private saveWifiInfo()V
    .locals 6

    .prologue
    .line 173
    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 174
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_0

    .line 175
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 176
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v2, :cond_1

    .line 177
    const-string v4, ""

    iput-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->mWifiInfoStr:Ljava/lang/String;

    .line 193
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    :goto_0
    return-void

    .line 180
    .restart local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 183
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "name"

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v4, "ip"

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->intToIP(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v4, "wifiSsid"

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v4, "wifiBssid"

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v4, "wifiLevel"

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->mWifiInfoStr:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, ""

    iput-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->mWifiInfoStr:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public destroy()Z
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->destroy()Z

    .line 162
    invoke-static {}, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->destroyWifiConnectActionInstance()V

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public enable()V
    .locals 5

    .prologue
    .line 65
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->enable()V

    .line 66
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 67
    new-instance v1, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction$WifiConnectBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction$WifiConnectBroadcastReceiver;-><init>(Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;)V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    .line 71
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v4

    .line 70
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 72
    const-string v1, "wireless_networks/wifi_connect_status"

    const-string v2, "wifi_connect_status"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "wireless_networks/mobile_connect_status"

    const-string v2, "mobile_connect_status"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "WifiConnectAction"

    const-string v2, "enabled"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected execute()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 106
    iget-object v6, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->mContext:Landroid/content/Context;

    if-nez v6, :cond_1

    .line 107
    const-string v5, "WifiConnectAction"

    const-string v6, "context is null."

    invoke-static {v5, v6}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    :goto_0
    return v4

    .line 110
    :cond_1
    iget-object v6, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 111
    .local v3, "manager":Landroid/net/ConnectivityManager;
    if-nez v3, :cond_2

    .line 112
    const-string v5, "WifiConnectAction"

    const-string v6, "manager is null!"

    invoke-static {v5, v6}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 117
    .local v0, "info":Landroid/net/NetworkInfo;
    iget v6, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->mConnectivityType:I

    if-ne v6, v5, :cond_6

    .line 118
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 119
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->saveWifiInfo()V

    .line 120
    const-string v4, "broadcast.wifi_connected"

    iget-object v6, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->mWifiInfoStr:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v4, "wireless_networks/wifi_connect_status"

    const-string v6, "wifi_connect_status"

    const-string v7, "1"

    invoke-static {v4, v6, v7}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_1
    invoke-static {}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->getInstance()Lcom/huawei/opcollect/strategy/OdmfActionManager;

    move-result-object v4

    const-string v6, "RawLocationRecord"

    invoke-virtual {v4, v6}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->checkIfActionEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 129
    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;

    move-result-object v2

    .line 130
    .local v2, "locationRecordAction":Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;
    invoke-virtual {v2}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->getLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 131
    :try_start_0
    invoke-virtual {v2}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->getLocationHandler()Landroid/os/Handler;

    move-result-object v1

    .line 132
    .local v1, "locationHandler":Landroid/os/Handler;
    if-eqz v1, :cond_3

    .line 133
    const/4 v4, 0x3

    iget-object v7, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->mWifiInfoStr:Ljava/lang/String;

    invoke-virtual {v1, v4, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 134
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 136
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "locationHandler":Landroid/os/Handler;
    .end local v2    # "locationRecordAction":Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;
    :cond_4
    :goto_2
    move v4, v5

    .line 151
    goto :goto_0

    .line 124
    :cond_5
    const-string v4, "broadcast.wifi_disconnected"

    iget-object v6, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->mWifiInfoStr:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v4, "wireless_networks/wifi_connect_status"

    const-string v6, "wifi_connect_status"

    const-string v7, "0"

    invoke-static {v4, v6, v7}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 136
    .restart local v2    # "locationRecordAction":Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 138
    .end local v2    # "locationRecordAction":Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;
    :cond_6
    iget v6, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->mConnectivityType:I

    if-nez v6, :cond_0

    .line 139
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_7

    .line 140
    const-string v4, "broadcast.mobile_connected"

    invoke-static {v4}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;)V

    .line 141
    const-string v4, "wireless_networks/mobile_connect_status"

    const-string v6, "mobile_connect_status"

    const-string v7, "1"

    invoke-static {v4, v6, v7}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 144
    :cond_7
    const-string v4, "broadcast.mobile_disconnected"

    invoke-static {v4}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;)V

    .line 145
    const-string v4, "wireless_networks/mobile_connect_status"

    const-string v6, "mobile_connect_status"

    const-string v7, "0"

    invoke-static {v4, v6, v7}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
