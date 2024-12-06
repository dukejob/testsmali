.class final Lcom/huawei/hiai/awareness/common/ThreadPoolManager$1;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hiai/awareness/common/ThreadPoolManager;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$daemon:Z

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager$1;->val$name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager$1;->val$daemon:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 41
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager$1;->val$name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 42
    .local v0, "result":Ljava/lang/Thread;
    iget-boolean v1, p0, Lcom/huawei/hiai/awareness/common/ThreadPoolManager$1;->val$daemon:Z

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 43
    return-object v0
.end method
