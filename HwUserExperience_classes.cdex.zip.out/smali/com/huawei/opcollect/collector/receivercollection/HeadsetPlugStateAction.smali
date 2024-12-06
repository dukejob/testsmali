.class public Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;
.super Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;
.source "HeadsetPlugStateAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction$HeadSetStateReceiver;
    }
.end annotation


# static fields
.field private static final HEADSET_PLUGGED:I = 0x1

.field private static final HEADSET_UNPLUGGED:I = 0x0

.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "HeadsetPlugStateAction"

.field private static instance:Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;


# instance fields
.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->LOCK:Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    const/4 v1, -0x1

    iput v1, p0, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->mState:I

    .line 34
    const-string v1, "broadcast.headset_plug"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v1

    const-string v2, "broadcast.headset_unplug"

    .line 35
    invoke-static {v2}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v2

    add-int v0, v1, v2

    .line 36
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->setDailyRecordNum(I)V

    .line 37
    const-string v1, "HeadsetPlugStateAction"

    const-string v2, "HeadsetPlugStateAction"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method static synthetic access$002(Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->mState:I

    return p1
.end method

.method private static destroyHeadsetPlugStateActionInstance()V
    .locals 2

    .prologue
    .line 121
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;

    const-string v2, "HeadsetPlugStateAction"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;

    .line 45
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;

    monitor-exit v1

    return-object v0

    .line 46
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
    .line 115
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->destroy()Z

    .line 116
    invoke-static {}, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->destroyHeadsetPlugStateActionInstance()V

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public enable()V
    .locals 5

    .prologue
    .line 54
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->enable()V

    .line 55
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 56
    new-instance v1, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction$HeadSetStateReceiver;

    invoke-direct {v1, p0}, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction$HeadSetStateReceiver;-><init>(Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;)V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    .line 60
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v4

    .line 59
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 61
    const-string v1, "sound/headset_connect_status"

    const-string v2, "headset_connect_status"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "HeadsetPlugStateAction"

    const-string v2, "enabled"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected execute()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 95
    iget v0, p0, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->mState:I

    if-ne v0, v3, :cond_1

    .line 96
    const-string v0, "broadcast.headset_plug"

    invoke-static {v0}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;)V

    .line 97
    const-string v0, "sound/headset_connect_status"

    const-string v1, "headset_connect_status"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->mState:I

    .line 105
    return v3

    .line 99
    :cond_1
    iget v0, p0, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->mState:I

    if-nez v0, :cond_0

    .line 100
    const-string v0, "broadcast.headset_unplug"

    invoke-static {v0}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;)V

    .line 101
    const-string v0, "sound/headset_connect_status"

    const-string v1, "headset_connect_status"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
