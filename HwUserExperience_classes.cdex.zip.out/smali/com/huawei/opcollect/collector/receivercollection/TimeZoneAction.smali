.class public Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;
.super Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;
.source "TimeZoneAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction$TimeZoneBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "TimeZoneAction"

.field private static instance:Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;->LOCK:Ljava/lang/Object;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p2, p1}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    const-string v1, "broadcast.tomezone_change"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v0

    .line 38
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;->setDailyRecordNum(I)V

    .line 39
    const-string v1, "TimeZoneAction"

    const-string v2, "TimeZoneAction"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private static destroyTimeZoneActionInstance()V
    .locals 2

    .prologue
    .line 79
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;

    .line 81
    monitor-exit v1

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;

    const-string v2, "TimeZoneAction"

    invoke-direct {v0, v2, p0}, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;

    .line 47
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;

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
    .line 73
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->destroy()Z

    .line 74
    invoke-static {}, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;->destroyTimeZoneActionInstance()V

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public enable()V
    .locals 5

    .prologue
    .line 56
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->enable()V

    .line 57
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction$TimeZoneBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction$TimeZoneBroadcastReceiver;-><init>(Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;)V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    .line 61
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v4

    .line 60
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 62
    const-string v1, "TimeZoneAction"

    const-string v2, "enabled"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected execute()Z
    .locals 6

    .prologue
    .line 105
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->execute()Z

    .line 106
    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 107
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 108
    .local v1, "currentLocalTime":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "z"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 109
    .local v2, "date":Ljava/text/DateFormat;
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "localTime":Ljava/lang/String;
    const-string v4, "broadcast.tomezone_change"

    invoke-static {v4, v3}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v4, 0x1

    return v4
.end method
