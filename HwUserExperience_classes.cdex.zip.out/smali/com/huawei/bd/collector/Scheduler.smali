.class public Lcom/huawei/bd/collector/Scheduler;
.super Ljava/lang/Object;
.source "Scheduler.java"


# static fields
.field private static final ACQUISITION_INIT:I = 0x0

.field private static final ACQUISITION_START:I = 0x1

.field private static final BASE_EVENT_OFFSET:I = 0x3

.field private static final DISALLOW_END_HOUR:I = 0x6

.field private static final DISALLOW_START_HOUR:I = 0x0

.field private static final EXTERNAL_METHOD:Ljava/lang/String; = "notifyUploadUEEvent"

.field private static final EXTERNAL_RECEIVED:Ljava/lang/String; = "IS_RECEIVED"

.field private static final FOUR_HALF_HOURS:I = 0x4

.field private static final FOUR_MINUTE_MILLISECOND:I = 0x3a980

.field private static final MAX_HALF_HOURS:I = 0x4

.field private static final ONE_SECOND_MILLISECOND:I = 0x3e8

.field private static final ONE_WEEK_DAYS:I = 0x7

.field private static final PRIORITY_OFFSET_VALUE:I = 0x5

.field private static final PROCESS_SIZE_PLUS:I = 0x400

.field private static final RANDOM_DELAY_MINUTES:I = 0x1e

.field private static final SCHEDULE_COUNTS:I = 0x7

.field private static final TAG:Ljava/lang/String; = "BD.Scheduler"

.field private static final TWO_HALF_HOURS:I = 0x2

.field private static final TWO_MINUTES:I = 0x2

.field private static halfHourCounts:I

.field private static hiWiTrigger:Lcom/huawei/bd/trigger/HiWiTrigger;

.field private static instance:Lcom/huawei/bd/collector/Scheduler;

.field private static isNeedSetDailyAlarm:Z

.field private static maxFrequency:I

.field private static scheduleCounts:I


# instance fields
.field private acquisitionTime:J

.field private baseEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/bd/events/BaseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private frequencyMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mhandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 93
    sput v1, Lcom/huawei/bd/collector/Scheduler;->halfHourCounts:I

    .line 95
    const/4 v0, 0x0

    sput v0, Lcom/huawei/bd/collector/Scheduler;->scheduleCounts:I

    .line 97
    sput v1, Lcom/huawei/bd/collector/Scheduler;->maxFrequency:I

    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/bd/collector/Scheduler;->instance:Lcom/huawei/bd/collector/Scheduler;

    .line 101
    sput-boolean v1, Lcom/huawei/bd/collector/Scheduler;->isNeedSetDailyAlarm:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/bd/collector/Scheduler;->acquisitionTime:J

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/bd/collector/Scheduler;->frequencyMap:Landroid/util/SparseArray;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/bd/collector/Scheduler;->baseEventList:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Lcom/huawei/bd/collector/Scheduler$1;

    invoke-direct {v0, p0}, Lcom/huawei/bd/collector/Scheduler$1;-><init>(Lcom/huawei/bd/collector/Scheduler;)V

    iput-object v0, p0, Lcom/huawei/bd/collector/Scheduler;->mhandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/bd/collector/Scheduler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/collector/Scheduler;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/huawei/bd/collector/Scheduler;->isContextIllegal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/huawei/bd/collector/Scheduler;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/collector/Scheduler;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/huawei/bd/collector/Scheduler;->initFrequencyConfig()V

    return-void
.end method

.method static synthetic access$1000(Lcom/huawei/bd/collector/Scheduler;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/collector/Scheduler;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/huawei/bd/collector/Scheduler;->reportAppActiveInfo()V

    return-void
.end method

.method static synthetic access$1100(Lcom/huawei/bd/collector/Scheduler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/collector/Scheduler;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/huawei/bd/collector/Scheduler;->mhandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/huawei/bd/collector/Scheduler;->halfHourCounts:I

    return v0
.end method

.method static synthetic access$1202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 52
    sput p0, Lcom/huawei/bd/collector/Scheduler;->halfHourCounts:I

    return p0
.end method

.method static synthetic access$1204()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/huawei/bd/collector/Scheduler;->halfHourCounts:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/huawei/bd/collector/Scheduler;->halfHourCounts:I

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/huawei/bd/collector/Scheduler;->isNeedSetDailyAlarm:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/huawei/bd/collector/Scheduler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/collector/Scheduler;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/huawei/bd/collector/Scheduler;->isAllowTime()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/huawei/bd/collector/Scheduler;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/collector/Scheduler;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/huawei/bd/collector/Scheduler;->setDailyHeartBeatAlarm()V

    return-void
.end method

.method static synthetic access$1600(Lcom/huawei/bd/collector/Scheduler;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/collector/Scheduler;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/huawei/bd/collector/Scheduler;->doHourlyAcquisition()V

    return-void
.end method

.method static synthetic access$1700()Lcom/huawei/bd/trigger/HiWiTrigger;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/huawei/bd/collector/Scheduler;->hiWiTrigger:Lcom/huawei/bd/trigger/HiWiTrigger;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/huawei/bd/trigger/HiWiTrigger;)Lcom/huawei/bd/trigger/HiWiTrigger;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/trigger/HiWiTrigger;

    .prologue
    .line 52
    sput-object p0, Lcom/huawei/bd/collector/Scheduler;->hiWiTrigger:Lcom/huawei/bd/trigger/HiWiTrigger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/huawei/bd/collector/Scheduler;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/collector/Scheduler;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/huawei/bd/collector/Scheduler;->setHeartBeatAlarm()V

    return-void
.end method

.method static synthetic access$300(Lcom/huawei/bd/collector/Scheduler;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/collector/Scheduler;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/huawei/bd/collector/Scheduler;->restoreSchedulerInfo()V

    return-void
.end method

.method static synthetic access$400(Lcom/huawei/bd/collector/Scheduler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/collector/Scheduler;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/huawei/bd/collector/Scheduler;->baseEventList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huawei/bd/collector/Scheduler;)J
    .locals 2
    .param p0, "x0"    # Lcom/huawei/bd/collector/Scheduler;

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/huawei/bd/collector/Scheduler;->acquisitionTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/huawei/bd/collector/Scheduler;J)J
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/collector/Scheduler;
    .param p1, "x1"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/huawei/bd/collector/Scheduler;->acquisitionTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/huawei/bd/collector/Scheduler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/collector/Scheduler;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/huawei/bd/collector/Scheduler;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/collector/Scheduler;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/huawei/bd/collector/Scheduler;->scheduleCounts:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 52
    sput p0, Lcom/huawei/bd/collector/Scheduler;->scheduleCounts:I

    return p0
.end method

.method static synthetic access$708()I
    .locals 2

    .prologue
    .line 52
    sget v0, Lcom/huawei/bd/collector/Scheduler;->scheduleCounts:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/huawei/bd/collector/Scheduler;->scheduleCounts:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/huawei/bd/collector/Scheduler;->maxFrequency:I

    return v0
.end method

.method static synthetic access$900(Lcom/huawei/bd/collector/Scheduler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/collector/Scheduler;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/huawei/bd/collector/Scheduler;->doDailyAcquisition(I)V

    return-void
.end method

.method private doDailyAcquisition(I)V
    .locals 14
    .param p1, "dayOfYear"    # I

    .prologue
    const/4 v12, 0x0

    .line 247
    const-string v9, "BD.Scheduler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doDailyAcquisition("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 249
    .local v2, "calendar":Ljava/util/Calendar;
    const/4 v9, 0x6

    add-int/lit8 v10, p1, -0x1

    invoke-virtual {v2, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 252
    const/16 v9, 0xb

    invoke-virtual {v2, v9, v12}, Ljava/util/Calendar;->set(II)V

    .line 253
    const/16 v9, 0xc

    const/4 v10, 0x2

    invoke-virtual {v2, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 254
    const/16 v9, 0xd

    invoke-virtual {v2, v9, v12}, Ljava/util/Calendar;->set(II)V

    .line 255
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 258
    .local v0, "beginTime":J
    const-wide/32 v10, 0x5265c00

    add-long/2addr v10, v0

    const-wide/32 v12, 0x3a980

    sub-long v4, v10, v12

    .line 260
    .local v4, "endTime":J
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v9

    invoke-virtual {v9, v0, v1, v4, v5}, Lcom/huawei/bd/collector/BigDataCollector;->saveUsageStat(JJ)V

    .line 262
    iget-object v9, p0, Lcom/huawei/bd/collector/Scheduler;->frequencyMap:Landroid/util/SparseArray;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/huawei/bd/collector/Scheduler;->frequencyMap:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-eqz v9, :cond_2

    .line 263
    iget-object v9, p0, Lcom/huawei/bd/collector/Scheduler;->frequencyMap:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 264
    .local v8, "size":I
    const/4 v6, 0x0

    .line 265
    .local v6, "frequencyCounts":I
    const/4 v3, 0x0

    .line 266
    .local v3, "eventIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_3

    .line 267
    iget-object v9, p0, Lcom/huawei/bd/collector/Scheduler;->frequencyMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "eventIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v3, Ljava/util/List;

    .line 268
    .restart local v3    # "eventIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/huawei/bd/collector/Scheduler;->frequencyMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 269
    sget v9, Lcom/huawei/bd/collector/Scheduler;->scheduleCounts:I

    rem-int/2addr v9, v6

    if-nez v9, :cond_1

    .line 270
    const/4 v9, 0x7

    if-ne v6, v9, :cond_0

    .line 271
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v9

    invoke-virtual {v9}, Lcom/huawei/bd/collector/BigDataCollector;->notifyCipherChange()V

    .line 272
    invoke-static {}, Lcom/huawei/bd/events/BaseEvent;->genericCipher()V

    .line 274
    :cond_0
    invoke-direct {p0, v3}, Lcom/huawei/bd/collector/Scheduler;->retrievalItemsInfo(Ljava/util/List;)V

    .line 266
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 278
    .end local v3    # "eventIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "frequencyCounts":I
    .end local v7    # "i":I
    .end local v8    # "size":I
    :cond_2
    const-string v9, "BD.Scheduler"

    const-string v10, "Frequency null"

    invoke-static {v9, v10}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_3
    invoke-direct {p0}, Lcom/huawei/bd/collector/Scheduler;->notifyUploadEvent()V

    .line 282
    return-void
.end method

.method private doHourlyAcquisition()V
    .locals 12

    .prologue
    .line 286
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 287
    .local v4, "content":Lorg/json/JSONObject;
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/bd/collector/BigDataCollector;->saveAvailableMemory()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "availMemory":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 291
    :try_start_0
    const-string v8, "AvailableMem"

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_0
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 298
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v8

    const v9, 0x2001c

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v8, v9, v10, v11}, Lcom/huawei/bd/collector/BigDataCollector;->saveLocalInfo(ILjava/lang/String;I)V

    .line 303
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 304
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 307
    .local v6, "endTime":J
    const-wide/32 v8, 0x36ea98

    sub-long v2, v6, v8

    .line 309
    .local v2, "beginTime":J
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v8

    invoke-virtual {v8, v2, v3, v6, v7}, Lcom/huawei/bd/collector/BigDataCollector;->saveUsageStat(JJ)V

    .line 310
    return-void

    .line 293
    .end local v1    # "calendar":Ljava/util/Calendar;
    .end local v2    # "beginTime":J
    .end local v6    # "endTime":J
    :catch_0
    move-exception v5

    .line 294
    .local v5, "e":Lorg/json/JSONException;
    const-string v8, "BD.Scheduler"

    const-string v9, "JSONException : doHourlyAcquisition"

    invoke-static {v8, v9}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAllInstalledApp()V
    .locals 1

    .prologue
    .line 666
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/bd/collector/BigDataCollector;->saveInstalledApps()V

    .line 667
    return-void
.end method

.method private getHardwareInfo()V
    .locals 24

    .prologue
    .line 461
    new-instance v13, Lcom/huawei/bd/events/LocalInfoEvent;

    invoke-direct {v13}, Lcom/huawei/bd/events/LocalInfoEvent;-><init>()V

    .line 462
    .local v13, "systemAppInfo":Lcom/huawei/bd/events/LocalInfoEvent;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/bd/collector/Scheduler;->acquisitionTime:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setRecordTime(Ljava/lang/String;)V

    .line 463
    const/16 v16, 0xf

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setPriority(I)V

    .line 464
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/huawei/bd/collector/BigDataCollector;->getCollection()Lcom/huawei/bd/collector/InterfaceBigDataCollection;

    move-result-object v4

    .line 467
    .local v4, "collection":Lcom/huawei/bd/collector/InterfaceBigDataCollection;
    invoke-virtual {v13}, Lcom/huawei/bd/events/LocalInfoEvent;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/huawei/bd/events/LocalInfoEvent;

    .line 468
    .local v10, "sdTotalSzie":Lcom/huawei/bd/events/LocalInfoEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getStorageTotal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setContent(Ljava/lang/String;)V

    .line 469
    const v16, 0x20007

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setInfoId(I)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->baseEventList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-virtual {v13}, Lcom/huawei/bd/events/LocalInfoEvent;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/bd/events/LocalInfoEvent;

    .line 474
    .local v9, "sdFreeSzie":Lcom/huawei/bd/events/LocalInfoEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getStorageFree(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setContent(Ljava/lang/String;)V

    .line 475
    const v16, 0x20008

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setInfoId(I)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->baseEventList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-virtual {v13}, Lcom/huawei/bd/events/LocalInfoEvent;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/bd/events/LocalInfoEvent;

    .line 480
    .local v6, "extSdCard":Lcom/huawei/bd/events/LocalInfoEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/huawei/bd/utils/BigDataUtils;->getRemovableVolumeInfo(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v12

    .line 482
    .local v12, "storageVolume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v12}, Lcom/huawei/bd/utils/BigDataUtils;->getExtSdCardPath(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v11

    .line 483
    .local v11, "sdcardPath":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v11}, Lcom/huawei/bd/utils/BigDataUtils;->getStorageState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 486
    .local v7, "isPresence":Z
    if-nez v7, :cond_1

    .line 487
    const-string v16, "{Presence:%b}"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 502
    .local v5, "content":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_0

    .line 503
    invoke-virtual {v6, v5}, Lcom/huawei/bd/events/LocalInfoEvent;->setContent(Ljava/lang/String;)V

    .line 509
    .end local v5    # "content":Ljava/lang/String;
    .end local v7    # "isPresence":Z
    :cond_0
    :goto_1
    const v16, 0x2001e

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setInfoId(I)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->baseEventList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    return-void

    .line 489
    .restart local v7    # "isPresence":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v12}, Lcom/huawei/bd/utils/BigDataUtils;->getExtSdCardDescription(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v8

    .line 490
    .local v8, "label":Ljava/lang/String;
    invoke-interface {v4, v11}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v2

    .line 491
    .local v2, "availableSpace":J
    invoke-interface {v4, v11}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getTotalSpace(Ljava/lang/String;)J

    move-result-wide v14

    .line 492
    .local v14, "totalSpace":J
    if-eqz v8, :cond_2

    .line 493
    const-string v16, "{Presence:%b, label:%s, availableSize:%d, totalSize:%d}"

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v8, v17, v18

    const/16 v18, 0x2

    const-wide/16 v20, 0x400

    div-long v20, v2, v20

    const-wide/16 v22, 0x400

    div-long v20, v20, v22

    .line 494
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const-wide/16 v20, 0x400

    div-long v20, v14, v20

    const-wide/16 v22, 0x400

    div-long v20, v20, v22

    .line 495
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    .line 493
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "content":Ljava/lang/String;
    goto :goto_0

    .line 497
    .end local v5    # "content":Ljava/lang/String;
    :cond_2
    const-string v16, "{Presence:%b, availableSize:%d, totalSize:%d}"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-wide/16 v20, 0x400

    div-long v20, v2, v20

    const-wide/16 v22, 0x400

    div-long v20, v20, v22

    .line 498
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-wide/16 v20, 0x400

    div-long v20, v14, v20

    const-wide/16 v22, 0x400

    div-long v20, v20, v22

    .line 499
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    .line 497
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "content":Ljava/lang/String;
    goto/16 :goto_0

    .line 506
    .end local v2    # "availableSpace":J
    .end local v5    # "content":Ljava/lang/String;
    .end local v7    # "isPresence":Z
    .end local v8    # "label":Ljava/lang/String;
    .end local v14    # "totalSpace":J
    :cond_3
    const-string v16, "{Presence:false}"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setContent(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/bd/collector/Scheduler;
    .locals 2

    .prologue
    .line 161
    const-class v1, Lcom/huawei/bd/collector/Scheduler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/bd/collector/Scheduler;->instance:Lcom/huawei/bd/collector/Scheduler;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/huawei/bd/collector/Scheduler;

    invoke-direct {v0}, Lcom/huawei/bd/collector/Scheduler;-><init>()V

    sput-object v0, Lcom/huawei/bd/collector/Scheduler;->instance:Lcom/huawei/bd/collector/Scheduler;

    .line 164
    :cond_0
    sget-object v0, Lcom/huawei/bd/collector/Scheduler;->instance:Lcom/huawei/bd/collector/Scheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNetworkInfo()V
    .locals 8

    .prologue
    .line 436
    new-instance v3, Lcom/huawei/bd/events/LocalInfoEvent;

    invoke-direct {v3}, Lcom/huawei/bd/events/LocalInfoEvent;-><init>()V

    .line 437
    .local v3, "systemAppInfo":Lcom/huawei/bd/events/LocalInfoEvent;
    iget-wide v6, p0, Lcom/huawei/bd/collector/Scheduler;->acquisitionTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/huawei/bd/events/LocalInfoEvent;->setRecordTime(Ljava/lang/String;)V

    .line 438
    const/16 v5, 0xf

    invoke-virtual {v3, v5}, Lcom/huawei/bd/events/LocalInfoEvent;->setPriority(I)V

    .line 440
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/bd/collector/BigDataCollector;->getCollection()Lcom/huawei/bd/collector/InterfaceBigDataCollection;

    move-result-object v0

    .line 442
    .local v0, "collection":Lcom/huawei/bd/collector/InterfaceBigDataCollection;
    invoke-virtual {v3}, Lcom/huawei/bd/events/LocalInfoEvent;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/bd/events/LocalInfoEvent;

    .line 443
    .local v2, "networkName":Lcom/huawei/bd/events/LocalInfoEvent;
    iget-object v5, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    invoke-interface {v0, v5}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getNetworkName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/huawei/bd/events/LocalInfoEvent;->setContent(Ljava/lang/String;)V

    .line 444
    const v5, 0x20017

    invoke-virtual {v2, v5}, Lcom/huawei/bd/events/LocalInfoEvent;->setInfoId(I)V

    .line 445
    iget-object v5, p0, Lcom/huawei/bd/collector/Scheduler;->baseEventList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-virtual {v3}, Lcom/huawei/bd/events/LocalInfoEvent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/bd/events/LocalInfoEvent;

    .line 449
    .local v1, "netName":Lcom/huawei/bd/events/LocalInfoEvent;
    iget-object v5, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    invoke-interface {v0, v5}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/huawei/bd/events/LocalInfoEvent;->setContent(Ljava/lang/String;)V

    .line 450
    const v5, 0x20018

    invoke-virtual {v1, v5}, Lcom/huawei/bd/events/LocalInfoEvent;->setInfoId(I)V

    .line 451
    iget-object v5, p0, Lcom/huawei/bd/collector/Scheduler;->baseEventList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {v3}, Lcom/huawei/bd/events/LocalInfoEvent;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/bd/events/LocalInfoEvent;

    .line 455
    .local v4, "wifiState":Lcom/huawei/bd/events/LocalInfoEvent;
    iget-object v5, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    invoke-interface {v0, v5}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getWifiState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huawei/bd/events/LocalInfoEvent;->setContent(Ljava/lang/String;)V

    .line 456
    const v5, 0x2000d

    invoke-virtual {v4, v5}, Lcom/huawei/bd/events/LocalInfoEvent;->setInfoId(I)V

    .line 457
    iget-object v5, p0, Lcom/huawei/bd/collector/Scheduler;->baseEventList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    return-void
.end method

.method private getPerformanceInfo()V
    .locals 8

    .prologue
    .line 640
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/bd/collector/BigDataCollector;->getStorageUsedSize()Ljava/lang/String;

    move-result-object v4

    .line 641
    .local v4, "usedSize":Ljava/lang/String;
    const-string v2, ""

    .line 643
    .local v2, "overload":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 645
    .local v3, "performanceInfo":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 646
    const-string v5, "UserUsedSize"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 648
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 649
    const-string v5, "CPUOverLoad"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 656
    new-instance v1, Lcom/huawei/bd/events/LocalInfoEvent;

    invoke-direct {v1}, Lcom/huawei/bd/events/LocalInfoEvent;-><init>()V

    .line 657
    .local v1, "localInfoEvent":Lcom/huawei/bd/events/LocalInfoEvent;
    iget-wide v6, p0, Lcom/huawei/bd/collector/Scheduler;->acquisitionTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/huawei/bd/events/LocalInfoEvent;->setRecordTime(Ljava/lang/String;)V

    .line 658
    const/16 v5, 0xf

    invoke-virtual {v1, v5}, Lcom/huawei/bd/events/LocalInfoEvent;->setPriority(I)V

    .line 659
    const v5, 0x2001b

    invoke-virtual {v1, v5}, Lcom/huawei/bd/events/LocalInfoEvent;->setInfoId(I)V

    .line 660
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/huawei/bd/events/LocalInfoEvent;->setContent(Ljava/lang/String;)V

    .line 661
    iget-object v5, p0, Lcom/huawei/bd/collector/Scheduler;->baseEventList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    .end local v1    # "localInfoEvent":Lcom/huawei/bd/events/LocalInfoEvent;
    :cond_2
    return-void

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "BD.Scheduler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSONException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSoftewareInfo()V
    .locals 18

    .prologue
    .line 514
    new-instance v12, Lcom/huawei/bd/events/LocalInfoEvent;

    invoke-direct {v12}, Lcom/huawei/bd/events/LocalInfoEvent;-><init>()V

    .line 515
    .local v12, "systemAppInfo":Lcom/huawei/bd/events/LocalInfoEvent;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/bd/collector/Scheduler;->acquisitionTime:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setRecordTime(Ljava/lang/String;)V

    .line 516
    const/16 v16, 0xf

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setPriority(I)V

    .line 517
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/huawei/bd/collector/BigDataCollector;->getCollection()Lcom/huawei/bd/collector/InterfaceBigDataCollection;

    move-result-object v2

    .line 519
    .local v2, "collection":Lcom/huawei/bd/collector/InterfaceBigDataCollection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getRootState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 520
    .local v10, "rootContent":Ljava/lang/String;
    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 521
    invoke-virtual {v12}, Lcom/huawei/bd/events/LocalInfoEvent;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/huawei/bd/events/LocalInfoEvent;

    .line 522
    .local v11, "rootEvent":Lcom/huawei/bd/events/LocalInfoEvent;
    invoke-virtual {v11, v10}, Lcom/huawei/bd/events/LocalInfoEvent;->setContent(Ljava/lang/String;)V

    .line 523
    const v16, 0x2001a

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setInfoId(I)V

    .line 524
    const/16 v16, 0x19

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setPriority(I)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->baseEventList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    .end local v11    # "rootEvent":Lcom/huawei/bd/events/LocalInfoEvent;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getUserExperienceSwitch(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 530
    .local v3, "currentState":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 532
    .local v9, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "CLOSE"

    .line 533
    .local v4, "defaultState":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 534
    const-string v4, "OPEN"

    .line 536
    :cond_1
    const-string v16, "ExperienceState"

    move-object/from16 v0, v16

    invoke-interface {v9, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 537
    .local v8, "lastState":Ljava/lang/String;
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 538
    invoke-virtual {v12}, Lcom/huawei/bd/events/LocalInfoEvent;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/bd/events/LocalInfoEvent;

    .line 539
    .local v6, "experienceSwitch":Lcom/huawei/bd/events/LocalInfoEvent;
    invoke-virtual {v6, v3}, Lcom/huawei/bd/events/LocalInfoEvent;->setContent(Ljava/lang/String;)V

    .line 540
    const v16, 0x20019

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setInfoId(I)V

    .line 541
    const/16 v16, 0x1c

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setPriority(I)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->baseEventList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 545
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v16, "ExperienceState"

    move-object/from16 v0, v16

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 546
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 550
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "experienceSwitch":Lcom/huawei/bd/events/LocalInfoEvent;
    :cond_2
    invoke-virtual {v12}, Lcom/huawei/bd/events/LocalInfoEvent;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/huawei/bd/events/LocalInfoEvent;

    .line 551
    .local v14, "systemFont":Lcom/huawei/bd/events/LocalInfoEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getFontScale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setContent(Ljava/lang/String;)V

    .line 552
    const v16, 0x20009

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setInfoId(I)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->baseEventList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    invoke-virtual {v12}, Lcom/huawei/bd/events/LocalInfoEvent;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/huawei/bd/events/LocalInfoEvent;

    .line 557
    .local v13, "systemBrightness":Lcom/huawei/bd/events/LocalInfoEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v2, v0, v1}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getScreenBrightness(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setContent(Ljava/lang/String;)V

    .line 558
    const v16, 0x2000a

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setInfoId(I)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->baseEventList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-virtual {v12}, Lcom/huawei/bd/events/LocalInfoEvent;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/huawei/bd/events/LocalInfoEvent;

    .line 563
    .local v15, "systemLanguage":Lcom/huawei/bd/events/LocalInfoEvent;
    invoke-interface {v2}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getLanguage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/huawei/bd/events/LocalInfoEvent;->setContent(Ljava/lang/String;)V

    .line 564
    const v16, 0x2000b

    invoke-virtual/range {v15 .. v16}, Lcom/huawei/bd/events/LocalInfoEvent;->setInfoId(I)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->baseEventList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-virtual {v12}, Lcom/huawei/bd/events/LocalInfoEvent;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/huawei/bd/events/LocalInfoEvent;

    .line 569
    .local v7, "inputMethod":Lcom/huawei/bd/events/LocalInfoEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getInputMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setContent(Ljava/lang/String;)V

    .line 570
    const v16, 0x2000c

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setInfoId(I)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/collector/Scheduler;->baseEventList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    return-void
.end method

.method private initFrequencyConfig()V
    .locals 6

    .prologue
    .line 168
    iget-object v3, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/bd/utils/BigDataUtils;->readScheduleFromXml(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/bd/collector/Scheduler;->frequencyMap:Landroid/util/SparseArray;

    .line 169
    iget-object v3, p0, Lcom/huawei/bd/collector/Scheduler;->frequencyMap:Landroid/util/SparseArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/huawei/bd/collector/Scheduler;->frequencyMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 181
    :cond_0
    return-void

    .line 172
    :cond_1
    const-string v3, "BD.Scheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Frequency config="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/bd/collector/Scheduler;->frequencyMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v3, p0, Lcom/huawei/bd/collector/Scheduler;->frequencyMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 174
    .local v2, "size":I
    const/4 v0, 0x0

    .line 175
    .local v0, "frequencyCounts":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 176
    iget-object v3, p0, Lcom/huawei/bd/collector/Scheduler;->frequencyMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 177
    sget v3, Lcom/huawei/bd/collector/Scheduler;->maxFrequency:I

    if-le v0, v3, :cond_2

    .line 178
    sput v0, Lcom/huawei/bd/collector/Scheduler;->maxFrequency:I

    .line 175
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isAllowTime()Z
    .locals 5

    .prologue
    .line 702
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 703
    .local v0, "hour":I
    if-ltz v0, :cond_0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 704
    const/4 v1, 0x0

    .line 708
    .local v1, "isAllowTime":Z
    :goto_0
    const-string v2, "BD.Scheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set daily alarm is allowTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    return v1

    .line 706
    .end local v1    # "isAllowTime":Z
    :cond_0
    const/4 v1, 0x1

    .restart local v1    # "isAllowTime":Z
    goto :goto_0
.end method

.method private isContextIllegal()Z
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 746
    invoke-static {}, Lcom/huawei/bd/BDApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 749
    const/4 v0, 0x1

    .line 751
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyUploadEvent()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 713
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 714
    .local v1, "calendar":Ljava/util/Calendar;
    const/4 v10, 0x7

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 715
    .local v2, "day":I
    const/4 v10, 0x1

    if-eq v2, v10, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    const-string v10, "BD.Scheduler"

    const-string v11, "Start to notifyUploadEvent"

    invoke-static {v10, v11}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.huawei.bd.intent.action.NOTIFY_COLLECT"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 720
    .local v4, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 721
    .local v6, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_3

    .line 722
    :cond_2
    const-string v10, "BD.Scheduler"

    const-string v11, "no providers"

    invoke-static {v10, v11}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 725
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 726
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v11, v3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v11, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 727
    .local v0, "authority":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 730
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "content://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 731
    .local v9, "uri":Landroid/net/Uri;
    iget-object v11, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 732
    .local v7, "resolver":Landroid/content/ContentResolver;
    if-eqz v7, :cond_4

    .line 733
    const-string v11, "notifyUploadUEEvent"

    invoke-virtual {v7, v9, v11, v14, v14}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 734
    .local v8, "result":Landroid/os/Bundle;
    if-eqz v8, :cond_4

    const-string v11, "IS_RECEIVED"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 735
    const-string v11, "IS_RECEIVED"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 736
    .local v5, "isReceived":Z
    if-nez v5, :cond_4

    .line 737
    const-string v11, "BD.Scheduler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifyUploadUEEvent call result is: false, authority is:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/huawei/bd/utils/BigDataLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private processPreferenceUsingDura(Ljava/util/Map$Entry;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 615
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 617
    .local v4, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 618
    .local v0, "duras":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 619
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 620
    .local v3, "jsonDuras":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 621
    .local v5, "length":I
    const-wide/16 v6, 0x0

    .line 622
    .local v6, "total":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 623
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 622
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 625
    :cond_0
    const-string v8, "Total"

    invoke-virtual {v4, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 626
    const-string v8, "Count"

    invoke-virtual {v4, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 627
    const-string v8, "Detail"

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    .end local v0    # "duras":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "jsonDuras":Lorg/json/JSONArray;
    .end local v5    # "length":I
    .end local v6    # "total":J
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-eqz v8, :cond_2

    .line 634
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v8

    const v9, 0x2001d

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x14

    invoke-virtual {v8, v9, v10, v11}, Lcom/huawei/bd/collector/BigDataCollector;->saveLocalInfo(ILjava/lang/String;I)V

    .line 637
    :cond_2
    return-void

    .line 629
    :catch_0
    move-exception v1

    .line 630
    .local v1, "e":Lorg/json/JSONException;
    const-string v8, "BD.Scheduler"

    const-string v9, "JSONException : saveAccumulativeInfo"

    invoke-static {v8, v9}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private reportAppActiveInfo()V
    .locals 12

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/huawei/bd/collector/Scheduler;->isContextIllegal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    const-string v1, "BD.Scheduler"

    const-string v10, "Can\'t get the context, stop running reportAppActiveInfo"

    invoke-static {v1, v10}, Lcom/huawei/bd/utils/BigDataLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :goto_0
    return-void

    .line 674
    :cond_0
    const-string v1, "BD.Scheduler"

    const-string v10, "report application activation info."

    invoke-static {v1, v10}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->isChinaRegion()Z

    move-result v1

    if-nez v1, :cond_1

    .line 676
    const-string v1, "BD.Scheduler"

    const-string v10, "current country does not support report app activate info"

    invoke-static {v1, v10}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :cond_1
    const-wide/16 v2, 0x0

    .line 680
    .local v2, "beginTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 682
    .local v4, "endTime":J
    iget-object v1, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    const-string v10, "usagestats"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 683
    .local v0, "usageStatsManager":Landroid/app/usage/UsageStatsManager;
    const/4 v1, 0x0

    .line 684
    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v8

    .line 685
    .local v8, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 686
    :cond_2
    const-string v1, "BD.Scheduler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "queryUsageStats null or empty beginT="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " endT="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 689
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 690
    .local v7, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStats;

    .line 691
    .local v9, "us":Landroid/app/usage/UsageStats;
    invoke-virtual {v9}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 692
    invoke-virtual {v9}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 695
    .end local v9    # "us":Landroid/app/usage/UsageStats;
    :cond_5
    new-instance v6, Lcom/huawei/bd/collector/AppActivityInfoReporter;

    iget-object v1, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    invoke-direct {v6, v1}, Lcom/huawei/bd/collector/AppActivityInfoReporter;-><init>(Landroid/content/Context;)V

    .line 696
    .local v6, "appCollector":Lcom/huawei/bd/collector/AppActivityInfoReporter;
    invoke-virtual {v6, v7}, Lcom/huawei/bd/collector/AppActivityInfoReporter;->handleMessage(Ljava/util/List;)V

    .line 697
    const-string v1, "BD.Scheduler"

    const-string v10, "report application activation info ok."

    invoke-static {v1, v10}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private restoreSchedulerInfo()V
    .locals 7

    .prologue
    .line 184
    iget-object v5, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 185
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "SchedulerInfo"

    const-string v6, "{time:0, count:0, day_of_year:-1}"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "schedulerInfo":Ljava/lang/String;
    const/4 v0, 0x0

    .line 188
    .local v0, "count":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, "jsonSchedulerInfo":Lorg/json/JSONObject;
    const-string v5, "count"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 193
    .end local v2    # "jsonSchedulerInfo":Lorg/json/JSONObject;
    :goto_0
    sput v0, Lcom/huawei/bd/collector/Scheduler;->scheduleCounts:I

    .line 194
    return-void

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "BD.Scheduler"

    const-string v6, "JSONException : restoreSchedulerInfo"

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private retrievalItemsInfo(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/huawei/bd/collector/Scheduler;->isContextIllegal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    const-string v1, "BD.Scheduler"

    const-string v2, "Can\'t get the context, stop running retrievalItemsInfo"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_0
    return-void

    .line 415
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 419
    .local v0, "item":Ljava/lang/String;
    const-string v2, "HardwareConfig"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 420
    invoke-direct {p0}, Lcom/huawei/bd/collector/Scheduler;->getHardwareInfo()V

    goto :goto_0

    .line 421
    :cond_3
    const-string v2, "SoftwareConfig"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 422
    invoke-direct {p0}, Lcom/huawei/bd/collector/Scheduler;->getSoftewareInfo()V

    goto :goto_0

    .line 423
    :cond_4
    const-string v2, "NetworkConfig"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 424
    invoke-direct {p0}, Lcom/huawei/bd/collector/Scheduler;->getNetworkInfo()V

    goto :goto_0

    .line 425
    :cond_5
    const-string v2, "AccumulativeInfo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 426
    invoke-direct {p0}, Lcom/huawei/bd/collector/Scheduler;->saveAccumulativeInfo()V

    goto :goto_0

    .line 427
    :cond_6
    const-string v2, "AllInstalledAPP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 428
    invoke-direct {p0}, Lcom/huawei/bd/collector/Scheduler;->getAllInstalledApp()V

    goto :goto_0

    .line 429
    :cond_7
    const-string v2, "Performance"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    invoke-direct {p0}, Lcom/huawei/bd/collector/Scheduler;->getPerformanceInfo()V

    goto :goto_0
.end method

.method private saveAccumulativeInfo()V
    .locals 13

    .prologue
    const/16 v5, 0x14

    const/4 v12, 0x0

    .line 575
    iget-object v0, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    const-string v3, "Accumulative_Info"

    .line 576
    invoke-virtual {v0, v3, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 577
    .local v9, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    .line 578
    .local v6, "appCounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-nez v6, :cond_0

    .line 612
    :goto_0
    return-void

    .line 581
    :cond_0
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 582
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 583
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 587
    const-string v0, "UsingDura"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    invoke-direct {p0, v7}, Lcom/huawei/bd/collector/Scheduler;->processPreferenceUsingDura(Ljava/util/Map$Entry;)V

    goto :goto_1

    .line 589
    :cond_2
    const-string v0, "SensorVal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 591
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 592
    .local v8, "sensorVal":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 593
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v0

    const v3, 0x2001f

    invoke-virtual {v0, v3, v8, v5}, Lcom/huawei/bd/collector/BigDataCollector;->saveLocalInfo(ILjava/lang/String;I)V

    goto :goto_1

    .line 598
    .end local v8    # "sensorVal":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, "verName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 603
    .local v4, "content":Ljava/lang/String;
    sget-object v0, Lcom/huawei/bd/utils/Common;->PACKAGE_ALIAS:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 604
    sget-object v0, Lcom/huawei/bd/utils/Common;->PACKAGE_ALIAS:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "key":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 606
    .restart local v1    # "key":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v11

    new-instance v0, Lcom/huawei/bd/events/AppActionEvent;

    const/high16 v3, 0x30000

    invoke-direct/range {v0 .. v5}, Lcom/huawei/bd/events/AppActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v11, v0, v12}, Lcom/huawei/bd/collector/BigDataCollector;->saveEvent(Lcom/huawei/bd/events/BaseEvent;I)V

    goto :goto_1

    .line 611
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "verName":Ljava/lang/String;
    .end local v4    # "content":Ljava/lang/String;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_5
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method private setDailyHeartBeatAlarm()V
    .locals 9

    .prologue
    .line 229
    iget-object v1, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 230
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-string v1, "com.huawei.bd.action.heartbeat"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v8, "intent":Landroid/content/Intent;
    const-string v1, "com.huawei.bd"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    .line 234
    invoke-static {v1, v2, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 235
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 236
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 238
    const/4 v1, 0x0

    sput-boolean v1, Lcom/huawei/bd/collector/Scheduler;->isNeedSetDailyAlarm:Z

    .line 239
    const-string v1, "BD.Scheduler"

    const-string v2, "Heartbeat start"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v7

    .line 241
    .local v7, "e":Ljava/lang/SecurityException;
    const-string v1, "BD.Scheduler"

    const-string v2, "SecurityException package not found"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setHeartBeatAlarm()V
    .locals 12

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x0

    .line 198
    invoke-direct {p0}, Lcom/huawei/bd/collector/Scheduler;->isAllowTime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/huawei/bd/collector/Scheduler;->setDailyHeartBeatAlarm()V

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 204
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.huawei.bd.action.heartbeat_hour"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v9, "hoursHeartBeat":Landroid/content/Intent;
    const-string v1, "com.huawei.bd"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const/4 v6, 0x0

    .line 208
    .local v6, "hoursPendingIntent":Landroid/app/PendingIntent;
    :try_start_0
    iget-object v1, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    .line 209
    invoke-static {v1, v2, v9, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 213
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 214
    .local v7, "calendar":Ljava/util/Calendar;
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v11

    .line 215
    .local v11, "randomDelayedMinutes":I
    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 216
    .local v10, "nowHour":I
    add-int/lit8 v1, v10, 0x1

    invoke-virtual {v7, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 217
    const/16 v1, 0xc

    invoke-virtual {v7, v1, v11}, Ljava/util/Calendar;->set(II)V

    .line 218
    const/16 v1, 0xd

    invoke-virtual {v7, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 220
    if-eqz v6, :cond_1

    .line 221
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 222
    const/4 v1, 0x1

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 225
    :cond_1
    const-string v1, "BD.Scheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Heartbeat hours start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void

    .line 210
    .end local v7    # "calendar":Ljava/util/Calendar;
    .end local v10    # "nowHour":I
    .end local v11    # "randomDelayedMinutes":I
    :catch_0
    move-exception v8

    .line 211
    .local v8, "e":Ljava/lang/SecurityException;
    const-string v1, "BD.Scheduler"

    const-string v2, "SecurityException package not found"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 4
    .param p1, "currentContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 141
    const-string v1, "BD.Scheduler"

    const-string v2, "initialize"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iput-object p1, p0, Lcom/huawei/bd/collector/Scheduler;->context:Landroid/content/Context;

    .line 143
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 144
    .local v0, "message":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 145
    iget-object v1, p0, Lcom/huawei/bd/collector/Scheduler;->mhandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    iget-object v1, p0, Lcom/huawei/bd/collector/Scheduler;->mhandler:Landroid/os/Handler;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 150
    return-void
.end method

.method public onDestory()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public startDayTask(Landroid/content/Context;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 318
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huawei/bd/collector/Scheduler$2;

    invoke-direct {v1, p0, p1}, Lcom/huawei/bd/collector/Scheduler$2;-><init>(Lcom/huawei/bd/collector/Scheduler;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 367
    .local v0, "dayTaskThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 368
    return-void
.end method

.method public startHourTask(Landroid/content/Context;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 376
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huawei/bd/collector/Scheduler$3;

    invoke-direct {v1, p0, p1}, Lcom/huawei/bd/collector/Scheduler$3;-><init>(Lcom/huawei/bd/collector/Scheduler;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 407
    .local v0, "hourTaskThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 408
    return-void
.end method
