.class public Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;
.super Ljava/lang/Object;
.source "DifferentialPrivacyScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;
    }
.end annotation


# static fields
.field private static final ACQUISITION_INIT:I = 0x0

.field private static final ONE_DAY_MAX_HOURS:I = 0x18

.field private static final RE_MONTH_COUNT_TAG:Ljava/lang/String; = "DPRetentionMonthlyCount"

.field private static final RE_MONTH_TIMER_TAG:Ljava/lang/String; = "DPRetentionMonthlyTimer"

.field private static final RE_WEEK_COUNT_TAG:Ljava/lang/String; = "DPRetentionWeeklyCount"

.field private static final RE_WEEK_TIMER_TAG:Ljava/lang/String; = "DPRetentionWeeklyTimer"

.field private static final SEPARATION:Ljava/lang/String; = "|"

.field private static final TAG:Ljava/lang/String; = "BD.DifferentialPrivacyScheduler"

.field private static final TIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss.SSSZ"

.field private static final UPDATE_DAILY:I = 0x0

.field private static final UPDATE_MONTHLY:I = 0x2

.field private static final UPDATE_WEEKLY:I = 0x1

.field private static dataForRetention:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;


# instance fields
.field private context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->instance:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->dataForRetention:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$1;

    invoke-direct {v0, p0}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$1;-><init>(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;)V

    iput-object v0, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->setDifferentialPrivacyUpdateAlarm()V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->isContextIllegal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->updateEventUsageData(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->dpDataUpdateForUsage(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->isNeedDiffPrvacyForRetention(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->dpDataUpdateForRetention(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->setNextDiffPrivacyRetionWeeklyTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->setNextDiffPrivacyRetionMonthlyTimer()V

    return-void
.end method

.method static synthetic access$800(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->context:Landroid/content/Context;

    return-object v0
.end method

.method private cacheDiffPrivacyBaseData(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "dataSetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p3, "dpSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 566
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 567
    .local v0, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 568
    if-lez v0, :cond_0

    .line 569
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    :cond_0
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 575
    return-void
.end method

.method private clearDataList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, "dpSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "dpDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "dpYnDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 386
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 387
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 388
    return-void
.end method

.method private constructDifferentialPrivacyData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/huawei/bd/events/DifferentialPrivacyEvent;
    .locals 4
    .param p1, "datasetId"    # Ljava/lang/String;
    .param p2, "statTag"    # Ljava/lang/String;
    .param p3, "dpSource"    # Ljava/lang/String;
    .param p5, "dpParam"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/huawei/bd/events/DifferentialPrivacyEvent;"
        }
    .end annotation

    .prologue
    .line 579
    .local p4, "dpData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/huawei/bd/events/DifferentialPrivacyEvent;

    invoke-direct {v0}, Lcom/huawei/bd/events/DifferentialPrivacyEvent;-><init>()V

    .line 580
    .local v0, "diffPrivacyEvent":Lcom/huawei/bd/events/DifferentialPrivacyEvent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->setRecordTime(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v0, p1}, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->setDataSetId(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v0, p2}, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->setStatTag(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v0, p3}, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->setDiffPrivacySource(Ljava/lang/String;)V

    .line 584
    invoke-direct {p0, p4, p5}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->executeDifferentialPrivacy(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->setDiffPrivacyOutput(Ljava/lang/String;)V

    .line 585
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/huawei/bd/events/DifferentialPrivacyEvent;->setPriority(I)V

    .line 586
    return-object v0
.end method

.method private differentialPrivacyEventData(ILjava/lang/String;Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;Landroid/database/Cursor;)V
    .locals 22
    .param p1, "updateType"    # I
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "usageStatTag"    # Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;
    .param p4, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 325
    new-instance v15, Ljava/util/ArrayList;

    const/16 v3, 0x10

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 326
    .local v15, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/bd/events/BaseEvent;>;"
    const-string v20, ""

    .line 327
    .local v20, "pkgName":Ljava/lang/String;
    const-string v4, ""

    .line 328
    .local v4, "dataSetId":Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    const/16 v3, 0x10

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 329
    .local v18, "dpSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    const/16 v3, 0x10

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 330
    .local v7, "dpDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/util/ArrayList;

    const/16 v3, 0x10

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 332
    .local v12, "dpYnDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    :try_start_0
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 333
    const-string v3, "a"

    .line 334
    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 335
    .local v14, "currPkgName":Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    move-object/from16 v20, v14

    .line 337
    move-object v4, v14

    .line 338
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7, v12}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->clearDataList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 353
    :cond_0
    :goto_1
    const-string v3, "b"

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 354
    .local v19, "eventId":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->getUsageCountByUpdatePeriod(ILandroid/database/Cursor;)I

    move-result v21

    .line 356
    .local v21, "usageCount":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-direct {v0, v4, v12, v1, v2}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->setDataForRetentionPara(Ljava/lang/String;Ljava/util/List;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 369
    .end local v14    # "currPkgName":Ljava/lang/String;
    .end local v19    # "eventId":I
    .end local v21    # "usageCount":I
    :catchall_0
    move-exception v3

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    .line 370
    throw v3

    .line 339
    .restart local v14    # "currPkgName":Ljava/lang/String;
    :cond_1
    :try_start_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 341
    invoke-virtual/range {p3 .. p3}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->getStatTagCount()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->transferDiffPrivacySourceList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v8, p2

    .line 340
    invoke-direct/range {v3 .. v8}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->constructDifferentialPrivacyData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/huawei/bd/events/DifferentialPrivacyEvent;

    move-result-object v16

    .line 343
    .local v16, "dpEventCount":Lcom/huawei/bd/events/DifferentialPrivacyEvent;
    invoke-virtual/range {p3 .. p3}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->getStatTagYn()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->transferDiffPrivacySourceList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v8, p0

    move-object v9, v4

    move-object/from16 v13, p2

    .line 342
    invoke-direct/range {v8 .. v13}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->constructDifferentialPrivacyData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/huawei/bd/events/DifferentialPrivacyEvent;

    move-result-object v17

    .line 344
    .local v17, "dpEventYn":Lcom/huawei/bd/events/DifferentialPrivacyEvent;
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-virtual/range {p3 .. p3}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->isSavePref()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 347
    invoke-virtual/range {p3 .. p3}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v4, v1}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->cacheDiffPrivacyBaseData(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/util/List;)V

    .line 349
    :cond_2
    move-object/from16 v20, v14

    .line 350
    move-object v4, v14

    .line 351
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7, v12}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->clearDataList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_1

    .line 360
    .end local v14    # "currPkgName":Ljava/lang/String;
    .end local v16    # "dpEventCount":Lcom/huawei/bd/events/DifferentialPrivacyEvent;
    .end local v17    # "dpEventYn":Lcom/huawei/bd/events/DifferentialPrivacyEvent;
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->getStatTagCount()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->transferDiffPrivacySourceList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v8, p2

    .line 359
    invoke-direct/range {v3 .. v8}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->constructDifferentialPrivacyData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/huawei/bd/events/DifferentialPrivacyEvent;

    move-result-object v16

    .line 362
    .restart local v16    # "dpEventCount":Lcom/huawei/bd/events/DifferentialPrivacyEvent;
    invoke-virtual/range {p3 .. p3}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->getStatTagYn()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->transferDiffPrivacySourceList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v8, p0

    move-object v9, v4

    move-object/from16 v13, p2

    .line 361
    invoke-direct/range {v8 .. v13}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->constructDifferentialPrivacyData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/huawei/bd/events/DifferentialPrivacyEvent;

    move-result-object v17

    .line 363
    .restart local v17    # "dpEventYn":Lcom/huawei/bd/events/DifferentialPrivacyEvent;
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual/range {p3 .. p3}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->isSavePref()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 366
    invoke-virtual/range {p3 .. p3}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v4, v1}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->cacheDiffPrivacyBaseData(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    :cond_4
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    .line 371
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v15}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->saveDiffPrivacyEvent(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;Ljava/util/List;)V

    .line 372
    return-void
.end method

.method private dpDataUpdateForRetention(I)V
    .locals 20
    .param p1, "updateType"    # I

    .prologue
    .line 418
    const-string v2, "BD.DifferentialPrivacyScheduler"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "differential privacy data update(retention), update type : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v2, "hiview_bitshistogram"

    invoke-static {v2}, Lcom/huawei/bd/utils/BigDataUtils;->getDiffPrivacyParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 420
    .local v7, "param":Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    :cond_0
    const-string v2, "BD.DifferentialPrivacyScheduler"

    const-string v17, "differential privacy parameter is empty."

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->getStatTagByUpdateType(I)Ljava/lang/String;

    move-result-object v4

    .line 426
    .local v4, "statTag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->context:Landroid/content/Context;

    const-string v17, "DiffPrivacyBase_Info"

    const/16 v18, 0x0

    .line 427
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 428
    .local v15, "prefs":Landroid/content/SharedPreferences;
    if-nez v15, :cond_2

    .line 429
    const-string v2, "BD.DifferentialPrivacyScheduler"

    const-string v17, "diffprivacy shared prefs is null."

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_2
    invoke-interface {v15}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    .line 433
    .local v8, "appCounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 434
    :cond_3
    const-string v2, "BD.DifferentialPrivacyScheduler"

    const-string v17, "diffprivacy base info is empty."

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 438
    .local v9, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/bd/events/BaseEvent;>;"
    const-string v3, ""

    .line 439
    .local v3, "dataSetId":Ljava/lang/String;
    const-string v12, ""

    .line 440
    .local v12, "eventIdStr":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 441
    .local v6, "dpReDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 442
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "dataSetId":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 443
    .restart local v3    # "dataSetId":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "eventIdStr":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 444
    .restart local v12    # "eventIdStr":Ljava/lang/String;
    const-string v2, "\\|"

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 445
    .local v13, "eventIds":[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    array-length v2, v13

    if-ge v14, v2, :cond_6

    .line 446
    sget-object v2, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->dataForRetention:Ljava/util/Map;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "|"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v13, v14

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 447
    .local v16, "value":Ljava/lang/Object;
    if-nez v16, :cond_5

    .line 448
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v16    # "value":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 450
    .restart local v16    # "value":Ljava/lang/Object;
    :cond_5
    check-cast v16, Ljava/lang/Integer;

    .end local v16    # "value":Ljava/lang/Object;
    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 453
    :cond_6
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->transferDiffPrivacySourceList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .local v5, "dpSource":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 455
    invoke-direct/range {v2 .. v7}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->constructDifferentialPrivacyData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/huawei/bd/events/DifferentialPrivacyEvent;

    move-result-object v10

    .line 456
    .local v10, "dpEventRe":Lcom/huawei/bd/events/DifferentialPrivacyEvent;
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 459
    .end local v5    # "dpSource":Ljava/lang/String;
    .end local v10    # "dpEventRe":Lcom/huawei/bd/events/DifferentialPrivacyEvent;
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v13    # "eventIds":[Ljava/lang/String;
    .end local v14    # "i":I
    :cond_7
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v2

    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v2, v9, v0}, Lcom/huawei/bd/collector/BigDataCollector;->saveEvent(Ljava/util/List;I)V

    .line 460
    sget-object v2, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->dataForRetention:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto/16 :goto_0
.end method

.method private dpDataUpdateForUsage(I)V
    .locals 9
    .param p1, "updateType"    # I

    .prologue
    const/4 v2, 0x0

    .line 308
    const-string v3, "BD.DifferentialPrivacyScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "differential privacy data update(usage), update type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v3, "hiview_bitshistogram"

    invoke-static {v3}, Lcom/huawei/bd/utils/BigDataUtils;->getDiffPrivacyParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, "param":Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 311
    :cond_0
    const-string v2, "BD.DifferentialPrivacyScheduler"

    const-string v3, "differential privacy parameter is empty."

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_1
    :goto_0
    return-void

    .line 315
    :cond_2
    new-instance v3, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;

    invoke-direct {v3, p0, p1}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;-><init>(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;I)V

    invoke-virtual {v3}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->invoke()Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;

    move-result-object v8

    .line 316
    .local v8, "usageStatTag":Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;
    const-string v3, "content://com.huawei.bd.provider.BDProvider/eui"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 317
    .local v1, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 318
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v5, "a"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 319
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 320
    invoke-direct {p0, p1, v7, v8, v6}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->differentialPrivacyEventData(ILjava/lang/String;Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private executeDifferentialPrivacy(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p2, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 590
    .local p1, "dpData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v4, ""

    .line 591
    .local v4, "result":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v1, v5, [I

    .line 592
    .local v1, "dpDataArray":[I
    const/4 v3, 0x0

    .line 593
    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 594
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v3

    .line 595
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 598
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/huawei/privacyability/DiffPrivacyManager;->getInstance()Lcom/huawei/privacyability/DiffPrivacyManager;

    move-result-object v0

    .line 599
    .local v0, "diffPrivacyManager":Lcom/huawei/privacyability/DiffPrivacyManager;
    invoke-virtual {v0, v1, p2}, Lcom/huawei/privacyability/DiffPrivacyManager;->diffPrivacyBitshistogram([ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 603
    .end local v0    # "diffPrivacyManager":Lcom/huawei/privacyability/DiffPrivacyManager;
    :goto_1
    return-object v4

    .line 600
    :catch_0
    move-exception v2

    .line 601
    .local v2, "e":Lcom/huawei/android/util/NoExtAPIException;
    const-string v5, "BD.DifferentialPrivacyScheduler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NoExtAPIException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/huawei/android/util/NoExtAPIException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;
    .locals 2

    .prologue
    .line 119
    const-class v1, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->instance:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    invoke-direct {v0}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;-><init>()V

    sput-object v0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->instance:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    .line 122
    :cond_0
    sget-object v0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->instance:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getStatTagByUpdateType(I)Ljava/lang/String;
    .locals 1
    .param p1, "updateType"    # I

    .prologue
    .line 464
    const-string v0, ""

    .line 465
    .local v0, "statTag":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 478
    :goto_0
    return-object v0

    .line 467
    :pswitch_0
    const-string v0, "DAILY|RETENTION_REATE"

    .line 468
    goto :goto_0

    .line 470
    :pswitch_1
    const-string v0, "WEEKLY|RETENTION_REATE"

    .line 471
    goto :goto_0

    .line 473
    :pswitch_2
    const-string v0, "MONTHLY|RETENTION_REATE"

    .line 474
    goto :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getUsageCountByUpdatePeriod(ILandroid/database/Cursor;)I
    .locals 2
    .param p1, "updateType"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "usageCount":I
    packed-switch p1, :pswitch_data_0

    .line 414
    :goto_0
    return v0

    .line 403
    :pswitch_0
    const-string v1, "e"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 404
    goto :goto_0

    .line 406
    :pswitch_1
    const-string v1, "g"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 407
    goto :goto_0

    .line 409
    :pswitch_2
    const-string v1, "i"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 410
    goto :goto_0

    .line 401
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isContextIllegal()Z
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 695
    invoke-static {}, Lcom/huawei/bd/BDApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->context:Landroid/content/Context;

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 698
    const/4 v0, 0x1

    .line 700
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedDiffPrvacyForRetention(I)Z
    .locals 14
    .param p1, "updateType"    # I

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v11, -0x1

    .line 482
    iget-object v9, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 483
    .local v3, "prefs":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss.SSSZ"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 484
    .local v4, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v8}, Ljava/text/ParsePosition;-><init>(I)V

    .line 485
    .local v2, "parsePosition":Ljava/text/ParsePosition;
    const/4 v0, 0x0

    .line 486
    .local v0, "count":I
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v7, v8

    .line 515
    :goto_0
    return v7

    .line 488
    :pswitch_0
    const-string v9, "DPRetentionWeeklyCount"

    invoke-interface {v3, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 489
    if-le v0, v11, :cond_0

    if-ge v0, v12, :cond_0

    .line 490
    const-string v9, "DPRetentionWeeklyTimer"

    invoke-interface {v3, v9, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 491
    .local v5, "timeStr":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 492
    invoke-virtual {v4, v5, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v6

    .line 493
    .local v6, "weekDate":Ljava/util/Date;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-gtz v9, :cond_0

    goto :goto_0

    .line 500
    .end local v5    # "timeStr":Ljava/lang/String;
    .end local v6    # "weekDate":Ljava/util/Date;
    :pswitch_1
    const-string v9, "DPRetentionMonthlyCount"

    invoke-interface {v3, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 501
    if-ge v11, v0, :cond_0

    if-ge v0, v12, :cond_0

    .line 502
    const-string v9, "DPRetentionMonthlyTimer"

    invoke-interface {v3, v9, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 503
    .restart local v5    # "timeStr":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 504
    invoke-virtual {v4, v5, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 505
    .local v1, "monthDate":Ljava/util/Date;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-gtz v9, :cond_0

    goto :goto_0

    .line 486
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private saveDiffPrivacyEvent(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;Ljava/util/List;)V
    .locals 2
    .param p1, "usageStatTag"    # Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/bd/events/BaseEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/bd/events/BaseEvent;>;"
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, p2, v1}, Lcom/huawei/bd/collector/BigDataCollector;->saveEvent(Ljava/util/List;I)V

    .line 392
    invoke-virtual {p1}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->isSavePref()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p1}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 394
    invoke-direct {p0}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->setNextDiffPrivacyRetionWeeklyTimer()V

    .line 395
    invoke-direct {p0}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->setNextDiffPrivacyRetionMonthlyTimer()V

    .line 397
    :cond_0
    return-void
.end method

.method private setDataForRetentionPara(Ljava/lang/String;Ljava/util/List;II)V
    .locals 5
    .param p1, "dataSetId"    # Ljava/lang/String;
    .param p3, "eventId"    # I
    .param p4, "usageCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p2, "dpYnDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 375
    if-lez p4, :cond_0

    .line 376
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->dataForRetention:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->dataForRetention:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setDifferentialPrivacyUpdateAlarm()V
    .locals 10

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->isContextIllegal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "BD.DifferentialPrivacyScheduler"

    const-string v2, "Can\'t get the context, stop running setDifferentialPrivacyUpdateAlarm"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 131
    .local v7, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->context:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 135
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.huawei.bd.action.eventusage"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v9, "intent":Landroid/content/Intent;
    const-string v1, "com.huawei.bd"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v9, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 139
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 140
    const/16 v1, 0xb

    const/16 v2, 0x18

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 141
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 142
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 143
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->isKitKatOrLater()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    const/4 v1, 0x1

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v6    # "pi":Landroid/app/PendingIntent;
    :catch_0
    move-exception v8

    .line 149
    .local v8, "e":Ljava/lang/SecurityException;
    const-string v1, "BD.DifferentialPrivacyScheduler"

    const-string v2, "SecurityException package not found"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    .end local v8    # "e":Ljava/lang/SecurityException;
    .restart local v6    # "pi":Landroid/app/PendingIntent;
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setNextDiffPrivacyRetionMonthlyTimer()V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 540
    iget-object v4, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 541
    .local v2, "defaultPrefs":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss.SSSZ"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 542
    .local v3, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    const-string v4, "DPRetentionMonthlyCount"

    const/4 v5, -0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 543
    .local v1, "count":I
    if-ge v1, v10, :cond_0

    .line 544
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "DPRetentionMonthlyCount"

    add-int/lit8 v6, v1, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 545
    add-int/lit8 v4, v1, 0x1

    if-ge v4, v10, :cond_0

    .line 546
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 547
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v4, 0x6

    const/16 v5, 0x1e

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 548
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v9, :cond_1

    .line 549
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 553
    :goto_0
    invoke-virtual {v0, v11, v9}, Ljava/util/Calendar;->set(II)V

    .line 554
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 555
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 556
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 557
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 559
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "DPRetentionMonthlyTimer"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 562
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_0
    return-void

    .line 551
    .restart local v0    # "calendar":Ljava/util/Calendar;
    :cond_1
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v8, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method private setNextDiffPrivacyRetionWeeklyTimer()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 519
    iget-object v4, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 520
    .local v2, "defaultPrefs":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss.SSSZ"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 521
    .local v3, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    const-string v4, "DPRetentionWeeklyCount"

    const/4 v5, -0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 522
    .local v1, "count":I
    if-ge v1, v8, :cond_0

    .line 523
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "DPRetentionWeeklyCount"

    add-int/lit8 v6, v1, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 524
    add-int/lit8 v4, v1, 0x1

    if-ge v4, v8, :cond_0

    .line 525
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 526
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v4, 0x6

    const/16 v5, 0x1e

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 527
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 528
    const/4 v4, 0x7

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 529
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 530
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 531
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 532
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 534
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "DPRetentionWeeklyTimer"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 537
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_0
    return-void
.end method

.method private transferDiffPrivacySourceList(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p1, "dpSourceList"    # Ljava/util/List;

    .prologue
    .line 608
    const-string v1, ""

    .line 609
    .local v1, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 610
    :cond_0
    const-string v1, "[]"

    .line 623
    :goto_0
    return-object v1

    .line 612
    :cond_1
    const/4 v0, 0x0

    .line 613
    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 614
    if-nez v0, :cond_2

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 619
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 617
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 621
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateDailyUsageInfoEvent(Landroid/database/Cursor;Lcom/huawei/bd/events/EventUsageInfoEvent;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "usageInfoEvent"    # Lcom/huawei/bd/events/EventUsageInfoEvent;

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setCurrDayCount(I)V

    .line 287
    const-string v0, "d"

    .line 288
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setLastDayCount(I)V

    .line 289
    const-string v0, "d"

    .line 290
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "f"

    .line 291
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    invoke-virtual {p2, v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setCurrWeekCount(I)V

    .line 292
    const-string v0, "g"

    .line 293
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setLastWeekCount(I)V

    .line 294
    const-string v0, "h"

    .line 295
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "d"

    .line 296
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 295
    invoke-virtual {p2, v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setCurrMonthCount(I)V

    .line 297
    const-string v0, "i"

    .line 298
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 297
    invoke-virtual {p2, v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setLastMonthCount(I)V

    .line 299
    return-void
.end method

.method private updateEventUsageData(I)V
    .locals 9
    .param p1, "updateType"    # I

    .prologue
    const/4 v2, 0x0

    .line 214
    const-string v3, "BD.DifferentialPrivacyScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event usage data update, update type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v3, "content://com.huawei.bd.provider.BDProvider/eui"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 216
    .local v1, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 217
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 219
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 220
    const-string v8, "a = ? and b = ? "

    .line 223
    .local v8, "selection":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    new-instance v7, Lcom/huawei/bd/events/EventUsageInfoEvent;

    invoke-direct {v7}, Lcom/huawei/bd/events/EventUsageInfoEvent;-><init>()V

    .line 225
    .local v7, "info":Lcom/huawei/bd/events/EventUsageInfoEvent;
    const-string v2, "a"

    .line 226
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-virtual {v7, v2}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setPkgName(Ljava/lang/String;)V

    .line 227
    const-string v2, "b"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setEventId(I)V

    .line 228
    const-string v2, "c"

    .line 229
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 228
    invoke-virtual {v7, v2}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setHisCount(I)V

    .line 230
    packed-switch p1, :pswitch_data_0

    .line 241
    const-string v2, "BD.DifferentialPrivacyScheduler"

    const-string v3, "invalid update type."

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 255
    .end local v7    # "info":Lcom/huawei/bd/events/EventUsageInfoEvent;
    .end local v8    # "selection":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 232
    .restart local v7    # "info":Lcom/huawei/bd/events/EventUsageInfoEvent;
    .restart local v8    # "selection":Ljava/lang/String;
    :pswitch_0
    :try_start_1
    invoke-direct {p0, v6, v7}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->updateDailyUsageInfoEvent(Landroid/database/Cursor;Lcom/huawei/bd/events/EventUsageInfoEvent;)V

    .line 244
    :goto_2
    const-string v2, "j"

    .line 245
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {v7, v2}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setReserved(Ljava/lang/String;)V

    .line 246
    const-string v2, "k"

    .line 247
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-virtual {v7, v2}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setReservedSecond(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v7}, Lcom/huawei/bd/events/EventUsageInfoEvent;->format()Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 249
    invoke-virtual {v7}, Lcom/huawei/bd/events/EventUsageInfoEvent;->getPkgName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v7}, Lcom/huawei/bd/events/EventUsageInfoEvent;->getEventId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 248
    invoke-virtual {v0, v1, v2, v8, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    .end local v7    # "info":Lcom/huawei/bd/events/EventUsageInfoEvent;
    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 253
    throw v2

    .line 235
    .restart local v7    # "info":Lcom/huawei/bd/events/EventUsageInfoEvent;
    :pswitch_1
    :try_start_2
    invoke-direct {p0, v6, v7}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->updateWeeklyUsageInfoEvent(Landroid/database/Cursor;Lcom/huawei/bd/events/EventUsageInfoEvent;)V

    goto :goto_2

    .line 238
    :pswitch_2
    invoke-direct {p0, v6, v7}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->updateMonthlyUsageEvent(Landroid/database/Cursor;Lcom/huawei/bd/events/EventUsageInfoEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 252
    .end local v7    # "info":Lcom/huawei/bd/events/EventUsageInfoEvent;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateMonthlyUsageEvent(Landroid/database/Cursor;Lcom/huawei/bd/events/EventUsageInfoEvent;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "usageInfoEvent"    # Lcom/huawei/bd/events/EventUsageInfoEvent;

    .prologue
    .line 258
    const-string v0, "d"

    .line 259
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setCurrDayCount(I)V

    .line 260
    const-string v0, "e"

    .line 261
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setLastDayCount(I)V

    .line 262
    const-string v0, "f"

    .line 263
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setCurrWeekCount(I)V

    .line 264
    const-string v0, "g"

    .line 265
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setLastWeekCount(I)V

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setCurrMonthCount(I)V

    .line 267
    const-string v0, "h"

    .line 268
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 267
    invoke-virtual {p2, v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setLastMonthCount(I)V

    .line 269
    return-void
.end method

.method private updateWeeklyUsageInfoEvent(Landroid/database/Cursor;Lcom/huawei/bd/events/EventUsageInfoEvent;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "usageInfoEvent"    # Lcom/huawei/bd/events/EventUsageInfoEvent;

    .prologue
    .line 272
    const-string v0, "d"

    .line 273
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setCurrDayCount(I)V

    .line 274
    const-string v0, "e"

    .line 275
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setLastDayCount(I)V

    .line 276
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setCurrWeekCount(I)V

    .line 277
    const-string v0, "f"

    .line 278
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setLastWeekCount(I)V

    .line 279
    const-string v0, "h"

    .line 280
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 279
    invoke-virtual {p2, v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setCurrMonthCount(I)V

    .line 281
    const-string v0, "i"

    .line 282
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 281
    invoke-virtual {p2, v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setLastMonthCount(I)V

    .line 283
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 4
    .param p1, "currentContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 98
    const-string v1, "BD.DifferentialPrivacyScheduler"

    const-string v2, "initialize"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->context:Landroid/content/Context;

    .line 100
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 101
    .local v0, "message":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 102
    iget-object v1, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object v1, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->handler:Landroid/os/Handler;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 105
    return-void
.end method

.method public onDestory()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public startUpdateTask()V
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$2;

    invoke-direct {v1, p0}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$2;-><init>(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 196
    .local v0, "taskThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 197
    return-void
.end method
