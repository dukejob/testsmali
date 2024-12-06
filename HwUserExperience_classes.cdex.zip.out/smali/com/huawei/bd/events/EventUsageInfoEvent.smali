.class public Lcom/huawei/bd/events/EventUsageInfoEvent;
.super Lcom/huawei/bd/events/BaseEvent;
.source "EventUsageInfoEvent.java"

# interfaces
.implements Lcom/huawei/bd/events/EventFormatInterface;


# instance fields
.field private currDayCount:I

.field private currMonthCount:I

.field private currWeekCount:I

.field private eventId:I

.field private hisCount:I

.field private lastDayCount:I

.field private lastMonthCount:I

.field private lastWeekCount:I

.field private pkgName:Ljava/lang/String;

.field private reserved:Ljava/lang/String;

.field private reservedSecond:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/huawei/bd/events/BaseEvent;-><init>()V

    .line 74
    return-void
.end method


# virtual methods
.method public bridge synthetic encrypt()Lcom/huawei/bd/events/BaseEvent;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->encrypt()Lcom/huawei/bd/events/EventUsageInfoEvent;

    move-result-object v0

    return-object v0
.end method

.method public encrypt()Lcom/huawei/bd/events/EventUsageInfoEvent;
    .locals 0

    .prologue
    .line 114
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "isEquals":Z
    if-nez p1, :cond_0

    move v2, v1

    .line 217
    .end local v1    # "isEquals":Z
    .local v2, "isEquals":I
    :goto_0
    return v2

    .line 211
    .end local v2    # "isEquals":I
    .restart local v1    # "isEquals":Z
    :cond_0
    instance-of v3, p1, Lcom/huawei/bd/events/EventUsageInfoEvent;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 212
    check-cast v0, Lcom/huawei/bd/events/EventUsageInfoEvent;

    .line 213
    .local v0, "info":Lcom/huawei/bd/events/EventUsageInfoEvent;
    invoke-virtual {p0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->getEventId()I

    move-result v3

    invoke-virtual {v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->getEventId()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 214
    const/4 v1, 0x1

    .end local v0    # "info":Lcom/huawei/bd/events/EventUsageInfoEvent;
    :cond_1
    move v2, v1

    .line 217
    .restart local v2    # "isEquals":I
    goto :goto_0
.end method

.method public format()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 93
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "a"

    iget-object v2, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "b"

    iget v2, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->eventId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v1, "c"

    iget v2, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->hisCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    const-string v1, "d"

    iget v2, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->currDayCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v1, "e"

    iget v2, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->lastDayCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v1, "f"

    iget v2, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->currWeekCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v1, "g"

    iget v2, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->lastWeekCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v1, "h"

    iget v2, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->currMonthCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v1, "i"

    iget v2, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->lastMonthCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v1, "j"

    iget-object v2, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->reserved:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "k"

    iget-object v2, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->reservedSecond:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-object v0
.end method

.method public getCurrDayCount()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->currDayCount:I

    return v0
.end method

.method public getCurrMonthCount()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->currMonthCount:I

    return v0
.end method

.method public getCurrWeekCount()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->currWeekCount:I

    return v0
.end method

.method public getEventId()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->eventId:I

    return v0
.end method

.method public getHisCount()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->hisCount:I

    return v0
.end method

.method public getLastDayCount()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->lastDayCount:I

    return v0
.end method

.method public getLastMonthCount()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->lastMonthCount:I

    return v0
.end method

.method public getLastWeekCount()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->lastWeekCount:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getReserved()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->reserved:Ljava/lang/String;

    return-object v0
.end method

.method public getReservedSecond()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->reservedSecond:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 222
    iget-object v2, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->pkgName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    .line 223
    .local v1, "pkgHash":I
    iget v2, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->eventId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 224
    .local v0, "eventIdHash":I
    add-int v2, v1, v0

    return v2
.end method

.method public setCurrDayCount(I)V
    .locals 0
    .param p1, "currDayCount"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->currDayCount:I

    .line 147
    return-void
.end method

.method public setCurrMonthCount(I)V
    .locals 0
    .param p1, "currMonthCount"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->currMonthCount:I

    .line 179
    return-void
.end method

.method public setCurrWeekCount(I)V
    .locals 0
    .param p1, "currWeekCount"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->currWeekCount:I

    .line 163
    return-void
.end method

.method public setEventId(I)V
    .locals 0
    .param p1, "eventId"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->eventId:I

    .line 131
    return-void
.end method

.method public setHisCount(I)V
    .locals 0
    .param p1, "hisCount"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->hisCount:I

    .line 139
    return-void
.end method

.method public setLastDayCount(I)V
    .locals 0
    .param p1, "lastDayCount"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->lastDayCount:I

    .line 155
    return-void
.end method

.method public setLastMonthCount(I)V
    .locals 0
    .param p1, "lastMonthCount"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->lastMonthCount:I

    .line 187
    return-void
.end method

.method public setLastWeekCount(I)V
    .locals 0
    .param p1, "lastWeekCount"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->lastWeekCount:I

    .line 171
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->pkgName:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setReserved(Ljava/lang/String;)V
    .locals 0
    .param p1, "reserved"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->reserved:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setReservedSecond(Ljava/lang/String;)V
    .locals 0
    .param p1, "reservedSecond"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->reservedSecond:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventUsageInfoEvent {pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->eventId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hisCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->hisCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastDayCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->lastDayCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastWeekCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->lastWeekCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastMonthCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/bd/events/EventUsageInfoEvent;->lastMonthCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateByCursor(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 233
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 234
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 235
    const-string v7, "c"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 236
    .local v3, "hisNum":I
    const-string v7, "d"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 237
    .local v0, "currDayNum":I
    const-string v7, "e"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 238
    .local v4, "lastDayNum":I
    const-string v7, "f"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 239
    .local v2, "currWeekNum":I
    const-string v7, "g"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 240
    .local v6, "lastWeekNum":I
    const-string v7, "h"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 241
    .local v1, "currMonthNum":I
    const-string v7, "i"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 242
    .local v5, "lastMonthNum":I
    invoke-virtual {p0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->getHisCount()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setHisCount(I)V

    .line 243
    invoke-virtual {p0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->getCurrDayCount()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p0, v7}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setCurrDayCount(I)V

    .line 244
    invoke-virtual {p0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->getLastDayCount()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {p0, v7}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setLastDayCount(I)V

    .line 245
    invoke-virtual {p0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->getCurrWeekCount()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setCurrWeekCount(I)V

    .line 246
    invoke-virtual {p0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->getLastWeekCount()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p0, v7}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setLastWeekCount(I)V

    .line 247
    invoke-virtual {p0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->getCurrMonthCount()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setCurrMonthCount(I)V

    .line 248
    invoke-virtual {p0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->getLastMonthCount()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p0, v7}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setLastMonthCount(I)V

    .line 250
    .end local v0    # "currDayNum":I
    .end local v1    # "currMonthNum":I
    .end local v2    # "currWeekNum":I
    .end local v3    # "hisNum":I
    .end local v4    # "lastDayNum":I
    .end local v5    # "lastMonthNum":I
    .end local v6    # "lastWeekNum":I
    :cond_0
    return-void
.end method
