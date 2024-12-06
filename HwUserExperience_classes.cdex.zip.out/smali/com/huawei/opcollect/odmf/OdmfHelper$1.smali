.class Lcom/huawei/opcollect/odmf/OdmfHelper$1;
.super Ljava/lang/Object;
.source "OdmfHelper.java"

# interfaces
.implements Lcom/huawei/nb/client/ServiceConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/odmf/OdmfHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/odmf/OdmfHelper;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/odmf/OdmfHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/opcollect/odmf/OdmfHelper;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/huawei/opcollect/odmf/OdmfHelper$1;->this$0:Lcom/huawei/opcollect/odmf/OdmfHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect()V
    .locals 3

    .prologue
    .line 65
    const-string v0, "OdmfHelper"

    const-string v1, "Odmf service is connected"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/huawei/opcollect/odmf/OdmfHelper$1;->this$0:Lcom/huawei/opcollect/odmf/OdmfHelper;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper$1;->this$0:Lcom/huawei/opcollect/odmf/OdmfHelper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/huawei/opcollect/odmf/OdmfHelper;->access$002(Lcom/huawei/opcollect/odmf/OdmfHelper;I)I

    .line 68
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper$1;->this$0:Lcom/huawei/opcollect/odmf/OdmfHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/odmf/OdmfHelper;->access$102(Lcom/huawei/opcollect/odmf/OdmfHelper;Z)Z

    .line 70
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper$1;->this$0:Lcom/huawei/opcollect/odmf/OdmfHelper;

    invoke-static {v0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->access$200(Lcom/huawei/opcollect/odmf/OdmfHelper;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 71
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 73
    return-void

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDisconnect()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "OdmfHelper"

    const-string v1, "Odmf service is disconnected"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper$1;->this$0:Lcom/huawei/opcollect/odmf/OdmfHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/opcollect/odmf/OdmfHelper;->access$102(Lcom/huawei/opcollect/odmf/OdmfHelper;Z)Z

    .line 79
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 81
    return-void
.end method
