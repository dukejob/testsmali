.class final Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent$1;
.super Ljava/lang/Object;
.source "HwMSDPMovementChangeEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;
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
        "Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 35
    .local v1, "activityRecognitionEventsLength":I
    new-array v0, v1, [Lcom/huawei/msdp/movement/HwMSDPMovementEvent;

    .line 36
    .local v0, "activityRecognitionEvents":[Lcom/huawei/msdp/movement/HwMSDPMovementEvent;
    sget-object v2, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 38
    new-instance v2, Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;

    invoke-direct {v2, v0}, Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;-><init>([Lcom/huawei/msdp/movement/HwMSDPMovementEvent;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 43
    new-array v0, p1, [Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent$1;->newArray(I)[Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;

    move-result-object v0

    return-object v0
.end method
