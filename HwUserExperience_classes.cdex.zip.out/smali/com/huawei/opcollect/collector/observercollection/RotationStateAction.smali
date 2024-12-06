.class public Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;
.super Lcom/huawei/opcollect/collector/observercollection/ObserverAction;
.source "RotationStateAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/observercollection/RotationStateAction$MyContentObserver;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "RotationStateAction"

.field private static instance:Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->LOCK:Ljava/lang/Object;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->instance:Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/collector/observercollection/ObserverAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->mHandler:Landroid/os/Handler;

    .line 32
    const-string v1, "contentobserver.rotate_on"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v1

    const-string v2, "contentobserver.rotate_off"

    .line 33
    invoke-static {v2}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v2

    add-int v0, v1, v2

    .line 34
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->setDailyRecordNum(I)V

    .line 35
    return-void
.end method

.method private static destroyRotationStateActionInstance()V
    .locals 2

    .prologue
    .line 116
    sget-object v1, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->instance:Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v1, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->instance:Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;

    const-string v2, "RotationStateAction"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->instance:Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;

    .line 42
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->instance:Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;

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
    .line 110
    invoke-super {p0}, Lcom/huawei/opcollect/collector/observercollection/ObserverAction;->destroy()Z

    .line 111
    invoke-static {}, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->destroyRotationStateActionInstance()V

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public enable()V
    .locals 5

    .prologue
    .line 62
    invoke-super {p0}, Lcom/huawei/opcollect/collector/observercollection/ObserverAction;->enable()V

    .line 63
    iget-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->mObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    new-instance v1, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction$MyContentObserver;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction$MyContentObserver;-><init>(Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->mObserver:Landroid/database/ContentObserver;

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    .line 70
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->mObserver:Landroid/database/ContentObserver;

    .line 69
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "RotationStateAction"

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

    goto :goto_0
.end method

.method protected execute()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v3, p0, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 84
    const-string v3, "RotationStateAction"

    const-string v4, "context is null."

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    return v2

    .line 89
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 94
    .local v1, "state":I
    if-nez v1, :cond_1

    .line 95
    const-string v2, "contentobserver.rotate_off"

    invoke-static {v2}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;)V

    .line 100
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "state":I
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "RotationStateAction"

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

    .line 97
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v1    # "state":I
    :cond_1
    const-string v2, "contentobserver.rotate_on"

    invoke-static {v2}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;)V

    goto :goto_1
.end method
