.class public Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;
.super Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;
.source "BatteryAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/receivercollection/BatteryAction$BatteryActionParam;,
        Lcom/huawei/opcollect/collector/receivercollection/BatteryAction$BatteryChangeReceiver;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "BatteryAction"

.field private static instance:Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;


# instance fields
.field private mPowerKitManager:Lcom/huawei/opcollect/powerkit/PowerKitManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->LOCK:Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p2, p1}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    const-string v1, "battery_left"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v0

    .line 35
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->setDailyRecordNum(I)V

    .line 36
    invoke-static {p2}, Lcom/huawei/opcollect/powerkit/PowerKitManager;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/powerkit/PowerKitManager;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->mPowerKitManager:Lcom/huawei/opcollect/powerkit/PowerKitManager;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;)Lcom/huawei/opcollect/powerkit/PowerKitManager;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->mPowerKitManager:Lcom/huawei/opcollect/powerkit/PowerKitManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;Lcom/huawei/opcollect/strategy/AbsActionParam;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;
    .param p1, "x1"    # Lcom/huawei/opcollect/strategy/AbsActionParam;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->performWithArgs(Lcom/huawei/opcollect/strategy/AbsActionParam;)Z

    move-result v0

    return v0
.end method

.method private static destroyBatteryActionInstance()V
    .locals 2

    .prologue
    .line 132
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;

    .line 134
    monitor-exit v1

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;

    const-string v2, "battery_left"

    invoke-direct {v0, v2, p0}, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;

    .line 44
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;

    monitor-exit v1

    return-object v0

    .line 45
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
    .line 126
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->destroy()Z

    .line 127
    invoke-static {}, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->destroyBatteryActionInstance()V

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public enable()V
    .locals 5

    .prologue
    .line 53
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->enable()V

    .line 54
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 55
    new-instance v1, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction$BatteryChangeReceiver;

    invoke-direct {v1, p0}, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction$BatteryChangeReceiver;-><init>(Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;)V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    .line 58
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v4

    .line 57
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 59
    const-string v1, "BatteryAction"

    const-string v2, "enabled"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected executeWithArgs(Lcom/huawei/opcollect/strategy/AbsActionParam;)Z
    .locals 3
    .param p1, "absActionParam"    # Lcom/huawei/opcollect/strategy/AbsActionParam;

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    const-string v1, "battery_left"

    move-object v0, p1

    check-cast v0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction$BatteryActionParam;

    .line 111
    invoke-virtual {v0}, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction$BatteryActionParam;->getBattery()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v1, v0}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "battery/battery_left"

    const-string v1, "battery_left"

    check-cast p1, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction$BatteryActionParam;

    .line 113
    .end local p1    # "absActionParam":Lcom/huawei/opcollect/strategy/AbsActionParam;
    invoke-virtual {p1}, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction$BatteryActionParam;->getBattery()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-static {v0, v1, v2}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
