.class public abstract Lcom/huawei/android/totemweather/aidl/IRequestCityWeather$Stub;
.super Landroid/os/Binder;
.source "IRequestCityWeather.java"

# interfaces
.implements Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/totemweather/aidl/IRequestCityWeather$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.android.totemweather.aidl.IRequestCityWeather"

.field static final TRANSACTION_getWeatherByType:I = 0x3

.field static final TRANSACTION_registerCallBack:I = 0x4

.field static final TRANSACTION_requestWeatherByCityId:I = 0x2

.field static final TRANSACTION_requestWeatherByLocation:I = 0x1

.field static final TRANSACTION_requestWeatherByLocationAndSourceType:I = 0x6

.field static final TRANSACTION_unregisterCallBack:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.huawei.android.totemweather.aidl.IRequestCityWeather"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/android/totemweather/aidl/IRequestCityWeather$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.huawei.android.totemweather.aidl.IRequestCityWeather"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/huawei/android/totemweather/aidl/IRequestCityWeather;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/huawei/android/totemweather/aidl/IRequestCityWeather$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/huawei/android/totemweather/aidl/IRequestCityWeather$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "com.huawei.android.totemweather.aidl.IRequestCityWeather"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.huawei.android.totemweather.aidl.IRequestCityWeather"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    sget-object v3, Lcom/huawei/android/totemweather/aidl/RequestData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/totemweather/aidl/RequestData;

    .line 55
    .local v0, "_arg0":Lcom/huawei/android/totemweather/aidl/RequestData;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/huawei/android/totemweather/aidl/IRequestCityWeather$Stub;->requestWeatherByLocation(Lcom/huawei/android/totemweather/aidl/RequestData;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Lcom/huawei/android/totemweather/aidl/RequestData;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/huawei/android/totemweather/aidl/RequestData;
    goto :goto_1

    .line 61
    .end local v0    # "_arg0":Lcom/huawei/android/totemweather/aidl/RequestData;
    :sswitch_2
    const-string v3, "com.huawei.android.totemweather.aidl.IRequestCityWeather"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    sget-object v3, Lcom/huawei/android/totemweather/aidl/RequestData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/totemweather/aidl/RequestData;

    .line 69
    .restart local v0    # "_arg0":Lcom/huawei/android/totemweather/aidl/RequestData;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/huawei/android/totemweather/aidl/IRequestCityWeather$Stub;->requestWeatherByCityId(Lcom/huawei/android/totemweather/aidl/RequestData;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Lcom/huawei/android/totemweather/aidl/RequestData;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/huawei/android/totemweather/aidl/RequestData;
    goto :goto_2

    .line 75
    .end local v0    # "_arg0":Lcom/huawei/android/totemweather/aidl/RequestData;
    :sswitch_3
    const-string v3, "com.huawei.android.totemweather.aidl.IRequestCityWeather"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    sget-object v3, Lcom/huawei/android/totemweather/aidl/RequestData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/totemweather/aidl/RequestData;

    .line 83
    .restart local v0    # "_arg0":Lcom/huawei/android/totemweather/aidl/RequestData;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/huawei/android/totemweather/aidl/IRequestCityWeather$Stub;->getWeatherByType(Lcom/huawei/android/totemweather/aidl/RequestData;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    .end local v0    # "_arg0":Lcom/huawei/android/totemweather/aidl/RequestData;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/huawei/android/totemweather/aidl/RequestData;
    goto :goto_3

    .line 89
    .end local v0    # "_arg0":Lcom/huawei/android/totemweather/aidl/RequestData;
    :sswitch_4
    const-string v3, "com.huawei.android.totemweather.aidl.IRequestCityWeather"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/android/totemweather/aidl/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/totemweather/aidl/IRequestCallBack;

    move-result-object v0

    .line 93
    .local v0, "_arg0":Lcom/huawei/android/totemweather/aidl/IRequestCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/huawei/android/totemweather/aidl/IRequestCityWeather$Stub;->registerCallBack(Lcom/huawei/android/totemweather/aidl/IRequestCallBack;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 100
    .end local v0    # "_arg0":Lcom/huawei/android/totemweather/aidl/IRequestCallBack;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_5
    const-string v3, "com.huawei.android.totemweather.aidl.IRequestCityWeather"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/android/totemweather/aidl/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/totemweather/aidl/IRequestCallBack;

    move-result-object v0

    .line 104
    .restart local v0    # "_arg0":Lcom/huawei/android/totemweather/aidl/IRequestCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/huawei/android/totemweather/aidl/IRequestCityWeather$Stub;->unregisterCallBack(Lcom/huawei/android/totemweather/aidl/IRequestCallBack;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 111
    .end local v0    # "_arg0":Lcom/huawei/android/totemweather/aidl/IRequestCallBack;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string v3, "com.huawei.android.totemweather.aidl.IRequestCityWeather"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    sget-object v3, Lcom/huawei/android/totemweather/aidl/RequestData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/totemweather/aidl/RequestData;

    .line 120
    .local v0, "_arg0":Lcom/huawei/android/totemweather/aidl/RequestData;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 121
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/huawei/android/totemweather/aidl/IRequestCityWeather$Stub;->requestWeatherByLocationAndSourceType(Lcom/huawei/android/totemweather/aidl/RequestData;I)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 117
    .end local v0    # "_arg0":Lcom/huawei/android/totemweather/aidl/RequestData;
    .end local v1    # "_arg1":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/huawei/android/totemweather/aidl/RequestData;
    goto :goto_4

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
