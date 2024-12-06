.class public Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;
.super Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;
.source "BluetoothConnectAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction$BluetoothBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DEVICE_CONNECTED:I = 0x1

.field private static final DEVICE_DISCONNECTED:I = 0x0

.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "BluetoothConnectAction"

.field private static instance:Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;


# instance fields
.field private mBluetoothInfo:Ljava/lang/String;

.field private mDeviceState:I

.field private mDeviceTypeList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->LOCK:Ljava/lang/Object;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceTypeList:Ljava/util/Map;

    .line 40
    const/4 v1, -0x1

    iput v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceState:I

    .line 41
    const-string v1, ""

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mBluetoothInfo:Ljava/lang/String;

    .line 45
    const-string v1, "broadcast.bluetooth_connected"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v1

    const-string v2, "broadcast.bluetooth_disconnected"

    .line 46
    invoke-static {v2}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v2

    add-int v0, v1, v2

    .line 47
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->setDailyRecordNum(I)V

    .line 48
    return-void
.end method

.method static synthetic access$002(Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceState:I

    return p1
.end method

.method static synthetic access$100(Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->saveBluetoothDeviceInfo(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private static destroyBluetoothConnectActionInstance()V
    .locals 2

    .prologue
    .line 158
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;

    .line 160
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getDeviceTypeString(I)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 190
    const-string v0, ""

    .line 191
    .local v0, "typeStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceTypeList:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceTypeList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-ltz p1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceTypeList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "typeStr":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 194
    .restart local v0    # "typeStr":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;

    const-string v2, "BluetoothConnectAction"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;

    .line 55
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initDeviceTypeMap()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceTypeList:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceTypeList:Ljava/util/Map;

    .line 200
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceTypeList:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "misc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceTypeList:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "computer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceTypeList:Ljava/util/Map;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "phone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceTypeList:Ljava/util/Map;

    const/16 v1, 0x300

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "networking"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceTypeList:Ljava/util/Map;

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio_video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceTypeList:Ljava/util/Map;

    const/16 v1, 0x500

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "peripheral"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceTypeList:Ljava/util/Map;

    const/16 v1, 0x600

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "imaging"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceTypeList:Ljava/util/Map;

    const/16 v1, 0x700

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "wearable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceTypeList:Ljava/util/Map;

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "toy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceTypeList:Ljava/util/Map;

    const/16 v1, 0x900

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "health"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceTypeList:Ljava/util/Map;

    const/16 v1, 0x1f00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "uncategorized"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_0
    return-void
.end method

.method private saveBluetoothDeviceInfo(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 164
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 166
    .local v3, "object":Lorg/json/JSONObject;
    if-nez p1, :cond_0

    .line 167
    const-string v4, ""

    iput-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mBluetoothInfo:Ljava/lang/String;

    .line 187
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 172
    .local v0, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    if-nez v0, :cond_1

    .line 173
    const-string v4, ""

    iput-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mBluetoothInfo:Ljava/lang/String;

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->getDeviceTypeString(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "deviceType":Ljava/lang/String;
    :try_start_0
    const-string v4, "address"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v4, "name"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v4, "type"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mBluetoothInfo:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v2

    .line 185
    .local v2, "e":Lorg/json/JSONException;
    const-string v4, ""

    iput-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mBluetoothInfo:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public destroy()Z
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->destroy()Z

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceTypeList:Ljava/util/Map;

    .line 153
    invoke-static {}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->destroyBluetoothConnectActionInstance()V

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public enable()V
    .locals 8

    .prologue
    .line 64
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->enable()V

    .line 65
    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_2

    .line 66
    new-instance v4, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction$BluetoothBroadcastReceiver;

    invoke-direct {v4, p0}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction$BluetoothBroadcastReceiver;-><init>(Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;)V

    iput-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "android.permission.BLUETOOTH"

    .line 71
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v7

    .line 70
    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 73
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 74
    .local v0, "blueAdapter":Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "0"

    .line 75
    .local v3, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    .line 77
    .local v2, "state":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 78
    :cond_0
    const-string v3, "1"

    .line 81
    .end local v2    # "state":I
    :cond_1
    const-string v4, "device_connection/bluetooth_connect_status"

    const-string v5, "bluetooth_connect_status"

    invoke-static {v4, v5, v3}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .end local v0    # "blueAdapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->initDeviceTypeMap()V

    .line 86
    return-void
.end method

.method protected execute()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 132
    iget v0, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceState:I

    if-ne v0, v3, :cond_1

    .line 133
    const-string v0, "broadcast.bluetooth_connected"

    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mBluetoothInfo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "device_connection/bluetooth_connect_status"

    const-string v1, "bluetooth_connect_status"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    :goto_0
    return v3

    .line 136
    :cond_1
    iget v0, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mDeviceState:I

    if-nez v0, :cond_0

    .line 137
    const-string v0, "broadcast.bluetooth_disconnected"

    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->mBluetoothInfo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "device_connection/bluetooth_connect_status"

    const-string v1, "bluetooth_connect_status"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public perform()Z
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->perform()Z

    move-result v0

    return v0
.end method
