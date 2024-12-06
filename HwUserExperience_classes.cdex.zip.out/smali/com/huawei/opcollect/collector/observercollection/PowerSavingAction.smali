.class public Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;
.super Lcom/huawei/opcollect/collector/observercollection/ObserverAction;
.source "PowerSavingAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction$MyContentObserver;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final SMART_MODE_STATUS:Ljava/lang/String; = "SmartModeStatus"

.field private static final TAG:Ljava/lang/String; = "PowerSavingAction"

.field private static instance:Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->LOCK:Ljava/lang/Object;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->instance:Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;

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

    iput-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->mHandler:Landroid/os/Handler;

    .line 32
    const-string v1, "power_saving_status"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v0

    .line 33
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->setDailyRecordNum(I)V

    .line 34
    return-void
.end method

.method private static destroyPowerSavingActionInstance()V
    .locals 2

    .prologue
    .line 123
    sget-object v1, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->instance:Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;

    .line 125
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v1, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->instance:Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;

    const-string v2, "power_saving_status"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->instance:Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;

    .line 41
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->instance:Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;

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

.method private getPowerSavingState()Ljava/lang/String;
    .locals 6

    .prologue
    .line 97
    const-string v2, "0"

    .line 98
    .local v2, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 100
    .local v1, "state":I
    :try_start_0
    iget-object v3, p0, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "SmartModeStatus"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 104
    :goto_0
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 105
    const-string v2, "1"

    .line 107
    :cond_0
    return-object v2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "PowerSavingAction"

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
    .line 117
    invoke-super {p0}, Lcom/huawei/opcollect/collector/observercollection/ObserverAction;->destroy()Z

    .line 118
    invoke-static {}, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->destroyPowerSavingActionInstance()V

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public enable()V
    .locals 5

    .prologue
    .line 62
    invoke-super {p0}, Lcom/huawei/opcollect/collector/observercollection/ObserverAction;->enable()V

    .line 63
    iget-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->mObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    new-instance v1, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction$MyContentObserver;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction$MyContentObserver;-><init>(Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->mObserver:Landroid/database/ContentObserver;

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SmartModeStatus"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_1
    const-string v1, "battery/power_saving_status"

    const-string v2, "power_saving_status"

    .line 75
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->getPowerSavingState()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-static {v1, v2, v3}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "PowerSavingAction"

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
    iget-object v0, p0, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 86
    const-string v0, "PowerSavingAction"

    const-string v1, "context is null."

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    .line 90
    :cond_0
    const-string v0, "power_saving_status"

    invoke-direct {p0}, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->getPowerSavingState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "battery/power_saving_status"

    const-string v1, "power_saving_status"

    .line 92
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->getPowerSavingState()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v0, v1, v2}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    goto :goto_0
.end method
