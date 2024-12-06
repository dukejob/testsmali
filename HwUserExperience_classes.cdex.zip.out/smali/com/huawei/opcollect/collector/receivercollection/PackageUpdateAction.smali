.class public Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;
.super Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;
.source "PackageUpdateAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction$AppUpdateReceiver;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "PackageUpdateAction"

.field private static instance:Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;->LOCK:Ljava/lang/Object;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;->mPackageName:Ljava/lang/String;

    .line 32
    const-string v1, "broadcast.app_update"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v0

    .line 33
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;->setDailyRecordNum(I)V

    .line 34
    const-string v1, "PackageUpdateAction"

    const-string v2, "PackageUpdateAction"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method static synthetic access$002(Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;->mPackageName:Ljava/lang/String;

    return-object p1
.end method

.method private static destroyPackageUpdateActionInstance()V
    .locals 2

    .prologue
    .line 107
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;

    .line 109
    monitor-exit v1

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;

    const-string v2, "PackageUpdateAction"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;

    .line 42
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;

    monitor-exit v1

    return-object v0

    .line 43
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
    .line 101
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->destroy()Z

    .line 102
    invoke-static {}, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;->destroyPackageUpdateActionInstance()V

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public enable()V
    .locals 5

    .prologue
    .line 51
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->enable()V

    .line 52
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 53
    new-instance v1, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction$AppUpdateReceiver;

    invoke-direct {v1, p0}, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction$AppUpdateReceiver;-><init>(Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;)V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    .line 58
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v4

    .line 57
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 59
    const-string v1, "PackageUpdateAction"

    const-string v2, "enabled"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected execute()Z
    .locals 2

    .prologue
    .line 89
    const-string v0, "broadcast.app_update"

    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/PackageUpdateAction;->mPackageName:Ljava/lang/String;

    .line 91
    const/4 v0, 0x1

    return v0
.end method
