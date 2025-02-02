.class public abstract Lcom/huawei/android/totemweather/aidl/IRequestCallBack$Stub;
.super Landroid/os/Binder;
.source "IRequestCallBack.java"

# interfaces
.implements Lcom/huawei/android/totemweather/aidl/IRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/totemweather/aidl/IRequestCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/totemweather/aidl/IRequestCallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.android.totemweather.aidl.IRequestCallBack"

.field static final TRANSACTION_onRequestResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.huawei.android.totemweather.aidl.IRequestCallBack"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/android/totemweather/aidl/IRequestCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/android/totemweather/aidl/IRequestCallBack;
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
    const-string v1, "com.huawei.android.totemweather.aidl.IRequestCallBack"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/android/totemweather/aidl/IRequestCallBack;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/huawei/android/totemweather/aidl/IRequestCallBack;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/huawei/android/totemweather/aidl/IRequestCallBack$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/huawei/android/totemweather/aidl/IRequestCallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "com.huawei.android.totemweather.aidl.IRequestCallBack"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.huawei.android.totemweather.aidl.IRequestCallBack"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    sget-object v3, Lcom/huawei/android/totemweather/aidl/RequestData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/totemweather/aidl/RequestData;

    .line 57
    .local v1, "_arg1":Lcom/huawei/android/totemweather/aidl/RequestData;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/huawei/android/totemweather/aidl/IRequestCallBack$Stub;->onRequestResult(Ljava/lang/String;Lcom/huawei/android/totemweather/aidl/RequestData;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v1, p3, v2}, Lcom/huawei/android/totemweather/aidl/RequestData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 55
    .end local v1    # "_arg1":Lcom/huawei/android/totemweather/aidl/RequestData;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/huawei/android/totemweather/aidl/RequestData;
    goto :goto_1

    .line 64
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
