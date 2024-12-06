.class public Lcom/huawei/hiai/awareness/service/AwarenessBinder;
.super Ljava/lang/Object;
.source "AwarenessBinder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AwarenessBinder"

.field private static sInstance:Lcom/huawei/hiai/awareness/service/AwarenessBinder;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "AwarenessBinder"

    const-string v1, "AwarenessBinder()"

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/hiai/awareness/service/AwarenessBinder;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/huawei/hiai/awareness/service/AwarenessBinder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/hiai/awareness/service/AwarenessBinder;->sInstance:Lcom/huawei/hiai/awareness/service/AwarenessBinder;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/huawei/hiai/awareness/service/AwarenessBinder;

    invoke-direct {v0}, Lcom/huawei/hiai/awareness/service/AwarenessBinder;-><init>()V

    sput-object v0, Lcom/huawei/hiai/awareness/service/AwarenessBinder;->sInstance:Lcom/huawei/hiai/awareness/service/AwarenessBinder;

    .line 25
    :cond_0
    sget-object v0, Lcom/huawei/hiai/awareness/service/AwarenessBinder;->sInstance:Lcom/huawei/hiai/awareness/service/AwarenessBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isFenceParameterError(IILcom/huawei/hiai/awareness/service/AwarenessFence;)Z
    .locals 8
    .param p1, "fenceType"    # I
    .param p2, "fenceAction"    # I
    .param p3, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x1

    .line 134
    const-string v4, "AwarenessBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFenceParameterError() fenceType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fenceAction : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, "isParameterError":Z
    if-nez p3, :cond_0

    .line 137
    const-string v4, "AwarenessBinder"

    const-string v5, "isFenceParameterError() null == awarenessFence"

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_0
    return v3

    .line 140
    :cond_0
    invoke-virtual {p3}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getAction()I

    move-result v0

    .line 141
    .local v0, "action":I
    invoke-virtual {p3}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getStatus()I

    move-result v2

    .line 142
    .local v2, "status":I
    sparse-switch p1, :sswitch_data_0

    .line 181
    const-string v3, "AwarenessBinder"

    const-string v4, "isFenceParameterError() unknown type error"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v1, 0x1

    .line 185
    :cond_1
    :goto_1
    const-string v3, "AwarenessBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFenceParameterError() isParameterError : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    .line 186
    goto :goto_0

    .line 144
    :sswitch_0
    invoke-virtual {p3}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getType()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 145
    const-string v3, "AwarenessBinder"

    const-string v4, "isFenceParameterError() MOVEMENT_TYPE type error"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v1, 0x1

    goto :goto_1

    .line 152
    :sswitch_1
    const/16 v3, 0x9

    invoke-virtual {p3}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getType()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p3}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getStatus()I

    move-result v3

    if-ne v7, v3, :cond_2

    .line 153
    invoke-virtual {p3}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getAction()I

    move-result v3

    if-eq p2, v3, :cond_1

    .line 154
    :cond_2
    const-string v3, "AwarenessBinder"

    const-string v4, "isFenceParameterError() DEVICE_USE_TYPE type or status or action error"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v1, 0x1

    goto :goto_1

    .line 160
    :sswitch_2
    const/16 v4, 0xa

    invoke-virtual {p3}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getType()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 161
    invoke-virtual {p3}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getStatus()I

    move-result v4

    if-ne v7, v4, :cond_3

    .line 162
    invoke-virtual {p3}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getAction()I

    move-result v4

    if-eq p2, v4, :cond_4

    .line 163
    :cond_3
    const-string v3, "AwarenessBinder"

    const-string v4, "isFenceParameterError() COMMON_SYSTEM_EVENT_TRIGGER_TYPE type or status or action error"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v1, 0x1

    .line 165
    goto :goto_1

    .line 167
    :cond_4
    const/16 v4, 0x3fff

    if-gt v0, v4, :cond_5

    if-ge v0, v3, :cond_1

    .line 168
    :cond_5
    const-string v3, "AwarenessBinder"

    const-string v4, "isFenceParameterError() broadcast event action  error"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v1, 0x1

    goto :goto_1

    .line 174
    :sswitch_3
    const/4 v3, 0x3

    invoke-virtual {p3}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getType()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 175
    const-string v3, "AwarenessBinder"

    const-string v4, "isFenceParameterError() DEVICE_STATUS_TYPE type error"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 142
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_3
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method private registerFence(IILcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 8
    .param p1, "fenceType"    # I
    .param p2, "fenceAction"    # I
    .param p3, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p4, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p5, "bundle"    # Landroid/os/Bundle;
    .param p6, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 79
    const-string v3, "AwarenessBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerFence() fenceType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fenceAction : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p6, :cond_1

    .line 81
    :cond_0
    const-string v3, "AwarenessBinder"

    const-string v4, "registerFence() null == callback || null == awarenessFence || null == operationPI"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    return v1

    .line 85
    :cond_1
    const-string v3, "AwarenessBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerFence() operationPI.hashCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p6}, Landroid/app/PendingIntent;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v2, Lcom/huawei/hiai/awareness/service/RequestResult;

    invoke-direct {v2}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>()V

    .line 88
    .local v2, "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->getInstance()Lcom/huawei/hiai/awareness/service/ServiceBindingManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->isFenceFunctionSupported(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 89
    new-instance v2, Lcom/huawei/hiai/awareness/service/RequestResult;

    .end local v2    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const v3, 0x30d49

    const-string v4, "error_function_not_supported"

    invoke-direct {v2, v3, v4}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>(ILjava/lang/String;)V

    .line 90
    .restart local v2    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    invoke-virtual {v2, v6}, Lcom/huawei/hiai/awareness/service/RequestResult;->setResultType(I)V

    .line 91
    invoke-virtual {v2, v7}, Lcom/huawei/hiai/awareness/service/RequestResult;->setTriggerStatus(I)V

    .line 93
    :try_start_0
    invoke-interface {p3, v2}, Lcom/huawei/hiai/awareness/service/IRequestCallBack;->onRequestResult(Lcom/huawei/hiai/awareness/service/RequestResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AwarenessBinder"

    const-string v4, "registerFence() RemoteException   "

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-direct {p0, p1, p2, p4}, Lcom/huawei/hiai/awareness/service/AwarenessBinder;->isFenceParameterError(IILcom/huawei/hiai/awareness/service/AwarenessFence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    const-string v3, "AwarenessBinder"

    const-string v4, "registerFence() parameter error"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2, v6}, Lcom/huawei/hiai/awareness/service/RequestResult;->setResultType(I)V

    .line 105
    invoke-virtual {v2, v7}, Lcom/huawei/hiai/awareness/service/RequestResult;->setTriggerStatus(I)V

    .line 106
    const v3, 0x30d47

    invoke-virtual {v2, v3}, Lcom/huawei/hiai/awareness/service/RequestResult;->setErrorCode(I)V

    .line 107
    const-string v3, "error_parameter"

    invoke-virtual {v2, v3}, Lcom/huawei/hiai/awareness/service/RequestResult;->setErrorResult(Ljava/lang/String;)V

    .line 109
    :try_start_1
    invoke-interface {p3, v2}, Lcom/huawei/hiai/awareness/service/IRequestCallBack;->onRequestResult(Lcom/huawei/hiai/awareness/service/RequestResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 110
    :catch_1
    move-exception v0

    .line 111
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "AwarenessBinder"

    const-string v4, "registerFence() RemoteException   "

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    invoke-virtual {p4, p6}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->setOperationPI(Landroid/app/PendingIntent;)V

    .line 120
    invoke-virtual {p4}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 125
    const/4 v1, 0x0

    .local v1, "registerSuccess":Z
    goto :goto_0

    .line 122
    .end local v1    # "registerSuccess":Z
    :pswitch_0
    invoke-static {}, Lcom/huawei/hiai/awareness/movement/MovementController;->getInstance()Lcom/huawei/hiai/awareness/movement/MovementController;

    move-result-object v3

    invoke-virtual {v3, p4, p3, p6}, Lcom/huawei/hiai/awareness/movement/MovementController;->doSensorRegister(Lcom/huawei/hiai/awareness/service/AwarenessFence;Lcom/huawei/hiai/awareness/service/IRequestCallBack;Landroid/app/PendingIntent;)Z

    move-result v1

    .line 123
    .restart local v1    # "registerSuccess":Z
    goto/16 :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAwarenessApiVersion()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    const-string v0, "1.8.0"

    .line 74
    .local v0, "version":Ljava/lang/String;
    const-string v1, "AwarenessBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAwarenessApiVersion() version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-object v0
.end method

.method public getSupportAwarenessCapability(I)Lcom/huawei/hiai/awareness/service/RequestResult;
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 190
    const-string v2, "AwarenessBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportAwarenessCapability() type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v1, Lcom/huawei/hiai/awareness/service/RequestResult;

    invoke-direct {v1}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>()V

    .line 192
    .local v1, "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const/4 v0, 0x0

    .line 194
    .local v0, "capability":I
    packed-switch p1, :pswitch_data_0

    .line 209
    new-instance v1, Lcom/huawei/hiai/awareness/service/RequestResult;

    .end local v1    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const v2, 0x30d47

    const-string v3, "error_parameter"

    invoke-direct {v1, v2, v3}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>(ILjava/lang/String;)V

    .line 210
    .restart local v1    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/huawei/hiai/awareness/service/RequestResult;->setResultType(I)V

    .line 213
    :goto_0
    invoke-virtual {v1, p1}, Lcom/huawei/hiai/awareness/service/RequestResult;->setType(I)V

    .line 214
    const-string v2, "AwarenessBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportAwarenessCapability() result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-object v1

    .line 196
    :pswitch_0
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getMovementCapability()I

    move-result v0

    .line 197
    if-ltz v0, :cond_0

    .line 198
    invoke-virtual {v1, v0}, Lcom/huawei/hiai/awareness/service/RequestResult;->setAction(I)V

    .line 199
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/huawei/hiai/awareness/service/RequestResult;->setResultType(I)V

    .line 204
    :goto_1
    const-string v2, "AwarenessBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportAwarenessCapability() MOVEMENT_TYPE result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_0
    new-instance v1, Lcom/huawei/hiai/awareness/service/RequestResult;

    .end local v1    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const v2, 0x30d4b

    const-string v3, "error_service_not_connected"

    invoke-direct {v1, v2, v3}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>(ILjava/lang/String;)V

    .line 202
    .restart local v1    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/huawei/hiai/awareness/service/RequestResult;->setResultType(I)V

    goto :goto_1

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isIntegrateSensorHub()Z
    .locals 4

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "sensorHubIsIntegrated":Z
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->isIntegradeSensorHub()Z

    move-result v0

    .line 237
    const-string v1, "AwarenessBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIntegrateSensorHub() sensorHubIsIntegrated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return v0
.end method

.method public registerDeviceStatusFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 8
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    .line 228
    const-string v0, "AwarenessBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDeviceStatusFence() awarenessFence : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/huawei/hiai/awareness/service/AwarenessBinder;->registerFence(IILcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v7

    .line 230
    .local v7, "registerSuccess":Z
    const-string v0, "AwarenessBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDeviceStatusFence()  registerSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return v7
.end method

.method public registerMovementFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 8
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    .line 220
    const-string v0, "AwarenessBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMovementFence() awarenessFence : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/huawei/hiai/awareness/service/AwarenessBinder;->registerFence(IILcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v7

    .line 222
    .local v7, "registerSuccess":Z
    const-string v0, "AwarenessBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMovementFence()  registerSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return v7
.end method

.method public unRegisterFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 8
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v7, 0x1

    .line 30
    const-string v4, "AwarenessBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unRegisterFence() awarenessFence : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    .line 32
    :cond_0
    const-string v4, "AwarenessBinder"

    const-string v5, "unRegisterFence() null == callback || null == awarenessFence || null == operationPI"

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 v3, 0x0

    .line 68
    :goto_0
    return v3

    .line 35
    :cond_1
    const-string v4, "AwarenessBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unRegisterFence() operationPI.hashCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p4}, Landroid/app/PendingIntent;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v1, 0x0

    .line 40
    .local v1, "isSuccess":Z
    invoke-virtual {p2}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getType()I

    move-result v4

    if-ne v7, v4, :cond_2

    .line 41
    invoke-static {}, Lcom/huawei/hiai/awareness/movement/MovementController;->getInstance()Lcom/huawei/hiai/awareness/movement/MovementController;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/huawei/hiai/awareness/movement/MovementController;->doSensorUnRegister(Lcom/huawei/hiai/awareness/service/AwarenessFence;)Z

    move-result v1

    .line 44
    :cond_2
    if-eqz v1, :cond_3

    .line 45
    new-instance v2, Lcom/huawei/hiai/awareness/service/RequestResult;

    invoke-direct {v2}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>()V

    .line 46
    .local v2, "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    invoke-virtual {p2}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getTopKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/huawei/hiai/awareness/service/RequestResult;->setRegisterTopKey(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2, v7}, Lcom/huawei/hiai/awareness/service/RequestResult;->setResultType(I)V

    .line 48
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/huawei/hiai/awareness/service/RequestResult;->setTriggerStatus(I)V

    .line 50
    :try_start_0
    invoke-interface {p1, v2}, Lcom/huawei/hiai/awareness/service/IRequestCallBack;->onRequestResult(Lcom/huawei/hiai/awareness/service/RequestResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_1
    const/4 v3, 0x1

    .line 67
    .local v3, "unRegisterSuccess":Z
    :goto_2
    const-string v4, "AwarenessBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unRegisterFence()  unRegisterSuccess : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v3    # "unRegisterSuccess":Z
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "AwarenessBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unRegisterFence()  catch exception : isSuccess = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 56
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_3
    new-instance v2, Lcom/huawei/hiai/awareness/service/RequestResult;

    invoke-direct {v2}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>()V

    .line 57
    .restart local v2    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    invoke-virtual {p2}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getTopKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/huawei/hiai/awareness/service/RequestResult;->setRegisterTopKey(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2, v7}, Lcom/huawei/hiai/awareness/service/RequestResult;->setResultType(I)V

    .line 59
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lcom/huawei/hiai/awareness/service/RequestResult;->setTriggerStatus(I)V

    .line 61
    :try_start_1
    invoke-interface {p1, v2}, Lcom/huawei/hiai/awareness/service/IRequestCallBack;->onRequestResult(Lcom/huawei/hiai/awareness/service/RequestResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    :goto_3
    const/4 v3, 0x0

    .restart local v3    # "unRegisterSuccess":Z
    goto :goto_2

    .line 62
    .end local v3    # "unRegisterSuccess":Z
    :catch_1
    move-exception v0

    .line 63
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "AwarenessBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unRegisterFence()  catch exception : isSuccess = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
