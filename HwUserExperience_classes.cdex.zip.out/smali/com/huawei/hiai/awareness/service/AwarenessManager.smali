.class public Lcom/huawei/hiai/awareness/service/AwarenessManager;
.super Ljava/lang/Object;
.source "AwarenessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hiai/awareness/service/AwarenessManager$MsdpConMsgHandler;
    }
.end annotation


# static fields
.field private static final MSDP_SERVICE_CONNECTION_CYCLE:I = 0x7d0

.field private static final MSG_MSDP_SERVICE_CONNECTION:I = 0x1

.field private static final MSG_THREAD_MONITOR_MSDP_CON:Ljava/lang/String; = "MonitorMSDPConThread"

.field private static final TAG:Ljava/lang/String; = "AwarenessManager"

.field private static final TRY_CONNECT_TIMES:I = 0xa

.field private static mTryConnectionTimes:I


# instance fields
.field private mAwarenessServiceConnection:Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/huawei/hiai/awareness/service/AwarenessManager$MsdpConMsgHandler;

.field mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

.field mIsConnectedMsdpService:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mTryConnectionTimes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIsConnectedMsdpService:Z

    .line 34
    iput-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    .line 35
    iput-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mAwarenessServiceConnection:Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;

    .line 40
    new-instance v0, Lcom/huawei/hiai/awareness/service/AwarenessManager$1;

    invoke-direct {v0, p0}, Lcom/huawei/hiai/awareness/service/AwarenessManager$1;-><init>(Lcom/huawei/hiai/awareness/service/AwarenessManager;)V

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 59
    const-string v0, "AwarenessManager"

    const-string v1, "AwarenessManager()"

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    if-eqz p1, :cond_0

    .line 62
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v0, "AwarenessManager"

    const-string v1, "AwarenessManager() context == null"

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/huawei/hiai/awareness/service/AwarenessManager;)Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/hiai/awareness/service/AwarenessManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mAwarenessServiceConnection:Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/hiai/awareness/service/AwarenessManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/hiai/awareness/service/AwarenessManager;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->dealwithMsdpConnction()V

    return-void
.end method

.method private bindService()Z
    .locals 6

    .prologue
    .line 156
    const-string v3, "AwarenessManager"

    const-string v4, "bindService()"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.huawei.hiai"

    const-string v5, "com.huawei.hiai.awareness.service.AwarenessService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 159
    const-string v3, "com.huawei.hiai.awareness.IAwarenessService"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v3, "LAUNCH_AWARENESS_PACKAGE_NAME"

    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const/4 v2, 0x0

    .line 163
    .local v2, "isBindSuccess":Z
    :try_start_0
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 168
    :goto_0
    return v2

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "AwarenessManager"

    const-string v4, "bindService() Exception"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private buildRequestResultFromEvent(Lcom/huawei/hiai/awareness/awareness/Event;II)Lcom/huawei/hiai/awareness/service/RequestResult;
    .locals 15
    .param p1, "event"    # Lcom/huawei/hiai/awareness/awareness/Event;
    .param p2, "resultType"    # I
    .param p3, "triggerStatus"    # I

    .prologue
    .line 776
    const-string v7, "AwarenessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "buildRequestResultFromEvent() event :  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " resultType : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " triggerStatus : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const/4 v3, 0x0

    .line 778
    .local v3, "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    if-eqz p1, :cond_0

    .line 779
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/awareness/Event;->getEventTriggerStatus()I

    move-result v2

    .line 780
    .local v2, "eventTriggerStatus":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/awareness/Event;->getEventCurType()I

    move-result v4

    .line 781
    .local v4, "type":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/awareness/Event;->getEventCurStatus()I

    move-result v5

    .line 782
    .local v5, "status":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/awareness/Event;->getEventCurAction()I

    move-result v6

    .line 783
    .local v6, "action":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/awareness/Event;->getEventTime()J

    move-result-wide v8

    .line 784
    .local v8, "time":J
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/awareness/Event;->getEventSensorTime()J

    move-result-wide v10

    .line 785
    .local v10, "sensorTime":J
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/awareness/Event;->getEventConfidence()I

    move-result v12

    .line 786
    .local v12, "confidence":I
    new-instance v3, Lcom/huawei/hiai/awareness/service/RequestResult;

    .end local v3    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const/4 v7, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>(IIILjava/lang/String;JJI)V

    .line 787
    .restart local v3    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/huawei/hiai/awareness/service/RequestResult;->setRegisterTopKey(Ljava/lang/String;)V

    .line 789
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/huawei/hiai/awareness/service/RequestResult;->setContent(Ljava/lang/String;)V

    .line 790
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/huawei/hiai/awareness/service/RequestResult;->setResultType(I)V

    .line 791
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/huawei/hiai/awareness/service/RequestResult;->setTriggerStatus(I)V

    .line 793
    .end local v2    # "eventTriggerStatus":I
    .end local v4    # "type":I
    .end local v5    # "status":I
    .end local v6    # "action":I
    .end local v8    # "time":J
    .end local v10    # "sensorTime":J
    .end local v12    # "confidence":I
    :cond_0
    const-string v7, "AwarenessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "buildRequestResultFromEvent() result : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    return-object v3
.end method

.method private dealwithMsdpConnction()V
    .locals 4

    .prologue
    .line 92
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealwithMsdpConnction() mIsConnectedMsdpService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIsConnectedMsdpService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",getPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-boolean v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIsConnectedMsdpService:Z

    if-eqz v0, :cond_1

    .line 95
    const-string v0, "AwarenessManager"

    const-string v1, "dealwithMsdpConnction()\uff0c quit handler!"

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mHandler:Lcom/huawei/hiai/awareness/service/AwarenessManager$MsdpConMsgHandler;

    invoke-virtual {v0}, Lcom/huawei/hiai/awareness/service/AwarenessManager$MsdpConMsgHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mHandler:Lcom/huawei/hiai/awareness/service/AwarenessManager$MsdpConMsgHandler;

    .line 98
    const/4 v0, 0x0

    sput v0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mTryConnectionTimes:I

    .line 99
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mAwarenessServiceConnection:Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;

    invoke-interface {v0}, Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;->onServiceConnected()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mHandler:Lcom/huawei/hiai/awareness/service/AwarenessManager$MsdpConMsgHandler;

    if-eqz v0, :cond_0

    sget v0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mTryConnectionTimes:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 103
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->onStart()Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIsConnectedMsdpService:Z

    .line 104
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute dealwithMsdpConnction() handler! mTryConnectionTimes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mTryConnectionTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget v0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mTryConnectionTimes:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mTryConnectionTimes:I

    .line 106
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mHandler:Lcom/huawei/hiai/awareness/service/AwarenessManager$MsdpConMsgHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/hiai/awareness/service/AwarenessManager$MsdpConMsgHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private getCurrentStatus(I)Lcom/huawei/hiai/awareness/service/RequestResult;
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 592
    iget-boolean v3, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIsConnectedMsdpService:Z

    if-eqz v3, :cond_0

    .line 593
    const/4 v2, 0x0

    .line 594
    .local v2, "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    packed-switch p1, :pswitch_data_0

    .line 617
    .end local v2    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :goto_0
    return-object v2

    .line 596
    .restart local v2    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :pswitch_0
    invoke-static {}, Lcom/huawei/hiai/awareness/movement/MovementController;->getInstance()Lcom/huawei/hiai/awareness/movement/MovementController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hiai/awareness/movement/MovementController;->getMovenentStatusEvent()Lcom/huawei/hiai/awareness/awareness/Event;

    move-result-object v1

    .line 597
    .local v1, "movementEvent":Lcom/huawei/hiai/awareness/awareness/Event;
    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-direct {p0, v1, v3, v4}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->buildRequestResultFromEvent(Lcom/huawei/hiai/awareness/awareness/Event;II)Lcom/huawei/hiai/awareness/service/RequestResult;

    move-result-object v2

    .line 598
    const-string v3, "AwarenessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentStatus() MOVEMENT_TYPE result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 606
    .end local v1    # "movementEvent":Lcom/huawei/hiai/awareness/awareness/Event;
    .end local v2    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_0
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    if-eqz v3, :cond_1

    .line 608
    :try_start_0
    const-string v3, "AwarenessManager"

    const-string v4, "getCurrentStatus() call binder"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    invoke-interface {v3, p1}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->getCurrentStatus(I)Lcom/huawei/hiai/awareness/service/RequestResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AwarenessManager"

    const-string v4, "getCurrentStatus() RemoteException"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 616
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v3, "AwarenessManager"

    const-string v4, "getCurrentStatus() mIAwarenessService = null"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 594
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private isMSDPIntegrationSensorHub()Z
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->isIntegradeSensorHub()Z

    move-result v0

    return v0
.end method

.method private registerDeviceUseTypeFence(ILcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 5
    .param p1, "fenceAction"    # I
    .param p2, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p3, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p4, "bundle"    # Landroid/os/Bundle;
    .param p5, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    .line 537
    const-string v2, "AwarenessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerDeviceUseTypeFence() fenceAction :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    packed-switch p1, :pswitch_data_0

    .line 558
    const/4 v1, 0x0

    .line 561
    .local v1, "registerSuccess":Z
    :goto_0
    :try_start_0
    const-string v2, "AwarenessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerDeviceUseTypeFence() registerSuccess :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .end local v1    # "registerSuccess":Z
    :goto_1
    return v1

    .line 542
    :pswitch_0
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    const/4 v3, 0x0

    invoke-interface {v2, p2, p3, v3, p5}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->registerAppUseTotalTimeFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v1

    .line 544
    .restart local v1    # "registerSuccess":Z
    goto :goto_0

    .line 546
    .end local v1    # "registerSuccess":Z
    :pswitch_1
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    const/4 v3, 0x0

    invoke-interface {v2, p2, p3, v3, p5}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->registerOneAppContinuousUseTimeFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v1

    .line 548
    .restart local v1    # "registerSuccess":Z
    goto :goto_0

    .line 550
    .end local v1    # "registerSuccess":Z
    :pswitch_2
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    const/4 v3, 0x0

    invoke-interface {v2, p2, p3, v3, p5}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->registerDeviceUseTotalTimeFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v1

    .line 552
    .restart local v1    # "registerSuccess":Z
    goto :goto_0

    .line 554
    .end local v1    # "registerSuccess":Z
    :pswitch_3
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    const/4 v3, 0x0

    invoke-interface {v2, p2, p3, v3, p5}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->registerScreenUnlockTotalNumberFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 556
    .restart local v1    # "registerSuccess":Z
    goto :goto_0

    .line 563
    .end local v1    # "registerSuccess":Z
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AwarenessManager"

    const-string v3, "registerDeviceUseTypeFence() RemoteException"

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const/4 v1, 0x0

    goto :goto_1

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private registerFence(IILcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 9
    .param p1, "fenceType"    # I
    .param p2, "fenceAction"    # I
    .param p3, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p4, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p5, "bundle"    # Landroid/os/Bundle;
    .param p6, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v8, 0x0

    .line 473
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    if-eqz v0, :cond_2

    .line 474
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p6, :cond_1

    .line 475
    :cond_0
    const-string v0, "AwarenessManager"

    const-string v1, "registerFence() null == callback || null == awarenessFence || null == operationPI"

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 530
    :goto_0
    return v7

    .line 478
    :cond_1
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerFence() operationPI.hashCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p6}, Landroid/app/PendingIntent;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v0}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->build(Landroid/content/Context;)V

    .line 482
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerFence() call binder awarenessFence :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    packed-switch p1, :pswitch_data_0

    .line 519
    :pswitch_0
    const/4 v7, 0x0

    .line 522
    .local v7, "registerSuccess":Z
    :goto_1
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerFence() registerSuccess :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 524
    .end local v7    # "registerSuccess":Z
    :catch_0
    move-exception v6

    .line 525
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "AwarenessManager"

    const-string v1, "registerFence() RemoteException"

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 526
    goto :goto_0

    .line 486
    .end local v6    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    const/4 v1, 0x0

    invoke-interface {v0, p3, p4, v1, p6}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->registerTimeFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v7

    .line 488
    .restart local v7    # "registerSuccess":Z
    goto :goto_1

    .line 502
    .end local v7    # "registerSuccess":Z
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    const/4 v1, 0x0

    invoke-interface {v0, p3, p4, v1, p6}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->registerLocationFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v7

    .line 509
    .restart local v7    # "registerSuccess":Z
    goto :goto_1

    .line 511
    .end local v7    # "registerSuccess":Z
    :pswitch_3
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->registerDeviceUseTypeFence(ILcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v7

    .line 513
    .restart local v7    # "registerSuccess":Z
    goto :goto_1

    .line 515
    .end local v7    # "registerSuccess":Z
    :pswitch_4
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->registerSystemEventTriggerTypeFence(ILcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    .line 517
    .restart local v7    # "registerSuccess":Z
    goto :goto_1

    .line 529
    .end local v7    # "registerSuccess":Z
    :cond_2
    const-string v0, "AwarenessManager"

    const-string v1, "registerFence() mIAwarenessService = null"

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 530
    goto/16 :goto_0

    .line 484
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private registerSystemEventTriggerTypeFence(ILcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 5
    .param p1, "fenceAction"    # I
    .param p2, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p3, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p4, "bundle"    # Landroid/os/Bundle;
    .param p5, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    .line 571
    const-string v2, "AwarenessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerSystemEventTriggerTypeFence() fenceAction :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    packed-switch p1, :pswitch_data_0

    .line 580
    const/4 v1, 0x0

    .line 583
    .local v1, "registerSuccess":Z
    :goto_0
    :try_start_0
    const-string v2, "AwarenessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerSystemEventTriggerTypeFence() registerSuccess :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .end local v1    # "registerSuccess":Z
    :goto_1
    return v1

    .line 576
    :pswitch_0
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    const/4 v3, 0x0

    invoke-interface {v2, p2, p3, v3, p5}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->registerScreenUnlockFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 578
    .restart local v1    # "registerSuccess":Z
    goto :goto_0

    .line 585
    .end local v1    # "registerSuccess":Z
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AwarenessManager"

    const-string v3, "registerSystemEventTriggerTypeFence() RemoteException"

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const/4 v1, 0x0

    goto :goto_1

    .line 574
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public connectMsdpService(Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;)Z
    .locals 3
    .param p1, "awarenessServiceConnection"    # Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;

    .prologue
    .line 135
    const-string v1, "AwarenessManager"

    const-string v2, "connectMsdpService()"

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 137
    const-string v1, "AwarenessManager"

    const-string v2, "connectMsdpService() mContext == null"

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x0

    .line 152
    :goto_0
    return v1

    .line 141
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MonitorMSDPConThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "handleThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 143
    new-instance v1, Lcom/huawei/hiai/awareness/service/AwarenessManager$MsdpConMsgHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/huawei/hiai/awareness/service/AwarenessManager$MsdpConMsgHandler;-><init>(Lcom/huawei/hiai/awareness/service/AwarenessManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mHandler:Lcom/huawei/hiai/awareness/service/AwarenessManager$MsdpConMsgHandler;

    .line 146
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->initialize(Landroid/content/Context;)V

    .line 147
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->setConnectServiceManagerContext(Landroid/content/Context;)V

    .line 148
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hiai/awareness/common/Utils;->checkMsdpInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mAwarenessServiceConnection:Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;

    .line 150
    invoke-direct {p0}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->dealwithMsdpConnction()V

    .line 152
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public connectService(Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;)Z
    .locals 4
    .param p1, "awarenessServiceConnection"    # Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;

    .prologue
    .line 69
    const-string v1, "AwarenessManager"

    const-string v2, "connectService()"

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 71
    const-string v1, "AwarenessManager"

    const-string v2, "connectService() mContext == null"

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    .line 76
    .local v0, "isConnectSuccess":Z
    if-eqz p1, :cond_2

    .line 77
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mAwarenessServiceConnection:Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;

    .line 78
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    if-nez v1, :cond_1

    .line 79
    invoke-direct {p0}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->bindService()Z

    move-result v0

    .line 87
    :goto_1
    const-string v1, "AwarenessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectService() isConnectSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",getPackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    const-string v1, "AwarenessManager"

    const-string v2, "connectService() mIAwarenessService != null"

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 85
    :cond_2
    const-string v1, "AwarenessManager"

    const-string v2, "connectService() awarenessServiceConnection == null"

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public disconnectService()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    const-string v2, "AwarenessManager"

    const-string v3, "disconnectService()"

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-boolean v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIsConnectedMsdpService:Z

    if-eqz v2, :cond_0

    .line 175
    iput-boolean v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIsConnectedMsdpService:Z

    .line 176
    const-string v1, "AwarenessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnectService(), mIsConnectedMsdpService:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIsConnectedMsdpService:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->stopConnectService()Z

    .line 178
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mAwarenessServiceConnection:Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;

    invoke-interface {v1}, Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;->onServiceDisconnected()V

    .line 190
    :goto_0
    return v0

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    if-nez v2, :cond_1

    .line 182
    const-string v0, "AwarenessManager"

    const-string v2, "disconnectService() mIAwarenessService == null."

    invoke-static {v0, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 183
    goto :goto_0

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 186
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mAwarenessServiceConnection:Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mAwarenessServiceConnection:Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;

    invoke-interface {v1}, Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;->onServiceDisconnected()V

    .line 189
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    goto :goto_0
.end method

.method public getAwarenessApiVersion()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-boolean v3, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIsConnectedMsdpService:Z

    if-eqz v3, :cond_1

    .line 214
    invoke-direct {p0}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->isMSDPIntegrationSensorHub()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    const-string v1, "1.8.0"

    .line 233
    :goto_0
    return-object v1

    .line 217
    :cond_0
    const-string v3, "AwarenessManager"

    const-string v4, "getAwarenessApiVersion() old version!"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 218
    goto :goto_0

    .line 221
    :cond_1
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    if-eqz v3, :cond_2

    .line 223
    :try_start_0
    const-string v3, "AwarenessManager"

    const-string v4, "getAwarenessApiVersion() call binder"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    invoke-interface {v3}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->getAwarenessApiVersion()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "version":Ljava/lang/String;
    const-string v3, "AwarenessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAwarenessApiVersion() version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    .end local v1    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AwarenessManager"

    const-string v4, "getAwarenessApiVersion() RemoteException"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 229
    goto :goto_0

    .line 232
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v3, "AwarenessManager"

    const-string v4, "getAwarenessApiVersion() mIAwarenessService = null"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 233
    goto :goto_0
.end method

.method public getCurrentAwareness(I)Lcom/huawei/hiai/awareness/service/RequestResult;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 242
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->getCurrentAwareness(IZLandroid/os/Bundle;)Lcom/huawei/hiai/awareness/service/RequestResult;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAwareness(IZLandroid/os/Bundle;)Lcom/huawei/hiai/awareness/service/RequestResult;
    .locals 7
    .param p1, "type"    # I
    .param p2, "isCustom"    # Z
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x30d44

    const/4 v5, 0x3

    .line 246
    const-string v2, "AwarenessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentAwareness() type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isCustom : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-boolean v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIsConnectedMsdpService:Z

    if-eqz v2, :cond_0

    .line 248
    invoke-direct {p0, p1}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->getCurrentStatus(I)Lcom/huawei/hiai/awareness/service/RequestResult;

    move-result-object v1

    .line 268
    :goto_0
    return-object v1

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    if-eqz v2, :cond_2

    .line 253
    :try_start_0
    const-string v2, "AwarenessManager"

    const-string v3, "getCurrentAwareness() call binder"

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {v3, p1, p2, p3, v2}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->getCurrentAwareness(IZLandroid/os/Bundle;Ljava/lang/String;)Lcom/huawei/hiai/awareness/service/RequestResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AwarenessManager"

    const-string v3, "getCurrentAwareness() RemoteException"

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v1, Lcom/huawei/hiai/awareness/service/RequestResult;

    const-string v2, "error_unknown"

    invoke-direct {v1, v6, v2}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>(ILjava/lang/String;)V

    .line 260
    .local v1, "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    invoke-virtual {v1, v5}, Lcom/huawei/hiai/awareness/service/RequestResult;->setResultType(I)V

    goto :goto_0

    .line 264
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_2
    const-string v2, "AwarenessManager"

    const-string v3, "getCurrentAwareness() mIAwarenessService = null"

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v1, Lcom/huawei/hiai/awareness/service/RequestResult;

    const-string v2, "error_unknown"

    invoke-direct {v1, v6, v2}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>(ILjava/lang/String;)V

    .line 267
    .restart local v1    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    invoke-virtual {v1, v5}, Lcom/huawei/hiai/awareness/service/RequestResult;->setResultType(I)V

    goto :goto_0
.end method

.method public getCurrentMotionStatus()Lcom/huawei/hiai/awareness/service/RequestResult;
    .locals 4

    .prologue
    .line 196
    const-string v1, "AwarenessManager"

    const-string v2, "getCurrentMotionStatus()"

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->getCurrentStatus(I)Lcom/huawei/hiai/awareness/service/RequestResult;

    move-result-object v0

    .line 198
    .local v0, "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const-string v1, "AwarenessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentMotionStatus() result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-object v0
.end method

.method public getCurrentPhoneStatus()Lcom/huawei/hiai/awareness/service/RequestResult;
    .locals 4

    .prologue
    .line 204
    const-string v1, "AwarenessManager"

    const-string v2, "getCurrentPhoneStatus()"

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->getCurrentStatus(I)Lcom/huawei/hiai/awareness/service/RequestResult;

    move-result-object v0

    .line 206
    .local v0, "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const-string v1, "AwarenessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentPhoneStatus() result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-object v0
.end method

.method public getFenceTriggerResult(Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/app/PendingIntent;)Lcom/huawei/hiai/awareness/service/RequestResult;
    .locals 9
    .param p1, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p2, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    const v8, 0x30d44

    const/4 v7, 0x3

    const/4 v3, 0x0

    .line 394
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    if-eqz v4, :cond_3

    .line 395
    const-string v4, "AwarenessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFenceTriggerResult() awarenessFence : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 397
    :cond_0
    const-string v4, "AwarenessManager"

    const-string v5, "getFenceTriggerResult() null == awarenessFence || null == operationPI"

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :goto_0
    return-object v3

    .line 400
    :cond_1
    const-string v4, "AwarenessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFenceTriggerResult() operationPI.hashCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/app/PendingIntent;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :try_start_0
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->build(Landroid/content/Context;)V

    .line 404
    const-string v4, "AwarenessManager"

    const-string v5, "getFenceTriggerResult() call binder"

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/4 v3, 0x0

    .line 406
    .local v3, "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    instance-of v4, p1, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    if-eqz v4, :cond_2

    .line 407
    const-string v4, "AwarenessManager"

    const-string v5, "getFenceTriggerResult() revert to ExtendAwarenessFence"

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    move-object v0, p1

    check-cast v0, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    move-object v2, v0

    .line 409
    .local v2, "extendAwarenessFence":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5, p2}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->getExtendFenceTriggerResult(Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Lcom/huawei/hiai/awareness/service/RequestResult;

    move-result-object v3

    .line 415
    .end local v2    # "extendAwarenessFence":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    :goto_1
    const-string v4, "AwarenessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFenceTriggerResult() result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    .end local v3    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :catch_0
    move-exception v1

    .line 418
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "AwarenessManager"

    const-string v5, "getFenceTriggerResult() RemoteException"

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    new-instance v3, Lcom/huawei/hiai/awareness/service/RequestResult;

    const-string v4, "error_unknown"

    invoke-direct {v3, v8, v4}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>(ILjava/lang/String;)V

    .line 421
    .restart local v3    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    invoke-virtual {v3, v7}, Lcom/huawei/hiai/awareness/service/RequestResult;->setResultType(I)V

    goto :goto_0

    .line 411
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    const-string v4, "AwarenessManager"

    const-string v5, "getFenceTriggerResult() is AwarenessFence"

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5, p2}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->getFenceTriggerResult(Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Lcom/huawei/hiai/awareness/service/RequestResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 425
    .end local v3    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_3
    const-string v4, "AwarenessManager"

    const-string v5, "getFenceTriggerResult() mIAwarenessService = null"

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    new-instance v3, Lcom/huawei/hiai/awareness/service/RequestResult;

    const-string v4, "error_unknown"

    invoke-direct {v3, v8, v4}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>(ILjava/lang/String;)V

    .line 428
    .restart local v3    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    invoke-virtual {v3, v7}, Lcom/huawei/hiai/awareness/service/RequestResult;->setResultType(I)V

    goto/16 :goto_0
.end method

.method public getSupportAwarenessCapability(I)Lcom/huawei/hiai/awareness/service/RequestResult;
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 622
    iget-boolean v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIsConnectedMsdpService:Z

    if-eqz v2, :cond_0

    .line 623
    invoke-static {}, Lcom/huawei/hiai/awareness/service/AwarenessBinder;->getInstance()Lcom/huawei/hiai/awareness/service/AwarenessBinder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huawei/hiai/awareness/service/AwarenessBinder;->getSupportAwarenessCapability(I)Lcom/huawei/hiai/awareness/service/RequestResult;

    move-result-object v1

    .line 634
    :goto_0
    return-object v1

    .line 625
    :cond_0
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    if-eqz v2, :cond_1

    .line 627
    :try_start_0
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    invoke-interface {v2, p1}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->getSupportAwarenessCapability(I)Lcom/huawei/hiai/awareness/service/RequestResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AwarenessManager"

    const-string v3, "getSupportAwarenessCapability() RemoteException"

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 633
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v2, "AwarenessManager"

    const-string v3, "getSupportAwarenessCapability() RemoteException"

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isIntegrateSensorHub()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 751
    const-string v2, "AwarenessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIntegrateSensorHub() mIsConnectedMsdpService:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIsConnectedMsdpService:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iget-boolean v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIsConnectedMsdpService:Z

    if-eqz v2, :cond_0

    .line 753
    invoke-static {}, Lcom/huawei/hiai/awareness/service/AwarenessBinder;->getInstance()Lcom/huawei/hiai/awareness/service/AwarenessBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hiai/awareness/service/AwarenessBinder;->isIntegrateSensorHub()Z

    move-result v1

    .line 764
    :goto_0
    return v1

    .line 755
    :cond_0
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    if-eqz v2, :cond_1

    .line 757
    :try_start_0
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    invoke-interface {v2}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->isIntegrateSensorHub()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AwarenessManager"

    const-string v3, "isIntegrateSensorHub() RemoteException"

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 763
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v2, "AwarenessManager"

    const-string v3, "isIntegrateSensorHub() RemoteException"

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerAppLifeChangeFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 7
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .param p3, "operationPI"    # Landroid/app/PendingIntent;
    .param p4, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 801
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 802
    :cond_0
    const-string v4, "AwarenessManager"

    const-string v5, "registerAppLifeChangeFence() null == callback || null == awarenessFence || null == operationPI"

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 819
    :goto_0
    return v2

    .line 805
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 806
    .local v1, "intentBundle":Landroid/os/Bundle;
    const-string v4, "REGISTER_APP_LIFE_FENCE_INTENT"

    invoke-virtual {v1, v4, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 807
    invoke-virtual {p2, v1}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->setRegisterBundle(Landroid/os/Bundle;)V

    .line 808
    const/4 v2, 0x0

    .line 811
    .local v2, "registerSuccess":Z
    :try_start_0
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->build(Landroid/content/Context;)V

    .line 812
    const-string v4, "AwarenessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerAppLifeChangeFence() call binder awarenessFence :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    const/4 v5, 0x0

    invoke-interface {v4, p1, p2, v5, p3}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->registerAppLifeChangeFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 818
    const-string v3, "AwarenessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerAppLifeChangeFence()  registerSuccess : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "AwarenessManager"

    const-string v5, "registerAppLifeChangeFence() RemoteException"

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 816
    goto :goto_0
.end method

.method public registerAppUseTotalTimeFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/app/PendingIntent;)Z
    .locals 8
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p3, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    .line 322
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerAppUseTotalTimeFence() awarenessFence : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->registerFence(IILcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v7

    .line 324
    .local v7, "registerSuccess":Z
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerAppUseTotalTimeFence()  registerSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return v7
.end method

.method public registerBroadcastEventFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 7
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .param p3, "operationPI"    # Landroid/app/PendingIntent;
    .param p4, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 368
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 369
    :cond_0
    const-string v4, "AwarenessManager"

    const-string v5, "registerBroadcastEventFence() null == callback || null == awarenessFence || null == operationPI"

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 386
    :goto_0
    return v2

    .line 372
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 373
    .local v1, "intentBundle":Landroid/os/Bundle;
    const-string v4, "REGISTER_BROADCAST_FENCE_INTENT"

    invoke-virtual {v1, v4, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 374
    invoke-virtual {p2, v1}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->setRegisterBundle(Landroid/os/Bundle;)V

    .line 375
    const/4 v2, 0x0

    .line 378
    .local v2, "registerSuccess":Z
    :try_start_0
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->build(Landroid/content/Context;)V

    .line 379
    const-string v4, "AwarenessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerBroadcastEventFence() call binder awarenessFence :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    const/4 v5, 0x0

    invoke-interface {v4, p1, p2, v5, p3}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->registerBroadcastEventFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 385
    const-string v3, "AwarenessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerBroadcastEventFence()  registerSuccess : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "AwarenessManager"

    const-string v5, "registerBroadcastEventFence() RemoteException"

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 383
    goto :goto_0
.end method

.method public registerCustomLocationFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/app/PendingIntent;)Z
    .locals 7
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .param p3, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v3, 0x0

    .line 298
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 299
    :cond_0
    const-string v4, "AwarenessManager"

    const-string v5, "registerCustomLocationFence() null == callback || null == awarenessFence || null == operationPI"

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 316
    :goto_0
    return v1

    .line 302
    :cond_1
    const/4 v1, 0x0

    .line 305
    .local v1, "registerSuccess":Z
    :try_start_0
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->build(Landroid/content/Context;)V

    .line 306
    const-string v4, "AwarenessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerCustomLocationFence() call binder awarenessFence :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->getSecondAction()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "secondAction":Ljava/lang/String;
    const-string v4, "LOCATION&CUSTOM"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 309
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    const/4 v5, 0x0

    invoke-interface {v4, p1, p2, v5, p3}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->registerCustomLocationFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 315
    :cond_2
    const-string v3, "AwarenessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerCustomLocationFence()  registerSuccess : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    .end local v2    # "secondAction":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "AwarenessManager"

    const-string v5, "registerCustomLocationFence() RemoteException"

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 313
    goto :goto_0
.end method

.method public registerDeviceStatusFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/app/PendingIntent;)Z
    .locals 6
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .param p3, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 671
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 672
    :cond_0
    const-string v3, "AwarenessManager"

    const-string v4, "registerDeviceStatusFence() null == callback || null == awarenessFence || null == operationPI"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 696
    :goto_0
    return v1

    .line 675
    :cond_1
    iget-boolean v3, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIsConnectedMsdpService:Z

    if-eqz v3, :cond_2

    .line 676
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->build(Landroid/content/Context;)V

    .line 677
    const-string v2, "AwarenessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerDeviceStatusFence() call binder awarenessFence :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mIsConnectedMsdpService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-static {}, Lcom/huawei/hiai/awareness/service/AwarenessBinder;->getInstance()Lcom/huawei/hiai/awareness/service/AwarenessBinder;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v5, p3}, Lcom/huawei/hiai/awareness/service/AwarenessBinder;->registerDeviceStatusFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v1

    goto :goto_0

    .line 681
    :cond_2
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    if-eqz v3, :cond_3

    .line 682
    const/4 v1, 0x0

    .line 685
    .local v1, "registerSuccess":Z
    :try_start_0
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->build(Landroid/content/Context;)V

    .line 686
    const-string v3, "AwarenessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerDeviceStatusFence() call binder awarenessFence :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    const/4 v4, 0x0

    invoke-interface {v3, p1, p2, v4, p3}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->registerDeviceStatusFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 692
    const-string v2, "AwarenessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerDeviceStatusFence()  registerSuccess : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AwarenessManager"

    const-string v4, "registerDeviceStatusFence() RemoteException"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 690
    goto :goto_0

    .line 695
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "registerSuccess":Z
    :cond_3
    const-string v3, "AwarenessManager"

    const-string v4, "registerDeviceStatusFence() exception"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 696
    goto/16 :goto_0
.end method

.method public registerDeviceUseTotalTimeFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/app/PendingIntent;)Z
    .locals 8
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p3, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    .line 340
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDeviceUseTotalTimeFence() awarenessFence : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/16 v1, 0x9

    const/4 v2, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->registerFence(IILcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v7

    .line 342
    .local v7, "registerSuccess":Z
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDeviceUseTotalTimeFence()  registerSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return v7
.end method

.method public registerLocationFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/app/PendingIntent;)Z
    .locals 8
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p3, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    .line 290
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerLocationFence() awarenessFence : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/4 v1, 0x6

    const/4 v2, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->registerFence(IILcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v7

    .line 292
    .local v7, "registerSuccess":Z
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerLocationFence()  registerSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return v7
.end method

.method public registerMotionFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/app/PendingIntent;)Z
    .locals 8
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p3, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    .line 273
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMotionFence() awarenessFence : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->registerFence(IILcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v7

    .line 275
    .local v7, "registerSuccess":Z
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMotionFence()  registerSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return v7
.end method

.method public registerMovementFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/app/PendingIntent;)Z
    .locals 6
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .param p3, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 639
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 640
    :cond_0
    const-string v3, "AwarenessManager"

    const-string v4, "registerMovementFence() null == callback || null == awarenessFence || null == operationPI"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 665
    :goto_0
    return v1

    .line 644
    :cond_1
    iget-boolean v3, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIsConnectedMsdpService:Z

    if-eqz v3, :cond_2

    .line 646
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->build(Landroid/content/Context;)V

    .line 647
    const-string v2, "AwarenessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerMovementFence() call binder awarenessFence :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mIsConnectedMsdpService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-static {}, Lcom/huawei/hiai/awareness/service/AwarenessBinder;->getInstance()Lcom/huawei/hiai/awareness/service/AwarenessBinder;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v5, p3}, Lcom/huawei/hiai/awareness/service/AwarenessBinder;->registerMovementFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v1

    goto :goto_0

    .line 650
    :cond_2
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    if-eqz v3, :cond_3

    .line 651
    const/4 v1, 0x0

    .line 654
    .local v1, "registerSuccess":Z
    :try_start_0
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->build(Landroid/content/Context;)V

    .line 655
    const-string v3, "AwarenessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerMovementFence() call binder awarenessFence :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    const/4 v4, 0x0

    invoke-interface {v3, p1, p2, v4, p3}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->registerMovementFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 661
    const-string v2, "AwarenessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerMovementFence()  registerSuccess : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AwarenessManager"

    const-string v4, "registerMovementFence() RemoteException"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 659
    goto :goto_0

    .line 664
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "registerSuccess":Z
    :cond_3
    const-string v3, "AwarenessManager"

    const-string v4, "registerMovementFence() exception"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 665
    goto/16 :goto_0
.end method

.method public registerOneAppContinuousUseTimeFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/app/PendingIntent;)Z
    .locals 8
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p3, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    .line 331
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerOneAppContinuousUseTimeFence() awarenessFence : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/16 v1, 0x9

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->registerFence(IILcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v7

    .line 333
    .local v7, "registerSuccess":Z
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerOneAppContinuousUseTimeFence()  registerSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return v7
.end method

.method public registerScreenUnlockFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/app/PendingIntent;)Z
    .locals 8
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p3, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    .line 358
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerScreenUnlockFence() awarenessFence : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->registerFence(IILcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v7

    .line 360
    .local v7, "registerSuccess":Z
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerScreenUnlockFence()  registerSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return v7
.end method

.method public registerScreenUnlockTotalNumberFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/app/PendingIntent;)Z
    .locals 8
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p3, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    .line 349
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerScreenUnlockTotalNumberFence() awarenessFence : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/16 v1, 0x9

    const/4 v2, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->registerFence(IILcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v7

    .line 351
    .local v7, "registerSuccess":Z
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerScreenUnlockTotalNumberFence()  registerSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return v7
.end method

.method public registerTimeFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/app/PendingIntent;)Z
    .locals 8
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p3, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    .line 281
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerTimeFence() awarenessFence : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const/16 v1, 0x8

    const/4 v2, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->registerFence(IILcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v7

    .line 283
    .local v7, "registerSuccess":Z
    const-string v0, "AwarenessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerTimeFence()  registerSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return v7
.end method

.method public setReportPeriod(Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;)Lcom/huawei/hiai/awareness/service/RequestResult;
    .locals 7
    .param p1, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    .prologue
    const v6, 0x30d47

    const v5, 0x30d44

    const/4 v4, 0x7

    .line 702
    const/4 v1, 0x0

    .line 703
    .local v1, "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->getRegisterBundle()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 704
    :cond_0
    const-string v2, "AwarenessManager"

    const-string v3, "setReportPeriod(): illegal parameters!"

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    new-instance v1, Lcom/huawei/hiai/awareness/service/RequestResult;

    .end local v1    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const-string v2, "error_parameter"

    invoke-direct {v1, v6, v2}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>(ILjava/lang/String;)V

    .line 707
    .restart local v1    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    invoke-virtual {v1, v4}, Lcom/huawei/hiai/awareness/service/RequestResult;->setResultType(I)V

    move-object v2, v1

    .line 745
    :goto_0
    return-object v2

    .line 711
    :cond_1
    iget-boolean v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIsConnectedMsdpService:Z

    if-eqz v2, :cond_2

    .line 712
    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 719
    const-string v2, "AwarenessManager"

    const-string v3, "setReportPeriod(): illegal parameters!"

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    new-instance v1, Lcom/huawei/hiai/awareness/service/RequestResult;

    .end local v1    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const-string v2, "error_parameter"

    invoke-direct {v1, v6, v2}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>(ILjava/lang/String;)V

    .line 722
    .restart local v1    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    invoke-virtual {v1, v4}, Lcom/huawei/hiai/awareness/service/RequestResult;->setResultType(I)V

    :goto_1
    move-object v2, v1

    .line 726
    goto :goto_0

    .line 714
    :pswitch_0
    invoke-static {}, Lcom/huawei/hiai/awareness/movement/MovementController;->getInstance()Lcom/huawei/hiai/awareness/movement/MovementController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/huawei/hiai/awareness/movement/MovementController;->doSetReportPeriod(Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;)Lcom/huawei/hiai/awareness/service/RequestResult;

    move-result-object v1

    .line 715
    goto :goto_1

    .line 729
    :cond_2
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    if-eqz v2, :cond_3

    .line 731
    :try_start_0
    const-string v2, "AwarenessManager"

    const-string v3, "setReportPeriod() call binder"

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    invoke-interface {v2, p1}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->setReportPeriod(Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;)Lcom/huawei/hiai/awareness/service/RequestResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AwarenessManager"

    const-string v3, "setReportPeriod() RemoteException"

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    new-instance v1, Lcom/huawei/hiai/awareness/service/RequestResult;

    .end local v1    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const-string v2, "error_unknown"

    invoke-direct {v1, v5, v2}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>(ILjava/lang/String;)V

    .line 737
    .restart local v1    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    invoke-virtual {v1, v4}, Lcom/huawei/hiai/awareness/service/RequestResult;->setResultType(I)V

    move-object v2, v1

    .line 738
    goto :goto_0

    .line 741
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v2, "AwarenessManager"

    const-string v3, "setReportPeriod()"

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    new-instance v1, Lcom/huawei/hiai/awareness/service/RequestResult;

    .end local v1    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const-string v2, "error_unknown"

    invoke-direct {v1, v5, v2}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>(ILjava/lang/String;)V

    .line 744
    .restart local v1    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    invoke-virtual {v1, v4}, Lcom/huawei/hiai/awareness/service/RequestResult;->setResultType(I)V

    move-object v2, v1

    .line 745
    goto :goto_0

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public unRegisterFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/app/PendingIntent;)Z
    .locals 7
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p3, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 436
    iget-boolean v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIsConnectedMsdpService:Z

    if-eqz v4, :cond_0

    .line 437
    invoke-static {}, Lcom/huawei/hiai/awareness/service/AwarenessBinder;->getInstance()Lcom/huawei/hiai/awareness/service/AwarenessBinder;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v5, p3}, Lcom/huawei/hiai/awareness/service/AwarenessBinder;->unRegisterFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v3

    .line 466
    :goto_0
    return v3

    .line 439
    :cond_0
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    if-eqz v4, :cond_4

    .line 440
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 441
    :cond_1
    const-string v4, "AwarenessManager"

    const-string v5, "unRegisterFence() null == callback || null == awarenessFence || null == operationPI"

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_2
    const-string v4, "AwarenessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unRegisterFence() operationPI.hashCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Landroid/app/PendingIntent;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :try_start_0
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->build(Landroid/content/Context;)V

    .line 448
    const-string v4, "AwarenessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unRegisterFence() call binder awarenessFence :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    instance-of v4, p2, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    if-eqz v4, :cond_3

    .line 451
    const-string v4, "AwarenessManager"

    const-string v5, "unRegisterFence() revert to ExtendAwarenessFence"

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    move-object v0, p2

    check-cast v0, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    move-object v2, v0

    .line 453
    .local v2, "extendAwarenessFence":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v2, v5, p3}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->unRegisterExtendFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v3

    .line 454
    .local v3, "registerSuccess":Z
    goto :goto_0

    .line 455
    .end local v2    # "extendAwarenessFence":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .end local v3    # "registerSuccess":Z
    :cond_3
    const-string v4, "AwarenessManager"

    const-string v5, "unRegisterFence() is AwarenessFence"

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    const/4 v5, 0x0

    invoke-interface {v4, p1, p2, v5, p3}, Lcom/huawei/hiai/awareness/service/IAwarenessService;->unRegisterFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .restart local v3    # "registerSuccess":Z
    goto :goto_0

    .line 460
    .end local v3    # "registerSuccess":Z
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "AwarenessManager"

    const-string v5, "unRegisterFence() RemoteException"

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v4, "AwarenessManager"

    const-string v5, "unRegisterFence() mIAwarenessService = null"

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
