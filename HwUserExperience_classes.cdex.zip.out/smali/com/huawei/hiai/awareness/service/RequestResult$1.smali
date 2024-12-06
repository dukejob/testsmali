.class final Lcom/huawei/hiai/awareness/service/RequestResult$1;
.super Ljava/lang/Object;
.source "RequestResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hiai/awareness/service/RequestResult;
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
        "Lcom/huawei/hiai/awareness/service/RequestResult;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/hiai/awareness/service/RequestResult;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 41
    new-instance v0, Lcom/huawei/hiai/awareness/service/RequestResult;

    invoke-direct {v0, p1}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>(Landroid/os/Parcel;)V

    .line 42
    .local v0, "requestResult":Lcom/huawei/hiai/awareness/service/RequestResult;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/huawei/hiai/awareness/service/RequestResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/hiai/awareness/service/RequestResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/hiai/awareness/service/RequestResult;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 47
    new-array v0, p1, [Lcom/huawei/hiai/awareness/service/RequestResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/huawei/hiai/awareness/service/RequestResult$1;->newArray(I)[Lcom/huawei/hiai/awareness/service/RequestResult;

    move-result-object v0

    return-object v0
.end method
