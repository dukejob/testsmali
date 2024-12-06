.class final Lcom/huawei/msdp/movement/HwMSDPMovementEvent$1;
.super Ljava/lang/Object;
.source "HwMSDPMovementEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/msdp/movement/HwMSDPMovementEvent;
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
        "Lcom/huawei/msdp/movement/HwMSDPMovementEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/msdp/movement/HwMSDPMovementEvent;
    .locals 8
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "motion":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 53
    .local v3, "eventType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 54
    .local v4, "timestampNs":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 55
    .local v6, "confidence":I
    const-class v0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    .line 56
    .local v7, "otherParams":Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
    new-instance v1, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;

    invoke-direct/range {v1 .. v7}, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;-><init>(Ljava/lang/String;IJILcom/huawei/msdp/movement/HwMSDPOtherParameters;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/huawei/msdp/movement/HwMSDPMovementEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/msdp/movement/HwMSDPMovementEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/msdp/movement/HwMSDPMovementEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 61
    new-array v0, p1, [Lcom/huawei/msdp/movement/HwMSDPMovementEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/huawei/msdp/movement/HwMSDPMovementEvent$1;->newArray(I)[Lcom/huawei/msdp/movement/HwMSDPMovementEvent;

    move-result-object v0

    return-object v0
.end method
