.class public Lcom/huawei/hiai/awareness/service/ConnectServiceManager;
.super Ljava/lang/Object;
.source "ConnectServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;


# instance fields
.field private mConnectServiceManagerContext:Landroid/content/Context;

.field private mEmptyStringArray:[Ljava/lang/String;

.field private mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

.field private mHwMSDPMovementServiceConnection:Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;

.field private mHwMSDPMovementStatusChangeCallBack:Lcom/huawei/msdp/movement/HwMSDPMovementStatusChangeCallback;

.field mIsConDevStatusServer:Z

.field mIsConMovementServer:Z

.field private mMSDPMovementSupportedActivities:[Ljava/lang/String;

.field private mMSDPSupportModule:I

.field private mMSDPSupportedEnvironments:[Ljava/lang/String;

.field mMovementMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mConnectServiceManagerContext:Landroid/content/Context;

    .line 23
    iput-boolean v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mIsConDevStatusServer:Z

    .line 25
    iput-boolean v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mIsConMovementServer:Z

    .line 26
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mEmptyStringArray:[Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mEmptyStringArray:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mMSDPMovementSupportedActivities:[Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mEmptyStringArray:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mMSDPSupportedEnvironments:[Ljava/lang/String;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mMSDPSupportModule:I

    .line 32
    iput-object v1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    .line 33
    iput-object v1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovementStatusChangeCallBack:Lcom/huawei/msdp/movement/HwMSDPMovementStatusChangeCallback;

    .line 34
    iput-object v1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovementServiceConnection:Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    .prologue
    .line 18
    iget v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mMSDPSupportModule:I

    return v0
.end method

.method static synthetic access$102(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/hiai/awareness/service/ConnectServiceManager;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mMSDPSupportModule:I

    return p1
.end method

.method static synthetic access$200(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)Lcom/huawei/msdp/movement/HwMSDPMovementManager;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mMSDPMovementSupportedActivities:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/hiai/awareness/service/ConnectServiceManager;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mMSDPMovementSupportedActivities:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mMSDPSupportedEnvironments:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/hiai/awareness/service/ConnectServiceManager;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mMSDPSupportedEnvironments:[Ljava/lang/String;

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;
    .locals 2

    .prologue
    .line 38
    const-class v1, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->sInstance:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-direct {v0}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;-><init>()V

    sput-object v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->sInstance:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    .line 41
    :cond_0
    sget-object v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->sInstance:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startConnectService()Z
    .locals 4

    .prologue
    .line 185
    const/4 v0, 0x1

    .line 187
    .local v0, "isSuccessMovement":Z
    iget-boolean v1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mIsConMovementServer:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    if-eqz v1, :cond_0

    .line 188
    sget-object v1, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    const-string v2, " startConnectService() mHwMSDPMovement"

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovementStatusChangeCallBack:Lcom/huawei/msdp/movement/HwMSDPMovementStatusChangeCallback;

    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovementServiceConnection:Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;

    invoke-virtual {v1, v2, v3}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->connectService(Lcom/huawei/msdp/movement/HwMSDPMovementStatusChangeCallback;Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;)Z

    move-result v0

    .line 190
    if-nez v0, :cond_1

    .line 191
    sget-object v1, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    const-string v2, " startConnectService() mHwMSDPMovement fail "

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    :goto_0
    sget-object v1, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " startConnectService():MovementServer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mIsConMovementServer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-boolean v1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mIsConMovementServer:Z

    return v1

    .line 193
    :cond_1
    sget-object v1, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    const-string v2, " startConnectService() mHwMSDPMovement success "

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public diableMovementEvent(Ljava/lang/String;I)V
    .locals 3
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "movementType"    # I

    .prologue
    .line 274
    sget-object v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " disenableMovementEvent() activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t movementtype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    if-nez p1, :cond_0

    .line 276
    sget-object v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    const-string v1, " disenableMovementEvent() activity == null "

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    if-nez v0, :cond_1

    .line 281
    sget-object v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    const-string v1, " enableMovementEvent() mHwMSDPMovement == null "

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->disableMovementEvent(ILjava/lang/String;I)Z

    .line 286
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p2, p1, v1}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->disableMovementEvent(ILjava/lang/String;I)Z

    goto :goto_0
.end method

.method public enableMovementEvent(Ljava/lang/String;ILjava/lang/Long;Lcom/huawei/msdp/movement/HwMSDPOtherParameters;)V
    .locals 7
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "movementType"    # I
    .param p3, "screenOnReportPeriod"    # Ljava/lang/Long;
    .param p4, "hwMSDPOtherParameters"    # Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    .prologue
    .line 255
    sget-object v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " enableMovementEvent() activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t movementtype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    if-nez p1, :cond_0

    .line 257
    sget-object v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    const-string v1, " enableMovementEvent() activity == null "

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    if-nez v0, :cond_1

    .line 261
    sget-object v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    const-string v1, " enableMovementEvent() mHwMSDPMovement == null "

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    const/4 v3, 0x1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move v1, p2

    move-object v2, p1

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->enableMovementEvent(ILjava/lang/String;IJLcom/huawei/msdp/movement/HwMSDPOtherParameters;)Z

    .line 266
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    const/4 v3, 0x2

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move v1, p2

    move-object v2, p1

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->enableMovementEvent(ILjava/lang/String;IJLcom/huawei/msdp/movement/HwMSDPOtherParameters;)Z

    goto :goto_0
.end method

.method public enableMovementEvent(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v3, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    const-string v4, " enableMovementEvent() "

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    if-nez p1, :cond_1

    .line 220
    sget-object v3, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    const-string v4, " enableMovementEvent() map == null "

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mMSDPMovementSupportedActivities:[Ljava/lang/String;

    if-nez v3, :cond_2

    .line 225
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mMovementMap:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    .line 229
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    if-nez v3, :cond_3

    .line 230
    sget-object v3, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    const-string v4, " enableMovementEvent() mHwMSDPMovement == null "

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 235
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 236
    .local v2, "curActivity":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 237
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    const/16 v16, 0x1

    const/16 v17, 0x1

    const-wide v18, 0x2e90edd000L

    new-instance v3, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-string v12, ""

    invoke-direct/range {v3 .. v12}, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;-><init>(DDDDLjava/lang/String;)V

    move-object v4, v15

    move/from16 v5, v16

    move-object v6, v2

    move/from16 v7, v17

    move-wide/from16 v8, v18

    move-object v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->enableMovementEvent(ILjava/lang/String;IJLcom/huawei/msdp/movement/HwMSDPOtherParameters;)Z

    .line 242
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    const/16 v16, 0x1

    const/16 v17, 0x2

    const-wide v18, 0x2e90edd000L

    new-instance v3, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-string v12, ""

    invoke-direct/range {v3 .. v12}, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;-><init>(DDDDLjava/lang/String;)V

    move-object v4, v15

    move/from16 v5, v16

    move-object v6, v2

    move/from16 v7, v17

    move-wide/from16 v8, v18

    move-object v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->enableMovementEvent(ILjava/lang/String;IJLcom/huawei/msdp/movement/HwMSDPOtherParameters;)Z

    goto :goto_1
.end method

.method public declared-synchronized getConnectServiceManagerContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mConnectServiceManagerContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMovementCapability()I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "capabilityValue":I
    sget-object v4, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMovementCapability() mIsConMovementServer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mIsConMovementServer:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-boolean v4, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mIsConMovementServer:Z

    if-nez v4, :cond_0

    .line 48
    sget-object v3, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    const-string v4, "getMovementCapability() movement service not connected"

    invoke-static {v3, v4}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v3, -0x1

    .line 61
    :goto_0
    return v3

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getmMSDPMovementSupportedActivities()[Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "activities":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 53
    sget-object v4, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "getMovementCapability() no supported activity"

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_1
    array-length v5, v0

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 57
    .local v2, "tmp":Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hiai/awareness/movement/MovementController;->getInstance()Lcom/huawei/hiai/awareness/movement/MovementController;

    invoke-static {}, Lcom/huawei/hiai/awareness/movement/MovementController;->getDefaultMovementActionConfigMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    invoke-static {}, Lcom/huawei/hiai/awareness/movement/MovementController;->getInstance()Lcom/huawei/hiai/awareness/movement/MovementController;

    invoke-static {}, Lcom/huawei/hiai/awareness/movement/MovementController;->getDefaultMovementActionConfigMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v1, v3

    .line 56
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    .end local v2    # "tmp":Ljava/lang/String;
    :cond_3
    move v3, v1

    .line 61
    goto :goto_0
.end method

.method public getmMSDPMovementSupportedActivities()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 65
    sget-object v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getmMSDPMovementSupportedActivities() mIsConMovementServer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mIsConMovementServer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-boolean v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mIsConMovementServer:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-virtual {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->getSupportedModule()I

    move-result v0

    iput v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mMSDPSupportModule:I

    .line 69
    sget-object v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getmMSDPMovementSupportedActivities() mMSDPSupportModule:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mMSDPSupportModule:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mMSDPSupportModule:I

    and-int/lit8 v0, v0, 0x1

    if-ne v3, v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-virtual {v0, v3}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->getSupportedMovements(I)[Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mEmptyStringArray:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getmMSDPSupportModule()I
    .locals 3

    .prologue
    .line 79
    sget-object v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getmMSDPSupportModule() mIsConMovementServer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mIsConMovementServer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-boolean v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mIsConMovementServer:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-virtual {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->getSupportedModule()I

    move-result v0

    iput v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mMSDPSupportModule:I

    .line 82
    iget v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mMSDPSupportModule:I

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getmMSDPSupportedEnvironments()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 88
    sget-object v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getmMSDPSupportedEnvironments() mIsConMovementServer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mIsConMovementServer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-boolean v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mIsConMovementServer:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-virtual {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->getSupportedModule()I

    move-result v0

    iput v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mMSDPSupportModule:I

    .line 92
    sget-object v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getmMSDPSupportedEnvironments() mMSDPSupportModule:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mMSDPSupportModule:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mMSDPSupportModule:I

    and-int/lit8 v0, v0, 0x2

    if-ne v3, v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-virtual {v0, v3}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->getSupportedMovements(I)[Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mEmptyStringArray:[Ljava/lang/String;

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-direct {v0, p1}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovementServiceConnection:Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;

    invoke-direct {v0, p0}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;-><init>(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)V

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovementServiceConnection:Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovementStatusChangeCallBack:Lcom/huawei/msdp/movement/HwMSDPMovementStatusChangeCallback;

    if-nez v0, :cond_2

    .line 147
    new-instance v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$2;

    invoke-direct {v0, p0}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$2;-><init>(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)V

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovementStatusChangeCallBack:Lcom/huawei/msdp/movement/HwMSDPMovementStatusChangeCallback;

    .line 177
    :cond_2
    return-void
.end method

.method public isIntegradeSensorHub()Z
    .locals 4

    .prologue
    .line 294
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-virtual {v1}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->getServiceVersion()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "MSDPserviceVersion":Ljava/lang/String;
    sget-object v1, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHwMSDPMovement.getServiceVersion():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    if-eqz v0, :cond_0

    const-string v1, "2.0.0.17"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 299
    const/4 v1, 0x1

    .line 302
    .end local v0    # "MSDPserviceVersion":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->stopConnectService()Z

    .line 291
    return-void
.end method

.method public onStart()Z
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->startConnectService()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setConnectServiceManagerContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "connectServiceManagerContext"    # Landroid/content/Context;

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mConnectServiceManagerContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopConnectService()Z
    .locals 3

    .prologue
    .line 202
    const/4 v0, 0x1

    .line 204
    .local v0, "isSuccess":Z
    iget-boolean v1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mIsConMovementServer:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    if-eqz v1, :cond_0

    .line 205
    sget-object v1, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    const-string v2, " stopConnectService() mHwMSDPMovement"

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mHwMSDPMovement:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-virtual {v1}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->disConnectService()Z

    move-result v0

    .line 207
    if-nez v0, :cond_1

    .line 208
    sget-object v1, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    const-string v2, " stopConnectService() mHwMSDPMovement fail "

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    sget-object v1, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->TAG:Ljava/lang/String;

    const-string v2, " stopConnectService() mHwMSDPMovement success "

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
