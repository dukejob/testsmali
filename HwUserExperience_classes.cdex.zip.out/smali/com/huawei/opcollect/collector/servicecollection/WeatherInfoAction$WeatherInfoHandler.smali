.class Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction$WeatherInfoHandler;
.super Landroid/os/Handler;
.source "WeatherInfoAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeatherInfoHandler"
.end annotation


# instance fields
.field private final service:Ljava/lang/ref/WeakReference;
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
    .param p1, "service"    # Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;

    .prologue
    .line 360
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 361
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction$WeatherInfoHandler;->service:Ljava/lang/ref/WeakReference;

    .line 362
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 366
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 367
    iget-object v3, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction$WeatherInfoHandler;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;

    .line 368
    .local v0, "action":Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;
    if-nez v0, :cond_1

    .line 369
    const-string v3, "WeatherInfoAction"

    const-string v4, "action is null"

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 374
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/huawei/opcollect/weather/HwWeatherData;

    invoke-static {v0, v3}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$302(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;Lcom/huawei/opcollect/weather/HwWeatherData;)Lcom/huawei/opcollect/weather/HwWeatherData;

    .line 375
    invoke-virtual {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->perform()Z

    goto :goto_0

    .line 376
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 377
    const-string v3, "WeatherInfoAction"

    const-string v4, "timeout"

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$200(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)V

    goto :goto_0

    .line 379
    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 380
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    .line 382
    .local v1, "binder":Landroid/os/IBinder;
    :try_start_0
    invoke-static {v1}, Lcom/huawei/android/totemweather/aidl/IRequestCityWeather$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$402(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;)Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;

    .line 383
    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$400(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$500(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 384
    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$400(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;

    move-result-object v3

    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$600(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Lcom/huawei/android/totemweather/aidl/IRequestCallBack;

    move-result-object v4

    .line 385
    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$700(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 384
    invoke-interface {v3, v4, v5}, Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;->registerCallBack(Lcom/huawei/android/totemweather/aidl/IRequestCallBack;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v2

    .line 388
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WeatherInfoAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerCallBack failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 391
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->access$402(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;)Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;

    goto :goto_0
.end method
