.class public Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;
.super Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;
.source "ScreenOnAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction$MyHandler;,
        Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction$ScreenOnBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final MESSAGE_SCREEN_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ScreenOnAction"

.field private static instance:Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->LOCK:Ljava/lang/Object;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p2, p1}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->mHandler:Landroid/os/Handler;

    .line 37
    const-string v1, "broadcast.screen_on"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v0

    .line 38
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->setDailyRecordNum(I)V

    .line 39
    const-string v1, "ScreenOnAction"

    const-string v2, "ScreenOnAction"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static destroyScreenOnActionInstance()V
    .locals 2

    .prologue
    .line 127
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;

    .line 129
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;

    const-string v2, "ScreenOnAction"

    invoke-direct {v0, v2, p0}, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;

    .line 47
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;

    monitor-exit v1

    return-object v0

    .line 48
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
    .line 121
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->destroy()Z

    .line 122
    invoke-static {}, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->destroyScreenOnActionInstance()V

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->disable()V

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->mHandler:Landroid/os/Handler;

    .line 111
    :cond_0
    monitor-exit p0

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable()V
    .locals 5

    .prologue
    .line 56
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->enable()V

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    new-instance v1, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction$MyHandler;

    invoke-direct {v1, p0}, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction$MyHandler;-><init>(Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;)V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->mHandler:Landroid/os/Handler;

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction$ScreenOnBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction$ScreenOnBroadcastReceiver;-><init>(Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;)V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    .line 64
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getRecvHandler()Landroid/os/Handler;

    move-result-object v4

    .line 63
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 65
    const-string v1, "ScreenOnAction"

    const-string v2, "enabled"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 59
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected execute()Z
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->execute()Z

    .line 95
    const-string v0, "ScreenOnAction"

    const-string v1, "EVENT_SCREEN_ON"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "broadcast.screen_on"

    invoke-static {v0}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x1

    return v0
.end method
