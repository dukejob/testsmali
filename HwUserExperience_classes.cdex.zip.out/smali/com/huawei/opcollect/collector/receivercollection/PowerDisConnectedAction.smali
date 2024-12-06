.class public Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;
.super Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;
.source "PowerDisConnectedAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction$PowerDisConnectedBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "PowerDisConnectedAction"

.field private static instance:Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;->LOCK:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    const-string v1, "broadcast.power_disconnected"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v0

    .line 34
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;->setDailyRecordNum(I)V

    .line 35
    const-string v1, "PowerDisConnectedAction"

    const-string v2, "PowerDisConnectedAction"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private static destroyPowerDisConnectedActionInstance()V
    .locals 2

    .prologue
    .line 120
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;

    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;

    const-string v2, "PowerDisConnectedAction"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;

    .line 43
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;

    monitor-exit v1

    return-object v0

    .line 44
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
    .line 114
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->destroy()Z

    .line 115
    invoke-static {}, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;->destroyPowerDisConnectedActionInstance()V

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public enable()V
    .locals 5

    .prologue
    .line 52
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->enable()V

    .line 53
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction$PowerDisConnectedBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction$PowerDisConnectedBroadcastReceiver;-><init>(Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;)V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    .line 57
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v4

    .line 56
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 58
    const-string v1, "PowerDisConnectedAction"

    const-string v2, "enabled"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected execute()Z
    .locals 11

    .prologue
    const/4 v8, -0x1

    const/4 v10, 0x1

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "batteryIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 85
    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/PowerDisConnectedAction;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 88
    :cond_0
    const-string v4, "battery/charging_status"

    const-string v5, "charging_status"

    const-string v6, "0"

    invoke-static {v4, v5, v6}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    if-nez v0, :cond_1

    .line 92
    const-string v4, "broadcast.power_disconnected"

    invoke-static {v4}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;)V

    .line 104
    :goto_0
    return v10

    .line 96
    :cond_1
    const-string v4, "level"

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 97
    .local v2, "level":I
    const-string v4, "scale"

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 98
    .local v3, "scale":I
    const/4 v1, -0x1

    .line 99
    .local v1, "batteryPct":I
    if-eqz v3, :cond_2

    .line 100
    int-to-float v4, v2

    int-to-float v5, v3

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 102
    :cond_2
    const-string v4, "broadcast.power_disconnected"

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "{level:%d}"

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 102
    invoke-static {v4, v5}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
