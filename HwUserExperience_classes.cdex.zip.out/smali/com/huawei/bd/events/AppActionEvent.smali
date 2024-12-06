.class public Lcom/huawei/bd/events/AppActionEvent;
.super Lcom/huawei/bd/events/BaseEvent;
.source "AppActionEvent.java"

# interfaces
.implements Lcom/huawei/bd/events/EventFormatInterface;
.implements Lcom/huawei/bd/events/PriorityAdjustableInterface;


# static fields
.field public static final TAG:Ljava/lang/String; = "BD.AppActionEvent"


# instance fields
.field private content:Ljava/lang/String;

.field private eventId:I

.field private pkgName:Ljava/lang/String;

.field private priority:I

.field private verName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/huawei/bd/events/BaseEvent;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "verName"    # Ljava/lang/String;
    .param p3, "eventId"    # I
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "priority"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/huawei/bd/events/BaseEvent;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/huawei/bd/events/AppActionEvent;->pkgName:Ljava/lang/String;

    .line 65
    iput p3, p0, Lcom/huawei/bd/events/AppActionEvent;->eventId:I

    .line 66
    iput-object p2, p0, Lcom/huawei/bd/events/AppActionEvent;->verName:Ljava/lang/String;

    .line 67
    iput p5, p0, Lcom/huawei/bd/events/AppActionEvent;->priority:I

    .line 68
    iput-object p4, p0, Lcom/huawei/bd/events/AppActionEvent;->content:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public encrypt()Lcom/huawei/bd/events/AppActionEvent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/bd/events/AppActionEvent;->content:Ljava/lang/String;

    aput-object v2, v0, v3

    .line 173
    .local v0, "encryptFields":[Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/bd/events/AppActionEvent;->content:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/bd/events/AppActionEvent;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-object p0

    .line 176
    :cond_1
    array-length v1, v0

    .line 177
    .local v1, "encryptNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/bd/events/AppActionEvent;->encrypt([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ne v2, v1, :cond_0

    .line 179
    aget-object v2, v0, v3

    iput-object v2, p0, Lcom/huawei/bd/events/AppActionEvent;->content:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic encrypt()Lcom/huawei/bd/events/BaseEvent;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/huawei/bd/events/AppActionEvent;->encrypt()Lcom/huawei/bd/events/AppActionEvent;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    if-ne p0, p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 86
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 89
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 91
    check-cast v0, Lcom/huawei/bd/events/AppActionEvent;

    .line 92
    .local v0, "appActionEvent":Lcom/huawei/bd/events/AppActionEvent;
    iget v3, p0, Lcom/huawei/bd/events/AppActionEvent;->eventId:I

    iget v4, v0, Lcom/huawei/bd/events/AppActionEvent;->eventId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 93
    goto :goto_0

    .line 95
    :cond_4
    iget-object v3, p0, Lcom/huawei/bd/events/AppActionEvent;->pkgName:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 96
    iget-object v3, v0, Lcom/huawei/bd/events/AppActionEvent;->pkgName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 97
    goto :goto_0

    .line 99
    :cond_5
    iget-object v3, p0, Lcom/huawei/bd/events/AppActionEvent;->pkgName:Ljava/lang/String;

    iget-object v4, v0, Lcom/huawei/bd/events/AppActionEvent;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 100
    goto :goto_0
.end method

.method public format()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 151
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 152
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "a"

    invoke-virtual {p0}, Lcom/huawei/bd/events/AppActionEvent;->getRecordTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "b"

    iget-object v2, p0, Lcom/huawei/bd/events/AppActionEvent;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "c"

    iget v2, p0, Lcom/huawei/bd/events/AppActionEvent;->eventId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v1, "d"

    iget-object v2, p0, Lcom/huawei/bd/events/AppActionEvent;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "e"

    iget-object v2, p0, Lcom/huawei/bd/events/AppActionEvent;->verName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "f"

    iget v2, p0, Lcom/huawei/bd/events/AppActionEvent;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    iget-object v1, p0, Lcom/huawei/bd/events/AppActionEvent;->content:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/bd/events/AppActionEvent;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    :cond_0
    const-string v1, "g"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_0
    return-object v0

    .line 161
    :cond_1
    const-string v1, "g"

    invoke-virtual {p0}, Lcom/huawei/bd/events/AppActionEvent;->getCipher()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/huawei/bd/events/AppActionEvent;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/huawei/bd/events/AppActionEvent;->eventId:I

    return v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/huawei/bd/events/AppActionEvent;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/huawei/bd/events/AppActionEvent;->priority:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/huawei/bd/events/AppActionEvent;->verName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 73
    const/16 v0, 0x1f

    .line 74
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 75
    .local v1, "result":I
    iget v2, p0, Lcom/huawei/bd/events/AppActionEvent;->eventId:I

    add-int/lit8 v1, v2, 0x1f

    .line 76
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/huawei/bd/events/AppActionEvent;->pkgName:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 77
    return v1

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/huawei/bd/events/AppActionEvent;->pkgName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isChangeLevel(ILcom/huawei/bd/events/PriorityAdjustableInterface$InterFaceChecker;)Z
    .locals 3
    .param p1, "priorityLevel"    # I
    .param p2, "checker"    # Lcom/huawei/bd/events/PriorityAdjustableInterface$InterFaceChecker;

    .prologue
    const/4 v1, 0x1

    .line 195
    move v0, p1

    .line 196
    .local v0, "level":I
    invoke-interface {p2, p0}, Lcom/huawei/bd/events/PriorityAdjustableInterface$InterFaceChecker;->isAuthorized(Lcom/huawei/bd/events/PriorityAdjustableInterface;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 197
    const/16 v2, 0x19

    if-gt v0, v2, :cond_0

    if-ge v0, v1, :cond_1

    .line 198
    :cond_0
    const/16 v0, 0xf

    .line 200
    :cond_1
    iput v0, p0, Lcom/huawei/bd/events/AppActionEvent;->priority:I

    .line 203
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/huawei/bd/events/AppActionEvent;->content:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setEventId(I)V
    .locals 0
    .param p1, "eventId"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/huawei/bd/events/AppActionEvent;->eventId:I

    .line 111
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/huawei/bd/events/AppActionEvent;->pkgName:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/huawei/bd/events/AppActionEvent;->priority:I

    .line 127
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/huawei/bd/events/AppActionEvent;->verName:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppActionEvent {pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/bd/events/AppActionEvent;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/bd/events/AppActionEvent;->eventId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/bd/events/AppActionEvent;->verName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/bd/events/AppActionEvent;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/bd/events/AppActionEvent;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
