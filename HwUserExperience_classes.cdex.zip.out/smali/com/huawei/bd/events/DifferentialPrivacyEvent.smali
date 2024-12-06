.class public Lcom/huawei/bd/events/DifferentialPrivacyEvent;
.super Lcom/huawei/bd/events/BaseEvent;
.source "DifferentialPrivacyEvent.java"

# interfaces
.implements Lcom/huawei/bd/events/EventFormatInterface;
.implements Lcom/huawei/bd/events/PriorityAdjustableInterface;


# static fields
.field public static final TAG:Ljava/lang/String; = "BD.DifferentialPrivacyEvent"


# instance fields
.field private dataSetId:Ljava/lang/String;

.field private diffPrivacyOutput:Ljava/lang/String;

.field private diffPrivacySource:Ljava/lang/String;

.field private priority:I

.field private reserved:Ljava/lang/String;

.field private reservedSecond:Ljava/lang/String;

.field private statTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/huawei/bd/events/BaseEvent;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "dataSetId"    # Ljava/lang/String;
    .param p2, "diffPrivacySource"    # Ljava/lang/String;
    .param p3, "diffPrivacyOutput"    # Ljava/lang/String;
    .param p4, "priority"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/huawei/bd/events/BaseEvent;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->dataSetId:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->diffPrivacySource:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->diffPrivacyOutput:Ljava/lang/String;

    .line 56
    iput p4, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->priority:I

    .line 57
    return-void
.end method


# virtual methods
.method public bridge synthetic encrypt()Lcom/huawei/bd/events/BaseEvent;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->encrypt()Lcom/huawei/bd/events/DifferentialPrivacyEvent;

    move-result-object v0

    return-object v0
.end method

.method public encrypt()Lcom/huawei/bd/events/DifferentialPrivacyEvent;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->diffPrivacySource:Ljava/lang/String;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->diffPrivacyOutput:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 126
    .local v0, "encryptFields":[Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->diffPrivacySource:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->diffPrivacySource:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-object p0

    .line 129
    :cond_1
    array-length v1, v0

    .line 130
    .local v1, "encryptNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->encrypt([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ne v2, v1, :cond_0

    .line 132
    aget-object v2, v0, v3

    iput-object v2, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->diffPrivacySource:Ljava/lang/String;

    .line 133
    aget-object v2, v0, v4

    iput-object v2, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->diffPrivacyOutput:Ljava/lang/String;

    goto :goto_0
.end method

.method public format()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 141
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "a"

    invoke-virtual {p0}, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->getRecordTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "b"

    iget-object v2, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->dataSetId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "c"

    iget-object v2, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->statTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "d"

    iget-object v2, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->diffPrivacySource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "e"

    iget-object v2, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->diffPrivacyOutput:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "f"

    iget v2, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    const-string v1, "g"

    invoke-virtual {p0}, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->getCipher()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "h"

    iget-object v2, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->reserved:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "i"

    iget-object v2, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->reservedSecond:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-object v0
.end method

.method public getDataSetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->dataSetId:Ljava/lang/String;

    return-object v0
.end method

.method public getDiffPrivacyOutput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->diffPrivacyOutput:Ljava/lang/String;

    return-object v0
.end method

.method public getDiffPrivacySource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->diffPrivacySource:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x6

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->priority:I

    return v0
.end method

.method public getReserved()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->reserved:Ljava/lang/String;

    return-object v0
.end method

.method public getReservedSecond()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->reservedSecond:Ljava/lang/String;

    return-object v0
.end method

.method public getStatTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->statTag:Ljava/lang/String;

    return-object v0
.end method

.method public isChangeLevel(ILcom/huawei/bd/events/PriorityAdjustableInterface$InterFaceChecker;)Z
    .locals 3
    .param p1, "priorityLevel"    # I
    .param p2, "checker"    # Lcom/huawei/bd/events/PriorityAdjustableInterface$InterFaceChecker;

    .prologue
    const/4 v1, 0x1

    .line 162
    move v0, p1

    .line 163
    .local v0, "level":I
    invoke-interface {p2, p0}, Lcom/huawei/bd/events/PriorityAdjustableInterface$InterFaceChecker;->isAuthorized(Lcom/huawei/bd/events/PriorityAdjustableInterface;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 164
    const/16 v2, 0x19

    if-gt v0, v2, :cond_0

    if-ge v0, v1, :cond_1

    .line 165
    :cond_0
    const/16 v0, 0xf

    .line 167
    :cond_1
    iput v0, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->priority:I

    .line 170
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDataSetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataSetId"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->dataSetId:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setDiffPrivacyOutput(Ljava/lang/String;)V
    .locals 0
    .param p1, "diffPrivacyOutput"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->diffPrivacyOutput:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setDiffPrivacySource(Ljava/lang/String;)V
    .locals 0
    .param p1, "diffPrivacySource"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->diffPrivacySource:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->priority:I

    .line 89
    return-void
.end method

.method public setReserved(Ljava/lang/String;)V
    .locals 0
    .param p1, "reserved"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->reserved:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setReservedSecond(Ljava/lang/String;)V
    .locals 0
    .param p1, "reservedSecond"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->reservedSecond:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setStatTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "statTag"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->statTag:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DifferentialPrivacyEvent {dataSetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->dataSetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->statTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dpSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->diffPrivacySource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dpOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->diffPrivacyOutput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
