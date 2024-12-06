.class public Lcom/huawei/opcollect/strategy/EventTimerTrigger;
.super Ljava/lang/Object;
.source "EventTimerTrigger.java"

# interfaces
.implements Lcom/huawei/opcollect/strategy/ITimerTrigger;


# static fields
.field private static final TAG:Ljava/lang/String; = "EventTimerTrigger"


# instance fields
.field private mDurationTime:J

.field private mEndRealTime:J

.field private mEvent:Ljava/lang/String;

.field private mInterval:J

.field private mNextRealTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "durationtime"    # I
    .param p3, "interval"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mEvent:Ljava/lang/String;

    .line 43
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mDurationTime:J

    .line 44
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mInterval:J

    .line 45
    iput-wide v2, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mNextRealTime:J

    .line 46
    iput-wide v2, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mEndRealTime:J

    .line 47
    return-void
.end method

.method public static fromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .param p0, "jsonObj"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/opcollect/strategy/EventTimerTrigger;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 57
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-gtz v5, :cond_2

    .line 58
    :cond_0
    const/4 v4, 0x0

    .line 72
    :cond_1
    return-object v4

    .line 60
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v4, "triggerList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/opcollect/strategy/EventTimerTrigger;>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 62
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 63
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 64
    .local v1, "item":Lorg/json/JSONObject;
    if-nez v1, :cond_3

    .line 62
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_3
    new-instance v3, Lcom/huawei/opcollect/strategy/EventTimerTrigger;

    const-string v5, "eventname"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "durationtime"

    .line 68
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "interval"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v3, v5, v6, v7}, Lcom/huawei/opcollect/strategy/EventTimerTrigger;-><init>(Ljava/lang/String;II)V

    .line 69
    .local v3, "trigger":Lcom/huawei/opcollect/strategy/EventTimerTrigger;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public checkTrigger(Ljava/util/Calendar;JJLcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;)Z
    .locals 4
    .param p1, "calNow"    # Ljava/util/Calendar;
    .param p2, "secondOfDay"    # J
    .param p4, "rtNow"    # J
    .param p6, "nxtTimer"    # Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mNextRealTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    .line 110
    :cond_0
    iget-wide v0, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mNextRealTime:J

    cmp-long v0, p4, v0

    if-gez v0, :cond_1

    .line 111
    iget-wide v0, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mNextRealTime:J

    sub-long/2addr v0, p4

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p6, v0, v1}, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->update(J)V

    .line 112
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :cond_1
    iget-wide v0, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mInterval:J

    add-long/2addr v0, p4

    iput-wide v0, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mNextRealTime:J

    .line 115
    iget-wide v0, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mNextRealTime:J

    iget-wide v2, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mEndRealTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 116
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mNextRealTime:J

    .line 117
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mEndRealTime:J

    .line 122
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 119
    :cond_2
    iget-wide v0, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mNextRealTime:J

    sub-long/2addr v0, p4

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p6, v0, v1}, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->update(J)V

    goto :goto_1
.end method

.method public startTimer(Ljava/lang/String;)Z
    .locals 6
    .param p1, "eventname"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mEvent:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    const/4 v2, 0x0

    .line 93
    :goto_0
    return v2

    .line 86
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 87
    .local v0, "nowRealTime":J
    iget-wide v2, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mNextRealTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 88
    iput-wide v0, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mNextRealTime:J

    .line 91
    :cond_1
    iget-wide v2, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mDurationTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mEndRealTime:J

    .line 93
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "prefix2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<-EventTimerTrigger->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 134
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mEvent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mDurationTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mDurationTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mInterval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mInterval:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mNextRealTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mNextRealTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 138
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mEndRealTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->mEndRealTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
