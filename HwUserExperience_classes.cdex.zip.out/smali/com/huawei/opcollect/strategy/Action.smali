.class public Lcom/huawei/opcollect/strategy/Action;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "Action"

.field private static volatile mObjectNum:J

.field private static objectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionTriggerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private eventTimerTriggerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/opcollect/strategy/EventTimerTrigger;",
            ">;"
        }
    .end annotation
.end field

.field private eventTriggerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mDailyRecordNum:I

.field private mEnable:Z

.field private mIntervalMin:J

.field private mLastExecuteTime:J

.field private mMaxRecordOneDay:I

.field private mName:Ljava/lang/String;

.field private mTimeDisable:Z

.field private timeDisableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/opcollect/strategy/TimeDisable;",
            ">;"
        }
    .end annotation
.end field

.field private timerTriggerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/opcollect/strategy/ITimerTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/strategy/Action;->LOCK:Ljava/lang/Object;

    .line 40
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/huawei/opcollect/strategy/Action;->mObjectNum:J

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/strategy/Action;->objectMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/opcollect/strategy/Action;->mContext:Landroid/content/Context;

    .line 53
    iput-boolean v4, p0, Lcom/huawei/opcollect/strategy/Action;->mEnable:Z

    .line 59
    iput-boolean v4, p0, Lcom/huawei/opcollect/strategy/Action;->mTimeDisable:Z

    .line 90
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/huawei/opcollect/strategy/Action;->mIntervalMin:J

    .line 96
    const/4 v1, -0x1

    iput v1, p0, Lcom/huawei/opcollect/strategy/Action;->mMaxRecordOneDay:I

    .line 101
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/huawei/opcollect/strategy/Action;->mLastExecuteTime:J

    .line 106
    iput v4, p0, Lcom/huawei/opcollect/strategy/Action;->mDailyRecordNum:I

    .line 109
    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/opcollect/strategy/Action;->mContext:Landroid/content/Context;

    .line 112
    :cond_0
    iput-object p2, p0, Lcom/huawei/opcollect/strategy/Action;->mName:Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/huawei/opcollect/strategy/Action;->objectNumPlus()V

    .line 114
    const-string v1, "Action"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/huawei/opcollect/strategy/Action;->mObjectNum:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v1, Lcom/huawei/opcollect/strategy/Action;->objectMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->mName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    sget-object v1, Lcom/huawei/opcollect/strategy/Action;->objectMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->mName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 118
    .local v0, "val":I
    sget-object v1, Lcom/huawei/opcollect/strategy/Action;->objectMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .end local v0    # "val":I
    :goto_0
    return-void

    .line 120
    :cond_1
    sget-object v1, Lcom/huawei/opcollect/strategy/Action;->objectMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->mName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private addTimerTrigger(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/opcollect/strategy/ITimerTrigger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/opcollect/strategy/ITimerTrigger;>;"
    if-eqz p1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/Action;->timerTriggerList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/opcollect/strategy/Action;->timerTriggerList:Ljava/util/List;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/Action;->timerTriggerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    :cond_1
    return-void
.end method

.method private clearPolicy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Lcom/huawei/opcollect/strategy/Action;->timeDisableList:Ljava/util/List;

    .line 251
    iput-object v0, p0, Lcom/huawei/opcollect/strategy/Action;->timerTriggerList:Ljava/util/List;

    .line 252
    iput-object v0, p0, Lcom/huawei/opcollect/strategy/Action;->eventTimerTriggerList:Ljava/util/List;

    .line 253
    iput-object v0, p0, Lcom/huawei/opcollect/strategy/Action;->eventTriggerList:Ljava/util/List;

    .line 254
    iput-object v0, p0, Lcom/huawei/opcollect/strategy/Action;->actionTriggerList:Ljava/util/List;

    .line 255
    return-void
.end method

.method private connectString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "prefix2"    # Ljava/lang/String;
    .param p3, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 586
    const-string v3, "):"

    .line 587
    .local v3, "suffix":Ljava/lang/String;
    iget-object v6, p0, Lcom/huawei/opcollect/strategy/Action;->timeDisableList:Ljava/util/List;

    if-nez v6, :cond_5

    .line 588
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "timeDisableList is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    :cond_0
    iget-object v6, p0, Lcom/huawei/opcollect/strategy/Action;->timerTriggerList:Ljava/util/List;

    if-nez v6, :cond_6

    .line 597
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "timerTriggerList is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    :cond_1
    iget-object v6, p0, Lcom/huawei/opcollect/strategy/Action;->eventTimerTriggerList:Ljava/util/List;

    if-nez v6, :cond_7

    .line 607
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "eventTimerTriggerList is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    :cond_2
    iget-object v6, p0, Lcom/huawei/opcollect/strategy/Action;->eventTriggerList:Ljava/util/List;

    if-nez v6, :cond_8

    .line 617
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "eventTriggerList is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    :cond_3
    iget-object v6, p0, Lcom/huawei/opcollect/strategy/Action;->actionTriggerList:Ljava/util/List;

    if-nez v6, :cond_9

    .line 627
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "actionTriggerList is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    :cond_4
    return-void

    .line 590
    :cond_5
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "timeDisableList("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/opcollect/strategy/Action;->timeDisableList:Ljava/util/List;

    .line 591
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    iget-object v6, p0, Lcom/huawei/opcollect/strategy/Action;->timeDisableList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/opcollect/strategy/TimeDisable;

    .line 593
    .local v4, "td":Lcom/huawei/opcollect/strategy/TimeDisable;
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, p2}, Lcom/huawei/opcollect/strategy/TimeDisable;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 599
    .end local v4    # "td":Lcom/huawei/opcollect/strategy/TimeDisable;
    :cond_6
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "timerTriggerList("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/opcollect/strategy/Action;->timerTriggerList:Ljava/util/List;

    .line 600
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    iget-object v6, p0, Lcom/huawei/opcollect/strategy/Action;->timerTriggerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/opcollect/strategy/ITimerTrigger;

    .line 602
    .local v5, "tt":Lcom/huawei/opcollect/strategy/ITimerTrigger;
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5, p2}, Lcom/huawei/opcollect/strategy/ITimerTrigger;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 609
    .end local v5    # "tt":Lcom/huawei/opcollect/strategy/ITimerTrigger;
    :cond_7
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "eventTimerTriggerList("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/opcollect/strategy/Action;->eventTimerTriggerList:Ljava/util/List;

    .line 610
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    iget-object v6, p0, Lcom/huawei/opcollect/strategy/Action;->eventTimerTriggerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/opcollect/strategy/EventTimerTrigger;

    .line 612
    .local v2, "ett":Lcom/huawei/opcollect/strategy/EventTimerTrigger;
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, p2}, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 619
    .end local v2    # "ett":Lcom/huawei/opcollect/strategy/EventTimerTrigger;
    :cond_8
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "eventTriggerList("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/opcollect/strategy/Action;->eventTriggerList:Ljava/util/List;

    .line 620
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    iget-object v6, p0, Lcom/huawei/opcollect/strategy/Action;->eventTriggerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 622
    .local v1, "et":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 629
    .end local v1    # "et":Ljava/lang/String;
    :cond_9
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "actionTriggerList("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/opcollect/strategy/Action;->actionTriggerList:Ljava/util/List;

    .line 630
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    iget-object v6, p0, Lcom/huawei/opcollect/strategy/Action;->actionTriggerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 632
    .local v0, "at":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 551
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\\-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, "prefix2":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "<--Action Object("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/huawei/opcollect/strategy/Action;->objectMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")-->"

    .line 553
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 554
    .local v3, "sb":Ljava/lang/StringBuilder;
    sget-object v5, Lcom/huawei/opcollect/strategy/Action;->objectMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 555
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 556
    .local v4, "val":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 557
    .local v1, "name":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 559
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "val":I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method private static objectMinus()V
    .locals 6

    .prologue
    .line 167
    sget-object v1, Lcom/huawei/opcollect/strategy/Action;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    sget-wide v2, Lcom/huawei/opcollect/strategy/Action;->mObjectNum:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/huawei/opcollect/strategy/Action;->mObjectNum:J

    .line 169
    monitor-exit v1

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static objectNumPlus()V
    .locals 6

    .prologue
    .line 161
    sget-object v1, Lcom/huawei/opcollect/strategy/Action;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    sget-wide v2, Lcom/huawei/opcollect/strategy/Action;->mObjectNum:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/huawei/opcollect/strategy/Action;->mObjectNum:J

    .line 163
    monitor-exit v1

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private parseFromJson(Ljava/lang/String;)V
    .locals 4
    .param p1, "jsonData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 173
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, "rootJson":Lorg/json/JSONObject;
    const-string v2, "LoopTimerTrigger"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 179
    .local v0, "policyJson":Lorg/json/JSONArray;
    if-eqz v0, :cond_2

    .line 180
    invoke-static {v0}, Lcom/huawei/opcollect/strategy/LoopTimerTrigger;->fromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/opcollect/strategy/Action;->addTimerTrigger(Ljava/util/List;)V

    .line 182
    :cond_2
    const-string v2, "OneShotTimerTrigger"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_3

    .line 184
    invoke-static {v0}, Lcom/huawei/opcollect/strategy/OneShotTimerTrigger;->fromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/opcollect/strategy/Action;->addTimerTrigger(Ljava/util/List;)V

    .line 186
    :cond_3
    const-string v2, "SpanTimerTrigger"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_4

    .line 188
    invoke-static {v0}, Lcom/huawei/opcollect/strategy/SpanTimerTrigger;->fromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/opcollect/strategy/Action;->addTimerTrigger(Ljava/util/List;)V

    .line 191
    :cond_4
    const-string v2, "EventTimerTrigger"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_6

    .line 193
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->eventTimerTriggerList:Ljava/util/List;

    if-nez v2, :cond_5

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->eventTimerTriggerList:Ljava/util/List;

    .line 196
    :cond_5
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->eventTimerTriggerList:Ljava/util/List;

    invoke-static {v0}, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->fromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    :cond_6
    const-string v2, "EventTrigger"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_8

    .line 202
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->eventTriggerList:Ljava/util/List;

    if-nez v2, :cond_7

    .line 203
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->eventTriggerList:Ljava/util/List;

    .line 205
    :cond_7
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->eventTriggerList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/huawei/opcollect/strategy/Action;->parseStringArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    :cond_8
    const-string v2, "ActionTrigger"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_a

    .line 211
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->actionTriggerList:Ljava/util/List;

    if-nez v2, :cond_9

    .line 212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->actionTriggerList:Ljava/util/List;

    .line 214
    :cond_9
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->actionTriggerList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/huawei/opcollect/strategy/Action;->parseStringArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    :cond_a
    const-string v2, "TimeDisable"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    .line 219
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->timeDisableList:Ljava/util/List;

    if-nez v2, :cond_b

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->timeDisableList:Ljava/util/List;

    .line 222
    :cond_b
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->timeDisableList:Ljava/util/List;

    invoke-static {v0}, Lcom/huawei/opcollect/strategy/TimeDisable;->fromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method private parseStringArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .param p1, "jsonObj"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 229
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 230
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    return-object v2
.end method

.method private updateTimeDisable(Ljava/util/Calendar;JLcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;)V
    .locals 4
    .param p1, "calNow"    # Ljava/util/Calendar;
    .param p2, "secondOfDay"    # J
    .param p4, "nxtTimer"    # Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;

    .prologue
    .line 452
    const/4 v0, 0x0

    .line 454
    .local v0, "disable":Z
    iget-object v3, p0, Lcom/huawei/opcollect/strategy/Action;->timeDisableList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 466
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v3, p0, Lcom/huawei/opcollect/strategy/Action;->timeDisableList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 459
    .local v2, "listSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 460
    iget-object v3, p0, Lcom/huawei/opcollect/strategy/Action;->timeDisableList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/opcollect/strategy/TimeDisable;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/huawei/opcollect/strategy/TimeDisable;->checkDisable(Ljava/util/Calendar;JLcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 461
    const/4 v0, 0x1

    .line 459
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 465
    :cond_2
    iput-boolean v0, p0, Lcom/huawei/opcollect/strategy/Action;->mTimeDisable:Z

    goto :goto_0
.end method


# virtual methods
.method public checkActionTriggers(Ljava/lang/String;)Z
    .locals 1
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 537
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/Action;->actionTriggerList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/opcollect/strategy/Action;->isEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 538
    :cond_0
    const/4 v0, 0x0

    .line 541
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/Action;->actionTriggerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public checkEventTriggers(Ljava/lang/String;)Z
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 516
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->eventTimerTriggerList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 517
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->eventTimerTriggerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 518
    .local v1, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 519
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->eventTimerTriggerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/opcollect/strategy/EventTimerTrigger;

    invoke-virtual {v2, p1}, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->startTimer(Ljava/lang/String;)Z

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    .end local v0    # "i":I
    .end local v1    # "listSize":I
    :cond_0
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->eventTriggerList:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/huawei/opcollect/strategy/Action;->isEnable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 524
    :cond_1
    const/4 v2, 0x0

    .line 527
    :goto_1
    return v2

    :cond_2
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->eventTriggerList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1
.end method

.method public checkTimerTriggers(Ljava/util/Calendar;JJLcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;)Z
    .locals 12
    .param p1, "calNow"    # Ljava/util/Calendar;
    .param p2, "secondOfDay"    # J
    .param p4, "rtNow"    # J
    .param p6, "nxtTimer"    # Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;

    .prologue
    .line 480
    const/4 v9, 0x0

    .line 482
    .local v9, "active":Z
    move-object/from16 v0, p6

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/huawei/opcollect/strategy/Action;->updateTimeDisable(Ljava/util/Calendar;JLcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;)V

    .line 484
    invoke-virtual {p0}, Lcom/huawei/opcollect/strategy/Action;->isEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 485
    const/4 v2, 0x0

    .line 506
    :goto_0
    return v2

    .line 488
    :cond_0
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->timerTriggerList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 489
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->timerTriggerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    .line 490
    .local v11, "listSize":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v11, :cond_2

    .line 491
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->timerTriggerList:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/opcollect/strategy/ITimerTrigger;

    move-object v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/huawei/opcollect/strategy/ITimerTrigger;->checkTrigger(Ljava/util/Calendar;JJLcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    const/4 v9, 0x1

    .line 490
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 497
    .end local v10    # "i":I
    .end local v11    # "listSize":I
    :cond_2
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->eventTimerTriggerList:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 498
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->eventTimerTriggerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    .line 499
    .restart local v11    # "listSize":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_2
    if-ge v10, v11, :cond_4

    .line 500
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->eventTimerTriggerList:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/opcollect/strategy/EventTimerTrigger;

    move-object v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/huawei/opcollect/strategy/EventTimerTrigger;->checkTrigger(Ljava/util/Calendar;JJLcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 501
    const/4 v9, 0x1

    .line 499
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .end local v10    # "i":I
    .end local v11    # "listSize":I
    :cond_4
    move v2, v9

    .line 506
    goto :goto_0
.end method

.method public destroy()Z
    .locals 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/huawei/opcollect/strategy/Action;->mEnable:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/huawei/opcollect/strategy/Action;->disable()V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/Action;->mName:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/Action;->mName:Ljava/lang/String;

    const-string v1, "disable"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/opcollect/strategy/Action;->mEnable:Z

    .line 288
    return-void
.end method

.method public dump(ILjava/io/PrintWriter;)V
    .locals 8
    .param p1, "indentNum"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 569
    if-nez p2, :cond_0

    .line 583
    :goto_0
    return-void

    .line 572
    :cond_0
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s\\-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, " "

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "prefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<--"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/huawei/opcollect/strategy/Action;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 574
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/huawei/opcollect/strategy/Action;->mEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 575
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mTimeDisable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/huawei/opcollect/strategy/Action;->mTimeDisable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 576
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mIntervalMin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/Action;->mIntervalMin:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 577
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mMaxRecordOneday: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/huawei/opcollect/strategy/Action;->mMaxRecordOneDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 578
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mLastExecuteTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/Action;->mLastExecuteTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 579
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mDailyRecordNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/huawei/opcollect/strategy/Action;->mDailyRecordNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "prefix2":Ljava/lang/String;
    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/opcollect/strategy/Action;->connectString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 582
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/opcollect/strategy/Action;->mEnable:Z

    .line 280
    return-void
.end method

.method protected execute()Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method protected executeWithArgs(Lcom/huawei/opcollect/strategy/AbsActionParam;)Z
    .locals 1
    .param p1, "absActionParam"    # Lcom/huawei/opcollect/strategy/AbsActionParam;

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lcom/huawei/opcollect/strategy/Action;->objectMinus()V

    .line 132
    const-string v1, "Action"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action remains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/huawei/opcollect/strategy/Action;->mObjectNum:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v1, Lcom/huawei/opcollect/strategy/Action;->objectMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->mName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    sget-object v1, Lcom/huawei/opcollect/strategy/Action;->objectMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->mName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 136
    .local v0, "val":I
    if-gtz v0, :cond_0

    .line 137
    sget-object v1, Lcom/huawei/opcollect/strategy/Action;->objectMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->mName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .end local v0    # "val":I
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 145
    return-void

    .line 139
    .restart local v0    # "val":I
    :cond_0
    sget-object v1, Lcom/huawei/opcollect/strategy/Action;->objectMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/huawei/opcollect/strategy/Action;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 142
    .end local v0    # "val":I
    :cond_1
    const-string v1, "Action"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/huawei/opcollect/strategy/Action;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " will destroy an object that is not found in the objectMap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDailyRecordNum()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/huawei/opcollect/strategy/Action;->mDailyRecordNum:I

    return v0
.end method

.method public getIntervalMin()I
    .locals 2

    .prologue
    .line 316
    iget-wide v0, p0, Lcom/huawei/opcollect/strategy/Action;->mIntervalMin:J

    long-to-int v0, v0

    return v0
.end method

.method public getMaxRecordOneday()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/huawei/opcollect/strategy/Action;->mMaxRecordOneDay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/Action;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/huawei/opcollect/strategy/Action;->mTimeDisable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/opcollect/strategy/Action;->mEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNewDay(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calNow"    # Ljava/util/Calendar;

    .prologue
    .line 348
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/opcollect/strategy/Action;->mDailyRecordNum:I

    .line 349
    return-void
.end method

.method public perform()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 416
    invoke-virtual {p0}, Lcom/huawei/opcollect/strategy/Action;->isEnable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 417
    const-string v3, "Action"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huawei/opcollect/strategy/Action;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is disable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :goto_0
    return v2

    .line 421
    :cond_0
    iget v3, p0, Lcom/huawei/opcollect/strategy/Action;->mMaxRecordOneDay:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/huawei/opcollect/strategy/Action;->mDailyRecordNum:I

    iget v4, p0, Lcom/huawei/opcollect/strategy/Action;->mMaxRecordOneDay:I

    if-lt v3, v4, :cond_1

    .line 422
    const-string v3, "Action"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huawei/opcollect/strategy/Action;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is overlimit, current:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/huawei/opcollect/strategy/Action;->mDailyRecordNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", max:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/huawei/opcollect/strategy/Action;->mMaxRecordOneDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 428
    .local v0, "nowRealTime":J
    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/Action;->mIntervalMin:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/Action;->mLastExecuteTime:J

    sub-long v4, v0, v4

    iget-wide v6, p0, Lcom/huawei/opcollect/strategy/Action;->mIntervalMin:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 429
    const-string v3, "Action"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huawei/opcollect/strategy/Action;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " executed frequently"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/opcollect/strategy/Action;->execute()Z

    move-result v3

    if-nez v3, :cond_3

    .line 434
    const-string v3, "Action"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huawei/opcollect/strategy/Action;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " execution failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 437
    :cond_3
    const-string v2, "Action"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huawei/opcollect/strategy/Action;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " executed successfully"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget v2, p0, Lcom/huawei/opcollect/strategy/Action;->mDailyRecordNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/huawei/opcollect/strategy/Action;->mDailyRecordNum:I

    .line 439
    iput-wide v0, p0, Lcom/huawei/opcollect/strategy/Action;->mLastExecuteTime:J

    .line 440
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method protected performWithArgs(Lcom/huawei/opcollect/strategy/AbsActionParam;)Z
    .locals 8
    .param p1, "absActionParam"    # Lcom/huawei/opcollect/strategy/AbsActionParam;

    .prologue
    const/4 v2, 0x0

    .line 377
    invoke-virtual {p0}, Lcom/huawei/opcollect/strategy/Action;->isEnable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 378
    const-string v3, "Action"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huawei/opcollect/strategy/Action;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is disable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :goto_0
    return v2

    .line 382
    :cond_0
    iget v3, p0, Lcom/huawei/opcollect/strategy/Action;->mMaxRecordOneDay:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/huawei/opcollect/strategy/Action;->mDailyRecordNum:I

    iget v4, p0, Lcom/huawei/opcollect/strategy/Action;->mMaxRecordOneDay:I

    if-lt v3, v4, :cond_1

    if-eqz p1, :cond_1

    .line 383
    invoke-virtual {p1}, Lcom/huawei/opcollect/strategy/AbsActionParam;->isCheckMaxRecordOneDay()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    const-string v3, "Action"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huawei/opcollect/strategy/Action;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is overlimit, current:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/huawei/opcollect/strategy/Action;->mDailyRecordNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", max:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/huawei/opcollect/strategy/Action;->mMaxRecordOneDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 390
    .local v0, "nowRealTime":J
    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/Action;->mIntervalMin:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/Action;->mLastExecuteTime:J

    sub-long v4, v0, v4

    iget-wide v6, p0, Lcom/huawei/opcollect/strategy/Action;->mIntervalMin:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    if-eqz p1, :cond_2

    .line 391
    invoke-virtual {p1}, Lcom/huawei/opcollect/strategy/AbsActionParam;->isCheckMinInterval()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 392
    const-string v3, "Action"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huawei/opcollect/strategy/Action;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " executed frequently"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_2
    invoke-virtual {p0, p1}, Lcom/huawei/opcollect/strategy/Action;->executeWithArgs(Lcom/huawei/opcollect/strategy/AbsActionParam;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 397
    const-string v3, "Action"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huawei/opcollect/strategy/Action;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " execution failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 400
    :cond_3
    const-string v2, "Action"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huawei/opcollect/strategy/Action;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " executed successfully"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/huawei/opcollect/strategy/AbsActionParam;->isCheckMaxRecordOneDay()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 402
    iget v2, p0, Lcom/huawei/opcollect/strategy/Action;->mDailyRecordNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/huawei/opcollect/strategy/Action;->mDailyRecordNum:I

    .line 404
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/huawei/opcollect/strategy/AbsActionParam;->isCheckMinInterval()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 405
    iput-wide v0, p0, Lcom/huawei/opcollect/strategy/Action;->mLastExecuteTime:J

    .line 407
    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method protected queryDailyRecordNum(Ljava/lang/Class;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/huawei/odmf/core/AManagedObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    .line 331
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 332
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 333
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 334
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 335
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 336
    .local v1, "midnight":Ljava/util/Date;
    const-string v4, "Action"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "midnight: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {p1}, Lcom/huawei/nb/query/Query;->select(Ljava/lang/Class;)Lcom/huawei/nb/query/Query;

    move-result-object v4

    const-string v5, "mTimeStamp"

    invoke-virtual {v4, v5, v1}, Lcom/huawei/nb/query/Query;->greaterThanOrEqualTo(Ljava/lang/String;Ljava/util/Date;)Lcom/huawei/nb/query/Query;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Lcom/huawei/nb/query/Query;->count(Ljava/lang/String;)Lcom/huawei/nb/query/Query;

    move-result-object v3

    .line 338
    .local v3, "query":Lcom/huawei/nb/query/Query;
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getOdmfHelper()Lcom/huawei/opcollect/odmf/OdmfHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/huawei/opcollect/odmf/OdmfHelper;->queryManageObjectCount(Lcom/huawei/nb/query/Query;)J

    move-result-wide v4

    long-to-int v2, v4

    .line 339
    .local v2, "num":I
    return v2
.end method

.method public setCollectPolicy(Ljava/lang/String;)V
    .locals 4
    .param p1, "jsonPolicy"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/Action;->clearPolicy()V

    .line 243
    :try_start_0
    invoke-direct {p0, p1}, Lcom/huawei/opcollect/strategy/Action;->parseFromJson(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "Action"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while parsing json "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDailyRecordNum(I)V
    .locals 0
    .param p1, "dailyRecordNum"    # I

    .prologue
    .line 308
    iput p1, p0, Lcom/huawei/opcollect/strategy/Action;->mDailyRecordNum:I

    .line 309
    return-void
.end method

.method public setIntervalMin(I)V
    .locals 2
    .param p1, "minInterval"    # I

    .prologue
    .line 304
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/huawei/opcollect/strategy/Action;->mIntervalMin:J

    .line 305
    return-void
.end method

.method public setMaxRecordOneday(I)V
    .locals 0
    .param p1, "maxNum"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/huawei/opcollect/strategy/Action;->mMaxRecordOneDay:I

    .line 301
    return-void
.end method
