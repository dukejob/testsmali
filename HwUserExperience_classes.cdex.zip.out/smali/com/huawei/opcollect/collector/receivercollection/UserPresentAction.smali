.class public Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;
.super Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;
.source "UserPresentAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction$MyHandler;,
        Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction$UserPresentBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final MESSAGE_USER_PRESENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UserPresentAction"

.field private static instance:Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->LOCK:Ljava/lang/Object;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p2, p1}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->mLock:Ljava/lang/Object;

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->mHandler:Landroid/os/Handler;

    .line 39
    const-string v1, "broadcast.user_present"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->setDailyRecordNum(I)V

    .line 41
    const-string v1, "UserPresentAction"

    const-string v2, "UserPresentAction"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static destroyUserPresentActionInstance()V
    .locals 2

    .prologue
    .line 140
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;

    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;

    const-string v2, "UserPresentAction"

    invoke-direct {v0, v2, p0}, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;

    .line 49
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;

    monitor-exit v1

    return-object v0

    .line 50
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
    .line 134
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->destroy()Z

    .line 135
    invoke-static {}, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->destroyUserPresentActionInstance()V

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->disable()V

    .line 119
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->mHandler:Landroid/os/Handler;

    .line 124
    :cond_0
    monitor-exit v1

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable()V
    .locals 5

    .prologue
    .line 58
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->enable()V

    .line 59
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 60
    :try_start_0
    new-instance v1, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction$MyHandler;

    invoke-direct {v1, p0}, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction$MyHandler;-><init>(Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;)V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->mHandler:Landroid/os/Handler;

    .line 61
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 63
    new-instance v1, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction$UserPresentBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction$UserPresentBroadcastReceiver;-><init>(Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;)V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    .line 66
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getRecvHandler()Landroid/os/Handler;

    move-result-object v4

    .line 65
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 67
    const-string v1, "UserPresentAction"

    const-string v2, "enabled"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 61
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected execute()Z
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->execute()Z

    .line 108
    const-string v0, "UserPresentAction"

    const-string v1, "execute"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "broadcast.user_present"

    invoke-static {v0}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x1

    return v0
.end method
