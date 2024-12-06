.class public Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;
.super Ljava/lang/Object;
.source "HwMSDPMovementChangeEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMovementEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/msdp/movement/HwMSDPMovementEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent$1;

    invoke-direct {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent$1;-><init>()V

    sput-object v0, Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Lcom/huawei/msdp/movement/HwMSDPMovementEvent;)V
    .locals 2
    .param p1, "movementChangeEvents"    # [Lcom/huawei/msdp/movement/HwMSDPMovementEvent;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameter \'movementChangeEvents\' must not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;->mMovementEvents:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getMovementEvents()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/huawei/msdp/movement/HwMSDPMovementEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;->mMovementEvents:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[ HwMSDPMovementChangeEvent:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;->mMovementEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;

    .line 64
    .local v1, "event":Lcom/huawei/msdp/movement/HwMSDPMovementEvent;
    const-string v3, "\n    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 67
    .end local v1    # "event":Lcom/huawei/msdp/movement/HwMSDPMovementEvent;
    :cond_0
    const-string v2, "\n]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 54
    iget-object v1, p0, Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;->mMovementEvents:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/huawei/msdp/movement/HwMSDPMovementEvent;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/msdp/movement/HwMSDPMovementEvent;

    .line 55
    .local v0, "activityRecognitionEventArray":[Lcom/huawei/msdp/movement/HwMSDPMovementEvent;
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 57
    return-void
.end method
