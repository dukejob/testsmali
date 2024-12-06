.class public Lcom/huawei/opcollect/utils/WeatherDataUtil;
.super Ljava/lang/Object;
.source "WeatherDataUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/huawei/opcollect/utils/WeatherDataUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/opcollect/utils/WeatherDataUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static parserWeather(Ljava/lang/String;)Lcom/huawei/opcollect/weather/HwWeatherData;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 33
    if-eqz p0, :cond_0

    :try_start_0
    const-string v6, ""

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 34
    :cond_0
    sget-object v6, Lcom/huawei/opcollect/utils/WeatherDataUtil;->TAG:Ljava/lang/String;

    const-string v7, "str is null or empty."

    invoke-static {v6, v7}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 55
    :goto_0
    return-object v1

    .line 37
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    .local v3, "result":Lorg/json/JSONObject;
    const-string v6, "weather"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    .line 39
    .local v4, "weatherData":Lorg/json/JSONArray;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-gtz v6, :cond_3

    .line 40
    :cond_2
    sget-object v6, Lcom/huawei/opcollect/utils/WeatherDataUtil;->TAG:Ljava/lang/String;

    const-string v7, "weather data is null!"

    invoke-static {v6, v7}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 41
    goto :goto_0

    .line 43
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 44
    .local v2, "mWeatherObject":Lorg/json/JSONObject;
    if-nez v2, :cond_4

    .line 45
    sget-object v6, Lcom/huawei/opcollect/utils/WeatherDataUtil;->TAG:Ljava/lang/String;

    const-string v7, "weather object is null!"

    invoke-static {v6, v7}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 46
    goto :goto_0

    .line 48
    :cond_4
    new-instance v1, Lcom/huawei/opcollect/weather/HwWeatherData;

    invoke-direct {v1}, Lcom/huawei/opcollect/weather/HwWeatherData;-><init>()V

    .line 49
    .local v1, "hwWeatherData":Lcom/huawei/opcollect/weather/HwWeatherData;
    const-string v6, "current_temperature"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/huawei/opcollect/weather/HwWeatherData;->setCurrentTemperature(I)V

    .line 50
    const-string v6, "weather_icon"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/huawei/opcollect/weather/HwWeatherData;->setWeatherIcon(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    .end local v1    # "hwWeatherData":Lcom/huawei/opcollect/weather/HwWeatherData;
    .end local v2    # "mWeatherObject":Lorg/json/JSONObject;
    .end local v3    # "result":Lorg/json/JSONObject;
    .end local v4    # "weatherData":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/huawei/opcollect/utils/WeatherDataUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 55
    goto :goto_0
.end method
