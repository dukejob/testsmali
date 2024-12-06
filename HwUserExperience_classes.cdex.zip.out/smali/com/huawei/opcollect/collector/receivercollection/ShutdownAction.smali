.class public Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;
.super Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;
.source "ShutdownAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction$ShutdownBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final TAG:Ljava/lang/String; = "ShutdownAction"

.field private static instance:Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;->LOCK:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;

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
    const-string v1, "broadcast.shutdown_phone"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v0

    .line 34
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;->setDailyRecordNum(I)V

    .line 35
    const-string v1, "ShutdownAction"

    const-string v2, "ShutdownAction"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private static destroyShutdownActionInstance()V
    .locals 2

    .prologue
    .line 101
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;

    .line 103
    monitor-exit v1

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;

    const-string v2, "ShutdownAction"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;

    .line 43
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;

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
    .line 95
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->destroy()Z

    .line 96
    invoke-static {}, Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;->destroyShutdownActionInstance()V

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public enable()V
    .locals 5

    .prologue
    .line 52
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->enable()V

    .line 53
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction$ShutdownBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction$ShutdownBroadcastReceiver;-><init>(Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;)V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/ShutdownAction;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.huawei.permission.OP_COLLECT"

    .line 57
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v4

    .line 56
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 58
    const-string v1, "ShutdownAction"

    const-string v2, "enabled"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected execute()Z
    .locals 3

    .prologue
    .line 83
    const-string v1, "sys.shutdown.requested"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/huawei/android/os/SystemPropertiesEx;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "rebootReason":Ljava/lang/String;
    const-string v1, "broadcast.shutdown_phone"

    invoke-static {v1, v0}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x1

    return v1
.end method
