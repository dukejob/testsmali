.class Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARHandler;
.super Landroid/os/Handler;
.source "ARFromAwarenessImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ARHandler"
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
    .param p1, "impl"    # Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;

    .prologue
    .line 309
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 310
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARHandler;->service:Ljava/lang/ref/WeakReference;

    .line 311
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 316
    iget-object v1, p0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARHandler;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;

    .line 317
    .local v0, "impl":Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    const-string v1, "ARFromAwarenessImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 323
    :pswitch_0
    invoke-static {v0}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->access$100(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 324
    :try_start_0
    invoke-static {v0}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->access$300(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)Lcom/huawei/hiai/awareness/service/AwarenessManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 325
    invoke-static {v0}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->access$300(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)Lcom/huawei/hiai/awareness/service/AwarenessManager;

    move-result-object v1

    invoke-static {v0}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->access$400(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$MyAwarenessServiceConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->connectMsdpService(Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 326
    const/4 v1, 0x1

    const-wide/16 v4, 0x4e20

    invoke-virtual {p0, v1, v4, v5}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$ARHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 329
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 332
    :pswitch_1
    invoke-static {v0}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->access$500(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;)V

    goto :goto_0

    .line 335
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    const-wide/16 v4, -0x1

    invoke-static {v0, v1, v2, v4, v5}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;->access$600(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;IIJ)V

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
