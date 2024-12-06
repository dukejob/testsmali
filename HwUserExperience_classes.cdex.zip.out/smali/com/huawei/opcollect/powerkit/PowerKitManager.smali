.class public Lcom/huawei/opcollect/powerkit/PowerKitManager;
.super Ljava/lang/Object;
.source "PowerKitManager.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "PowerKitManager"

.field private static instance:Lcom/huawei/opcollect/powerkit/PowerKitManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsPowerKitConnected:Z

.field private mPowerKit:Lcom/huawei/android/powerkit/HuaweiPowerKit;

.field private mPowerKitConnection:Lcom/huawei/android/powerkit/PowerKitConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/powerkit/PowerKitManager;->LOCK:Ljava/lang/Object;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/powerkit/PowerKitManager;->instance:Lcom/huawei/opcollect/powerkit/PowerKitManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/opcollect/powerkit/PowerKitManager;->mIsPowerKitConnected:Z

    .line 32
    const-string v0, "PowerKitManager"

    const-string v1, "PowerKitManager"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/huawei/opcollect/powerkit/PowerKitManager;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/huawei/opcollect/powerkit/PowerKitManager$1;

    invoke-direct {v0, p0}, Lcom/huawei/opcollect/powerkit/PowerKitManager$1;-><init>(Lcom/huawei/opcollect/powerkit/PowerKitManager;)V

    iput-object v0, p0, Lcom/huawei/opcollect/powerkit/PowerKitManager;->mPowerKitConnection:Lcom/huawei/android/powerkit/PowerKitConnection;

    .line 47
    iget-object v0, p0, Lcom/huawei/opcollect/powerkit/PowerKitManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/opcollect/powerkit/PowerKitManager;->mPowerKitConnection:Lcom/huawei/android/powerkit/PowerKitConnection;

    invoke-static {v0, v1}, Lcom/huawei/android/powerkit/HuaweiPowerKit;->getInstance(Landroid/content/Context;Lcom/huawei/android/powerkit/PowerKitConnection;)Lcom/huawei/android/powerkit/HuaweiPowerKit;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/opcollect/powerkit/PowerKitManager;->mPowerKit:Lcom/huawei/android/powerkit/HuaweiPowerKit;

    .line 48
    return-void
.end method

.method static synthetic access$002(Lcom/huawei/opcollect/powerkit/PowerKitManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/powerkit/PowerKitManager;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/huawei/opcollect/powerkit/PowerKitManager;->mIsPowerKitConnected:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/powerkit/PowerKitManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v1, Lcom/huawei/opcollect/powerkit/PowerKitManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/powerkit/PowerKitManager;->instance:Lcom/huawei/opcollect/powerkit/PowerKitManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/huawei/opcollect/powerkit/PowerKitManager;

    invoke-direct {v0, p0}, Lcom/huawei/opcollect/powerkit/PowerKitManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/opcollect/powerkit/PowerKitManager;->instance:Lcom/huawei/opcollect/powerkit/PowerKitManager;

    .line 55
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/powerkit/PowerKitManager;->instance:Lcom/huawei/opcollect/powerkit/PowerKitManager;

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public isUserSleeping()Z
    .locals 5

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, "ret":Z
    iget-boolean v2, p0, Lcom/huawei/opcollect/powerkit/PowerKitManager;->mIsPowerKitConnected:Z

    if-eqz v2, :cond_0

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/huawei/opcollect/powerkit/PowerKitManager;->mPowerKit:Lcom/huawei/android/powerkit/HuaweiPowerKit;

    invoke-virtual {v2}, Lcom/huawei/android/powerkit/HuaweiPowerKit;->isUserSleeping()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PowerKitManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowerKit exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
