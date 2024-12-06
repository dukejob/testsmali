.class public Lcom/huawei/hiai/awareness/service/RequestResult;
.super Ljava/lang/Object;
.source "RequestResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/hiai/awareness/service/RequestResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:I

.field private confidence:I

.field private content:Ljava/lang/String;

.field private errorCode:I

.field private errorResult:Ljava/lang/String;

.field private registerTopKey:Ljava/lang/String;

.field private resultType:I

.field private secondAction:Ljava/lang/String;

.field private sensorTime:J

.field private status:I

.field private time:J

.field private triggerStatus:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/huawei/hiai/awareness/service/RequestResult$1;

    invoke-direct {v0}, Lcom/huawei/hiai/awareness/service/RequestResult$1;-><init>()V

    sput-object v0, Lcom/huawei/hiai/awareness/service/RequestResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->type:I

    .line 16
    iput v1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->status:I

    .line 17
    iput v1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->action:I

    .line 18
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->secondAction:Ljava/lang/String;

    .line 20
    iput-wide v4, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->time:J

    .line 21
    iput-wide v4, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->sensorTime:J

    .line 22
    const/16 v0, 0x64

    iput v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->confidence:I

    .line 24
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->registerTopKey:Ljava/lang/String;

    .line 27
    iput v1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->resultType:I

    .line 29
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->content:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->triggerStatus:I

    .line 35
    iput v1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorCode:I

    .line 36
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorResult:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;JJI)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "action"    # I
    .param p4, "secondAction"    # Ljava/lang/String;
    .param p5, "time"    # J
    .param p7, "sensorTime"    # J
    .param p9, "confidence"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v3, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->type:I

    .line 16
    iput v3, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->status:I

    .line 17
    iput v3, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->action:I

    .line 18
    iput-object v4, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->secondAction:Ljava/lang/String;

    .line 20
    iput-wide v6, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->time:J

    .line 21
    iput-wide v6, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->sensorTime:J

    .line 22
    const/16 v2, 0x64

    iput v2, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->confidence:I

    .line 24
    iput-object v4, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->registerTopKey:Ljava/lang/String;

    .line 27
    iput v3, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->resultType:I

    .line 29
    iput-object v4, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->content:Ljava/lang/String;

    .line 32
    iput v3, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->triggerStatus:I

    .line 35
    iput v3, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorCode:I

    .line 36
    iput-object v4, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorResult:Ljava/lang/String;

    .line 104
    iput p1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->type:I

    .line 105
    iput p2, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->status:I

    .line 106
    iput p3, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->action:I

    .line 107
    iput-object p4, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->secondAction:Ljava/lang/String;

    .line 108
    iput-wide p5, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->time:J

    .line 109
    move-wide/from16 v0, p7

    iput-wide v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->sensorTime:J

    .line 110
    move/from16 v0, p9

    iput v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->confidence:I

    .line 111
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "errorResult"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->type:I

    .line 16
    iput v1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->status:I

    .line 17
    iput v1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->action:I

    .line 18
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->secondAction:Ljava/lang/String;

    .line 20
    iput-wide v4, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->time:J

    .line 21
    iput-wide v4, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->sensorTime:J

    .line 22
    const/16 v0, 0x64

    iput v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->confidence:I

    .line 24
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->registerTopKey:Ljava/lang/String;

    .line 27
    iput v1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->resultType:I

    .line 29
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->content:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->triggerStatus:I

    .line 35
    iput v1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorCode:I

    .line 36
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorResult:Ljava/lang/String;

    .line 115
    iput p1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorCode:I

    .line 116
    iput-object p2, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorResult:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->type:I

    .line 16
    iput v1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->status:I

    .line 17
    iput v1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->action:I

    .line 18
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->secondAction:Ljava/lang/String;

    .line 20
    iput-wide v4, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->time:J

    .line 21
    iput-wide v4, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->sensorTime:J

    .line 22
    const/16 v0, 0x64

    iput v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->confidence:I

    .line 24
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->registerTopKey:Ljava/lang/String;

    .line 27
    iput v1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->resultType:I

    .line 29
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->content:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->triggerStatus:I

    .line 35
    iput v1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorCode:I

    .line 36
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorResult:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->type:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->status:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->action:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->secondAction:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->time:J

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->sensorTime:J

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->confidence:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->registerTopKey:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->resultType:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->content:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->triggerStatus:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorCode:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorResult:Ljava/lang/String;

    .line 137
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->action:I

    return v0
.end method

.method public getConfidence()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->confidence:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorCode:I

    return v0
.end method

.method public getErrorResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorResult:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterTopKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->registerTopKey:Ljava/lang/String;

    return-object v0
.end method

.method public getResultType()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->resultType:I

    return v0
.end method

.method public getSecondAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->secondAction:Ljava/lang/String;

    return-object v0
.end method

.method public getSensorTime()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->sensorTime:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->status:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->time:J

    return-wide v0
.end method

.method public getTriggerStatus()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->triggerStatus:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->type:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->type:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->status:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->action:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->secondAction:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->time:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->sensorTime:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->confidence:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->registerTopKey:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->resultType:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->content:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->triggerStatus:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorCode:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorResult:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->action:I

    .line 161
    return-void
.end method

.method public setConfidence(I)V
    .locals 0
    .param p1, "confidence"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->confidence:I

    .line 193
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->content:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 232
    iput p1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorCode:I

    .line 233
    return-void
.end method

.method public setErrorResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorResult"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorResult:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setRegisterTopKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "registerTopKey"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->registerTopKey:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setResultType(I)V
    .locals 0
    .param p1, "resultType"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->resultType:I

    .line 209
    return-void
.end method

.method public setSecondAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "secondAction"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->secondAction:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setSensorTime(J)V
    .locals 1
    .param p1, "sensorTime"    # J

    .prologue
    .line 184
    iput-wide p1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->sensorTime:J

    .line 185
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->status:I

    .line 153
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 176
    iput-wide p1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->time:J

    .line 177
    return-void
.end method

.method public setTriggerStatus(I)V
    .locals 0
    .param p1, "triggerStatus"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->triggerStatus:I

    .line 225
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->type:I

    .line 145
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 245
    const-string v0, "RequestResult{type = %d, status = %d, action = %d, secondAction = %s, time = %d, sensorTime = %d, confidence = %d, registerTopKey = %s, resultType = %d, content = %s, triggerStatus = %d, errorCode = %d, errorResult = %s}"

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->type:I

    .line 247
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->action:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->secondAction:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v4, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->sensorTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->confidence:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->registerTopKey:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->resultType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->content:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget v3, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->triggerStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget v3, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorResult:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 245
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 58
    iget v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->secondAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-wide v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    iget-wide v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->sensorTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    iget v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->confidence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->registerTopKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->resultType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->triggerStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/RequestResult;->errorResult:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return-void
.end method
