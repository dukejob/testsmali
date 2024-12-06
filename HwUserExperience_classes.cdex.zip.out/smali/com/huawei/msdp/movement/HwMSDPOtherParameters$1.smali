.class final Lcom/huawei/msdp/movement/HwMSDPOtherParameters$1;
.super Ljava/lang/Object;
.source "HwMSDPOtherParameters.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
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
        "Lcom/huawei/msdp/movement/HwMSDPOtherParameters;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
    .locals 11
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 66
    .local v2, "param1":D
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 67
    .local v4, "param2":D
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 68
    .local v6, "param3":D
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 69
    .local v8, "param4":D
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 71
    .local v10, "param5":Ljava/lang/String;
    new-instance v1, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    invoke-direct/range {v1 .. v10}, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;-><init>(DDDDLjava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/huawei/msdp/movement/HwMSDPOtherParameters$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 76
    new-array v0, p1, [Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/huawei/msdp/movement/HwMSDPOtherParameters$1;->newArray(I)[Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    move-result-object v0

    return-object v0
.end method
