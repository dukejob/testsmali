.class public Lcom/huawei/msdp/movement/HwMSDPMovementManager;
.super Ljava/lang/Object;
.source "HwMSDPMovementManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/msdp/movement/HwMSDPMovementManager$ServiceDeathHandler;
    }
.end annotation


# static fields
.field private static final AIDL_MESSAGE_SERVICE_CLASS:Ljava/lang/String; = "com.huawei.msdp.movement.HwMSDPMovementService"

.field private static final AIDL_MESSAGE_SERVICE_PACKAGE:Ljava/lang/String; = "com.huawei.msdp"

.field private static final BINDSERVICE:I = 0x1

.field private static final CONNECTTIMES:I = 0xa

.field private static final COUNTTIMES:I = 0x5

.field public static final EVENT_TYPE_ENTER:I = 0x1

.field public static final EVENT_TYPE_EXIT:I = 0x2

.field private static final PROCESSMODULE:I = 0x2

.field private static final SDKVERSION:Ljava/lang/String; = "1.0.8"

.field private static final TAG:Ljava/lang/String; = "HwMSDPMovementManager"

.field private static module:I


# instance fields
.field private DEBUG:Z

.field private deathHandler:Lcom/huawei/msdp/movement/HwMSDPMovementManager$ServiceDeathHandler;

.field private mConnectCount:I

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

.field private mServiceConnection:Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;

.field private mSink:Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;

.field private moduleCount:I

.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->module:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "HwMSDPMovementManager"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->DEBUG:Z

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    .line 25
    iput v1, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mConnectCount:I

    .line 31
    iput v1, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->moduleCount:I

    .line 46
    new-instance v0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$1;

    invoke-direct {v0, p0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager$1;-><init>(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)V

    iput-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$2;

    invoke-direct {v0, p0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager$2;-><init>(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)V

    iput-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mConnection:Landroid/content/ServiceConnection;

    .line 38
    const-string v0, "HwMSDPMovementManager"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->DEBUG:Z

    .line 39
    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->packageName:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$ServiceDeathHandler;

    invoke-direct {v0, p0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager$ServiceDeathHandler;-><init>(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)V

    iput-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->deathHandler:Lcom/huawei/msdp/movement/HwMSDPMovementManager$ServiceDeathHandler;

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->bindService()V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->processModule()V

    return-void
.end method

.method static synthetic access$200(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)Lcom/huawei/msdp/movement/IMSDPMovementService;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/huawei/msdp/movement/HwMSDPMovementManager;Lcom/huawei/msdp/movement/IMSDPMovementService;)Lcom/huawei/msdp/movement/IMSDPMovementService;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/msdp/movement/HwMSDPMovementManager;
    .param p1, "x1"    # Lcom/huawei/msdp/movement/IMSDPMovementService;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->registerSink()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->notifyServiceDied()V

    return-void
.end method

.method static synthetic access$600(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mServiceConnection:Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;

    return-object v0
.end method

.method static synthetic access$700(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)Lcom/huawei/msdp/movement/HwMSDPMovementManager$ServiceDeathHandler;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->deathHandler:Lcom/huawei/msdp/movement/HwMSDPMovementManager$ServiceDeathHandler;

    return-object v0
.end method

.method private bindService()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 103
    iget v1, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mConnectCount:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 104
    const-string v1, "HwMSDPMovementManager"

    const-string v2, "try connect 10 times, connection fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v0, "bindIntent":Landroid/content/Intent;
    const-string v1, "com.huawei.msdp"

    const-string v2, "com.huawei.msdp.movement.HwMSDPMovementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 109
    iget v1, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mConnectCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mConnectCount:I

    .line 110
    iget-object v1, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private static createMSDPMovementSink(Lcom/huawei/msdp/movement/HwMSDPMovementStatusChangeCallback;)Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;
    .locals 1
    .param p0, "sink"    # Lcom/huawei/msdp/movement/HwMSDPMovementStatusChangeCallback;

    .prologue
    .line 488
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$3;

    invoke-direct {v0, p0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager$3;-><init>(Lcom/huawei/msdp/movement/HwMSDPMovementStatusChangeCallback;)V

    goto :goto_0
.end method

.method private getHwMSDPOtherParam()Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
    .locals 14

    .prologue
    const-wide/16 v6, 0x0

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 237
    .local v12, "currentTime":J
    const-wide v0, 0xffffffffL

    and-long/2addr v0, v12

    long-to-double v2, v0

    .line 238
    .local v2, "param1":D
    const/16 v0, 0x20

    shr-long v0, v12, v0

    long-to-double v4, v0

    .line 239
    .local v4, "param2":D
    new-instance v1, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    const-string v10, ""

    move-wide v8, v6

    invoke-direct/range {v1 .. v10}, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;-><init>(DDDDLjava/lang/String;)V

    return-object v1
.end method

.method private notifyServiceDied()V
    .locals 4

    .prologue
    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    invoke-interface {v1}, Lcom/huawei/msdp/movement/IMSDPMovementService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->deathHandler:Lcom/huawei/msdp/movement/HwMSDPMovementManager$ServiceDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "HwMSDPMovementManager"

    const-string v2, "IBinder register linkToDeath function fail."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processModule()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 80
    const-string v0, "HwMSDPMovementManager"

    const-string v1, "processModule"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->moduleCount:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mServiceConnection:Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mServiceConnection:Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;->onServiceDisconnected(Ljava/lang/Boolean;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->getSupportedModule()I

    move-result v0

    sput v0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->module:I

    .line 87
    sget v0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->module:I

    if-nez v0, :cond_2

    .line 88
    iget v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->moduleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->moduleCount:I

    .line 89
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mServiceConnection:Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mServiceConnection:Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;

    invoke-interface {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;->onServiceConnected()V

    .line 93
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private registerSink()Z
    .locals 7

    .prologue
    .line 284
    const-string v4, "HwMSDPMovementManager"

    const-string v5, "registerSink"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v1, 0x0

    .line 287
    .local v1, "result":Z
    iget-object v4, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mSink:Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;

    if-eqz v4, :cond_0

    .line 289
    :try_start_0
    iget-object v4, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    iget-object v5, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mSink:Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;

    invoke-interface {v4, v5, v6}, Lcom/huawei/msdp/movement/IMSDPMovementService;->registerSink(Ljava/lang/String;Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    move v2, v1

    .line 298
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_1
    return v2

    .line 290
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 291
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "HwMSDPMovementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerSink error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 293
    .local v3, "se":Ljava/lang/RuntimeException;
    const-string v4, "HwMSDPMovementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerSink error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    .end local v3    # "se":Ljava/lang/RuntimeException;
    :cond_0
    const-string v4, "HwMSDPMovementManager"

    const-string v5, "mService or mSink is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 298
    .restart local v2    # "result":I
    goto :goto_1
.end method

.method private unregisterSink()Z
    .locals 7

    .prologue
    .line 308
    const-string v4, "HwMSDPMovementManager"

    const-string v5, "unregisterSink"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, "result":Z
    iget-object v4, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mSink:Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;

    if-eqz v4, :cond_0

    .line 312
    :try_start_0
    iget-object v4, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    iget-object v5, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mSink:Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;

    invoke-interface {v4, v5, v6}, Lcom/huawei/msdp/movement/IMSDPMovementService;->unregisterSink(Ljava/lang/String;Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    move v2, v1

    .line 321
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_1
    return v2

    .line 313
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 314
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "HwMSDPMovementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterSink error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 316
    .local v3, "se":Ljava/lang/RuntimeException;
    const-string v4, "HwMSDPMovementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterSink error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 320
    .end local v3    # "se":Ljava/lang/RuntimeException;
    :cond_0
    const-string v4, "HwMSDPMovementManager"

    const-string v5, "mService or mSink is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 321
    .restart local v2    # "result":I
    goto :goto_1
.end method


# virtual methods
.method public connectService(Lcom/huawei/msdp/movement/HwMSDPMovementStatusChangeCallback;Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;)Z
    .locals 3
    .param p1, "sink"    # Lcom/huawei/msdp/movement/HwMSDPMovementStatusChangeCallback;
    .param p2, "connection"    # Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;

    .prologue
    const/4 v0, 0x0

    .line 122
    const-string v1, "HwMSDPMovementManager"

    const-string v2, "HwMSDPMovementSDK Version = 1.0.8"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 124
    iput-object p2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mServiceConnection:Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;

    .line 125
    invoke-static {p1}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->createMSDPMovementSink(Lcom/huawei/msdp/movement/HwMSDPMovementStatusChangeCallback;)Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mSink:Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;

    .line 126
    const-string v1, "HwMSDPMovementManager"

    const-string v2, "bindService "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iput v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mConnectCount:I

    .line 128
    iput v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->moduleCount:I

    .line 129
    invoke-direct {p0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->bindService()V

    .line 130
    const/4 v0, 0x1

    .line 132
    :cond_0
    return v0
.end method

.method public disConnectService()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 461
    const-string v2, "HwMSDPMovementManager"

    const-string v3, "disConnectService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    if-nez v2, :cond_0

    .line 463
    const-string v1, "HwMSDPMovementManager"

    const-string v2, "mService is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :goto_0
    return v0

    .line 466
    :cond_0
    iget-object v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    invoke-interface {v2}, Lcom/huawei/msdp/movement/IMSDPMovementService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->deathHandler:Lcom/huawei/msdp/movement/HwMSDPMovementManager$ServiceDeathHandler;

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 467
    iget-object v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 468
    iget-object v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mServiceConnection:Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;->onServiceDisconnected(Ljava/lang/Boolean;)V

    .line 469
    invoke-direct {p0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->unregisterSink()Z

    .line 470
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    .line 471
    iput v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mConnectCount:I

    .line 472
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 473
    const-string v0, "HwMSDPMovementManager"

    const-string v2, "disConnectService true"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 474
    goto :goto_0
.end method

.method public disableMovementEvent(ILjava/lang/String;I)Z
    .locals 7
    .param p1, "type"    # I
    .param p2, "movement"    # Ljava/lang/String;
    .param p3, "eventType"    # I

    .prologue
    .line 251
    const-string v4, "HwMSDPMovementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disableMovementEvent type ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, "result":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    const-string v4, "HwMSDPMovementManager"

    const-string v5, "activity is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 273
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 257
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_0
    const-string v4, "HwMSDPMovementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v4, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    if-nez v4, :cond_1

    .line 259
    const-string v4, "HwMSDPMovementManager"

    const-string v5, "mService is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 260
    .restart local v2    # "result":I
    goto :goto_0

    .line 263
    .end local v2    # "result":I
    :cond_1
    if-eqz p1, :cond_2

    const/4 v4, 0x1

    if-eq v4, p1, :cond_2

    const/4 v4, 0x2

    if-ne v4, p1, :cond_3

    .line 264
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    iget-object v5, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->packageName:Ljava/lang/String;

    invoke-interface {v4, p1, v5, p2, p3}, Lcom/huawei/msdp/movement/IMSDPMovementService;->disableMovementEvent(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    :goto_1
    move v2, v1

    .line 273
    .restart local v2    # "result":I
    goto :goto_0

    .line 266
    .end local v2    # "result":I
    :cond_3
    const-string v4, "HwMSDPMovementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown movement type ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "HwMSDPMovementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disableMovementEvent error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 270
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 271
    .local v3, "se":Ljava/lang/RuntimeException;
    const-string v4, "HwMSDPMovementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disableMovementEvent error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public enableMovementEvent(ILjava/lang/String;IJLcom/huawei/msdp/movement/HwMSDPOtherParameters;)Z
    .locals 14
    .param p1, "type"    # I
    .param p2, "movement"    # Ljava/lang/String;
    .param p3, "eventType"    # I
    .param p4, "reportLatencyNs"    # J
    .param p6, "parameters"    # Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    .prologue
    .line 194
    const-string v3, "HwMSDPMovementManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableMovementEvent  type ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-boolean v3, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 196
    const-string v3, "HwMSDPMovementManager"

    const-string v4, "enableMovementEvent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    const/4 v11, 0x0

    .line 199
    .local v11, "result":Z
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-ltz v3, :cond_6

    .line 200
    iget-boolean v3, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 201
    const-string v3, "HwMSDPMovementManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_1
    iget-object v3, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    if-nez v3, :cond_2

    .line 204
    const-string v3, "HwMSDPMovementManager"

    const-string v4, "mService is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v11

    .line 226
    .end local v11    # "result":Z
    .local v12, "result":I
    :goto_0
    return v12

    .line 208
    .end local v12    # "result":I
    .restart local v11    # "result":Z
    :cond_2
    if-nez p1, :cond_3

    .line 209
    :try_start_0
    iget-object v3, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    iget-object v5, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->packageName:Ljava/lang/String;

    move v4, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Lcom/huawei/msdp/movement/IMSDPMovementService;->enableMovementEvent(ILjava/lang/String;Ljava/lang/String;IJLcom/huawei/msdp/movement/HwMSDPOtherParameters;)Z

    move-result v11

    :goto_1
    move v12, v11

    .line 222
    .restart local v12    # "result":I
    goto :goto_0

    .line 210
    .end local v12    # "result":I
    :cond_3
    const/4 v3, 0x1

    if-ne v3, p1, :cond_4

    .line 211
    iget-object v3, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    iget-object v5, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->packageName:Ljava/lang/String;

    move v4, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Lcom/huawei/msdp/movement/IMSDPMovementService;->enableMovementEvent(ILjava/lang/String;Ljava/lang/String;IJLcom/huawei/msdp/movement/HwMSDPOtherParameters;)Z

    move-result v11

    goto :goto_1

    .line 212
    :cond_4
    const/4 v3, 0x2

    if-ne v3, p1, :cond_5

    .line 213
    iget-object v3, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    iget-object v5, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->getHwMSDPOtherParam()Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    move-result-object v10

    move v4, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    invoke-interface/range {v3 .. v10}, Lcom/huawei/msdp/movement/IMSDPMovementService;->enableMovementEvent(ILjava/lang/String;Ljava/lang/String;IJLcom/huawei/msdp/movement/HwMSDPOtherParameters;)Z

    move-result v11

    goto :goto_1

    .line 215
    :cond_5
    const-string v3, "HwMSDPMovementManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown movement type  [ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 217
    :catch_0
    move-exception v2

    .line 218
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "HwMSDPMovementManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableMovementEvent error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 219
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v13

    .line 220
    .local v13, "se":Ljava/lang/RuntimeException;
    const-string v3, "HwMSDPMovementManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableMovementEvent error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 225
    .end local v13    # "se":Ljava/lang/RuntimeException;
    :cond_6
    const-string v3, "HwMSDPMovementManager"

    const-string v4, "activity is null or reportLatencyNs < 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v11

    .line 226
    .restart local v12    # "result":I
    goto/16 :goto_0
.end method

.method public exitEnvironment(Ljava/lang/String;)Z
    .locals 6
    .param p1, "environment"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 438
    const-string v3, "HwMSDPMovementManager"

    const-string v4, "exitEnvironment"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v3, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    if-nez v3, :cond_0

    .line 440
    const-string v3, "HwMSDPMovementManager"

    const-string v4, "mService is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_0
    return v2

    .line 444
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    iget-object v4, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->getHwMSDPOtherParam()Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    move-result-object v5

    invoke-interface {v3, v4, p1, v5}, Lcom/huawei/msdp/movement/IMSDPMovementService;->exitEnvironment(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/msdp/movement/HwMSDPOtherParameters;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "HwMSDPMovementManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exitEnvironment error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 449
    .local v1, "se":Ljava/lang/RuntimeException;
    const-string v3, "HwMSDPMovementManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exitEnvironment error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public flush()Z
    .locals 7

    .prologue
    .line 359
    const-string v4, "HwMSDPMovementManager"

    const-string v5, "flush"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v1, 0x0

    .line 362
    .local v1, "result":Z
    iget-object v4, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    if-nez v4, :cond_0

    .line 363
    const-string v4, "HwMSDPMovementManager"

    const-string v5, "mService is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 374
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 367
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    invoke-interface {v4}, Lcom/huawei/msdp/movement/IMSDPMovementService;->flush()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 373
    :goto_1
    const-string v4, "HwMSDPMovementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flush ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 374
    .restart local v2    # "result":I
    goto :goto_0

    .line 368
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 369
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "HwMSDPMovementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flush error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 370
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 371
    .local v3, "se":Ljava/lang/RuntimeException;
    const-string v4, "HwMSDPMovementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flush error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getCurrentMovement(I)Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;
    .locals 7
    .param p1, "type"    # I

    .prologue
    .line 332
    const-string v4, "HwMSDPMovementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentMovement type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-boolean v4, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 334
    const-string v4, "HwMSDPMovementManager"

    const-string v5, "getCurrentMovement"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    const/4 v0, 0x0

    .line 337
    .local v0, "activity":Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;
    iget-object v4, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    if-nez v4, :cond_1

    .line 338
    const-string v4, "HwMSDPMovementManager"

    const-string v5, "mService is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 349
    .end local v0    # "activity":Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;
    .local v1, "activity":Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;
    :goto_0
    return-object v1

    .line 342
    .end local v1    # "activity":Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;
    .restart local v0    # "activity":Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    iget-object v5, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->packageName:Ljava/lang/String;

    invoke-interface {v4, p1, v5}, Lcom/huawei/msdp/movement/IMSDPMovementService;->getCurrentMovement(ILjava/lang/String;)Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 349
    .end local v0    # "activity":Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;
    .restart local v1    # "activity":Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;
    goto :goto_0

    .line 344
    .end local v1    # "activity":Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;
    .restart local v0    # "activity":Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;
    :catch_0
    move-exception v2

    .line 345
    .local v2, "re":Landroid/os/RemoteException;
    const-string v4, "HwMSDPMovementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentMovement error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 346
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 347
    .local v3, "se":Ljava/lang/RuntimeException;
    const-string v4, "HwMSDPMovementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentMovement error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 142
    const-string v2, "HwMSDPMovementManager"

    const-string v3, "getServiceVersion"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    if-nez v2, :cond_0

    .line 144
    const-string v2, "HwMSDPMovementManager"

    const-string v3, "mService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v2, ""

    .line 154
    :goto_0
    return-object v2

    .line 148
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    invoke-interface {v2}, Lcom/huawei/msdp/movement/IMSDPMovementService;->getServcieVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "HwMSDPMovementManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getServiceVersion error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v2, ""

    goto :goto_0

    .line 152
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 153
    .local v1, "se":Ljava/lang/RuntimeException;
    const-string v2, "HwMSDPMovementManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getServiceVersion error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v2, ""

    goto :goto_0
.end method

.method public getSupportedModule()I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 384
    const-string v4, "HwMSDPMovementManager"

    const-string v5, "getSupportedModule"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v1, 0x0

    .line 386
    .local v1, "result":I
    iget-object v4, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    if-nez v4, :cond_0

    .line 387
    const-string v3, "HwMSDPMovementManager"

    const-string v4, "mService is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 400
    :goto_0
    return v3

    .line 391
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    invoke-interface {v4}, Lcom/huawei/msdp/movement/IMSDPMovementService;->getSupportedModule()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 399
    const-string v3, "HwMSDPMovementManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSupportedModule ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 400
    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "HwMSDPMovementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSupportedModule error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 396
    .local v2, "se":Ljava/lang/RuntimeException;
    const-string v4, "HwMSDPMovementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSupportedModule error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSupportedMovements(I)[Ljava/lang/String;
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    .line 167
    const-string v2, "HwMSDPMovementManager"

    const-string v3, "getSupportedMovements"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    if-nez v2, :cond_0

    .line 169
    const-string v2, "HwMSDPMovementManager"

    const-string v3, "mService is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-array v2, v5, [Ljava/lang/String;

    .line 179
    :goto_0
    return-object v2

    .line 173
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    invoke-interface {v2, p1}, Lcom/huawei/msdp/movement/IMSDPMovementService;->getSupportedMovements(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "HwMSDPMovementManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportedMovements error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-array v2, v5, [Ljava/lang/String;

    goto :goto_0

    .line 177
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 178
    .local v1, "se":Ljava/lang/RuntimeException;
    const-string v2, "HwMSDPMovementManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportedMovements error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-array v2, v5, [Ljava/lang/String;

    goto :goto_0
.end method

.method public initEnvironment(Ljava/lang/String;)Z
    .locals 7
    .param p1, "environment"    # Ljava/lang/String;

    .prologue
    .line 411
    const-string v4, "HwMSDPMovementManager"

    const-string v5, "initEnvironment"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v1, 0x0

    .line 413
    .local v1, "result":Z
    iget-object v4, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    if-nez v4, :cond_0

    .line 414
    const-string v4, "HwMSDPMovementManager"

    const-string v5, "mService is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 428
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 418
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->mService:Lcom/huawei/msdp/movement/IMSDPMovementService;

    iget-object v5, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->getHwMSDPOtherParam()Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    move-result-object v6

    invoke-interface {v4, v5, p1, v6}, Lcom/huawei/msdp/movement/IMSDPMovementService;->initEnvironment(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/msdp/movement/HwMSDPOtherParameters;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 427
    const-string v4, "HwMSDPMovementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initEnvironment result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 428
    .restart local v2    # "result":I
    goto :goto_0

    .line 419
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 420
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "HwMSDPMovementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initEnvironment error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 421
    .restart local v2    # "result":I
    goto :goto_0

    .line 422
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v2    # "result":I
    :catch_1
    move-exception v3

    .line 423
    .local v3, "se":Ljava/lang/RuntimeException;
    const-string v4, "HwMSDPMovementManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initEnvironment error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 424
    .restart local v2    # "result":I
    goto :goto_0
.end method
