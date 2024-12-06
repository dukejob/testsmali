.class Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$MyAwarenessServiceConnection;
.super Ljava/lang/Object;
.source "ARFromAwarenessImpl.java"

# interfaces
.implements Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyAwarenessServiceConnection"
.end annotation


# instance fields
.field private final service:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)V
    .locals 1
    .param p1, "service"    # Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$MyAwarenessServiceConnection;->service:Ljava/lang/ref/WeakReference;

    .line 281
    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 4

    .prologue
    .line 286
    const-string v1, "ARFromAwarenessImpl"

    const-string v2, "onServiceConnected."

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$MyAwarenessServiceConnection;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;

    .line 288
    .local v0, "impl":Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;
    if-nez v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-static {v0}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->access$100(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 292
    :try_start_0
    invoke-static {v0}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->access$200(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 293
    invoke-static {v0}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->access$200(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 294
    invoke-static {v0}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->access$200(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 296
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 301
    const-string v0, "ARFromAwarenessImpl"

    const-string v1, "onServiceDisconnected."

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method
