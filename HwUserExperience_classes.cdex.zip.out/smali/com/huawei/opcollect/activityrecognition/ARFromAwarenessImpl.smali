.class public Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;
.super Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARProvider;
.source "ARFromAwarenessImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARHandler;,
        Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$MyAwarenessServiceConnection;,
        Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;,
        Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$RequestCallBackImpl;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.huawei.opcollect.action.ARChange"

.field private static final CONNECT_INTERVAL:J = 0x4e20L

.field private static final CONNECT_MESSAGE:I = 0x1

.field private static final REGISTER_MESSAGE:I = 0x2

.field private static final STORE_MESSAGE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ARFromAwarenessImpl"


# instance fields
.field private mARChangeReceiver:Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;

.field private mAwarenessManager:Lcom/huawei/hiai/awareness/service/AwarenessManager;

.field private mAwarenessServiceConnection:Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$MyAwarenessServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mExtendAwarenessFence:Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mRequestCallBackImpl:Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$RequestCallBackImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arStatusAction"    # Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;

    .prologue
    .line 57
    invoke-direct {p0, p2}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARProvider;-><init>(Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;)V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mLock:Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)Lcom/huawei/hiai/awareness/service/AwarenessManager;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mAwarenessManager:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$MyAwarenessServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mAwarenessServiceConnection:Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$MyAwarenessServiceConnection;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->registerMovementFence()V

    return-void
.end method

.method static synthetic access$600(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;IIJ)V
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->storeARStatus(IIJ)V

    return-void
.end method

.method private registerMovementFence()V
    .locals 8

    .prologue
    .line 172
    iget-object v4, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 173
    :try_start_0
    iget-object v3, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mRequestCallBackImpl:Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$RequestCallBackImpl;

    if-nez v3, :cond_0

    .line 174
    const-string v3, "ARFromAwarenessImpl"

    const-string v5, "registerMovementFence mRequestCallBackImpl is null"

    invoke-static {v3, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    monitor-exit v4

    .line 214
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v3, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mExtendAwarenessFence:Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    if-nez v3, :cond_1

    .line 178
    const-string v3, "ARFromAwarenessImpl"

    const-string v5, "registerMovementFence mExtendAwarenessFence is null"

    invoke-static {v3, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    monitor-exit v4

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 181
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_2

    .line 182
    const-string v3, "ARFromAwarenessImpl"

    const-string v5, "registerMovementFence mPendingIntent is null"

    invoke-static {v3, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    monitor-exit v4

    goto :goto_0

    .line 185
    :cond_2
    iget-object v3, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mAwarenessManager:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    if-nez v3, :cond_3

    .line 186
    const-string v3, "ARFromAwarenessImpl"

    const-string v5, "registerMovementFence mAwarenessManager is null"

    invoke-static {v3, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    monitor-exit v4

    goto :goto_0

    .line 189
    :cond_3
    const/4 v2, 0x0

    .line 190
    .local v2, "screenStatus":Z
    const/4 v1, 0x0

    .line 191
    .local v1, "pm":Landroid/os/PowerManager;
    iget-object v3, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_4

    .line 192
    iget-object v3, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pm":Landroid/os/PowerManager;
    check-cast v1, Landroid/os/PowerManager;

    .line 194
    .restart local v1    # "pm":Landroid/os/PowerManager;
    :cond_4
    if-eqz v1, :cond_5

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x14

    if-lt v3, v5, :cond_5

    .line 195
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    .line 197
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_6

    .line 199
    const-string v3, "sensorhub_control_report_period"

    const-wide v6, 0xdf8475800L

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 205
    :goto_1
    const-string v3, "HwMSDPOtherParams"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v3, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mExtendAwarenessFence:Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    invoke-virtual {v3, v0}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->setRegisterBundle(Landroid/os/Bundle;)V

    .line 207
    iget-object v3, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mAwarenessManager:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    iget-object v5, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mRequestCallBackImpl:Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$RequestCallBackImpl;

    iget-object v6, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mExtendAwarenessFence:Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    iget-object v7, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v5, v6, v7}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->registerMovementFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/app/PendingIntent;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 209
    const-string v3, "ARFromAwarenessImpl"

    const-string v5, "registerMovementFence success"

    invoke-static {v3, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_2
    monitor-exit v4

    goto :goto_0

    .line 202
    :cond_6
    const-string v3, "sensorhub_control_report_period"

    const-wide v6, 0x2e90edd000L

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 211
    :cond_7
    const-string v3, "ARFromAwarenessImpl"

    const-string v5, "registerMovementFence failed"

    invoke-static {v3, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public disable()V
    .locals 5

    .prologue
    .line 147
    const-string v0, "ARFromAwarenessImpl"

    const-string v1, "disable"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mARChangeReceiver:Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mARChangeReceiver:Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mARChangeReceiver:Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mHandler:Landroid/os/Handler;

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mAwarenessManager:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mExtendAwarenessFence:Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mExtendAwarenessFence:Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    invoke-virtual {v0}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->getTopKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mAwarenessManager:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    iget-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mRequestCallBackImpl:Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$RequestCallBackImpl;

    iget-object v3, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mExtendAwarenessFence:Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    iget-object v4, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->unRegisterFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/app/PendingIntent;)Z

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mAwarenessManager:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    invoke-virtual {v0}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->disconnectService()Z

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mExtendAwarenessFence:Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mRequestCallBackImpl:Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$RequestCallBackImpl;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mAwarenessServiceConnection:Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$MyAwarenessServiceConnection;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mPendingIntent:Landroid/app/PendingIntent;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mAwarenessManager:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    .line 168
    :cond_3
    monitor-exit v1

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable()V
    .locals 8

    .prologue
    .line 66
    const-string v2, "ARFromAwarenessImpl"

    const-string v3, "enable"

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v3, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mAwarenessServiceConnection:Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$MyAwarenessServiceConnection;

    if-nez v2, :cond_0

    .line 69
    new-instance v2, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$MyAwarenessServiceConnection;

    invoke-direct {v2, p0}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$MyAwarenessServiceConnection;-><init>(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)V

    iput-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mAwarenessServiceConnection:Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$MyAwarenessServiceConnection;

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mAwarenessManager:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    if-nez v2, :cond_1

    .line 72
    new-instance v2, Lcom/huawei/hiai/awareness/service/AwarenessManager;

    iget-object v4, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/huawei/hiai/awareness/service/AwarenessManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mAwarenessManager:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mRequestCallBackImpl:Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$RequestCallBackImpl;

    if-nez v2, :cond_2

    .line 75
    new-instance v2, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$RequestCallBackImpl;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$RequestCallBackImpl;-><init>(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$1;)V

    iput-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mRequestCallBackImpl:Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$RequestCallBackImpl;

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mExtendAwarenessFence:Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    if-nez v2, :cond_3

    .line 78
    const/16 v0, 0x7f

    .line 85
    .local v0, "awarenessConstants":I
    new-instance v2, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct {v2, v4, v5, v0, v6}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;-><init>(IIILjava/lang/String;)V

    iput-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mExtendAwarenessFence:Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    .line 88
    .end local v0    # "awarenessConstants":I
    :cond_3
    iget-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mARChangeReceiver:Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;

    if-nez v2, :cond_4

    .line 89
    new-instance v2, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;

    invoke-direct {v2, p0}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;-><init>(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)V

    iput-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mARChangeReceiver:Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;

    .line 90
    iget-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mARChangeReceiver:Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARChangeReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.huawei.opcollect.action.ARChange"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v6, "com.huawei.permission.OP_COLLECT"

    .line 91
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v7

    .line 90
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 93
    :cond_4
    iget-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_5

    .line 94
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.opcollect.action.ARChange"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mPendingIntent:Landroid/app/PendingIntent;

    .line 98
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_6

    .line 99
    new-instance v2, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARHandler;

    invoke-direct {v2, p0}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARHandler;-><init>(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)V

    iput-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mHandler:Landroid/os/Handler;

    .line 101
    :cond_6
    iget-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    iget-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mAwarenessManager:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    iget-object v4, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mAwarenessServiceConnection:Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$MyAwarenessServiceConnection;

    invoke-virtual {v2, v4}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->connectMsdpService(Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 103
    iget-object v2, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const-wide/16 v6, 0x4e20

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 105
    :cond_7
    monitor-exit v3

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public enableAREvent(I)Z
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x1

    .line 116
    const-string v3, "ARFromAwarenessImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableAREvent type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 118
    :try_start_0
    iget-object v4, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mExtendAwarenessFence:Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mAwarenessManager:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    if-nez v4, :cond_1

    .line 119
    :cond_0
    const-string v2, "ARFromAwarenessImpl"

    const-string v4, "mExtendAwarenessFence or mAwarenessManager is null"

    invoke-static {v2, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v2, 0x0

    monitor-exit v3

    .line 139
    :goto_0
    return v2

    .line 122
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v0, "bundle":Landroid/os/Bundle;
    if-ne p1, v2, :cond_2

    .line 124
    const-string v4, "sensorhub_control_report_period"

    const-wide v6, 0xdf8475800L

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 129
    :goto_1
    const-string v4, "HwMSDPOtherParams"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v4, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mExtendAwarenessFence:Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    invoke-virtual {v4, v0}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->setRegisterBundle(Landroid/os/Bundle;)V

    .line 131
    iget-object v4, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mAwarenessManager:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    iget-object v5, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->mExtendAwarenessFence:Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    invoke-virtual {v4, v5}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->setReportPeriod(Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;)Lcom/huawei/hiai/awareness/service/RequestResult;

    move-result-object v1

    .line 132
    .local v1, "requestResult":Lcom/huawei/hiai/awareness/service/RequestResult;
    if-eqz v1, :cond_3

    .line 133
    const-string v4, "ARFromAwarenessImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setReportPeriod code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/huawei/hiai/awareness/service/RequestResult;->getErrorCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 134
    invoke-virtual {v1}, Lcom/huawei/hiai/awareness/service/RequestResult;->getErrorResult()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "requestResult":Lcom/huawei/hiai/awareness/service/RequestResult;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 126
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    :try_start_1
    const-string v4, "sensorhub_control_report_period"

    const-wide v6, 0x2e90edd000L

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 136
    .restart local v1    # "requestResult":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_3
    const-string v4, "ARFromAwarenessImpl"

    const-string v5, "setReportPeriod return null"

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
