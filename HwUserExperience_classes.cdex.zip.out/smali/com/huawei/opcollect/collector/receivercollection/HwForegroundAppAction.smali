.class public Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;
.super Lcom/huawei/opcollect/strategy/Action;
.source "HwForegroundAppAction.java"

# interfaces
.implements Lcom/huawei/opcollect/appchange/AppChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$AppActionParam;,
        Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$MyHandler;
    }
.end annotation


# static fields
.field private static final APP_CHANGE_MESSAGE:I = 0x1

.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "HwForegroundAppAction"

.field private static instance:Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->LOCK:Ljava/lang/Object;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/strategy/Action;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->mHandler:Landroid/os/Handler;

    .line 43
    const-string v1, "HwForegroundAppAction"

    const-string v2, "HwForegroundAppAction"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-class v1, Lcom/huawei/nb/model/collectencrypt/RawFgAPPEvent;

    invoke-virtual {p0, v1}, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->queryDailyRecordNum(Ljava/lang/Class;)I

    move-result v0

    .line 45
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->setDailyRecordNum(I)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;Lcom/huawei/opcollect/strategy/AbsActionParam;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;
    .param p1, "x1"    # Lcom/huawei/opcollect/strategy/AbsActionParam;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->performWithArgs(Lcom/huawei/opcollect/strategy/AbsActionParam;)Z

    move-result v0

    return v0
.end method

.method private static destroyHwForegroundAppActionInstance()V
    .locals 2

    .prologue
    .line 131
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;

    .line 133
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;

    const-string v2, "HwForegroundAppAction"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;

    .line 53
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public destroy()Z
    .locals 2

    .prologue
    .line 124
    const-string v0, "HwForegroundAppAction"

    const-string v1, "FG destroy"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/Action;->destroy()Z

    .line 126
    invoke-static {}, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->destroyHwForegroundAppActionInstance()V

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 109
    const-string v0, "HwForegroundAppAction"

    const-string v1, "FG disable"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/Action;->disable()V

    .line 111
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/opcollect/appchange/AppChangeImpl;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/appchange/AppChangeImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/opcollect/appchange/AppChangeImpl;->removeListener(Lcom/huawei/opcollect/appchange/AppChangeListener;)V

    .line 112
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->mHandler:Landroid/os/Handler;

    .line 115
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "HwForegroundAppAction"

    const-string v1, "FG enable"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/Action;->enable()V

    .line 64
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$MyHandler;

    invoke-direct {v0, p0}, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$MyHandler;-><init>(Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;)V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->mHandler:Landroid/os/Handler;

    .line 65
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/opcollect/appchange/AppChangeImpl;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/appchange/AppChangeImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/opcollect/appchange/AppChangeImpl;->addListener(Lcom/huawei/opcollect/appchange/AppChangeListener;)V

    .line 66
    return-void
.end method

.method protected executeWithArgs(Lcom/huawei/opcollect/strategy/AbsActionParam;)Z
    .locals 7
    .param p1, "absActionParam"    # Lcom/huawei/opcollect/strategy/AbsActionParam;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    const-string v5, "HwForegroundAppAction"

    const-string v6, "FG executeWithArgs"

    invoke-static {v5, v6}, Lcom/huawei/opcollect/utils/OPCollectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    if-eqz p1, :cond_0

    instance-of v5, p1, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$AppActionParam;

    if-nez v5, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v0, p1

    .line 81
    check-cast v0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$AppActionParam;

    .line 82
    .local v0, "actionParam":Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$AppActionParam;
    invoke-virtual {v0}, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$AppActionParam;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 83
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 86
    new-instance v2, Lcom/huawei/nb/model/collectencrypt/RawFgAPPEvent;

    invoke-direct {v2}, Lcom/huawei/nb/model/collectencrypt/RawFgAPPEvent;-><init>()V

    .line 87
    .local v2, "rawFgAppEvent":Lcom/huawei/nb/model/collectencrypt/RawFgAPPEvent;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/nb/model/collectencrypt/RawFgAPPEvent;->setMPackageName(Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->mContext:Landroid/content/Context;

    const-string v5, "2.11.3"

    invoke-static {v3, v5}, Lcom/huawei/opcollect/utils/OPCollectUtils;->checkODMFApiVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/nb/model/collectencrypt/RawFgAPPEvent;->setMActivityName(Ljava/lang/String;)V

    .line 91
    :cond_2
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Lcom/huawei/nb/model/collectencrypt/RawFgAPPEvent;->setMTimeStamp(Ljava/util/Date;)V

    .line 92
    invoke-static {}, Lcom/huawei/opcollect/utils/OPCollectUtils;->formatCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/nb/model/collectencrypt/RawFgAPPEvent;->setMReservedText(Ljava/lang/String;)V

    .line 93
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/nb/model/collectencrypt/RawFgAPPEvent;->setMStatus(Ljava/lang/Integer;)V

    .line 94
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getDataHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 95
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    move v3, v4

    .line 96
    goto :goto_0
.end method

.method public onAppChange(IILandroid/content/ComponentName;)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 145
    if-nez p3, :cond_1

    .line 146
    const-string v1, "HwForegroundAppAction"

    const-string v2, "componentName is null"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$AppActionParam;

    invoke-direct {v0, p3, p1, p2}, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$AppActionParam;-><init>(Landroid/content/ComponentName;II)V

    .line 151
    .local v0, "actionParam":Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$AppActionParam;
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public perform()Z
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/Action;->perform()Z

    move-result v0

    return v0
.end method
