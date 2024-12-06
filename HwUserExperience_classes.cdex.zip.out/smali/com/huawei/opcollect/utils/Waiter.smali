.class public Lcom/huawei/opcollect/utils/Waiter;
.super Ljava/lang/Object;
.source "Waiter.java"


# instance fields
.field private completed:Z

.field private condition:Ljava/util/concurrent/locks/Condition;

.field private interrupted:Z

.field private lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/huawei/opcollect/utils/Waiter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 24
    iget-object v0, p0, Lcom/huawei/opcollect/utils/Waiter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/opcollect/utils/Waiter;->condition:Ljava/util/concurrent/locks/Condition;

    .line 25
    iput-boolean v1, p0, Lcom/huawei/opcollect/utils/Waiter;->completed:Z

    .line 26
    iput-boolean v1, p0, Lcom/huawei/opcollect/utils/Waiter;->interrupted:Z

    .line 27
    return-void
.end method


# virtual methods
.method public await(J)Z
    .locals 9
    .param p1, "timeout"    # J

    .prologue
    const/4 v4, 0x0

    .line 36
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 37
    .local v0, "nanos":J
    iget-object v3, p0, Lcom/huawei/opcollect/utils/Waiter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 40
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/huawei/opcollect/utils/Waiter;->interrupted:Z

    if-nez v3, :cond_2

    .line 41
    iget-boolean v3, p0, Lcom/huawei/opcollect/utils/Waiter;->completed:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 42
    const/4 v3, 0x1

    .line 56
    iput-boolean v4, p0, Lcom/huawei/opcollect/utils/Waiter;->completed:Z

    .line 57
    iput-boolean v4, p0, Lcom/huawei/opcollect/utils/Waiter;->interrupted:Z

    .line 58
    iget-object v4, p0, Lcom/huawei/opcollect/utils/Waiter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 54
    :goto_1
    return v3

    .line 45
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-gtz v3, :cond_1

    .line 56
    iput-boolean v4, p0, Lcom/huawei/opcollect/utils/Waiter;->completed:Z

    .line 57
    iput-boolean v4, p0, Lcom/huawei/opcollect/utils/Waiter;->interrupted:Z

    .line 58
    iget-object v3, p0, Lcom/huawei/opcollect/utils/Waiter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v3, v4

    .line 46
    goto :goto_1

    .line 49
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/huawei/opcollect/utils/Waiter;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 56
    :cond_2
    iput-boolean v4, p0, Lcom/huawei/opcollect/utils/Waiter;->completed:Z

    .line 57
    iput-boolean v4, p0, Lcom/huawei/opcollect/utils/Waiter;->interrupted:Z

    .line 58
    iget-object v3, p0, Lcom/huawei/opcollect/utils/Waiter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v3, v4

    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception v2

    .line 56
    .local v2, "var10":Ljava/lang/InterruptedException;
    iput-boolean v4, p0, Lcom/huawei/opcollect/utils/Waiter;->completed:Z

    .line 57
    iput-boolean v4, p0, Lcom/huawei/opcollect/utils/Waiter;->interrupted:Z

    .line 58
    iget-object v3, p0, Lcom/huawei/opcollect/utils/Waiter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v3, v4

    .line 54
    goto :goto_1

    .line 56
    .end local v2    # "var10":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    iput-boolean v4, p0, Lcom/huawei/opcollect/utils/Waiter;->completed:Z

    .line 57
    iput-boolean v4, p0, Lcom/huawei/opcollect/utils/Waiter;->interrupted:Z

    .line 58
    iget-object v4, p0, Lcom/huawei/opcollect/utils/Waiter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 59
    throw v3
.end method

.method public interrupt()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/huawei/opcollect/utils/Waiter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 69
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/huawei/opcollect/utils/Waiter;->interrupted:Z

    .line 70
    iget-object v0, p0, Lcom/huawei/opcollect/utils/Waiter;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v0, p0, Lcom/huawei/opcollect/utils/Waiter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 74
    return-void

    .line 72
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/huawei/opcollect/utils/Waiter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 73
    throw v0
.end method

.method public signal()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/huawei/opcollect/utils/Waiter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 83
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/huawei/opcollect/utils/Waiter;->completed:Z

    .line 84
    iget-object v0, p0, Lcom/huawei/opcollect/utils/Waiter;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v0, p0, Lcom/huawei/opcollect/utils/Waiter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/huawei/opcollect/utils/Waiter;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 87
    throw v0
.end method
