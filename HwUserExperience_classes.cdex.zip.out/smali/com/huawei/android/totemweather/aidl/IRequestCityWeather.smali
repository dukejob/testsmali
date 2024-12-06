.class public interface abstract Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;
.super Ljava/lang/Object;
.source "IRequestCityWeather.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/totemweather/aidl/IRequestCityWeather$Stub;
    }
.end annotation


# virtual methods
.method public abstract getWeatherByType(Lcom/huawei/android/totemweather/aidl/RequestData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallBack(Lcom/huawei/android/totemweather/aidl/IRequestCallBack;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestWeatherByCityId(Lcom/huawei/android/totemweather/aidl/RequestData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestWeatherByLocation(Lcom/huawei/android/totemweather/aidl/RequestData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestWeatherByLocationAndSourceType(Lcom/huawei/android/totemweather/aidl/RequestData;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallBack(Lcom/huawei/android/totemweather/aidl/IRequestCallBack;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
