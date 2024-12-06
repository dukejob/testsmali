.class public Lcom/huawei/hiai/awareness/common/ThreadPoolManager;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static sThreadPoolManager:Lcom/huawei/hiai/awareness/common/ThreadPoolManager;


# instance fields
.field private mExecutorCacheService:Ljava/util/concurrent/ExecutorService;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->CPU_COUNT:I

    .line 18
    sget v0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->CORE_POOL_SIZE:I

    .line 19
    sget v0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->MAXIMUM_POOL_SIZE:I

    .line 21
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static getInstance()Lcom/huawei/hiai/awareness/common/ThreadPoolManager;
    .locals 2

    .prologue
    .line 53
    const-class v1, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->sThreadPoolManager:Lcom/huawei/hiai/awareness/common/ThreadPoolManager;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;

    invoke-direct {v0}, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;-><init>()V

    sput-object v0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->sThreadPoolManager:Lcom/huawei/hiai/awareness/common/ThreadPoolManager;

    .line 57
    :cond_0
    sget-object v0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->sThreadPoolManager:Lcom/huawei/hiai/awareness/common/ThreadPoolManager;

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "daemon"    # Z

    .prologue
    .line 38
    new-instance v0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager$1;

    invoke-direct {v0, p0, p1}, Lcom/huawei/hiai/awareness/common/ThreadPoolManager$1;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized executorCacheService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->mExecutorCacheService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->mExecutorCacheService:Ljava/util/concurrent/ExecutorService;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->mExecutorCacheService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized executorService()Ljava/util/concurrent/ExecutorService;
    .locals 9

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 31
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->CORE_POOL_SIZE:I

    sget v3, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    const-string v0, "thread pool"

    const/4 v8, 0x0

    .line 32
    invoke-static {v0, v8}, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startInCacheChildThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->executorCacheService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public startInChildThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
