.class public Lcom/huawei/bd/collector/BigDataCollector;
.super Ljava/lang/Object;
.source "BigDataCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;
    }
.end annotation


# static fields
.field private static final ANDRIOD_SDK_28_VERSION:I = 0x1c

.field private static final APP_DISPLAY_MIN_TIME:J = 0x64L

.field private static final BASE_EVENT_OFFSET:I = 0x3

.field private static final BIG_MONTH_DAYS:I = 0x1f

.field private static final FILE_SIZE_GAIN:D = 1024.0

.field private static final IT_UDID:I = 0x9

.field private static final IT_UUID:I = 0x6

.field private static final LAST_CHIPSETS_DATA_MAX_LEN:J = 0x2800L

.field private static final LAST_CHIPSETS_DATA_MIN_LEN:J = 0x18L

.field private static final LIGHT_SENSOR_SAMPLING_PERIOD:I = 0xf4240

.field private static final SEND_MESSAGE_WAIT_TIME:I = 0x1f4

.field private static final SMALL_MONTH_DAYS:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "BD.BigDataCollector"

.field private static final USED_AVAILABLE_MEMORY_SIZE:I = 0xc8

.field private static bigDataCollectorInstance:Lcom/huawei/bd/collector/BigDataCollector;

.field private static isSupportLandTime:Z

.field private static isSupportPcTime:Z


# instance fields
.field private context:Landroid/content/Context;

.field private dataRecorder:Lcom/huawei/bd/recorder/BigDataRecorder;

.field private interfaceBigDataCollection:Lcom/huawei/bd/collector/InterfaceBigDataCollection;

.field private lastAvailableMemory:D

.field private lightSensor:Landroid/hardware/Sensor;

.field private final lightSensorListener:Landroid/hardware/SensorEventListener;

.field private nativeCollection:Lcom/huawei/bd/collector/NativeCollection;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/bd/collector/BigDataCollector;->bigDataCollectorInstance:Lcom/huawei/bd/collector/BigDataCollector;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Lcom/huawei/bd/collector/BigDataCollector$1;

    invoke-direct {v0, p0}, Lcom/huawei/bd/collector/BigDataCollector$1;-><init>(Lcom/huawei/bd/collector/BigDataCollector;)V

    iput-object v0, p0, Lcom/huawei/bd/collector/BigDataCollector;->lightSensorListener:Landroid/hardware/SensorEventListener;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/bd/collector/BigDataCollector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/collector/BigDataCollector;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/huawei/bd/collector/BigDataCollector;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/huawei/bd/collector/BigDataCollector;->isSupportLandTime:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/huawei/bd/collector/BigDataCollector;->isSupportPcTime:Z

    return v0
.end method

.method private checkChipsetsData()Z
    .locals 6

    .prologue
    .line 581
    iget-object v4, p0, Lcom/huawei/bd/collector/BigDataCollector;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 582
    .local v0, "files":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/huawei/bd/utils/CommonsUtils;->getCanonicalPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/last_chipsets_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 583
    .local v1, "lastChipSetsFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 584
    .local v2, "lcdLen":J
    const-wide/16 v4, 0x18

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    const-wide/16 v4, 0x2800

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 585
    :cond_0
    const/4 v4, 0x0

    .line 588
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private convertBigDataUsageStatsToJsonArray(Ljava/util/ArrayList;I)Lorg/json/JSONArray;
    .locals 12
    .param p2, "sdkBuildVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/bd/collector/BigDataUsageStats;",
            ">;I)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .local p1, "bigDataUsageStatsArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/bd/collector/BigDataUsageStats;>;"
    const/4 v5, 0x0

    .line 361
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 363
    .local v2, "usageArray":Lorg/json/JSONArray;
    :try_start_0
    invoke-static {}, Lcom/huawei/privacyability/DiffPrivacyManager;->getInstance()Lcom/huawei/privacyability/DiffPrivacyManager;

    move-result-object v0

    .line 364
    .local v0, "diffPrivacyManager":Lcom/huawei/privacyability/DiffPrivacyManager;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/bd/collector/BigDataUsageStats;

    .line 365
    .local v4, "usageStats":Lcom/huawei/bd/collector/BigDataUsageStats;
    invoke-virtual {v4}, Lcom/huawei/bd/collector/BigDataUsageStats;->getUsageTime()J

    move-result-wide v8

    const-wide/16 v10, 0x64

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 368
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->isChinaRegion()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4}, Lcom/huawei/bd/collector/BigDataUsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/bd/utils/BigDataUtils;->isWhiteListPackage(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 369
    invoke-virtual {v4}, Lcom/huawei/bd/collector/BigDataUsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "hiview_bloomfilter"

    .line 370
    invoke-static {v8}, Lcom/huawei/bd/utils/BigDataUtils;->getDiffPrivacyParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 369
    invoke-virtual {v0, v7, v8}, Lcom/huawei/privacyability/DiffPrivacyManager;->diffPrivacyBloomfilter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/huawei/bd/collector/BigDataUsageStats;->setPackageName(Ljava/lang/String;)V

    .line 372
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 373
    .local v3, "usageJson":Lorg/json/JSONObject;
    const-string v7, "PN"

    invoke-virtual {v4}, Lcom/huawei/bd/collector/BigDataUsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    const-string v7, "COUNT"

    invoke-virtual {v4}, Lcom/huawei/bd/collector/BigDataUsageStats;->getLaunchCount()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 375
    const-string v7, "TIME"

    invoke-virtual {v4}, Lcom/huawei/bd/collector/BigDataUsageStats;->getUsageTime()J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 376
    const-string v7, "LAST_USE"

    invoke-virtual {v4}, Lcom/huawei/bd/collector/BigDataUsageStats;->getLastUseTime()J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 377
    const-string v7, "LAND_TIME"

    invoke-virtual {v4}, Lcom/huawei/bd/collector/BigDataUsageStats;->getLandUsageTime()J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 378
    const-string v7, "PC_TIME"

    invoke-virtual {v4}, Lcom/huawei/bd/collector/BigDataUsageStats;->getTimeInPcForeground()J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 379
    const-string v7, "LAST_IN_PC"

    invoke-virtual {v4}, Lcom/huawei/bd/collector/BigDataUsageStats;->getLastTimeUsedInPc()J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 380
    const-string v7, "WIRELESS_PC_TIME"

    invoke-virtual {v4}, Lcom/huawei/bd/collector/BigDataUsageStats;->getTimeInWirelessPcForeground()J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 381
    const-string v7, "LAST_IN_WIRELESS_PC"

    invoke-virtual {v4}, Lcom/huawei/bd/collector/BigDataUsageStats;->getLastTimeUsedInWirelessPc()J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 382
    const/16 v7, 0x1c

    if-lt p2, v7, :cond_2

    .line 383
    const-string v7, "APP_COUNT"

    invoke-virtual {v4}, Lcom/huawei/bd/collector/BigDataUsageStats;->getAppLaunchCount()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 385
    :cond_2
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 387
    .end local v0    # "diffPrivacyManager":Lcom/huawei/privacyability/DiffPrivacyManager;
    .end local v3    # "usageJson":Lorg/json/JSONObject;
    .end local v4    # "usageStats":Lcom/huawei/bd/collector/BigDataUsageStats;
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Lcom/huawei/android/util/NoExtAPIException;
    const-string v6, "BD.BigDataCollector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NoExtAPIException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/huawei/android/util/NoExtAPIException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 395
    .end local v1    # "e":Lcom/huawei/android/util/NoExtAPIException;
    .end local v2    # "usageArray":Lorg/json/JSONArray;
    :cond_3
    :goto_1
    return-object v2

    .line 390
    .restart local v2    # "usageArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v1

    .line 391
    .local v1, "e":Lorg/json/JSONException;
    const-string v6, "BD.BigDataCollector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JSONException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 392
    goto :goto_1
.end method

.method private convertChipsetsData()V
    .locals 11

    .prologue
    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 597
    .local v2, "bufferedWriter":Ljava/io/BufferedWriter;
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x10

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 600
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    iget-object v8, p0, Lcom/huawei/bd/collector/BigDataCollector;->context:Landroid/content/Context;

    const-string v9, "last_chipsets_data"

    .line 601
    invoke-virtual {v8, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_1
    const-string v7, "{utc:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 604
    const-string v7, ", chipsets:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "tempData":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 607
    const-string v7, "\\s+"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 615
    .end local v6    # "tempData":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 616
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    const-string v7, "BD.BigDataCollector"

    const-string v8, "FileNotFoundException : convertChipsetsData"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 621
    if-eqz v0, :cond_0

    .line 622
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 628
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 629
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 635
    :cond_1
    :goto_3
    return-void

    .line 609
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "tempData":Ljava/lang/String;
    :cond_2
    :try_start_5
    const-string v7, "}"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    iget-object v8, p0, Lcom/huawei/bd/collector/BigDataCollector;->context:Landroid/content/Context;

    const-string v9, "daily_chipsets_data"

    const v10, 0x8000

    .line 612
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 613
    .end local v2    # "bufferedWriter":Ljava/io/BufferedWriter;
    .local v3, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 621
    if-eqz v1, :cond_3

    .line 622
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 628
    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    .line 629
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_4
    move-object v2, v3

    .end local v3    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v2    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v0, v1

    .line 633
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 624
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "bufferedWriter":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v4

    .line 625
    .local v4, "e":Ljava/io/IOException;
    const-string v7, "BD.BigDataCollector"

    const-string v8, "IOException : convertChipsetsData close bufferedReader"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 631
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 632
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v7, "BD.BigDataCollector"

    const-string v8, "IOException : convertChipsetsData close bufferedWriter"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .end local v3    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v2    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v0, v1

    .line 634
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 624
    .end local v6    # "tempData":Ljava/lang/String;
    .local v4, "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v4

    .line 625
    .local v4, "e":Ljava/io/IOException;
    const-string v7, "BD.BigDataCollector"

    const-string v8, "IOException : convertChipsetsData close bufferedReader"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 631
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 632
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v7, "BD.BigDataCollector"

    const-string v8, "IOException : convertChipsetsData close bufferedWriter"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 617
    .end local v4    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 618
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_9
    const-string v7, "BD.BigDataCollector"

    const-string v8, "IOException : convertChipsetsData"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 621
    if-eqz v0, :cond_5

    .line 622
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 628
    :cond_5
    :goto_6
    if-eqz v2, :cond_1

    .line 629
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_3

    .line 631
    :catch_6
    move-exception v4

    .line 632
    const-string v7, "BD.BigDataCollector"

    const-string v8, "IOException : convertChipsetsData close bufferedWriter"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 624
    :catch_7
    move-exception v4

    .line 625
    const-string v7, "BD.BigDataCollector"

    const-string v8, "IOException : convertChipsetsData close bufferedReader"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 620
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 621
    :goto_7
    if-eqz v0, :cond_6

    .line 622
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 628
    :cond_6
    :goto_8
    if-eqz v2, :cond_7

    .line 629
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 634
    :cond_7
    :goto_9
    throw v7

    .line 624
    :catch_8
    move-exception v4

    .line 625
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v8, "BD.BigDataCollector"

    const-string v9, "IOException : convertChipsetsData close bufferedReader"

    invoke-static {v8, v9}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 631
    .end local v4    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v4

    .line 632
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v8, "BD.BigDataCollector"

    const-string v9, "IOException : convertChipsetsData close bufferedWriter"

    invoke-static {v8, v9}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 620
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_7

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v6    # "tempData":Ljava/lang/String;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v2    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 617
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "tempData":Ljava/lang/String;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_a
    move-exception v4

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v6    # "tempData":Ljava/lang/String;
    :catch_b
    move-exception v4

    move-object v2, v3

    .end local v3    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v2    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 615
    .end local v6    # "tempData":Ljava/lang/String;
    :catch_c
    move-exception v4

    goto/16 :goto_1

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v6    # "tempData":Ljava/lang/String;
    :catch_d
    move-exception v4

    move-object v2, v3

    .end local v3    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v2    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method private createRomInfo()Lcom/huawei/bd/events/RomInfoEvent;
    .locals 4

    .prologue
    .line 478
    new-instance v1, Lcom/huawei/bd/events/RomInfoEvent;

    invoke-direct {v1}, Lcom/huawei/bd/events/RomInfoEvent;-><init>()V

    .line 479
    .local v1, "romInfoEvent":Lcom/huawei/bd/events/RomInfoEvent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/bd/events/RomInfoEvent;->setRecordTime(Ljava/lang/String;)V

    .line 480
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->isChinaRegion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    invoke-static {}, Lcom/huawei/android/os/BuildEx;->getUDID()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "romId":Ljava/lang/String;
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/huawei/bd/events/RomInfoEvent;->setOpta(I)V

    .line 483
    invoke-virtual {v1, v0}, Lcom/huawei/bd/events/RomInfoEvent;->setImeiCode(Ljava/lang/String;)V

    .line 484
    iget-object v2, p0, Lcom/huawei/bd/collector/BigDataCollector;->interfaceBigDataCollection:Lcom/huawei/bd/collector/InterfaceBigDataCollection;

    iget-object v3, p0, Lcom/huawei/bd/collector/BigDataCollector;->context:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/bd/events/RomInfoEvent;->setImsiCode(Ljava/lang/String;)V

    .line 490
    .end local v0    # "romId":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/huawei/bd/collector/BigDataCollector;->interfaceBigDataCollection:Lcom/huawei/bd/collector/InterfaceBigDataCollection;

    invoke-interface {v2}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getBuildNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/bd/events/RomInfoEvent;->setRomVersion(Ljava/lang/String;)V

    .line 491
    iget-object v2, p0, Lcom/huawei/bd/collector/BigDataCollector;->interfaceBigDataCollection:Lcom/huawei/bd/collector/InterfaceBigDataCollection;

    invoke-interface {v2}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getEmuiVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/bd/events/RomInfoEvent;->setEmuiVersion(Ljava/lang/String;)V

    .line 492
    iget-object v2, p0, Lcom/huawei/bd/collector/BigDataCollector;->interfaceBigDataCollection:Lcom/huawei/bd/collector/InterfaceBigDataCollection;

    invoke-interface {v2}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/bd/events/RomInfoEvent;->setDeviceName(Ljava/lang/String;)V

    .line 493
    return-object v1

    .line 486
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/bd/collector/BigDataCollector;->getPersistUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/bd/events/RomInfoEvent;->setImeiCode(Ljava/lang/String;)V

    .line 487
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/huawei/bd/events/RomInfoEvent;->setOpta(I)V

    .line 488
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->getCountryLocalRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/bd/events/RomInfoEvent;->setSnCode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createUsageLocalInfo(ILjava/lang/String;Ljava/lang/String;I)Lcom/huawei/bd/events/LocalInfoEvent;
    .locals 5
    .param p1, "id"    # I
    .param p2, "date"    # Ljava/lang/String;
    .param p3, "usage"    # Ljava/lang/String;
    .param p4, "priority"    # I

    .prologue
    .line 497
    new-instance v0, Lcom/huawei/bd/events/LocalInfoEvent;

    invoke-direct {v0}, Lcom/huawei/bd/events/LocalInfoEvent;-><init>()V

    .line 498
    .local v0, "appInfo":Lcom/huawei/bd/events/LocalInfoEvent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 499
    .local v2, "recordTime":J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/huawei/bd/events/LocalInfoEvent;->setRecordTime(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0, p4}, Lcom/huawei/bd/events/LocalInfoEvent;->setPriority(I)V

    .line 501
    invoke-virtual {v0, p1}, Lcom/huawei/bd/events/LocalInfoEvent;->setInfoId(I)V

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 503
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v4, "{DT:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const-string v4, ", CT:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const-string v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/huawei/bd/events/LocalInfoEvent;->setContent(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v0, p2}, Lcom/huawei/bd/events/LocalInfoEvent;->setReserved(Ljava/lang/String;)V

    .line 512
    return-object v0
.end method

.method private findBigDataUsageStatByPkg(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 3
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/bd/collector/BigDataUsageStats;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 516
    .local p1, "bdStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/bd/collector/BigDataUsageStats;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 517
    .local v0, "bdStatsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 518
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/bd/collector/BigDataUsageStats;

    invoke-virtual {v2}, Lcom/huawei/bd/collector/BigDataUsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 517
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 522
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getChipsetsData()Z
    .locals 6

    .prologue
    .line 556
    const/4 v2, 0x0

    .line 557
    .local v2, "isSuccess":Z
    const/4 v1, 0x0

    .line 559
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/huawei/bd/collector/BigDataCollector;->context:Landroid/content/Context;

    const-string v4, "last_chipsets_data"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 560
    if-eqz v1, :cond_0

    .line 561
    iget-object v3, p0, Lcom/huawei/bd/collector/BigDataCollector;->nativeCollection:Lcom/huawei/bd/collector/NativeCollection;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/bd/collector/NativeCollection;->isDumpPowerProfile(Ljava/io/FileDescriptor;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 569
    :cond_0
    if-eqz v1, :cond_1

    .line 570
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 577
    :cond_1
    :goto_0
    return v2

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "BD.BigDataCollector"

    const-string v4, "IOException : getChipsetsData close file"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 563
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 564
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v3, "BD.BigDataCollector"

    const-string v4, "FileNotFoundException : getChipsetsData"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 569
    if-eqz v1, :cond_1

    .line 570
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 572
    :catch_2
    move-exception v0

    .line 573
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "BD.BigDataCollector"

    const-string v4, "IOException : getChipsetsData close file"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 565
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 566
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_4
    const-string v3, "BD.BigDataCollector"

    const-string v4, "IOException : getChipsetsData"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 569
    if-eqz v1, :cond_1

    .line 570
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 572
    :catch_4
    move-exception v0

    .line 573
    const-string v3, "BD.BigDataCollector"

    const-string v4, "IOException : getChipsetsData close file"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 568
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 569
    if-eqz v1, :cond_2

    .line 570
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 575
    :cond_2
    :goto_1
    throw v3

    .line 572
    :catch_5
    move-exception v0

    .line 573
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "BD.BigDataCollector"

    const-string v5, "IOException : getChipsetsData close file"

    invoke-static {v4, v5}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/bd/collector/BigDataCollector;
    .locals 2

    .prologue
    .line 157
    const-class v1, Lcom/huawei/bd/collector/BigDataCollector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/bd/collector/BigDataCollector;->bigDataCollectorInstance:Lcom/huawei/bd/collector/BigDataCollector;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/huawei/bd/collector/BigDataCollector;

    invoke-direct {v0}, Lcom/huawei/bd/collector/BigDataCollector;-><init>()V

    sput-object v0, Lcom/huawei/bd/collector/BigDataCollector;->bigDataCollectorInstance:Lcom/huawei/bd/collector/BigDataCollector;

    .line 159
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->isSupportLandTime()Z

    move-result v0

    sput-boolean v0, Lcom/huawei/bd/collector/BigDataCollector;->isSupportLandTime:Z

    .line 160
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->isSupportPcTime()Z

    move-result v0

    sput-boolean v0, Lcom/huawei/bd/collector/BigDataCollector;->isSupportPcTime:Z

    .line 162
    :cond_0
    sget-object v0, Lcom/huawei/bd/collector/BigDataCollector;->bigDataCollectorInstance:Lcom/huawei/bd/collector/BigDataCollector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isSupportLandTime()Z
    .locals 5

    .prologue
    .line 742
    const/4 v1, 0x0

    .line 744
    .local v1, "isSupport":Z
    :try_start_0
    const-string v2, "android.app.usage.UsageStats"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getLandTimeInForeground"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 745
    const/4 v1, 0x1

    .line 746
    const-string v2, "BD.BigDataCollector"

    const-string v3, "UsageStats.getLandTimeInForeground support"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 754
    :goto_0
    return v1

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "BD.BigDataCollector"

    const-string v3, "NoSuchMethodException UsageStats.getLandTimeInForeground not support"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 749
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 750
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "BD.BigDataCollector"

    const-string v3, "SecurityException UsageStats.getLandTimeInForeground not support"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 751
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 752
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "BD.BigDataCollector"

    const-string v3, "ClassNotFoundException UsageStats.getLandTimeInForeground not support"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isSupportPcTime()Z
    .locals 4

    .prologue
    .line 758
    const/4 v1, 0x0

    .line 760
    .local v1, "isSupport":Z
    :try_start_0
    const-string v2, "android.app.usage.UsageStats"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "timeInPcForeground"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 761
    const-string v2, "android.app.usage.UsageStats"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "lastTimeUsedInPc"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 762
    const/4 v1, 0x1

    .line 763
    const-string v2, "BD.BigDataCollector"

    const-string v3, "UsageStats.timeInPcForeground support"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 769
    :goto_0
    return v1

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "BD.BigDataCollector"

    const-string v3, "NoSuchFieldException UsageStats.timeInPcForeground not support"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 766
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 767
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "BD.BigDataCollector"

    const-string v3, "ClassNotFoundException UsageStats.timeInPcForeground not support"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private queryCurrentUsageStatsByTimePeriod(ILjava/util/List;)Ljava/util/ArrayList;
    .locals 28
    .param p1, "sdkBuildVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/bd/collector/BigDataUsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    .local p2, "usageStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    new-instance v6, Ljava/util/ArrayList;

    const/16 v21, 0x10

    move/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 310
    .local v6, "bigDataUsageStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/bd/collector/BigDataUsageStats;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStats;

    .line 311
    .local v9, "us":Landroid/app/usage/UsageStats;
    invoke-virtual {v9}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v6, v1}, Lcom/huawei/bd/collector/BigDataCollector;->findBigDataUsageStatByPkg(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v8

    .line 313
    .local v8, "index":I
    :try_start_0
    new-instance v21, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v9}, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;-><init>(Lcom/huawei/bd/collector/BigDataCollector;ILandroid/app/usage/UsageStats;)V

    invoke-virtual/range {v21 .. v21}, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->invoke()Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;

    move-result-object v20

    .line 314
    .local v20, "usageStatsParameter":Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;
    invoke-virtual/range {v20 .. v20}, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->getLandUsageTime()J

    move-result-wide v10

    .line 315
    .local v10, "landUsageTime":J
    invoke-virtual/range {v20 .. v20}, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->getTimeInPcForeground()J

    move-result-wide v16

    .line 316
    .local v16, "timeInPcForeground":J
    invoke-virtual/range {v20 .. v20}, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->getLastTimeUsedInPc()J

    move-result-wide v12

    .line 317
    .local v12, "lastTimeUsedInPc":J
    invoke-virtual/range {v20 .. v20}, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->getTimeInWirelessPcForeground()J

    move-result-wide v18

    .line 318
    .local v18, "timeInWirelessPcForeground":J
    invoke-virtual/range {v20 .. v20}, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->getLastTimeUsedInWirelessPc()J

    move-result-wide v14

    .line 319
    .local v14, "lastTimeUsedInWirelessPc":J
    invoke-virtual/range {v20 .. v20}, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->getAppLaunchCount()I

    move-result v4

    .line 320
    .local v4, "appLaunchCount":I
    if-ltz v8, :cond_1

    .line 321
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/huawei/bd/collector/BigDataUsageStats;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/huawei/bd/collector/BigDataUsageStats;

    invoke-virtual/range {v22 .. v22}, Lcom/huawei/bd/collector/BigDataUsageStats;->getLaunchCount()I

    move-result v22

    .line 322
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string v25, "mLaunchCount"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v24

    add-int v22, v22, v24

    .line 321
    invoke-virtual/range {v21 .. v22}, Lcom/huawei/bd/collector/BigDataUsageStats;->setLaunchCount(I)V

    .line 323
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/huawei/bd/collector/BigDataUsageStats;

    .line 324
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/huawei/bd/collector/BigDataUsageStats;

    invoke-virtual/range {v22 .. v22}, Lcom/huawei/bd/collector/BigDataUsageStats;->getUsageTime()J

    move-result-wide v24

    invoke-virtual {v9}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/huawei/bd/collector/BigDataUsageStats;->setUsageTime(J)V

    .line 325
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/huawei/bd/collector/BigDataUsageStats;

    invoke-virtual {v9}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v24

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/huawei/bd/collector/BigDataUsageStats;->setLastUseTime(J)V

    .line 326
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/huawei/bd/collector/BigDataUsageStats;

    .line 327
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/huawei/bd/collector/BigDataUsageStats;

    invoke-virtual/range {v22 .. v22}, Lcom/huawei/bd/collector/BigDataUsageStats;->getLandUsageTime()J

    move-result-wide v24

    add-long v24, v24, v10

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/huawei/bd/collector/BigDataUsageStats;->setLandUsageTime(J)V

    .line 328
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/huawei/bd/collector/BigDataUsageStats;

    .line 329
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/huawei/bd/collector/BigDataUsageStats;

    invoke-virtual/range {v22 .. v22}, Lcom/huawei/bd/collector/BigDataUsageStats;->getTimeInPcForeground()J

    move-result-wide v24

    add-long v24, v24, v16

    .line 328
    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/huawei/bd/collector/BigDataUsageStats;->setTimeInPcForeground(J)V

    .line 330
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/huawei/bd/collector/BigDataUsageStats;

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Lcom/huawei/bd/collector/BigDataUsageStats;->setLastTimeUsedInPc(J)V

    .line 331
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/huawei/bd/collector/BigDataUsageStats;

    .line 332
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/huawei/bd/collector/BigDataUsageStats;

    invoke-virtual/range {v22 .. v22}, Lcom/huawei/bd/collector/BigDataUsageStats;->getTimeInWirelessPcForeground()J

    move-result-wide v24

    add-long v24, v24, v18

    .line 331
    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/huawei/bd/collector/BigDataUsageStats;->setTimeInWirelessPcForeground(J)V

    .line 333
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/huawei/bd/collector/BigDataUsageStats;

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Lcom/huawei/bd/collector/BigDataUsageStats;->setLastTimeUsedInWirelessPc(J)V

    .line 334
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/huawei/bd/collector/BigDataUsageStats;

    .line 335
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/huawei/bd/collector/BigDataUsageStats;

    invoke-virtual/range {v22 .. v22}, Lcom/huawei/bd/collector/BigDataUsageStats;->getAppLaunchCount()I

    move-result v22

    add-int v22, v22, v4

    invoke-virtual/range {v21 .. v22}, Lcom/huawei/bd/collector/BigDataUsageStats;->setAppLaunchCount(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 350
    .end local v4    # "appLaunchCount":I
    .end local v10    # "landUsageTime":J
    .end local v12    # "lastTimeUsedInPc":J
    .end local v14    # "lastTimeUsedInWirelessPc":J
    .end local v16    # "timeInPcForeground":J
    .end local v18    # "timeInWirelessPcForeground":J
    .end local v20    # "usageStatsParameter":Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;
    :catch_0
    move-exception v7

    .line 352
    .local v7, "e":Ljava/lang/Exception;
    :goto_1
    const-string v21, "BD.BigDataCollector"

    const-string v22, "saveUsageStat NoSuchMethodException"

    invoke-static/range {v21 .. v22}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const/4 v6, 0x0

    .line 356
    .end local v6    # "bigDataUsageStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/bd/collector/BigDataUsageStats;>;"
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "index":I
    .end local v9    # "us":Landroid/app/usage/UsageStats;
    :cond_0
    return-object v6

    .line 337
    .restart local v4    # "appLaunchCount":I
    .restart local v6    # "bigDataUsageStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/bd/collector/BigDataUsageStats;>;"
    .restart local v8    # "index":I
    .restart local v9    # "us":Landroid/app/usage/UsageStats;
    .restart local v10    # "landUsageTime":J
    .restart local v12    # "lastTimeUsedInPc":J
    .restart local v14    # "lastTimeUsedInWirelessPc":J
    .restart local v16    # "timeInPcForeground":J
    .restart local v18    # "timeInWirelessPcForeground":J
    .restart local v20    # "usageStatsParameter":Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;
    :cond_1
    :try_start_1
    new-instance v5, Lcom/huawei/bd/collector/BigDataUsageStats;

    invoke-direct {v5}, Lcom/huawei/bd/collector/BigDataUsageStats;-><init>()V

    .line 338
    .local v5, "bdUsageStats":Lcom/huawei/bd/collector/BigDataUsageStats;
    invoke-virtual {v5, v4}, Lcom/huawei/bd/collector/BigDataUsageStats;->setAppLaunchCount(I)V

    .line 339
    invoke-virtual {v9}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/huawei/bd/collector/BigDataUsageStats;->setPackageName(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    const-string v22, "mLaunchCount"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/huawei/bd/collector/BigDataUsageStats;->setLaunchCount(I)V

    .line 341
    invoke-virtual {v9}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Lcom/huawei/bd/collector/BigDataUsageStats;->setUsageTime(J)V

    .line 342
    invoke-virtual {v9}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Lcom/huawei/bd/collector/BigDataUsageStats;->setLastUseTime(J)V

    .line 343
    invoke-virtual {v5, v10, v11}, Lcom/huawei/bd/collector/BigDataUsageStats;->setLandUsageTime(J)V

    .line 344
    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Lcom/huawei/bd/collector/BigDataUsageStats;->setTimeInPcForeground(J)V

    .line 345
    invoke-virtual {v5, v12, v13}, Lcom/huawei/bd/collector/BigDataUsageStats;->setLastTimeUsedInPc(J)V

    .line 346
    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Lcom/huawei/bd/collector/BigDataUsageStats;->setTimeInWirelessPcForeground(J)V

    .line 347
    invoke-virtual {v5, v14, v15}, Lcom/huawei/bd/collector/BigDataUsageStats;->setLastTimeUsedInWirelessPc(J)V

    .line 348
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 350
    .end local v4    # "appLaunchCount":I
    .end local v5    # "bdUsageStats":Lcom/huawei/bd/collector/BigDataUsageStats;
    .end local v10    # "landUsageTime":J
    .end local v12    # "lastTimeUsedInPc":J
    .end local v14    # "lastTimeUsedInWirelessPc":J
    .end local v16    # "timeInPcForeground":J
    .end local v18    # "timeInWirelessPcForeground":J
    .end local v20    # "usageStatsParameter":Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;
    :catch_1
    move-exception v7

    goto :goto_1

    :catch_2
    move-exception v7

    goto :goto_1

    :catch_3
    move-exception v7

    goto :goto_1

    :catch_4
    move-exception v7

    goto :goto_1

    :catch_5
    move-exception v7

    goto :goto_1
.end method

.method private readFully(Ljava/io/File;)[B
    .locals 11
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x0

    .line 671
    const-string v8, "BD.BigDataCollector"

    const-string v9, "readFully() begin "

    invoke-static {v8, v9}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const/4 v3, 0x0

    .line 673
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 675
    .local v7, "position":I
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 677
    .local v5, "fileSize":I
    new-array v0, v5, [B

    .line 679
    .local v0, "data":[B
    :cond_0
    :goto_0
    array-length v8, v0

    sub-int/2addr v8, v7

    invoke-virtual {v4, v0, v7, v8}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 680
    .local v1, "dataByte":I
    if-gtz v1, :cond_2

    .line 695
    if-eqz v4, :cond_1

    .line 696
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object v3, v4

    .line 702
    .end local v0    # "data":[B
    .end local v1    # "dataByte":I
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "fileSize":I
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_2
    return-object v0

    .line 698
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v0    # "data":[B
    .restart local v1    # "dataByte":I
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileSize":I
    :catch_0
    move-exception v2

    .line 699
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "BD.BigDataCollector"

    const-string v9, "IOException : readFully"

    invoke-static {v8, v9}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 683
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    add-int/2addr v7, v1

    .line 684
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 685
    array-length v8, v0

    sub-int/2addr v8, v7

    if-le v5, v8, :cond_0

    .line 686
    add-int v8, v7, v5

    new-array v6, v8, [B

    .line 687
    .local v6, "newData":[B
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v8, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 688
    move-object v0, v6

    goto :goto_0

    .line 691
    .end local v0    # "data":[B
    .end local v1    # "dataByte":I
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "fileSize":I
    .end local v6    # "newData":[B
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 692
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v8, "BD.BigDataCollector"

    const-string v9, "IOException : readFully"

    invoke-static {v8, v9}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 695
    if-eqz v3, :cond_3

    .line 696
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 702
    :cond_3
    :goto_4
    new-array v0, v10, [B

    goto :goto_2

    .line 698
    :catch_2
    move-exception v2

    .line 699
    const-string v8, "BD.BigDataCollector"

    const-string v9, "IOException : readFully"

    invoke-static {v8, v9}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 694
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 695
    :goto_5
    if-eqz v3, :cond_4

    .line 696
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 701
    :cond_4
    :goto_6
    throw v8

    .line 698
    :catch_3
    move-exception v2

    .line 699
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "BD.BigDataCollector"

    const-string v10, "IOException : readFully"

    invoke-static {v9, v10}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 694
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 691
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3
.end method


# virtual methods
.method public cacheDataAtAccuFile(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "prefsTag"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 532
    iget-object v4, p0, Lcom/huawei/bd/collector/BigDataCollector;->context:Landroid/content/Context;

    const-string v5, "Accumulative_Info"

    const/4 v6, 0x0

    .line 533
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 534
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    if-nez v3, :cond_0

    .line 553
    :goto_0
    return-void

    .line 537
    :cond_0
    const-string v4, ""

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "info":Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 541
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 545
    .local v2, "jsonArray":Lorg/json/JSONArray;
    :goto_1
    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 546
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 552
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 543
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_1

    .line 547
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "BD.BigDataCollector"

    const-string v5, "JSONException: cacheDataAtAccuFile"

    invoke-static {v4, v5}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCollection()Lcom/huawei/bd/collector/InterfaceBigDataCollection;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/huawei/bd/collector/BigDataCollector;->interfaceBigDataCollection:Lcom/huawei/bd/collector/InterfaceBigDataCollection;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/huawei/bd/collector/CollectionImplements;

    invoke-direct {v0}, Lcom/huawei/bd/collector/CollectionImplements;-><init>()V

    iput-object v0, p0, Lcom/huawei/bd/collector/BigDataCollector;->interfaceBigDataCollection:Lcom/huawei/bd/collector/InterfaceBigDataCollection;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/huawei/bd/collector/BigDataCollector;->interfaceBigDataCollection:Lcom/huawei/bd/collector/InterfaceBigDataCollection;

    return-object v0
.end method

.method public getPersistUuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 778
    iget-object v2, p0, Lcom/huawei/bd/collector/BigDataCollector;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 779
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "uuid"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 780
    .local v1, "uuid":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 781
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 782
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "uuid"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 784
    :cond_1
    return-object v1
.end method

.method public getStorageUsedSize()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    .line 711
    iget-object v1, p0, Lcom/huawei/bd/collector/BigDataCollector;->nativeCollection:Lcom/huawei/bd/collector/NativeCollection;

    invoke-virtual {v1}, Lcom/huawei/bd/collector/NativeCollection;->isJankRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 712
    const-string v1, ""

    .line 719
    :goto_0
    return-object v1

    .line 714
    :cond_0
    iget-object v1, p0, Lcom/huawei/bd/collector/BigDataCollector;->nativeCollection:Lcom/huawei/bd/collector/NativeCollection;

    const-string v4, "/data"

    invoke-virtual {v1, v4}, Lcom/huawei/bd/collector/NativeCollection;->getPathSize(Ljava/lang/String;)J

    move-result-wide v2

    .line 715
    .local v2, "size":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 716
    const-string v1, ""

    goto :goto_0

    .line 718
    :cond_1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 719
    .local v0, "df":Ljava/text/DecimalFormat;
    long-to-double v4, v2

    div-double/2addr v4, v6

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;)Landroid/os/Handler;
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/huawei/bd/collector/BigDataCollector;->context:Landroid/content/Context;

    .line 173
    new-instance v0, Lcom/huawei/bd/collector/CollectionImplements;

    invoke-direct {v0}, Lcom/huawei/bd/collector/CollectionImplements;-><init>()V

    iput-object v0, p0, Lcom/huawei/bd/collector/BigDataCollector;->interfaceBigDataCollection:Lcom/huawei/bd/collector/InterfaceBigDataCollection;

    .line 174
    new-instance v0, Lcom/huawei/bd/collector/NativeCollection;

    invoke-direct {v0}, Lcom/huawei/bd/collector/NativeCollection;-><init>()V

    iput-object v0, p0, Lcom/huawei/bd/collector/BigDataCollector;->nativeCollection:Lcom/huawei/bd/collector/NativeCollection;

    .line 175
    new-instance v0, Lcom/huawei/bd/recorder/BigDataRecorder;

    iget-object v1, p0, Lcom/huawei/bd/collector/BigDataCollector;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huawei/bd/recorder/BigDataRecorder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/bd/collector/BigDataCollector;->dataRecorder:Lcom/huawei/bd/recorder/BigDataRecorder;

    .line 176
    iget-object v0, p0, Lcom/huawei/bd/collector/BigDataCollector;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/huawei/bd/collector/BigDataCollector;->sensorManager:Landroid/hardware/SensorManager;

    .line 177
    iget-object v0, p0, Lcom/huawei/bd/collector/BigDataCollector;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/bd/collector/BigDataCollector;->lightSensor:Landroid/hardware/Sensor;

    .line 178
    iget-object v0, p0, Lcom/huawei/bd/collector/BigDataCollector;->dataRecorder:Lcom/huawei/bd/recorder/BigDataRecorder;

    invoke-virtual {v0}, Lcom/huawei/bd/recorder/BigDataRecorder;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public notifyCipherChange()V
    .locals 6

    .prologue
    .line 456
    iget-object v3, p0, Lcom/huawei/bd/collector/BigDataCollector;->dataRecorder:Lcom/huawei/bd/recorder/BigDataRecorder;

    if-nez v3, :cond_0

    .line 475
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v3, p0, Lcom/huawei/bd/collector/BigDataCollector;->dataRecorder:Lcom/huawei/bd/recorder/BigDataRecorder;

    invoke-virtual {v3}, Lcom/huawei/bd/recorder/BigDataRecorder;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 460
    .local v1, "handler":Landroid/os/Handler;
    if-nez v1, :cond_1

    .line 461
    const-string v3, "BD.BigDataCollector"

    const-string v4, "Handler of DR is null"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 466
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x5

    iput v3, v2, Landroid/os/Message;->what:I

    .line 467
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 469
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 471
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "BD.BigDataCollector"

    const-string v4, "wait CPR_CHANGE InterruptedException"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recordExperienceState()V
    .locals 5

    .prologue
    .line 882
    const-string v3, "BD.BigDataCollector"

    const-string v4, "recordExperienceState"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-static {}, Lcom/huawei/bd/BDService;->isUserExperienceSwitchOff()Z

    move-result v2

    .line 884
    .local v2, "isSwitchOff":Z
    if-eqz v2, :cond_0

    const-string v0, "CLOSE"

    .line 885
    .local v0, "currentState":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/huawei/bd/events/LocalInfoEvent;

    invoke-direct {v1}, Lcom/huawei/bd/events/LocalInfoEvent;-><init>()V

    .line 886
    .local v1, "experienceSwitch":Lcom/huawei/bd/events/LocalInfoEvent;
    invoke-virtual {v1, v0}, Lcom/huawei/bd/events/LocalInfoEvent;->setContent(Ljava/lang/String;)V

    .line 887
    const v3, 0x20019

    invoke-virtual {v1, v3}, Lcom/huawei/bd/events/LocalInfoEvent;->setInfoId(I)V

    .line 888
    const/16 v3, 0x1c

    invoke-virtual {v1, v3}, Lcom/huawei/bd/events/LocalInfoEvent;->setPriority(I)V

    .line 889
    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/huawei/bd/collector/BigDataCollector;->saveEvent(Lcom/huawei/bd/events/BaseEvent;I)V

    .line 890
    return-void

    .line 884
    .end local v0    # "currentState":Ljava/lang/String;
    .end local v1    # "experienceSwitch":Lcom/huawei/bd/events/LocalInfoEvent;
    :cond_0
    const-string v0, "OPEN"

    goto :goto_0
.end method

.method public recordRomInfo()V
    .locals 9

    .prologue
    .line 856
    iget-object v7, p0, Lcom/huawei/bd/collector/BigDataCollector;->context:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 857
    .local v5, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v7, "RomVersion"

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 858
    .local v3, "oldVersion":Ljava/lang/String;
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/bd/collector/BigDataCollector;->getCollection()Lcom/huawei/bd/collector/InterfaceBigDataCollection;

    move-result-object v1

    .line 859
    .local v1, "collector":Lcom/huawei/bd/collector/InterfaceBigDataCollection;
    invoke-interface {v1}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getBuildNumber()Ljava/lang/String;

    move-result-object v4

    .line 860
    .local v4, "romVersion":Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 861
    const-string v7, "BD.BigDataCollector"

    const-string v8, "Rom version has changed!"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/bd/collector/BigDataCollector;->saveRomInfo()V

    .line 863
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->isNormalCountry()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 864
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/bd/collector/BigDataCollector;->saveInstalledApps()V

    .line 866
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 867
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 868
    .local v6, "today":I
    const/16 v7, 0x1f

    if-ne v6, v7, :cond_1

    .line 869
    const/16 v6, 0x1e

    .line 871
    :cond_1
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 872
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "RomVersion"

    invoke-interface {v2, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 873
    const-string v7, "AllAPPsDate"

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 874
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 876
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "today":I
    :cond_2
    return-void
.end method

.method public registerLightSensorListener()V
    .locals 5

    .prologue
    .line 726
    iget-object v0, p0, Lcom/huawei/bd/collector/BigDataCollector;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/bd/collector/BigDataCollector;->lightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/huawei/bd/collector/BigDataCollector;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/huawei/bd/collector/BigDataCollector;->lightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/huawei/bd/collector/BigDataCollector;->lightSensor:Landroid/hardware/Sensor;

    const v3, 0xf4240

    iget-object v4, p0, Lcom/huawei/bd/collector/BigDataCollector;->dataRecorder:Lcom/huawei/bd/recorder/BigDataRecorder;

    .line 728
    invoke-virtual {v4}, Lcom/huawei/bd/recorder/BigDataRecorder;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 727
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 730
    :cond_0
    return-void
.end method

.method public saveAvailableMemory()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 656
    iget-object v5, p0, Lcom/huawei/bd/collector/BigDataCollector;->interfaceBigDataCollection:Lcom/huawei/bd/collector/InterfaceBigDataCollection;

    iget-object v6, p0, Lcom/huawei/bd/collector/BigDataCollector;->context:Landroid/content/Context;

    invoke-interface {v5, v6}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getAvailableMemory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, "availMemory":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 659
    .local v2, "currMemory":D
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 663
    iget-wide v6, p0, Lcom/huawei/bd/collector/BigDataCollector;->lastAvailableMemory:D

    sub-double v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    cmpg-double v5, v6, v8

    if-gez v5, :cond_0

    move-object v0, v4

    .line 667
    .end local v0    # "availMemory":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 660
    .restart local v0    # "availMemory":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    move-object v0, v4

    .line 661
    goto :goto_0

    .line 666
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    iput-wide v2, p0, Lcom/huawei/bd/collector/BigDataCollector;->lastAvailableMemory:D

    goto :goto_0
.end method

.method public saveChipsetsInfo()V
    .locals 2

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/huawei/bd/collector/BigDataCollector;->getChipsetsData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    invoke-direct {p0}, Lcom/huawei/bd/collector/BigDataCollector;->checkChipsetsData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    invoke-direct {p0}, Lcom/huawei/bd/collector/BigDataCollector;->convertChipsetsData()V

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/huawei/bd/collector/BigDataCollector;->context:Landroid/content/Context;

    const-string v1, "last_chipsets_data"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public saveEvent(Lcom/huawei/bd/events/BaseEvent;I)V
    .locals 6
    .param p1, "event"    # Lcom/huawei/bd/events/BaseEvent;
    .param p2, "cached"    # I

    .prologue
    .line 204
    iget-object v3, p0, Lcom/huawei/bd/collector/BigDataCollector;->dataRecorder:Lcom/huawei/bd/recorder/BigDataRecorder;

    if-nez v3, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v3, p0, Lcom/huawei/bd/collector/BigDataCollector;->dataRecorder:Lcom/huawei/bd/recorder/BigDataRecorder;

    invoke-virtual {v3}, Lcom/huawei/bd/recorder/BigDataRecorder;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 208
    .local v1, "handler":Landroid/os/Handler;
    if-nez v1, :cond_2

    .line 209
    const-string v3, "BD.BigDataCollector"

    const-string v4, "Handler of DR is null"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p1}, Lcom/huawei/bd/events/BaseEvent;->getEventType()I

    move-result v0

    .line 214
    .local v0, "eventType":I
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 216
    .local v2, "msg":Landroid/os/Message;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/huawei/bd/events/BaseEvent;->setRecordTime(Ljava/lang/String;)V

    .line 217
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 218
    iput p2, v2, Landroid/os/Message;->arg1:I

    .line 219
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public saveEvent(Ljava/util/List;I)V
    .locals 4
    .param p2, "eventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/bd/events/BaseEvent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/bd/events/BaseEvent;>;"
    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    const/4 v2, 0x6

    if-eq p2, v2, :cond_0

    .line 261
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/huawei/bd/collector/BigDataCollector;->dataRecorder:Lcom/huawei/bd/recorder/BigDataRecorder;

    invoke-virtual {v2}, Lcom/huawei/bd/recorder/BigDataRecorder;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 252
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 253
    const-string v2, "BD.BigDataCollector"

    const-string v3, "Handler of DR is null"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 258
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 259
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 260
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public saveInstalledApps()V
    .locals 6

    .prologue
    .line 291
    iget-object v3, p0, Lcom/huawei/bd/collector/BigDataCollector;->interfaceBigDataCollection:Lcom/huawei/bd/collector/InterfaceBigDataCollection;

    iget-object v4, p0, Lcom/huawei/bd/collector/BigDataCollector;->context:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getAllInstalledApps(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 292
    .local v2, "appDataModelArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/bd/collector/AppDataModel;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 294
    .local v1, "appContent":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/bd/collector/AppDataModel;

    .line 295
    .local v0, "app":Lcom/huawei/bd/collector/AppDataModel;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x5000

    if-le v4, v5, :cond_3

    .line 303
    .end local v0    # "app":Lcom/huawei/bd/collector/AppDataModel;
    :cond_1
    const v3, 0x20001

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x19

    invoke-virtual {p0, v3, v4, v5}, Lcom/huawei/bd/collector/BigDataCollector;->saveLocalInfo(ILjava/lang/String;I)V

    .line 305
    .end local v1    # "appContent":Ljava/lang/StringBuilder;
    :cond_2
    return-void

    .line 298
    .restart local v0    # "app":Lcom/huawei/bd/collector/AppDataModel;
    .restart local v1    # "appContent":Ljava/lang/StringBuilder;
    :cond_3
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->isNormalCountry()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/huawei/bd/collector/AppDataModel;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/bd/utils/BigDataUtils;->isWhiteListPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 301
    :cond_4
    invoke-virtual {v0}, Lcom/huawei/bd/collector/AppDataModel;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public saveLocalInfo(ILjava/lang/String;I)V
    .locals 4
    .param p1, "itemId"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .prologue
    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 271
    .local v2, "recordTime":J
    new-instance v0, Lcom/huawei/bd/events/LocalInfoEvent;

    invoke-direct {v0}, Lcom/huawei/bd/events/LocalInfoEvent;-><init>()V

    .line 272
    .local v0, "localInfoEvent":Lcom/huawei/bd/events/LocalInfoEvent;
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/bd/events/LocalInfoEvent;->setRecordTime(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, p1}, Lcom/huawei/bd/events/LocalInfoEvent;->setInfoId(I)V

    .line 274
    invoke-virtual {v0, p3}, Lcom/huawei/bd/events/LocalInfoEvent;->setPriority(I)V

    .line 275
    invoke-virtual {v0, p2}, Lcom/huawei/bd/events/LocalInfoEvent;->setContent(Ljava/lang/String;)V

    .line 276
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/collector/BigDataCollector;->saveEvent(Lcom/huawei/bd/events/BaseEvent;I)V

    .line 277
    return-void
.end method

.method public saveRomInfo()V
    .locals 2

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/huawei/bd/collector/BigDataCollector;->createRomInfo()Lcom/huawei/bd/events/RomInfoEvent;

    move-result-object v0

    .line 284
    .local v0, "romInfoEvent":Lcom/huawei/bd/events/RomInfoEvent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/collector/BigDataCollector;->saveEvent(Lcom/huawei/bd/events/BaseEvent;I)V

    .line 285
    return-void
.end method

.method public saveUsageStat(JJ)V
    .locals 19
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/bd/collector/BigDataCollector;->context:Landroid/content/Context;

    const-string v4, "usagestats"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    .line 406
    .local v2, "usageStatsManager":Landroid/app/usage/UsageStatsManager;
    const/4 v3, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    .line 407
    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v17

    .line 408
    .local v17, "usageStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 409
    :cond_0
    const-string v3, "BD.BigDataCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryUsageStats null or empty beginT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " endT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_1
    :goto_0
    return-void

    .line 412
    :cond_2
    const-string v3, "ro.build.version.sdk"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/huawei/android/os/SystemPropertiesEx;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 415
    .local v14, "sdkBuildVersion":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lcom/huawei/bd/collector/BigDataCollector;->queryCurrentUsageStatsByTimePeriod(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v8

    .line 416
    .local v8, "bigDataUsageStatsArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/bd/collector/BigDataUsageStats;>;"
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 417
    :cond_3
    const-string v3, "BD.BigDataCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bigDataUsageStatsArrayList null or empty beginT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " endT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14}, Lcom/huawei/bd/collector/BigDataCollector;->convertBigDataUsageStatsToJsonArray(Ljava/util/ArrayList;I)Lorg/json/JSONArray;

    move-result-object v16

    .line 422
    .local v16, "usageArray":Lorg/json/JSONArray;
    if-nez v16, :cond_5

    .line 423
    const-string v3, "BD.BigDataCollector"

    const-string v4, "usage json array is null"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :cond_5
    new-instance v15, Ljava/text/SimpleDateFormat;

    invoke-direct {v15}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 428
    .local v15, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 429
    .local v9, "calendar":Ljava/util/Calendar;
    const v10, 0x20005

    .line 430
    .local v10, "eventId":I
    const/16 v11, 0x19

    .line 431
    .local v11, "priority":I
    sub-long v12, p3, p1

    .line 432
    .local v12, "interval":J
    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-lez v3, :cond_6

    const-wide/32 v4, 0x36ee80

    cmp-long v3, v12, v4

    if-gtz v3, :cond_6

    .line 433
    const v10, 0x20010

    .line 434
    const/16 v11, 0xf

    .line 435
    const-string v3, "yyyyMMddHHmm"

    invoke-virtual {v15, v3}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 436
    move-wide/from16 v0, p3

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 445
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 446
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3, v4, v11}, Lcom/huawei/bd/collector/BigDataCollector;->createUsageLocalInfo(ILjava/lang/String;Ljava/lang/String;I)Lcom/huawei/bd/events/LocalInfoEvent;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/huawei/bd/collector/BigDataCollector;->saveEvent(Lcom/huawei/bd/events/BaseEvent;I)V

    .line 448
    const-string v3, "BD.BigDataCollector"

    const-string v4, "Usagestats collectLocalInfo ok"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 437
    :cond_6
    const-wide/32 v4, 0x5265c00

    cmp-long v3, v12, v4

    if-gtz v3, :cond_1

    const-wide/32 v4, 0x4ef6d80

    cmp-long v3, v12, v4

    if-lez v3, :cond_1

    .line 439
    const-string v3, "yyyyMMdd"

    invoke-virtual {v15, v3}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 440
    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1
.end method

.method public setCollection(Lcom/huawei/bd/collector/InterfaceBigDataCollection;)V
    .locals 0
    .param p1, "collection"    # Lcom/huawei/bd/collector/InterfaceBigDataCollection;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/huawei/bd/collector/BigDataCollector;->interfaceBigDataCollection:Lcom/huawei/bd/collector/InterfaceBigDataCollection;

    .line 183
    return-void
.end method

.method public unregisterLightSensorListener()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/huawei/bd/collector/BigDataCollector;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/huawei/bd/collector/BigDataCollector;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/huawei/bd/collector/BigDataCollector;->lightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 739
    :cond_0
    return-void
.end method

.method public updateQueue()V
    .locals 4

    .prologue
    .line 227
    iget-object v2, p0, Lcom/huawei/bd/collector/BigDataCollector;->dataRecorder:Lcom/huawei/bd/recorder/BigDataRecorder;

    if-nez v2, :cond_0

    .line 238
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/huawei/bd/collector/BigDataCollector;->dataRecorder:Lcom/huawei/bd/recorder/BigDataRecorder;

    invoke-virtual {v2}, Lcom/huawei/bd/recorder/BigDataRecorder;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 231
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 232
    const-string v2, "BD.BigDataCollector"

    const-string v3, "Handler of DR is null"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 236
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 237
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
