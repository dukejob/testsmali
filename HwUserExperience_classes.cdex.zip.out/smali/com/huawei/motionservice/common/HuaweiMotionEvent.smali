.class public Lcom/huawei/motionservice/common/HuaweiMotionEvent;
.super Ljava/lang/Object;
.source "HuaweiMotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/motionservice/common/HuaweiMotionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityRunSteps:I

.field private mActivityState:I

.field private mActivityTotalSteps:I

.field private mActivityWalkSteps:I

.field private mMotionDirection:I

.field public mMotionExtras:Landroid/os/Bundle;

.field private mMotionRecoResult:I

.field private mMotionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lcom/huawei/motionservice/common/HuaweiMotionEvent$1;

    invoke-direct {v0}, Lcom/huawei/motionservice/common/HuaweiMotionEvent$1;-><init>()V

    sput-object v0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionExtras:Landroid/os/Bundle;

    .line 61
    iput v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionType:I

    .line 84
    iput v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionRecoResult:I

    .line 107
    iput v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionDirection:I

    .line 130
    iput v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mActivityState:I

    .line 154
    iput v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mActivityTotalSteps:I

    .line 177
    iput v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mActivityWalkSteps:I

    .line 201
    iput v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mActivityRunSteps:I

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionExtras:Landroid/os/Bundle;

    .line 61
    iput v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionType:I

    .line 84
    iput v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionRecoResult:I

    .line 107
    iput v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionDirection:I

    .line 130
    iput v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mActivityState:I

    .line 154
    iput v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mActivityTotalSteps:I

    .line 177
    iput v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mActivityWalkSteps:I

    .line 201
    iput v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mActivityRunSteps:I

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionType:I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionRecoResult:I

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionDirection:I

    .line 237
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public getActivityRunSteps()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mActivityRunSteps:I

    return v0
.end method

.method public getActivityState()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mActivityState:I

    return v0
.end method

.method public getActivityWalkSteps()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mActivityWalkSteps:I

    return v0
.end method

.method public getMotionDirection()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionDirection:I

    return v0
.end method

.method public getMotionExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMotionRecoResult()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionRecoResult:I

    return v0
.end method

.method public getMotionType()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionType:I

    return v0
.end method

.method public getTotalSteps()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mActivityTotalSteps:I

    return v0
.end method

.method public setActivityRunSteps(I)V
    .locals 0
    .param p1, "runSteps"    # I

    .prologue
    .line 218
    iput p1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mActivityRunSteps:I

    .line 219
    return-void
.end method

.method public setActivityState(I)V
    .locals 0
    .param p1, "activityState"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mActivityState:I

    .line 148
    return-void
.end method

.method public setActivityWalkSteps(I)V
    .locals 0
    .param p1, "walkSteps"    # I

    .prologue
    .line 194
    iput p1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mActivityWalkSteps:I

    .line 195
    return-void
.end method

.method public setMotionDirection(I)V
    .locals 0
    .param p1, "motionDirect"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionDirection:I

    .line 125
    return-void
.end method

.method public setMotionExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "Extras"    # Landroid/os/Bundle;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionExtras:Landroid/os/Bundle;

    .line 55
    return-void
.end method

.method public setMotionRecoResult(I)V
    .locals 0
    .param p1, "motionRecoResult"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionRecoResult:I

    .line 102
    return-void
.end method

.method public setMotionType(I)V
    .locals 0
    .param p1, "motionType"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionType:I

    .line 79
    return-void
.end method

.method public setTotalSteps(I)V
    .locals 0
    .param p1, "totalSteps"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mActivityTotalSteps:I

    .line 172
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HuaweiMotionEvent{mMotionExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMotionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMotionRecoResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionRecoResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMotionDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActivityState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mActivityState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActivityTotalSteps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mActivityTotalSteps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActivityWalkSteps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mActivityWalkSteps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActivityRunSteps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mActivityRunSteps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 257
    iget v0, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget v0, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionRecoResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget v0, p0, Lcom/huawei/motionservice/common/HuaweiMotionEvent;->mMotionDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    return-void
.end method
