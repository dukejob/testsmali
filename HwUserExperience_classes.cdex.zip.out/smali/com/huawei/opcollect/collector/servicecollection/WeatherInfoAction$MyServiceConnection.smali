.class Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction$MyServiceConnection;
.super Ljava/lang/Object;
.source "WeatherInfoAction.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyServiceConnection"
.end annotation


# instance fields
.field private final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)V
    .locals 1
    .param p1, "action"    # Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction$MyServiceConnection;->mService:Ljava/lang/ref/WeakReference;

    .line 286
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 289
    const-string v1, "WeatherInfoAction"

    const-string v2, "onServiceConnected ok"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction$MyServiceConnection;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;

    .line 291
    .local v0, "action":Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;
    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$000(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 295
    :try_start_0
    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$100(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 296
    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$100(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 298
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

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 307
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction$MyServiceConnection;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;

    .line 308
    .local v0, "action":Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;
    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$000(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 312
    :try_start_0
    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$100(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 313
    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$100(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 315
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    const-string v1, "WeatherInfoAction"

    const-string v2, "onServiceDisconnected"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
