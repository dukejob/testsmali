.class public Lcom/huawei/opcollect/weather/HwWeatherData;
.super Ljava/lang/Object;
.source "HwWeatherData.java"


# instance fields
.field private airPm10:I

.field private airPm25:I

.field private airPnum:I

.field private airQuality:Ljava/lang/String;

.field private airStatusDesc:Ljava/lang/String;

.field private currHighTemp:I

.field private currLowTemp:I

.field private currentTemperature:I

.field private dayIndex:I

.field private nightCurrHighTemp:I

.field private nightCurrLowTemp:I

.field private nightCurrentTemperature:I

.field private nightWeatherIcon:I

.field private nightWeatherNativeDes:Ljava/lang/String;

.field private observationTime:J

.field private sunriseTime:J

.field private sunsetTime:J

.field private weatherIcon:I

.field private weatherNativeDes:Ljava/lang/String;

.field private windDirection:Ljava/lang/String;

.field private windSpeed:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x64

    iput v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->weatherIcon:I

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->currentTemperature:I

    return-void
.end method


# virtual methods
.method public getAirPm10()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->airPm10:I

    return v0
.end method

.method public getAirPm25()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->airPm25:I

    return v0
.end method

.method public getAirPnum()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->airPnum:I

    return v0
.end method

.method public getAirQuality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->airQuality:Ljava/lang/String;

    return-object v0
.end method

.method public getAirStatusDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->airStatusDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrHighTemp()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->currHighTemp:I

    return v0
.end method

.method public getCurrLowTemp()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->currLowTemp:I

    return v0
.end method

.method public getCurrentTemperature()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->currentTemperature:I

    return v0
.end method

.method public getDayIndex()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->dayIndex:I

    return v0
.end method

.method public getNightCurrHighTemp()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->nightCurrHighTemp:I

    return v0
.end method

.method public getNightCurrLowTemp()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->nightCurrLowTemp:I

    return v0
.end method

.method public getNightCurrentTemperature()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->nightCurrentTemperature:I

    return v0
.end method

.method public getNightWeatherIcon()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->nightWeatherIcon:I

    return v0
.end method

.method public getNightWeatherNativeDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->nightWeatherNativeDes:Ljava/lang/String;

    return-object v0
.end method

.method public getObservationTime()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->observationTime:J

    return-wide v0
.end method

.method public getSunriseTime()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->sunriseTime:J

    return-wide v0
.end method

.method public getSunsetTime()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->sunsetTime:J

    return-wide v0
.end method

.method public getWeatherIcon()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->weatherIcon:I

    return v0
.end method

.method public getWeatherNativeDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->weatherNativeDes:Ljava/lang/String;

    return-object v0
.end method

.method public getWindDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->windDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getWindSpeed()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->windSpeed:I

    return v0
.end method

.method public setAirPm10(I)V
    .locals 0
    .param p1, "airPm10"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->airPm10:I

    .line 186
    return-void
.end method

.method public setAirPm25(I)V
    .locals 0
    .param p1, "airPm25"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->airPm25:I

    .line 178
    return-void
.end method

.method public setAirPnum(I)V
    .locals 0
    .param p1, "airPnum"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->airPnum:I

    .line 170
    return-void
.end method

.method public setAirQuality(Ljava/lang/String;)V
    .locals 0
    .param p1, "airQuality"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->airQuality:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setAirStatusDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "airStatusDesc"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->airStatusDesc:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setCurrHighTemp(I)V
    .locals 0
    .param p1, "currHighTemp"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->currHighTemp:I

    .line 98
    return-void
.end method

.method public setCurrLowTemp(I)V
    .locals 0
    .param p1, "currLowTemp"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->currLowTemp:I

    .line 106
    return-void
.end method

.method public setCurrentTemperature(I)V
    .locals 0
    .param p1, "currentTemperature"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->currentTemperature:I

    .line 90
    return-void
.end method

.method public setDayIndex(I)V
    .locals 0
    .param p1, "dayIndex"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->dayIndex:I

    .line 42
    return-void
.end method

.method public setNightCurrHighTemp(I)V
    .locals 0
    .param p1, "nightCurrHighTemp"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->nightCurrHighTemp:I

    .line 138
    return-void
.end method

.method public setNightCurrLowTemp(I)V
    .locals 0
    .param p1, "nightCurrLowTemp"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->nightCurrLowTemp:I

    .line 146
    return-void
.end method

.method public setNightCurrentTemperature(I)V
    .locals 0
    .param p1, "nightCurrentTemperature"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->nightCurrentTemperature:I

    .line 130
    return-void
.end method

.method public setNightWeatherIcon(I)V
    .locals 0
    .param p1, "nightWeatherIcon"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->nightWeatherIcon:I

    .line 114
    return-void
.end method

.method public setNightWeatherNativeDes(Ljava/lang/String;)V
    .locals 0
    .param p1, "nightWeatherNativeDes"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->nightWeatherNativeDes:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setObservationTime(J)V
    .locals 1
    .param p1, "observationTime"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->observationTime:J

    .line 66
    return-void
.end method

.method public setSunriseTime(J)V
    .locals 1
    .param p1, "sunriseTime"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->sunriseTime:J

    .line 58
    return-void
.end method

.method public setSunsetTime(J)V
    .locals 1
    .param p1, "sunsetTime"    # J

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->sunsetTime:J

    .line 50
    return-void
.end method

.method public setWeatherIcon(I)V
    .locals 0
    .param p1, "weatherIcon"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->weatherIcon:I

    .line 74
    return-void
.end method

.method public setWeatherNativeDes(Ljava/lang/String;)V
    .locals 0
    .param p1, "weatherNativeDes"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->weatherNativeDes:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setWindDirection(Ljava/lang/String;)V
    .locals 0
    .param p1, "windDirection"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->windDirection:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setWindSpeed(I)V
    .locals 0
    .param p1, "windSpeed"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->windSpeed:I

    .line 202
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwWeatherData{dayIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->dayIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sunriseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->sunriseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sunsetTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->sunsetTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", observationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->observationTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weatherIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->weatherIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weatherNativeDes=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->weatherNativeDes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->currentTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currHighTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->currHighTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currLowTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->currLowTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nightWeatherIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->nightWeatherIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nightWeatherNativeDes=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->nightWeatherNativeDes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nightCurrentTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->nightCurrentTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nightCurrHighTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->nightCurrHighTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nightCurrLowTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->nightCurrLowTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airQuality=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->airQuality:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airStatusDesc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->airStatusDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airPnum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->airPnum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airPm25="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->airPm25:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airPm10="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->airPm10:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windDirection=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->windDirection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/opcollect/weather/HwWeatherData;->windSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
