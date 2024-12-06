.class final Lcom/huawei/android/totemweather/aidl/RequestData$1;
.super Ljava/lang/Object;
.source "RequestData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/totemweather/aidl/RequestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/huawei/android/totemweather/aidl/RequestData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/totemweather/aidl/RequestData;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 40
    new-instance v0, Lcom/huawei/android/totemweather/aidl/RequestData;

    invoke-direct {v0, p1}, Lcom/huawei/android/totemweather/aidl/RequestData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/huawei/android/totemweather/aidl/RequestData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/totemweather/aidl/RequestData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/android/totemweather/aidl/RequestData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 44
    new-array v0, p1, [Lcom/huawei/android/totemweather/aidl/RequestData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/huawei/android/totemweather/aidl/RequestData$1;->newArray(I)[Lcom/huawei/android/totemweather/aidl/RequestData;

    move-result-object v0

    return-object v0
.end method
