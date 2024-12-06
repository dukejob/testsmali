.class public Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
.super Ljava/lang/Object;
.source "OneShotTimerTrigger.java"

# interfaces
.implements Lcom/huawei/opcollect/strategy/ITimerTrigger;


# static fields
.field private static final ERROR_TOLERANCE_INSECOND:I = 0x2a30

.field private static final PERIOD_TYPE_DAY:I = 0x1

.field private static final PERIOD_TYPE_MONTH:I = 0x3

.field private static final PERIOD_TYPE_WEEK:I = 0x2

.field private static final PERIOD_TYPE_YEAR:I = 0x4

.field private static final RANDOM_TIME_IN_SECOND:I = 0x1c20

.field private static final TAG:Ljava/lang/String; = "OneShotTimerTrigger"


# instance fields
.field private mPeriodType:I

.field private mSpanTrigger:Lcom/huawei/opcollect/strategy/SpanTimerTrigger;

.field private mStartDate:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "h"    # I
    .param p2, "m"    # I
    .param p3, "s"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mPeriodType:I

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->initialize(III)V

    .line 47
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 3
    .param p1, "week"    # I
    .param p2, "h"    # I
    .param p3, "m"    # I
    .param p4, "s"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mPeriodType:I

    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mStartDate:Ljava/util/Calendar;

    .line 53
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mStartDate:Ljava/util/Calendar;

    const/16 v1, 0x7d0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    .line 55
    invoke-direct {p0, p2, p3, p4}, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->initialize(III)V

    .line 56
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 2
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "h"    # I
    .param p4, "m"    # I
    .param p5, "s"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x4

    iput v0, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mPeriodType:I

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mStartDate:Ljava/util/Calendar;

    .line 71
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mStartDate:Ljava/util/Calendar;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Calendar;->set(III)V

    .line 73
    invoke-direct {p0, p3, p4, p5}, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->initialize(III)V

    .line 74
    return-void
.end method

.method public constructor <init>(JIII)V
    .locals 5
    .param p1, "day"    # J
    .param p3, "h"    # I
    .param p4, "m"    # I
    .param p5, "s"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mPeriodType:I

    .line 60
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mStartDate:Ljava/util/Calendar;

    .line 62
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mStartDate:Ljava/util/Calendar;

    const/16 v1, 0x7d0

    const/4 v2, 0x1

    long-to-int v3, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 64
    invoke-direct {p0, p3, p4, p5}, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->initialize(III)V

    .line 65
    return-void
.end method

.method public static fromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 22
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
    .line 91
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-gtz v5, :cond_2

    .line 92
    :cond_0
    const/16 v21, 0x0

    .line 142
    :cond_1
    return-object v21

    .line 94
    :cond_2
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v21, "triggerList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/opcollect/strategy/ITimerTrigger;>;"
    const/4 v2, 0x0

    .line 96
    .local v2, "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v17

    .line 97
    .local v17, "length":I
    const/4 v15, 0x0

    .local v15, "i":I
    move-object/from16 v20, v2

    .end local v2    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    .local v20, "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_1

    .line 98
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 99
    .local v16, "item":Lorg/json/JSONObject;
    if-nez v16, :cond_3

    move-object/from16 v2, v20

    .line 97
    .end local v20    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    .restart local v2    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    :goto_1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v20, v2

    .end local v2    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    .restart local v20    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    goto :goto_0

    .line 102
    :cond_3
    const-string v5, "time"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 103
    .local v19, "timeStr":Ljava/lang/String;
    if-nez v19, :cond_4

    move-object/from16 v2, v20

    .line 104
    .end local v20    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    .restart local v2    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    goto :goto_1

    .line 107
    .end local v2    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    .restart local v20    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    :cond_4
    const-string v5, "period"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 109
    .local v18, "period":Ljava/lang/String;
    :try_start_0
    const-string v5, "Year"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 110
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v5, "MM-dd HH:mm:ss"

    invoke-direct {v14, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 111
    .local v14, "format":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 112
    .local v11, "date":Ljava/util/Date;
    invoke-virtual {v11}, Ljava/util/Date;->getMonth()I

    move-result v3

    .line 113
    .local v3, "month":I
    invoke-virtual {v11}, Ljava/util/Date;->getDate()I

    move-result v4

    .line 114
    .local v4, "dayOfMonth":I
    const-string v5, "OneShotTimerTrigger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " month "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " day "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v2, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;

    invoke-virtual {v11}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v11}, Ljava/util/Date;->getMinutes()I

    move-result v6

    .line 116
    invoke-virtual {v11}, Ljava/util/Date;->getSeconds()I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;-><init>(IIIII)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v3    # "month":I
    .end local v4    # "dayOfMonth":I
    .end local v20    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    .restart local v2    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    :goto_2
    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 117
    .end local v2    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    .end local v11    # "date":Ljava/util/Date;
    .end local v14    # "format":Ljava/text/SimpleDateFormat;
    .restart local v20    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    :cond_5
    :try_start_1
    const-string v5, "Month"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 118
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v5, "dd HH:mm:ss"

    invoke-direct {v14, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 119
    .restart local v14    # "format":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 120
    .restart local v11    # "date":Ljava/util/Date;
    invoke-virtual {v11}, Ljava/util/Date;->getDate()I

    move-result v5

    int-to-long v6, v5

    .line 121
    .local v6, "dayOfMonth":J
    const-string v5, "OneShotTimerTrigger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " day "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v2, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;

    invoke-virtual {v11}, Ljava/util/Date;->getHours()I

    move-result v8

    invoke-virtual {v11}, Ljava/util/Date;->getMinutes()I

    move-result v9

    .line 123
    invoke-virtual {v11}, Ljava/util/Date;->getSeconds()I

    move-result v10

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;-><init>(JIII)V

    .line 124
    .end local v20    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    .restart local v2    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    goto :goto_2

    .end local v2    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    .end local v6    # "dayOfMonth":J
    .end local v11    # "date":Ljava/util/Date;
    .end local v14    # "format":Ljava/text/SimpleDateFormat;
    .restart local v20    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    :cond_6
    const-string v5, "Week"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 125
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v5, "d HH:mm:ss"

    invoke-direct {v14, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 126
    .restart local v14    # "format":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 127
    .restart local v11    # "date":Ljava/util/Date;
    invoke-virtual {v11}, Ljava/util/Date;->getDate()I

    move-result v12

    .line 128
    .local v12, "dayOfWeek":I
    const-string v5, "OneShotTimerTrigger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " week "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v2, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;

    invoke-virtual {v11}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v11}, Ljava/util/Date;->getMinutes()I

    move-result v8

    invoke-virtual {v11}, Ljava/util/Date;->getSeconds()I

    move-result v9

    invoke-direct {v2, v12, v5, v8, v9}, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;-><init>(IIII)V

    .line 130
    .end local v20    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    .restart local v2    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    goto/16 :goto_2

    .line 131
    .end local v2    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    .end local v11    # "date":Ljava/util/Date;
    .end local v12    # "dayOfWeek":I
    .end local v14    # "format":Ljava/text/SimpleDateFormat;
    .restart local v20    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    :cond_7
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm:ss"

    invoke-direct {v14, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 132
    .restart local v14    # "format":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 133
    .restart local v11    # "date":Ljava/util/Date;
    new-instance v2, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;

    invoke-virtual {v11}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v11}, Ljava/util/Date;->getMinutes()I

    move-result v8

    invoke-virtual {v11}, Ljava/util/Date;->getSeconds()I

    move-result v9

    invoke-direct {v2, v5, v8, v9}, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;-><init>(III)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v20    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    .restart local v2    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    goto/16 :goto_2

    .line 135
    .end local v2    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    .end local v11    # "date":Ljava/util/Date;
    .end local v14    # "format":Ljava/text/SimpleDateFormat;
    .restart local v20    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    :catch_0
    move-exception v13

    .line 136
    .local v13, "e":Ljava/text/ParseException;
    const-string v5, "OneShotTimerTrigger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while parsing time "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v20

    .line 137
    .end local v20    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    .restart local v2    # "trigger":Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;
    goto/16 :goto_1
.end method

.method private initialize(III)V
    .locals 9
    .param p1, "h"    # I
    .param p2, "m"    # I
    .param p3, "s"    # I

    .prologue
    const/4 v4, 0x0

    .line 77
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x1c20

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v8

    .line 78
    .local v8, "randomTime":I
    const-string v0, "OneShotTimerTrigger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "randomTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;

    add-int v3, p3, v8

    const/16 v7, 0x5460

    move v1, p1

    move v2, p2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mSpanTrigger:Lcom/huawei/opcollect/strategy/SpanTimerTrigger;

    .line 81
    return-void
.end method


# virtual methods
.method public checkTrigger(Ljava/util/Calendar;JJLcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;)Z
    .locals 8
    .param p1, "calNow"    # Ljava/util/Calendar;
    .param p2, "secondOfDay"    # J
    .param p4, "rtNow"    # J
    .param p6, "nxtTimer"    # Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x5

    .line 155
    iget v1, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mPeriodType:I

    packed-switch v1, :pswitch_data_0

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 159
    :pswitch_0
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 178
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mSpanTrigger:Lcom/huawei/opcollect/strategy/SpanTimerTrigger;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->checkTrigger(Ljava/util/Calendar;JJLcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;)Z

    move-result v0

    goto :goto_0

    .line 164
    :pswitch_2
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 169
    :pswitch_3
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 170
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x5

    .line 188
    iget-object v3, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mSpanTrigger:Lcom/huawei/opcollect/strategy/SpanTimerTrigger;

    invoke-virtual {v3}, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->getStartTime()J

    move-result-wide v4

    .line 189
    .local v4, "startTime":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "prefix2":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "<-OneShotTimerTrigger->"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 191
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "mStartTime: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 192
    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectUtils;->formatTimeInSecond(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget v3, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mPeriodType:I

    packed-switch v3, :pswitch_data_0

    .line 212
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 195
    :pswitch_0
    const-string v3, " every day"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 198
    :pswitch_1
    const-string v3, " every "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0x1e

    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 202
    :pswitch_2
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " every month"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 205
    :pswitch_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "MMM d"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 206
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v3, " every "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
