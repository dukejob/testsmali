.class public Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;
.super Lcom/huawei/opcollect/strategy/Action;
.source "WeatherInfoAction.java"

# interfaces
.implements Lcom/huawei/opcollect/location/ILocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction$WeatherInfoHandler;,
        Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction$MyWeatherRequestCallBack;,
        Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction$MyServiceConnection;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final MESSAGE_ON_CHANGE:I = 0x1

.field private static final MSG_SERVICE_CONNECTED:I = 0x3

.field private static final MSG_SERVICE_DISCONNECTED:I = 0x4

.field private static final MSG_TIME_OUT:I = 0x2

.field private static final REQUEST_TIME_OUT:J = 0x15f90L

.field private static final TAG:Ljava/lang/String; = "WeatherInfoAction"

.field private static final WEATHER_AIDL_SERVICE_ACTION:Ljava/lang/String; = "com.huawei.totemweather.action.THIRD_REQUEST_WEATHER"

.field private static final WEATHER_PACKAGE_NAME:Ljava/lang/String; = "com.huawei.android.totemweather"

.field private static final WEATHER_VALID_TIME:J = 0x1b7740L

.field private static instance:Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;


# instance fields
.field private isRequesting:Z

.field private mHandler:Landroid/os/Handler;

.field private mHwLocation:Lcom/huawei/opcollect/location/HwLocation;

.field private mHwWeatherData:Lcom/huawei/opcollect/weather/HwWeatherData;

.field private mLastRequestTime:J

.field private final mLock:Ljava/lang/Object;

.field private mRequestWeather:Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;

.field private mWeatherConnection:Landroid/content/ServiceConnection;

.field private mWeatherRequestCallBack:Lcom/huawei/android/totemweather/aidl/IRequestCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->LOCK:Ljava/lang/Object;

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->instance:Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/strategy/Action;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mLock:Ljava/lang/Object;

    .line 59
    iput-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mRequestWeather:Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;

    .line 60
    iput-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mWeatherConnection:Landroid/content/ServiceConnection;

    .line 61
    iput-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mWeatherRequestCallBack:Lcom/huawei/android/totemweather/aidl/IRequestCallBack;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->isRequesting:Z

    .line 63
    iput-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHwLocation:Lcom/huawei/opcollect/location/HwLocation;

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mLastRequestTime:J

    .line 65
    iput-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHwWeatherData:Lcom/huawei/opcollect/weather/HwWeatherData;

    .line 66
    iput-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHandler:Landroid/os/Handler;

    .line 70
    const-class v0, Lcom/huawei/nb/model/collectencrypt/RawWeatherInfo;

    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->queryDailyRecordNum(Ljava/lang/Class;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->setDailyRecordNum(I)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->onWeatherFail()V

    return-void
.end method

.method static synthetic access$302(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;Lcom/huawei/opcollect/weather/HwWeatherData;)Lcom/huawei/opcollect/weather/HwWeatherData;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;
    .param p1, "x1"    # Lcom/huawei/opcollect/weather/HwWeatherData;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHwWeatherData:Lcom/huawei/opcollect/weather/HwWeatherData;

    return-object p1
.end method

.method static synthetic access$400(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mRequestWeather:Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;

    return-object v0
.end method

.method static synthetic access$402(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;)Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;
    .param p1, "x1"    # Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mRequestWeather:Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;

    return-object p1
.end method

.method static synthetic access$500(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Lcom/huawei/android/totemweather/aidl/IRequestCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mWeatherRequestCallBack:Lcom/huawei/android/totemweather/aidl/IRequestCallBack;

    return-object v0
.end method

.method static synthetic access$700(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindWeatherService()V
    .locals 5

    .prologue
    .line 144
    const-string v2, "WeatherInfoAction"

    const-string v3, "binder service"

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mWeatherConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_0

    .line 146
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.totemweather.action.THIRD_REQUEST_WEATHER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "weatherIntent":Landroid/content/Intent;
    const-string v2, "com.huawei.totemweather.action.THIRD_REQUEST_WEATHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v2, "com.huawei.android.totemweather"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mWeatherConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 159
    .end local v1    # "weatherIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 151
    .restart local v1    # "weatherIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "WeatherInfoAction"

    const-string v3, "bindService failed: SecurityException"

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "WeatherInfoAction"

    const-string v3, "bindService failed: IllegalStateException"

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "WeatherInfoAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static destroyWeatherInfoActionInstance()V
    .locals 2

    .prologue
    .line 263
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->instance:Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;

    .line 265
    monitor-exit v1

    .line 266
    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->instance:Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;

    const-string v2, "RawWeatherInfo"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->instance:Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;

    .line 78
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->instance:Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;

    monitor-exit v1

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onWeatherFail()V
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->isRequesting:Z

    .line 197
    const-string v0, "WeatherInfoAction"

    const-string v1, "onWeatherFail failed"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void

    .line 195
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private request(Lcom/huawei/opcollect/location/HwLocation;)V
    .locals 7
    .param p1, "hwLocation"    # Lcom/huawei/opcollect/location/HwLocation;

    .prologue
    .line 209
    const-string v1, "WeatherInfoAction"

    const-string v2, " request in "

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/opcollect/location/HwLocation;->getLatitude()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_1

    .line 212
    :cond_0
    const-string v1, "WeatherInfoAction"

    const-string v2, " request parameter illegal. "

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->onWeatherFail()V

    .line 248
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-boolean v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->isRequesting:Z

    if-eqz v1, :cond_2

    .line 218
    const-string v1, "WeatherInfoAction"

    const-string v2, " is requesting , no need request!"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mRequestWeather:Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;

    if-nez v1, :cond_3

    .line 224
    const-string v1, "WeatherInfoAction"

    const-string v2, " request in mRequest null"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->onWeatherFail()V

    .line 226
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->bindWeatherService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v6

    .line 245
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "WeatherInfoAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestWeather failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->onWeatherFail()V

    goto :goto_0

    .line 234
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->isRequesting:Z

    .line 235
    iput-object p1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHwLocation:Lcom/huawei/opcollect/location/HwLocation;

    .line 236
    new-instance v0, Lcom/huawei/android/totemweather/aidl/RequestData;

    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHwLocation:Lcom/huawei/opcollect/location/HwLocation;

    invoke-virtual {v2}, Lcom/huawei/opcollect/location/HwLocation;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHwLocation:Lcom/huawei/opcollect/location/HwLocation;

    invoke-virtual {v4}, Lcom/huawei/opcollect/location/HwLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/totemweather/aidl/RequestData;-><init>(Landroid/content/Context;DD)V

    .line 237
    .local v0, "requestData":Lcom/huawei/android/totemweather/aidl/RequestData;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/android/totemweather/aidl/RequestData;->setmAllDay(Z)V

    .line 238
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mRequestWeather:Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;->requestWeatherByLocationAndSourceType(Lcom/huawei/android/totemweather/aidl/RequestData;I)V

    .line 239
    iget-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    :try_start_2
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 241
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const-wide/32 v4, 0x15f90

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 243
    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
.end method


# virtual methods
.method public destroy()Z
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/Action;->destroy()Z

    .line 258
    invoke-static {}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->destroyWeatherInfoActionInstance()V

    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method public disable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 108
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/Action;->disable()V

    .line 109
    const-string v1, "WeatherInfoAction"

    const-string v2, "disable"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHandler:Landroid/os/Handler;

    .line 116
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-static {}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->getInstance()Lcom/huawei/opcollect/strategy/OdmfActionManager;

    move-result-object v1

    const-string v2, "RawWeatherInfo"

    invoke-virtual {v1, v2, p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->removeLocationListener(Ljava/lang/String;Lcom/huawei/opcollect/location/ILocationListener;)V

    .line 118
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mRequestWeather:Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 141
    :cond_1
    :goto_0
    return-void

    .line 116
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 122
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mRequestWeather:Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mWeatherRequestCallBack:Lcom/huawei/android/totemweather/aidl/IRequestCallBack;

    iget-object v3, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;->unregisterCallBack(Lcom/huawei/android/totemweather/aidl/IRequestCallBack;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 126
    :goto_1
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mWeatherConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_3

    .line 128
    :try_start_3
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mWeatherConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 138
    :cond_3
    :goto_2
    iput-object v4, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mRequestWeather:Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;

    .line 139
    iput-object v4, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mWeatherRequestCallBack:Lcom/huawei/android/totemweather/aidl/IRequestCallBack;

    .line 140
    iput-object v4, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mWeatherConnection:Landroid/content/ServiceConnection;

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WeatherInfoAction"

    const-string v2, "unRegisterCallback exception."

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WeatherInfoAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindService failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public dump(ILjava/io/PrintWriter;)V
    .locals 6
    .param p1, "indentNum"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 270
    invoke-super {p0, p1, p2}, Lcom/huawei/opcollect/strategy/Action;->dump(ILjava/io/PrintWriter;)V

    .line 271
    if-eqz p2, :cond_0

    .line 272
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s\\-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, " "

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "indent":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mRequestWeather:Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;

    if-nez v1, :cond_1

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mRequestWeather is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    .end local v0    # "indent":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 276
    .restart local v0    # "indent":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mRequestWeather not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/Action;->enable()V

    .line 88
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction$WeatherInfoHandler;

    invoke-direct {v0, p0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction$WeatherInfoHandler;-><init>(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHandler:Landroid/os/Handler;

    .line 92
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mWeatherConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction$MyServiceConnection;

    invoke-direct {v0, p0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction$MyServiceConnection;-><init>(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mWeatherConnection:Landroid/content/ServiceConnection;

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mWeatherRequestCallBack:Lcom/huawei/android/totemweather/aidl/IRequestCallBack;

    if-nez v0, :cond_2

    .line 97
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction$MyWeatherRequestCallBack;

    invoke-direct {v0, p0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction$MyWeatherRequestCallBack;-><init>(Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;)V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mWeatherRequestCallBack:Lcom/huawei/android/totemweather/aidl/IRequestCallBack;

    .line 99
    :cond_2
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->bindWeatherService()V

    .line 100
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;

    move-result-object v0

    const-string v1, "RawWeatherInfo"

    invoke-virtual {v0, v1, p0}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->addLocationListener(Ljava/lang/String;Lcom/huawei/opcollect/location/ILocationListener;)V

    .line 101
    return-void

    .line 92
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected execute()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHwWeatherData:Lcom/huawei/opcollect/weather/HwWeatherData;

    if-nez v2, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->onWeatherFail()V

    .line 187
    :goto_0
    return v1

    .line 172
    :cond_0
    new-instance v0, Lcom/huawei/nb/model/collectencrypt/RawWeatherInfo;

    invoke-direct {v0}, Lcom/huawei/nb/model/collectencrypt/RawWeatherInfo;-><init>()V

    .line 173
    .local v0, "rawWeatherInfo":Lcom/huawei/nb/model/collectencrypt/RawWeatherInfo;
    iget-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHwWeatherData:Lcom/huawei/opcollect/weather/HwWeatherData;

    invoke-virtual {v2}, Lcom/huawei/opcollect/weather/HwWeatherData;->getCurrentTemperature()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/nb/model/collectencrypt/RawWeatherInfo;->setMTemprature(Ljava/lang/Integer;)V

    .line 174
    iget-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHwWeatherData:Lcom/huawei/opcollect/weather/HwWeatherData;

    invoke-virtual {v2}, Lcom/huawei/opcollect/weather/HwWeatherData;->getWeatherIcon()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/nb/model/collectencrypt/RawWeatherInfo;->setMWeatherIcon(Ljava/lang/Integer;)V

    .line 175
    iget-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHwLocation:Lcom/huawei/opcollect/location/HwLocation;

    if-eqz v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHwLocation:Lcom/huawei/opcollect/location/HwLocation;

    invoke-virtual {v2}, Lcom/huawei/opcollect/location/HwLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/nb/model/collectencrypt/RawWeatherInfo;->setMLongitude(Ljava/lang/Double;)V

    .line 177
    iget-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mHwLocation:Lcom/huawei/opcollect/location/HwLocation;

    invoke-virtual {v2}, Lcom/huawei/opcollect/location/HwLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/nb/model/collectencrypt/RawWeatherInfo;->setMLatitude(Ljava/lang/Double;)V

    .line 179
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Lcom/huawei/nb/model/collectencrypt/RawWeatherInfo;->setMTimeStamp(Ljava/util/Date;)V

    .line 180
    invoke-static {}, Lcom/huawei/opcollect/utils/OPCollectUtils;->formatCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/nb/model/collectencrypt/RawWeatherInfo;->setMReservedText(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getDataHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 185
    iput-boolean v1, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->isRequesting:Z

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mLastRequestTime:J

    .line 187
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onLocationSuccess(Lcom/huawei/opcollect/location/HwLocation;)V
    .locals 4
    .param p1, "hwLocation"    # Lcom/huawei/opcollect/location/HwLocation;

    .prologue
    .line 202
    const-string v0, "WeatherInfoAction"

    const-string v1, "callback"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->mLastRequestTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 204
    invoke-direct {p0, p1}, Lcom/huawei/opcollect/collector/servicecollection/WeatherInfoAction;->request(Lcom/huawei/opcollect/location/HwLocation;)V

    .line 206
    :cond_0
    return-void
.end method
