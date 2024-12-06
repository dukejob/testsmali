.class public Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;
.super Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;
.source "PowerConnectedAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction$PowerConnectedBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "PowerConnectedAction"

.field private static instance:Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;->LOCK:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;

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
    const-string v1, "broadcast.power_connected"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v0

    .line 34
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;->setDailyRecordNum(I)V

    .line 35
    const-string v1, "PowerConnectedAction"

    const-string v2, "PackageUpdateAction"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private static destroyPowerConnectedActionInstance()V
    .locals 2

    .prologue
    .line 129
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;

    const-string v2, "PowerConnectedAction"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;

    .line 43
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;

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
    .line 123
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->destroy()Z

    .line 124
    invoke-static {}, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;->destroyPowerConnectedActionInstance()V

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public enable()V
    .locals 5

    .prologue
    .line 52
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->enable()V

    .line 53
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction$PowerConnectedBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction$PowerConnectedBroadcastReceiver;-><init>(Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;)V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    .line 57
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v4

    .line 56
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 58
    const-string v1, "PowerConnectedAction"

    const-string v2, "enabled"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected execute()Z
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v12, 0x1

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "batteryIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    .line 85
    iget-object v6, p0, Lcom/huawei/opcollect/collector/receivercollection/PowerConnectedAction;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 88
    :cond_0
    const-string v6, "battery/charging_status"

    const-string v7, "charging_status"

    const-string v8, "1"

    invoke-static {v6, v7, v8}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    if-nez v0, :cond_1

    .line 91
    const-string v6, "broadcast.power_connected"

    invoke-static {v6}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;)V

    .line 113
    :goto_0
    return v12

    .line 95
    :cond_1
    const-string v6, "plugged"

    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 96
    .local v2, "chargePlug":I
    const-string v3, ""

    .line 97
    .local v3, "chargeType":Ljava/lang/String;
    if-ne v2, v11, :cond_4

    .line 98
    const-string v3, "USB"

    .line 105
    :cond_2
    :goto_1
    const-string v6, "level"

    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 106
    .local v4, "level":I
    const-string v6, "scale"

    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 107
    .local v5, "scale":I
    const/4 v1, -0x1

    .line 108
    .local v1, "batteryPct":I
    if-eqz v5, :cond_3

    .line 109
    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 111
    :cond_3
    const-string v6, "broadcast.power_connected"

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v8, "{level:%d, chargeType:%s}"

    new-array v9, v11, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    aput-object v3, v9, v12

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 111
    invoke-static {v6, v7}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    .end local v1    # "batteryPct":I
    .end local v4    # "level":I
    .end local v5    # "scale":I
    :cond_4
    if-ne v2, v12, :cond_5

    .line 100
    const-string v3, "AC"

    goto :goto_1

    .line 101
    :cond_5
    const/4 v6, 0x4

    if-ne v2, v6, :cond_2

    .line 102
    const-string v3, "Wireless"

    goto :goto_1
.end method
