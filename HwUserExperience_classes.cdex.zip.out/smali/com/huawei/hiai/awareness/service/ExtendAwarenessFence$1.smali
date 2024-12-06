.class final Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence$1;
.super Ljava/lang/Object;
.source "ExtendAwarenessFence.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
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
        "Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 19
    new-instance v0, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    invoke-direct {v0, p1}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;-><init>(Landroid/os/Parcel;)V

    .line 20
    .local v0, "awarenessFence":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 24
    new-array v0, p1, [Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence$1;->newArray(I)[Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    move-result-object v0

    return-object v0
.end method
