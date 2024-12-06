.class public Lcom/huawei/opcollect/collector/receivercollection/RebootAction;
.super Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;
.source "RebootAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/receivercollection/RebootAction$BootBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static instance:Lcom/huawei/opcollect/collector/receivercollection/RebootAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/RebootAction;->LOCK:Ljava/lang/Object;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/RebootAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/RebootAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    const-string v1, "broadcast.reboot"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v0

    .line 30
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/receivercollection/RebootAction;->setDailyRecordNum(I)V

    .line 31
    return-void
.end method

.method private static destroyRebootActionInstance()V
    .locals 2

    .prologue
    .line 82
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/RebootAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/RebootAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/RebootAction;

    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/RebootAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/RebootAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/RebootAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/RebootAction;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/RebootAction;

    const-string v2, "RebootAction"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/receivercollection/RebootAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/RebootAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/RebootAction;

    .line 38
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/RebootAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/RebootAction;

    monitor-exit v1

    return-object v0

    .line 39
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
    .line 76
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->destroy()Z

    .line 77
    invoke-static {}, Lcom/huawei/opcollect/collector/receivercollection/RebootAction;->destroyRebootActionInstance()V

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public enable()V
    .locals 5

    .prologue
    .line 47
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->enable()V

    .line 48
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/RebootAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/huawei/opcollect/collector/receivercollection/RebootAction$BootBroadcastReceiver;

    invoke-direct {v1}, Lcom/huawei/opcollect/collector/receivercollection/RebootAction$BootBroadcastReceiver;-><init>()V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/RebootAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/RebootAction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/RebootAction;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.huawei.permission.OP_COLLECT"

    .line 52
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v4

    .line 51
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 54
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method
