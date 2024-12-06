.class public Lcom/huawei/opcollect/strategy/TimeDisable;
.super Ljava/lang/Object;
.source "TimeDisable.java"


# instance fields
.field private mEndTime:J

.field private mStartTime:J


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 8
    .param p1, "beginH"    # I
    .param p2, "beginM"    # I
    .param p3, "beginS"    # I
    .param p4, "endH"    # I
    .param p5, "endM"    # I
    .param p6, "endS"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    int-to-long v4, p1

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    int-to-long v6, p2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    int-to-long v6, p3

    add-long v2, v4, v6

    .line 29
    .local v2, "startSecond":J
    int-to-long v4, p4

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    int-to-long v6, p5

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    int-to-long v6, p6

    add-long v0, v4, v6

    .line 31
    .local v0, "endSecond":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 32
    const-wide/32 v4, 0x15180

    add-long/2addr v0, v4

    .line 34
    :cond_0
    iput-wide v2, p0, Lcom/huawei/opcollect/strategy/TimeDisable;->mStartTime:J

    .line 35
    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/huawei/opcollect/strategy/TimeDisable;->mEndTime:J

    .line 36
    return-void
.end method

.method public static fromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 15
    .param p0, "jsonObj"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/opcollect/strategy/TimeDisable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 46
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 47
    :cond_0
    const/4 v14, 0x0

    .line 83
    :cond_1
    return-object v14

    .line 49
    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v14, "triggerList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/opcollect/strategy/TimeDisable;>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v11

    .line 51
    .local v11, "length":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_1

    .line 52
    invoke-virtual {p0, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 53
    .local v10, "item":Lorg/json/JSONObject;
    if-nez v10, :cond_4

    .line 51
    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 56
    :cond_4
    const-string v1, "starttime"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 57
    .local v13, "sTime":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 60
    const-string v1, ":"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 62
    .local v12, "sHms":[Ljava/lang/String;
    array-length v1, v12

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 65
    const-string v1, "endtime"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, "eTime":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 69
    const-string v1, ":"

    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "eHms":[Ljava/lang/String;
    array-length v1, v7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 74
    new-instance v0, Lcom/huawei/opcollect/strategy/TimeDisable;

    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v12, v2

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v12, v3

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    aget-object v4, v7, v4

    .line 77
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v5, v7, v5

    .line 78
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v7, v6

    .line 79
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/huawei/opcollect/strategy/TimeDisable;-><init>(IIIIII)V

    .line 80
    .local v0, "trigger":Lcom/huawei/opcollect/strategy/TimeDisable;
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public checkDisable(Ljava/util/Calendar;JLcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;)Z
    .locals 10
    .param p1, "calNow"    # Ljava/util/Calendar;
    .param p2, "secondOfDay"    # J
    .param p4, "nxtTimer"    # Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/32 v6, 0x15180

    .line 95
    add-long v2, p2, v6

    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/TimeDisable;->mStartTime:J

    sub-long/2addr v2, v4

    rem-long v0, v2, v6

    .line 98
    .local v0, "timeInSecond":J
    iget-wide v2, p0, Lcom/huawei/opcollect/strategy/TimeDisable;->mEndTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 99
    sub-long v2, v6, v0

    mul-long/2addr v2, v8

    invoke-virtual {p4, v2, v3}, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->update(J)V

    .line 100
    const/4 v2, 0x0

    .line 105
    :goto_0
    return v2

    .line 103
    :cond_0
    iget-wide v2, p0, Lcom/huawei/opcollect/strategy/TimeDisable;->mEndTime:J

    sub-long/2addr v2, v0

    mul-long/2addr v2, v8

    invoke-virtual {p4, v2, v3}, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->update(J)V

    .line 105
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "prefix2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<-TimeDisable->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 117
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mStartTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/TimeDisable;->mStartTime:J

    .line 118
    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectUtils;->formatTimeInSecond(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mEndTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/TimeDisable;->mEndTime:J

    iget-wide v6, p0, Lcom/huawei/opcollect/strategy/TimeDisable;->mStartTime:J

    add-long/2addr v4, v6

    .line 120
    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectUtils;->formatTimeInSecond(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
