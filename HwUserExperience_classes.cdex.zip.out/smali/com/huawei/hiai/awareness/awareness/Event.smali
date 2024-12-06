.class public Lcom/huawei/hiai/awareness/awareness/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field private eventConfidence:I

.field private eventCurAction:I

.field private eventCurStatus:I

.field private eventCurType:I

.field private eventSensorTime:J

.field private eventTime:J

.field private eventTriggerStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventTriggerStatus:I

    return-void
.end method


# virtual methods
.method public getEventConfidence()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventConfidence:I

    return v0
.end method

.method public getEventCurAction()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventCurAction:I

    return v0
.end method

.method public getEventCurStatus()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventCurStatus:I

    return v0
.end method

.method public getEventCurType()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventCurType:I

    return v0
.end method

.method public getEventSensorTime()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventSensorTime:J

    return-wide v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventTime:J

    return-wide v0
.end method

.method public getEventTriggerStatus()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventTriggerStatus:I

    return v0
.end method

.method public setEventConfidence(I)V
    .locals 0
    .param p1, "eventConfidence"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventConfidence:I

    .line 59
    return-void
.end method

.method public setEventCurAction(I)V
    .locals 0
    .param p1, "eventCurAction"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventCurAction:I

    .line 34
    return-void
.end method

.method public setEventCurStatus(I)V
    .locals 0
    .param p1, "eventCurStatus"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventCurStatus:I

    .line 26
    return-void
.end method

.method public setEventCurType(I)V
    .locals 0
    .param p1, "eventCurType"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventCurType:I

    .line 18
    return-void
.end method

.method public setEventSensorTime(J)V
    .locals 1
    .param p1, "eventSensorTime"    # J

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventSensorTime:J

    .line 67
    return-void
.end method

.method public setEventTime(J)V
    .locals 1
    .param p1, "eventTime"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventTime:J

    .line 51
    return-void
.end method

.method public setEventTriggerStatus(I)V
    .locals 0
    .param p1, "eventTriggerStatus"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventTriggerStatus:I

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 71
    const-string v0, "Event{eventCurType = %d, eventCurStatus = %d, eventCurAction = %d, triggerStatus = %d, time = %d, sensorTime = %d, confidence = %d}"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventCurType:I

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventCurStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventCurAction:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventTriggerStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventTime:J

    .line 73
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v4, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventSensorTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/huawei/hiai/awareness/awareness/Event;->eventConfidence:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 71
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
