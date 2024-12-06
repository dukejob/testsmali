.class public Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;
.super Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;
.source "BluetoothStateAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction$BluetoothStateBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BLE_ACTION:Ljava/lang/String; = "android.bluetooth.adapter.action.STATE_CHANGED"

.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "BluetoothStateAction"

.field private static instance:Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;


# instance fields
.field private mEventType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->LOCK:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->mEventType:Ljava/lang/String;

    .line 36
    const-string v1, "contentobserver.bluetooth_on"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v1

    const-string v2, "contentobserver.bluetooth_off"

    .line 37
    invoke-static {v2}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v2

    add-int v0, v1, v2

    .line 38
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->setDailyRecordNum(I)V

    .line 39
    return-void
.end method

.method static synthetic access$002(Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->mEventType:Ljava/lang/String;

    return-object p1
.end method

.method private static destroyBluetoothStateActionInstance()V
    .locals 2

    .prologue
    .line 116
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;

    const-string v2, "BluetoothStateAction"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;

    .line 52
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;

    monitor-exit v1

    return-object v0

    .line 53
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
    .line 110
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->destroy()Z

    .line 111
    invoke-static {}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->destroyBluetoothStateActionInstance()V

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public enable()V
    .locals 8

    .prologue
    .line 84
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->enable()V

    .line 85
    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    .line 86
    new-instance v4, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction$BluetoothStateBroadcastReceiver;

    invoke-direct {v4, p0}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction$BluetoothStateBroadcastReceiver;-><init>(Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;)V

    iput-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "android.permission.BLUETOOTH"

    .line 89
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v7

    .line 88
    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 90
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 91
    .local v0, "blueAdapter":Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "0"

    .line 92
    .local v3, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    .line 94
    .local v2, "state":I
    const/16 v4, 0xc

    if-ne v2, v4, :cond_0

    .line 95
    const-string v3, "1"

    .line 98
    .end local v2    # "state":I
    :cond_0
    const-string v4, "device_connection/bluetooth_status"

    const-string v5, "bluetooth_status"

    invoke-static {v4, v5, v3}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v0    # "blueAdapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected execute()Z
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->execute()Z

    .line 129
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->mEventType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const/4 v1, 0x0

    .line 139
    :goto_0
    return v1

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->mEventType:Ljava/lang/String;

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;)V

    .line 134
    const-string v1, "contentobserver.bluetooth_on"

    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->mEventType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "1"

    .line 135
    .local v0, "value":Ljava/lang/String;
    :goto_1
    const-string v1, "device_connection/bluetooth_status"

    const-string v2, "bluetooth_status"

    invoke-static {v1, v2, v0}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->mEventType:Ljava/lang/String;

    .line 139
    const/4 v1, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method
