.class Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction$MyWeatherRequestCallBack;
.super Lcom/huawei/android/totemweather/aidl/IRequestCallBack$Stub;
.source "WeatherInfoAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyWeatherRequestCallBack"
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
    .line 324
    invoke-direct {p0}, Lcom/huawei/android/totemweather/aidl/IRequestCallBack$Stub;-><init>()V

    .line 325
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction$MyWeatherRequestCallBack;->mService:Ljava/lang/ref/WeakReference;

    .line 326
    return-void
.end method


# virtual methods
.method public onRequestResult(Ljava/lang/String;Lcom/huawei/android/totemweather/aidl/RequestData;)V
    .locals 5
    .param p1, "weatherJsonData"    # Ljava/lang/String;
    .param p2, "requestData"    # Lcom/huawei/android/totemweather/aidl/RequestData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction$MyWeatherRequestCallBack;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;

    .line 331
    .local v0, "action":Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;
    if-nez v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$000(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 335
    :try_start_0
    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$100(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 336
    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$100(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 338
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$200(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)V

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 343
    :cond_2
    invoke-static {p1}, Lcom/huawei/opcollect/utils/WeatherDataUtil;->parserWeather(Ljava/lang/String;)Lcom/huawei/opcollect/weather/HwWeatherData;

    move-result-object v1

    .line 344
    .local v1, "hwWeatherData":Lcom/huawei/opcollect/weather/HwWeatherData;
    if-nez v1, :cond_3

    .line 345
    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$200(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)V

    goto :goto_0

    .line 349
    :cond_3
    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$000(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 350
    :try_start_2
    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$100(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 351
    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$100(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 353
    :cond_4
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method
