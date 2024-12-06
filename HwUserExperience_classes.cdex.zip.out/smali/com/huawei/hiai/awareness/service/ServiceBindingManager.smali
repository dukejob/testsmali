.class public Lcom/huawei/hiai/awareness/service/ServiceBindingManager;
.super Ljava/lang/Object;
.source "ServiceBindingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hiai/awareness/service/ServiceBindingManager$RequestRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static packageCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huawei/hiai/awareness/service/IRequestCallBack;",
            ">;>;"
        }
    .end annotation
.end field

.field private static serviceBindingManager:Lcom/huawei/hiai/awareness/service/ServiceBindingManager;


# instance fields
.field private statusConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->TAG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->serviceBindingManager:Lcom/huawei/hiai/awareness/service/ServiceBindingManager;

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->packageCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->statusConfigMap:Ljava/util/Map;

    .line 25
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->statusConfigMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->statusConfigMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->statusConfigMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private buildRequestResultFromAwareness(Lcom/huawei/hiai/awareness/service/AwarenessFence;II)Lcom/huawei/hiai/awareness/service/RequestResult;
    .locals 17
    .param p1, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p2, "resultType"    # I
    .param p3, "triggerStatus"    # I

    .prologue
    .line 84
    sget-object v14, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "buildRequestResultFromAwareness() awarenessFence :  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " resultType : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " triggerStatus : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v3, 0x0

    .line 86
    .local v3, "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    if-eqz p1, :cond_0

    .line 87
    const/4 v2, 0x0

    .line 88
    .local v2, "content":Ljava/lang/String;
    move/from16 v13, p3

    .line 89
    .local v13, "eventTriggerStatus":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getType()I

    move-result v4

    .line 90
    .local v4, "type":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getStatus()I

    move-result v5

    .line 91
    .local v5, "status":I
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getAction()I

    move-result v6

    .line 92
    .local v6, "action":I
    const/4 v7, 0x0

    .line 94
    .local v7, "secondAction":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 95
    .local v8, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 96
    .local v10, "sensorTime":J
    const/16 v12, 0x64

    .line 98
    .local v12, "confidence":I
    new-instance v3, Lcom/huawei/hiai/awareness/service/RequestResult;

    .end local v3    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    invoke-direct/range {v3 .. v12}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>(IIILjava/lang/String;JJI)V

    .line 99
    .restart local v3    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getTopKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/huawei/hiai/awareness/service/RequestResult;->setRegisterTopKey(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v3, v2}, Lcom/huawei/hiai/awareness/service/RequestResult;->setContent(Ljava/lang/String;)V

    .line 101
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/huawei/hiai/awareness/service/RequestResult;->setResultType(I)V

    .line 102
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/huawei/hiai/awareness/service/RequestResult;->setTriggerStatus(I)V

    .line 104
    .end local v2    # "content":Ljava/lang/String;
    .end local v4    # "type":I
    .end local v5    # "status":I
    .end local v6    # "action":I
    .end local v7    # "secondAction":Ljava/lang/String;
    .end local v8    # "time":J
    .end local v10    # "sensorTime":J
    .end local v12    # "confidence":I
    .end local v13    # "eventTriggerStatus":I
    :cond_0
    sget-object v14, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "buildRequestResultFromAwareness() result : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-object v3
.end method

.method public static getInstance()Lcom/huawei/hiai/awareness/service/ServiceBindingManager;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->serviceBindingManager:Lcom/huawei/hiai/awareness/service/ServiceBindingManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;

    invoke-direct {v0}, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;-><init>()V

    sput-object v0, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->serviceBindingManager:Lcom/huawei/hiai/awareness/service/ServiceBindingManager;

    .line 36
    :cond_0
    sget-object v0, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->serviceBindingManager:Lcom/huawei/hiai/awareness/service/ServiceBindingManager;

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public isFenceFunctionSupported(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 41
    packed-switch p1, :pswitch_data_0

    .line 52
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 44
    :pswitch_1
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getConnectServiceManagerContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hiai/awareness/common/Utils;->checkMsdpInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public registerResultCallback(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;II)V
    .locals 5
    .param p1, "iRequestCallBack"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p3, "triggerStatus"    # I
    .param p4, "resultCode"    # I

    .prologue
    .line 109
    sget-object v2, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerResultCallback awarenessFence : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-eqz p1, :cond_1

    .line 111
    if-eqz p2, :cond_1

    .line 112
    const/4 v2, 0x1

    invoke-direct {p0, p2, v2, p3}, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->buildRequestResultFromAwareness(Lcom/huawei/hiai/awareness/service/AwarenessFence;II)Lcom/huawei/hiai/awareness/service/RequestResult;

    move-result-object v1

    .line 113
    .local v1, "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const v2, 0x30d49

    if-ne v2, p4, :cond_0

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupport action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "errorResult":Ljava/lang/String;
    invoke-virtual {v1, p4}, Lcom/huawei/hiai/awareness/service/RequestResult;->setErrorCode(I)V

    .line 116
    invoke-virtual {v1, v0}, Lcom/huawei/hiai/awareness/service/RequestResult;->setErrorResult(Ljava/lang/String;)V

    .line 118
    .end local v0    # "errorResult":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->getInstance()Lcom/huawei/hiai/awareness/common/ThreadPoolManager;

    move-result-object v2

    new-instance v3, Lcom/huawei/hiai/awareness/service/ServiceBindingManager$RequestRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v1, v4}, Lcom/huawei/hiai/awareness/service/ServiceBindingManager$RequestRunnable;-><init>(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/RequestResult;Lcom/huawei/hiai/awareness/service/ServiceBindingManager$1;)V

    invoke-virtual {v2, v3}, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->startInCacheChildThread(Ljava/lang/Runnable;)V

    .line 122
    .end local v1    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_1
    return-void
.end method
