.class public Lcom/huawei/opcollect/strategy/SpanTimerTrigger;
.super Ljava/lang/Object;
.source "SpanTimerTrigger.java"

# interfaces
.implements Lcom/huawei/opcollect/strategy/ITimerTrigger;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpanTimerTrigger"


# instance fields
.field private mEndTime:J

.field private mInterval:I

.field private mNextRealTime:J

.field private mStartTime:J


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 8
    .param p1, "beginH"    # I
    .param p2, "beginM"    # I
    .param p3, "beginS"    # I
    .param p4, "endH"    # I
    .param p5, "endM"    # I
    .param p6, "endS"    # I
    .param p7, "interval"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    int-to-long v4, p1

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    int-to-long v6, p2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    int-to-long v6, p3

    add-long v2, v4, v6

    .line 34
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

    .line 36
    .local v0, "endSecond":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 37
    const-wide/32 v4, 0x15180

    add-long/2addr v0, v4

    .line 39
    :cond_0
    iput-wide v2, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mStartTime:J

    .line 40
    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mEndTime:J

    .line 41
    iput p7, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mInterval:I

    .line 42
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mNextRealTime:J

    .line 43
    return-void
.end method

.method public static fromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 17
    .param p0, "jsonObj"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/opcollect/strategy/ITimerTrigger;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 53
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 54
    :cond_0
    const/16 v16, 0x0

    .line 91
    :cond_1
    return-object v16

    .line 56
    :cond_2
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v16, "triggerList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/opcollect/strategy/ITimerTrigger;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 58
    .local v13, "length":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v13, :cond_1

    .line 59
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 60
    .local v12, "item":Lorg/json/JSONObject;
    if-nez v12, :cond_4

    .line 58
    :cond_3
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 63
    :cond_4
    const-string v2, "starttime"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 64
    .local v15, "sTime":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 67
    const-string v2, ":"

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 69
    .local v14, "sHms":[Ljava/lang/String;
    array-length v2, v14

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 72
    const-string v2, "endtime"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 73
    .local v10, "eTime":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 76
    const-string v2, ":"

    invoke-virtual {v10, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v9, "eHms":[Ljava/lang/String;
    array-length v2, v9

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 81
    new-instance v1, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;

    const/4 v2, 0x0

    aget-object v2, v14, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v14, v3

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v14, v4

    .line 83
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v9, v5

    .line 84
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    aget-object v6, v9, v6

    .line 85
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    aget-object v7, v9, v7

    .line 86
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "interval"

    .line 87
    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct/range {v1 .. v8}, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;-><init>(IIIIIII)V

    .line 88
    .local v1, "trigger":Lcom/huawei/opcollect/strategy/SpanTimerTrigger;
    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public checkTrigger(Ljava/util/Calendar;JJLcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;)Z
    .locals 6
    .param p1, "calNow"    # Ljava/util/Calendar;
    .param p2, "secondOfDay"    # J
    .param p4, "rtNow"    # J
    .param p6, "nxtTimer"    # Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;

    .prologue
    .line 104
    const-wide/32 v2, 0x15180

    add-long/2addr v2, p2

    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mStartTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x15180

    rem-long v0, v2, v4

    .line 106
    .local v0, "timeInSecond":J
    iget-wide v2, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mEndTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 107
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mNextRealTime:J

    .line 109
    const-wide/32 v2, 0x15180

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {p6, v2, v3}, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->update(J)V

    .line 110
    const/4 v2, 0x0

    .line 128
    :goto_0
    return v2

    .line 113
    :cond_0
    iget-wide v2, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mNextRealTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 114
    iput-wide p4, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mNextRealTime:J

    .line 117
    :cond_1
    iget-wide v2, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mNextRealTime:J

    cmp-long v2, v2, p4

    if-lez v2, :cond_2

    .line 118
    iget-wide v2, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mNextRealTime:J

    sub-long/2addr v2, p4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {p6, v2, v3}, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->update(J)V

    .line 119
    const/4 v2, 0x0

    goto :goto_0

    .line 122
    :cond_2
    iget v2, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mInterval:I

    int-to-long v2, v2

    add-long/2addr v2, p4

    iput-wide v2, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mNextRealTime:J

    .line 124
    iget v2, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mInterval:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {p6, v2, v3}, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->update(J)V

    .line 126
    const-string v2, "SpanTimerTrigger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mInterval:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mInterval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNextRealTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mNextRealTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mStartTime:J

    return-wide v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "prefix2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<-SpanTimerTrigger->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
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

    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mStartTime:J

    .line 145
    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectUtils;->formatTimeInSecond(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mEndTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mEndTime:J

    iget-wide v6, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mStartTime:J

    add-long/2addr v4, v6

    .line 147
    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectUtils;->formatTimeInSecond(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mInterval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mNextRealTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->mNextRealTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
