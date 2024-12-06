.class public Lcom/huawei/bd/events/AppActiveInfoEvent;
.super Lcom/huawei/bd/events/BaseEvent;
.source "AppActiveInfoEvent.java"

# interfaces
.implements Lcom/huawei/bd/events/EventFormatInterface;


# instance fields
.field private activeTime:J

.field private packageName:Ljava/lang/String;

.field private reportTime:J

.field private reserved:Ljava/lang/String;

.field private reservedSecond:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/huawei/bd/events/BaseEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public encrypt()Lcom/huawei/bd/events/AppActiveInfoEvent;
    .locals 0

    .prologue
    .line 46
    return-object p0
.end method

.method public bridge synthetic encrypt()Lcom/huawei/bd/events/BaseEvent;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/huawei/bd/events/AppActiveInfoEvent;->encrypt()Lcom/huawei/bd/events/AppActiveInfoEvent;

    move-result-object v0

    return-object v0
.end method

.method public format()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 32
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 33
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "a"

    invoke-virtual {p0}, Lcom/huawei/bd/events/AppActiveInfoEvent;->getRecordTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "b"

    iget-object v2, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "c"

    iget v2, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 36
    const-string v1, "d"

    iget-wide v2, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->activeTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 37
    const-string v1, "e"

    iget-wide v2, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->reportTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 38
    const-string v1, "f"

    iget-object v2, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->reserved:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "g"

    iget-object v2, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->reservedSecond:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-object v0
.end method

.method public getActiveTime()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->activeTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReportTime()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->reportTime:J

    return-wide v0
.end method

.method public getReserved()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->reserved:Ljava/lang/String;

    return-object v0
.end method

.method public getReservedSecond()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->reservedSecond:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->status:I

    return v0
.end method

.method public setActiveTime(J)V
    .locals 1
    .param p1, "activeTime"    # J

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->activeTime:J

    .line 71
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->packageName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setReportTime(J)V
    .locals 1
    .param p1, "reportTime"    # J

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->reportTime:J

    .line 79
    return-void
.end method

.method public setReserved(Ljava/lang/String;)V
    .locals 0
    .param p1, "reserved"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->reserved:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setReservedSecond(Ljava/lang/String;)V
    .locals 0
    .param p1, "reservedSecond"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->reservedSecond:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->status:I

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppActiveInfoEvent{packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->activeTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reportTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->reportTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reserved1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->reserved:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reserved2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/bd/events/AppActiveInfoEvent;->reservedSecond:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
