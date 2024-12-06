.class Lcom/huawei/opcollect/strategy/LoopTimerTrigger;
.super Ljava/lang/Object;
.source "LoopTimerTrigger.java"

# interfaces
.implements Lcom/huawei/opcollect/strategy/ITimerTrigger;


# static fields
.field private static final TAG:Ljava/lang/String; = "LoopTimerTrigger"


# instance fields
.field private mInterval:J

.field private mNextRealTime:J


# direct methods
.method private constructor <init>(I)V
    .locals 4
    .param p1, "interval"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/huawei/opcollect/strategy/LoopTimerTrigger;->mInterval:J

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/huawei/opcollect/strategy/LoopTimerTrigger;->mNextRealTime:J

    .line 35
    return-void
.end method

.method static fromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
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
    const/4 v5, 0x0

    .line 45
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-gtz v6, :cond_2

    :cond_0
    move-object v4, v5

    .line 64
    :cond_1
    :goto_0
    return-object v4

    .line 48
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v4, "triggerList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/opcollect/strategy/ITimerTrigger;>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 50
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 51
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 52
    .local v1, "item":Lorg/json/JSONObject;
    if-nez v1, :cond_3

    .line 50
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_3
    new-instance v3, Lcom/huawei/opcollect/strategy/LoopTimerTrigger;

    const-string v6, "interval"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v6}, Lcom/huawei/opcollect/strategy/LoopTimerTrigger;-><init>(I)V

    .line 56
    .local v3, "trigger":Lcom/huawei/opcollect/strategy/LoopTimerTrigger;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 59
    .end local v1    # "item":Lorg/json/JSONObject;
    .end local v3    # "trigger":Lcom/huawei/opcollect/strategy/LoopTimerTrigger;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 60
    const-string v6, "LoopTimerTrigger"

    const-string v7, "Multi loopTimerTrigger are configured."

    invoke-static {v6, v7}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 61
    goto :goto_0
.end method


# virtual methods
.method public checkTrigger(Ljava/util/Calendar;JJLcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;)Z
    .locals 4
    .param p1, "calNow"    # Ljava/util/Calendar;
    .param p2, "secondOfDay"    # J
    .param p4, "rtNow"    # J
    .param p6, "nxtTimer"    # Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/huawei/opcollect/strategy/LoopTimerTrigger;->mNextRealTime:J

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    .line 80
    :cond_0
    iget-wide v0, p0, Lcom/huawei/opcollect/strategy/LoopTimerTrigger;->mInterval:J

    add-long/2addr v0, p4

    iput-wide v0, p0, Lcom/huawei/opcollect/strategy/LoopTimerTrigger;->mNextRealTime:J

    .line 81
    iget-wide v0, p0, Lcom/huawei/opcollect/strategy/LoopTimerTrigger;->mInterval:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p6, v0, v1}, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->update(J)V

    .line 83
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "prefix2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<-LoopTimerTrigger->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 95
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mInterval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/LoopTimerTrigger;->mInterval:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mNextRealTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/LoopTimerTrigger;->mNextRealTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
