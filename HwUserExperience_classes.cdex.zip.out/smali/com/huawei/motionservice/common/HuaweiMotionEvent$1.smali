.class final Lcom/huawei/motionservice/common/HuaweiMotionEvent$1;
.super Ljava/lang/Object;
.source "HuaweiMotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/motionservice/common/HuaweiMotionEvent;
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
        "Lcom/huawei/motionservice/common/HuaweiMotionEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/motionservice/common/HuaweiMotionEvent;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 246
    new-instance v0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;

    invoke-direct {v0, p1}, Lcom/huawei/motionservice/common/HuaweiMotionEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/huawei/motionservice/common/HuaweiMotionEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/motionservice/common/HuaweiMotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/motionservice/common/HuaweiMotionEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 251
    new-array v0, p1, [Lcom/huawei/motionservice/common/HuaweiMotionEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/huawei/motionservice/common/HuaweiMotionEvent$1;->newArray(I)[Lcom/huawei/motionservice/common/HuaweiMotionEvent;

    move-result-object v0

    return-object v0
.end method
