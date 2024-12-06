.class public Lcom/huawei/msdp/movement/HwMSDPMovementEvent;
.super Ljava/lang/Object;
.source "HwMSDPMovementEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/msdp/movement/HwMSDPMovementEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfidence:I

.field private final mEventType:I

.field private final mMovement:Ljava/lang/String;

.field private final mOtherParams:Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

.field private final mTimestampNs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent$1;

    invoke-direct {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementEvent$1;-><init>()V

    sput-object v0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJILcom/huawei/msdp/movement/HwMSDPOtherParameters;)V
    .locals 1
    .param p1, "movement"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "timestampNs"    # J
    .param p5, "confidence"    # I
    .param p6, "otherParams"    # Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mMovement:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mEventType:I

    .line 23
    iput-wide p3, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mTimestampNs:J

    .line 24
    iput p5, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mConfidence:I

    .line 25
    iput-object p6, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mOtherParams:Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getConfidence()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mConfidence:I

    return v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mEventType:I

    return v0
.end method

.method public getMovement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mMovement:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampNs()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mTimestampNs:J

    return-wide v0
.end method

.method public getmOtherParams()Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mOtherParams:Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mOtherParams:Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "Movement=\'%s\', EventType=%s, TimestampNs=%s, Param1=%s, Param2=%s, Param3=%s, Param4=%s, Param5=%s, Confidence=%s"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mMovement:Ljava/lang/String;

    aput-object v2, v1, v3

    iget v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mEventType:I

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mTimestampNs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mOtherParams:Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    .line 85
    invoke-virtual {v2}, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->getmParam1()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mOtherParams:Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    .line 86
    invoke-virtual {v2}, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->getmParam2()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mOtherParams:Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    .line 87
    invoke-virtual {v3}, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->getmParam3()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mOtherParams:Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    .line 88
    invoke-virtual {v3}, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->getmParam4()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mOtherParams:Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    .line 89
    invoke-virtual {v3}, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->getmParam5()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mConfidence:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 82
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Activity=\'%s\', EventType=%s, TimestampNs=%s, Confidence=%s"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mMovement:Ljava/lang/String;

    aput-object v2, v1, v3

    iget v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mEventType:I

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mTimestampNs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    iget v2, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mConfidence:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 92
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mMovement:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-wide v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mTimestampNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mConfidence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->mOtherParams:Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 77
    return-void
.end method
