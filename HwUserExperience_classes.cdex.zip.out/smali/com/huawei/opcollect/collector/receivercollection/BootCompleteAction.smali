.class public Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;
.super Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;
.source "BootCompleteAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction$BootBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "BootCompleteAction"

.field private static instance:Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;->LOCK:Ljava/lang/Object;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    const-string v1, "BootCompleteAction"

    const-string v2, "BootCompleteAction"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "broadcast.boot_completed"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v0

    .line 33
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;->setDailyRecordNum(I)V

    .line 34
    return-void
.end method

.method private static destroyBootCompleteActionInstance()V
    .locals 2

    .prologue
    .line 98
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;

    .line 100
    monitor-exit v1

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;

    const-string v2, "BootCompleteAction"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;

    .line 41
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;

    monitor-exit v1

    return-object v0

    .line 42
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
    .line 92
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->destroy()Z

    .line 93
    invoke-static {}, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;->destroyBootCompleteActionInstance()V

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public enable()V
    .locals 5

    .prologue
    .line 50
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->enable()V

    .line 51
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 52
    new-instance v1, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction$BootBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction$BootBroadcastReceiver;-><init>(Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;)V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    .line 55
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v4

    .line 54
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 56
    const-string v1, "BootCompleteAction"

    const-string v2, "enabled"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected execute()Z
    .locals 1

    .prologue
    .line 81
    const-string v0, "broadcast.boot_completed"

    invoke-static {v0}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x1

    return v0
.end method
