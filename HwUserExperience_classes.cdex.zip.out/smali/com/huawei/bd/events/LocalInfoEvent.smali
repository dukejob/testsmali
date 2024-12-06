.class public Lcom/huawei/bd/events/LocalInfoEvent;
.super Lcom/huawei/bd/events/BaseEvent;
.source "LocalInfoEvent.java"

# interfaces
.implements Lcom/huawei/bd/events/EventFormatInterface;
.implements Ljava/lang/Cloneable;


# instance fields
.field private content:Ljava/lang/String;

.field private infoId:I

.field private priority:I

.field private reserved:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/huawei/bd/events/BaseEvent;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "infoId"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/huawei/bd/events/BaseEvent;-><init>()V

    .line 54
    iput p1, p0, Lcom/huawei/bd/events/LocalInfoEvent;->infoId:I

    .line 55
    iput-object p2, p0, Lcom/huawei/bd/events/LocalInfoEvent;->content:Ljava/lang/String;

    .line 56
    iput p3, p0, Lcom/huawei/bd/events/LocalInfoEvent;->priority:I

    .line 57
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 137
    const/4 v2, 0x0

    .line 139
    .local v2, "localInfoEvent":Lcom/huawei/bd/events/LocalInfoEvent;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/huawei/bd/events/LocalInfoEvent;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-object v2

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    const-string v3, "BD.BaseEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CloneNotSupportedException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic encrypt()Lcom/huawei/bd/events/BaseEvent;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/huawei/bd/events/LocalInfoEvent;->encrypt()Lcom/huawei/bd/events/LocalInfoEvent;

    move-result-object v0

    return-object v0
.end method

.method public encrypt()Lcom/huawei/bd/events/LocalInfoEvent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/bd/events/LocalInfoEvent;->content:Ljava/lang/String;

    aput-object v2, v0, v3

    .line 120
    .local v0, "encryptFields":[Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/bd/events/LocalInfoEvent;->content:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/bd/events/LocalInfoEvent;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-object p0

    .line 123
    :cond_1
    array-length v1, v0

    .line 124
    .local v1, "encryptNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->encrypt([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ne v2, v1, :cond_0

    .line 126
    aget-object v2, v0, v3

    iput-object v2, p0, Lcom/huawei/bd/events/LocalInfoEvent;->content:Ljava/lang/String;

    goto :goto_0
.end method

.method public format()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 99
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "a"

    invoke-virtual {p0}, Lcom/huawei/bd/events/LocalInfoEvent;->getRecordTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "b"

    iget v2, p0, Lcom/huawei/bd/events/LocalInfoEvent;->infoId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v1, "d"

    iget v2, p0, Lcom/huawei/bd/events/LocalInfoEvent;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v1, "c"

    iget-object v2, p0, Lcom/huawei/bd/events/LocalInfoEvent;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/huawei/bd/events/LocalInfoEvent;->content:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/bd/events/LocalInfoEvent;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    const-string v1, "e"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    const-string v1, "f"

    iget-object v2, p0, Lcom/huawei/bd/events/LocalInfoEvent;->reserved:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-object v0

    .line 106
    :cond_1
    const-string v1, "e"

    invoke-virtual {p0}, Lcom/huawei/bd/events/LocalInfoEvent;->getCipher()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/huawei/bd/events/LocalInfoEvent;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x2

    return v0
.end method

.method public getInfoId()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/huawei/bd/events/LocalInfoEvent;->infoId:I

    return v0
.end method

.method public getReserved()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/huawei/bd/events/LocalInfoEvent;->reserved:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/huawei/bd/events/LocalInfoEvent;->content:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setInfoId(I)V
    .locals 0
    .param p1, "infoId"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/huawei/bd/events/LocalInfoEvent;->infoId:I

    .line 65
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/huawei/bd/events/LocalInfoEvent;->priority:I

    .line 69
    return-void
.end method

.method public setReserved(Ljava/lang/String;)V
    .locals 0
    .param p1, "reserved"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/huawei/bd/events/LocalInfoEvent;->reserved:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalInfoEvent {infoID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/bd/events/LocalInfoEvent;->infoId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/bd/events/LocalInfoEvent;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/bd/events/LocalInfoEvent;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
