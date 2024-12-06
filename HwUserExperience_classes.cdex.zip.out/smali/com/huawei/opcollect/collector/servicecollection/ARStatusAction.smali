.class public Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;
.super Lcom/huawei/opcollect/strategy/Action;
.source "ARStatusAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;,
        Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;,
        Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARProvider;,
        Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARActionParam;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field public static final REPORT_LATENCY_NS:J = 0xdf8475800L

.field public static final REPORT_LATENCY_NS_SCREEN_OFF:J = 0x2e90edd000L

.field private static final TAG:Ljava/lang/String; = "ARStatusAction"

.field public static final TYPE_SCREEN_OFF:I = 0x2

.field public static final TYPE_SCREEN_ON:I = 0x1

.field private static instance:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;


# instance fields
.field private mARProviderImpl:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARProvider;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->LOCK:Ljava/lang/Object;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->instance:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/strategy/Action;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->mLock:Ljava/lang/Object;

    .line 44
    const-class v0, Lcom/huawei/nb/model/collectencrypt/RawARStatus;

    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->queryDailyRecordNum(Ljava/lang/Class;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->setDailyRecordNum(I)V

    .line 45
    return-void
.end method

.method public static activityName2Type(Ljava/lang/String;)I
    .locals 2
    .param p0, "activityName"    # Ljava/lang/String;

    .prologue
    .line 257
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_IN_VEHICLE:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_IN_VEHICLE:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->getType()I

    move-result v0

    .line 274
    .local v0, "motionType":I
    :goto_0
    return v0

    .line 259
    .end local v0    # "motionType":I
    :cond_0
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_ON_BICYCLE:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_ON_BICYCLE:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->getType()I

    move-result v0

    .restart local v0    # "motionType":I
    goto :goto_0

    .line 261
    .end local v0    # "motionType":I
    :cond_1
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_WALKING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_WALKING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->getType()I

    move-result v0

    .restart local v0    # "motionType":I
    goto :goto_0

    .line 263
    .end local v0    # "motionType":I
    :cond_2
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_RUNNING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 264
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_RUNNING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->getType()I

    move-result v0

    .restart local v0    # "motionType":I
    goto :goto_0

    .line 265
    .end local v0    # "motionType":I
    :cond_3
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_STILL:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 266
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_STILL:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->getType()I

    move-result v0

    .restart local v0    # "motionType":I
    goto :goto_0

    .line 267
    .end local v0    # "motionType":I
    :cond_4
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_TYPE_VE_HIGH_SPEED_RAIL:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 268
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_TYPE_VE_HIGH_SPEED_RAIL:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->getType()I

    move-result v0

    .restart local v0    # "motionType":I
    goto :goto_0

    .line 269
    .end local v0    # "motionType":I
    :cond_5
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_FAST_WALKING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 270
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_FAST_WALKING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->getType()I

    move-result v0

    .restart local v0    # "motionType":I
    goto :goto_0

    .line 272
    .end local v0    # "motionType":I
    :cond_6
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_UNKNOWN:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->getType()I

    move-result v0

    .restart local v0    # "motionType":I
    goto :goto_0
.end method

.method private static destroyARStatusActionInstance()V
    .locals 2

    .prologue
    .line 113
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->instance:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;

    .line 115
    monitor-exit v1

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->instance:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;

    const-string v2, "RawARStatus"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->instance:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;

    .line 52
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->instance:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;

    monitor-exit v1

    return-object v0

    .line 53
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
    .line 107
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/Action;->destroy()Z

    .line 108
    invoke-static {}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->destroyARStatusActionInstance()V

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "ARStatusAction"

    const-string v1, "disable"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/Action;->disable()V

    .line 92
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->mARProviderImpl:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARProvider;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->mARProviderImpl:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARProvider;

    invoke-virtual {v0}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARProvider;->disable()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->mARProviderImpl:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARProvider;

    .line 97
    :cond_0
    monitor-exit v1

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 61
    const-string v0, "ARStatusAction"

    const-string v1, "enable"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/Action;->enable()V

    .line 63
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->mARProviderImpl:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARProvider;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;-><init>(Landroid/content/Context;Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;)V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->mARProviderImpl:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARProvider;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->mARProviderImpl:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARProvider;

    invoke-virtual {v0}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARProvider;->enable()V

    .line 68
    monitor-exit v1

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableAREvent(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 77
    const-string v0, "ARStatusAction"

    const-string v1, "enableAREvent"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->mARProviderImpl:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARProvider;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->mARProviderImpl:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARProvider;

    invoke-virtual {v0, p1}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARProvider;->enableAREvent(I)Z

    .line 82
    :cond_0
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected executeWithArgs(Lcom/huawei/opcollect/strategy/AbsActionParam;)Z
    .locals 4
    .param p1, "absActionParam"    # Lcom/huawei/opcollect/strategy/AbsActionParam;

    .prologue
    .line 137
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARActionParam;

    if-nez v2, :cond_1

    .line 138
    :cond_0
    const/4 v2, 0x0

    .line 150
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 141
    check-cast v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARActionParam;

    .line 142
    .local v0, "actionParam":Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARActionParam;
    new-instance v1, Lcom/huawei/nb/model/collectencrypt/RawARStatus;

    invoke-direct {v1}, Lcom/huawei/nb/model/collectencrypt/RawARStatus;-><init>()V

    .line 143
    .local v1, "rawARStatus":Lcom/huawei/nb/model/collectencrypt/RawARStatus;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/huawei/nb/model/collectencrypt/RawARStatus;->setMTimeStamp(Ljava/util/Date;)V

    .line 144
    invoke-virtual {v0}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARActionParam;->getMotionType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/nb/model/collectencrypt/RawARStatus;->setMMotionType(Ljava/lang/Integer;)V

    .line 145
    invoke-virtual {v0}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARActionParam;->getEventType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/nb/model/collectencrypt/RawARStatus;->setMStatus(Ljava/lang/Integer;)V

    .line 146
    invoke-static {}, Lcom/huawei/opcollect/utils/OPCollectUtils;->formatCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/nb/model/collectencrypt/RawARStatus;->setMReservedText(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getDataHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 150
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public performWithArgs(Lcom/huawei/opcollect/strategy/AbsActionParam;)Z
    .locals 1
    .param p1, "absActionParam"    # Lcom/huawei/opcollect/strategy/AbsActionParam;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/huawei/opcollect/strategy/Action;->performWithArgs(Lcom/huawei/opcollect/strategy/AbsActionParam;)Z

    move-result v0

    return v0
.end method
