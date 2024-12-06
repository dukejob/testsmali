.class public Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;
.super Lcom/huawei/opcollect/collector/observercollection/ObserverAction;
.source "ZenModeAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/observercollection/ZenModeAction$MyContentObserver;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "ZenModeAction"

.field public static final ZEN_MODE:Ljava/lang/String; = "zen_mode"

.field private static instance:Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->LOCK:Ljava/lang/Object;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->instance:Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/collector/observercollection/ObserverAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->mHandler:Landroid/os/Handler;

    .line 32
    const-string v1, "no_disturb_status"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v0

    .line 33
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->setDailyRecordNum(I)V

    .line 34
    return-void
.end method

.method private static destroyZenModeActionInstance()V
    .locals 2

    .prologue
    .line 124
    sget-object v1, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->instance:Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;

    .line 126
    monitor-exit v1

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v1, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->instance:Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;

    const-string v2, "no_disturb_status"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->instance:Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;

    .line 41
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->instance:Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;

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

.method private getZenModeState()Ljava/lang/String;
    .locals 6

    .prologue
    .line 98
    const-string v2, "0"

    .line 99
    .local v2, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 101
    .local v1, "state":I
    :try_start_0
    iget-object v3, p0, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 105
    :goto_0
    if-eqz v1, :cond_0

    .line 106
    const-string v2, "1"

    .line 108
    :cond_0
    return-object v2

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "ZenModeAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingNotFoundException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()Z
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/huawei/opcollect/collector/observercollection/ObserverAction;->destroy()Z

    .line 119
    invoke-static {}, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->destroyZenModeActionInstance()V

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public enable()V
    .locals 5

    .prologue
    .line 62
    invoke-super {p0}, Lcom/huawei/opcollect/collector/observercollection/ObserverAction;->enable()V

    .line 63
    iget-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->mObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    new-instance v1, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction$MyContentObserver;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction$MyContentObserver;-><init>(Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->mObserver:Landroid/database/ContentObserver;

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_1
    const-string v1, "sound/no_disturb_status"

    const-string v2, "no_disturb_status"

    .line 75
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->getZenModeState()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-static {v1, v2, v3}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ZenModeAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerContentObserver failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected execute()Z
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 86
    const-string v0, "ZenModeAction"

    const-string v1, "context is null."

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    .line 90
    :cond_0
    const-string v0, "no_disturb_status"

    invoke-direct {p0}, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->getZenModeState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "sound/no_disturb_status"

    const-string v1, "no_disturb_status"

    .line 92
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/observercollection/ZenModeAction;->getZenModeState()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v0, v1, v2}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x1

    goto :goto_0
.end method
