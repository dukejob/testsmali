.class Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARActionParam;
.super Lcom/huawei/opcollect/strategy/AbsActionParam;
.source "ARStatusAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ARActionParam"
.end annotation


# instance fields
.field private eventType:I

.field private motionType:I

.field private timestampNs:J


# direct methods
.method constructor <init>(IIJ)V
    .locals 1
    .param p1, "motionType"    # I
    .param p2, "eventType"    # I
    .param p3, "timestampNs"    # J

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/AbsActionParam;-><init>()V

    .line 159
    iput p1, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARActionParam;->motionType:I

    .line 160
    iput p2, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARActionParam;->eventType:I

    .line 161
    iput-wide p3, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARActionParam;->timestampNs:J

    .line 162
    return-void
.end method


# virtual methods
.method getEventType()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARActionParam;->eventType:I

    return v0
.end method

.method getMotionType()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARActionParam;->motionType:I

    return v0
.end method

.method getTimestampNs()J
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARActionParam;->timestampNs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARActionParam{motionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARActionParam;->motionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARActionParam;->eventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestampNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARActionParam;->timestampNs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/AbsActionParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    return-object v0
.end method
