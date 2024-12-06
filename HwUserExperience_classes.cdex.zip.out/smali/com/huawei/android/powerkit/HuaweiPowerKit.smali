.class public Lcom/huawei/android/powerkit/HuaweiPowerKit;
.super Ljava/lang/Object;
.source "HuaweiPowerKit.java"


# static fields
.field public static final RES_TYPE_ALARM:I = 0x100

.field public static final RES_TYPE_ALL:I = 0xffff

.field public static final RES_TYPE_AUTOSTART:I = 0x40

.field public static final RES_TYPE_BT_SCN:I = 0x8

.field public static final RES_TYPE_CPU:I = 0x1

.field public static final RES_TYPE_GPS:I = 0x4

.field public static final RES_TYPE_HIGH_CURRENT:I = 0x80

.field public static final RES_TYPE_KWAKELOCK:I = 0x400

.field public static final RES_TYPE_NETLOCATION:I = 0x20

.field public static final RES_TYPE_NETWORK:I = 0x200

.field public static final RES_TYPE_WAKELOCK:I = 0x2

.field public static final RES_TYPE_WIFI_SCN:I = 0x10

.field public static final STATE_RESOURCE_ABNORMAL:I = 0x32

.field public static final STATE_THERMAL:I = 0x9

.field private static final TAG:Ljava/lang/String; = "HuaweiPowerKit"

.field private static sInstance:Lcom/huawei/android/powerkit/HuaweiPowerKit;


# instance fields
.field private mApi:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->sInstance:Lcom/huawei/android/powerkit/HuaweiPowerKit;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/huawei/android/powerkit/PowerKitConnection;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkConnection"    # Lcom/huawei/android/powerkit/PowerKitConnection;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mApi:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    .line 36
    iput-object p1, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    invoke-direct {v0, p1, p2}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;-><init>(Landroid/content/Context;Lcom/huawei/android/powerkit/PowerKitConnection;)V

    iput-object v0, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mApi:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    .line 38
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/huawei/android/powerkit/PowerKitConnection;)Lcom/huawei/android/powerkit/HuaweiPowerKit;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkConnection"    # Lcom/huawei/android/powerkit/PowerKitConnection;

    .prologue
    .line 42
    const-class v1, Lcom/huawei/android/powerkit/HuaweiPowerKit;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->sInstance:Lcom/huawei/android/powerkit/HuaweiPowerKit;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/huawei/android/powerkit/HuaweiPowerKit;

    invoke-direct {v0, p0, p1}, Lcom/huawei/android/powerkit/HuaweiPowerKit;-><init>(Landroid/content/Context;Lcom/huawei/android/powerkit/PowerKitConnection;)V

    sput-object v0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->sInstance:Lcom/huawei/android/powerkit/HuaweiPowerKit;

    .line 47
    :cond_0
    sget-object v0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->sInstance:Lcom/huawei/android/powerkit/HuaweiPowerKit;

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
.method public applyForResourceUse(Ljava/lang/String;IJLjava/lang/String;)Z
    .locals 9
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "resourceType"    # I
    .param p3, "timeoutInMS"    # J
    .param p5, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v1, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mApi:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    iget-object v2, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->applyForResourceUse(Landroid/content/Context;ZLjava/lang/String;IJLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getCurrentFps()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mApi:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    iget-object v1, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->getCurrentFps(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getCurrentResolutionRatio()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mApi:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    iget-object v1, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->getCurrentResolutionRatio(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public getPowerKitVersion()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mApi:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    iget-object v1, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->getPowerKitVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mApi:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    iget-object v1, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->getPowerMode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getPowerOptimizeType()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mApi:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    iget-object v1, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->getPowerOptimizeType(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public isUserSleeping()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mApi:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    iget-object v1, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->isUserSleeping(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public notifyCallingModules(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "self"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    .local p3, "callingModules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mApi:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->notifyCallingModules(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Lcom/huawei/android/powerkit/Sink;I)Z
    .locals 1
    .param p1, "sink"    # Lcom/huawei/android/powerkit/Sink;
    .param p2, "stateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mApi:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->enableStateEvent(Lcom/huawei/android/powerkit/Sink;I)Z

    move-result v0

    return v0
.end method

.method public registerMaintenanceTime(Ljava/lang/String;JJ)Z
    .locals 8
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "inactiveTime"    # J
    .param p4, "activeTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mApi:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    iget-object v1, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->registerMaintenanceTime(Landroid/content/Context;ZLjava/lang/String;JJ)Z

    move-result v0

    return v0
.end method

.method public setActiveState(II)Z
    .locals 2
    .param p1, "stateType"    # I
    .param p2, "eventType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mApi:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    iget-object v1, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->setActiveState(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method public setFps(I)I
    .locals 2
    .param p1, "fps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mApi:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    iget-object v1, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->setFps(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public setPowerOptimizeType(III)Z
    .locals 3
    .param p1, "state"    # I
    .param p2, "appType"    # I
    .param p3, "optimizeType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 201
    if-ne p1, v0, :cond_0

    .line 202
    .local v0, "isSet":Z
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mApi:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    iget-object v2, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->setPowerOptimizeType(Landroid/content/Context;ZII)Z

    move-result v1

    return v1

    .line 201
    .end local v0    # "isSet":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unRegisterMaintenanceTime(Ljava/lang/String;)Z
    .locals 8
    .param p1, "module"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 187
    iget-object v0, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mApi:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    iget-object v1, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    move-object v3, p1

    move-wide v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->registerMaintenanceTime(Landroid/content/Context;ZLjava/lang/String;JJ)Z

    move-result v0

    return v0
.end method

.method public unapplyForResourceUse(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "resourceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v1, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mApi:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    iget-object v2, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->applyForResourceUse(Landroid/content/Context;ZLjava/lang/String;IJLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unapplyForResourceUse(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 9
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "resourceType"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v1, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mApi:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    iget-object v2, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    move-object v4, p1

    move v5, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->applyForResourceUse(Landroid/content/Context;ZLjava/lang/String;IJLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unregisterListener(Lcom/huawei/android/powerkit/Sink;I)Z
    .locals 1
    .param p1, "sink"    # Lcom/huawei/android/powerkit/Sink;
    .param p2, "stateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/huawei/android/powerkit/HuaweiPowerKit;->mApi:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->disableStateEvent(Lcom/huawei/android/powerkit/Sink;I)Z

    move-result v0

    return v0
.end method
