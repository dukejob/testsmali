.class public Lcom/huawei/bd/collector/AppActivityInfoReporter;
.super Ljava/lang/Object;
.source "AppActivityInfoReporter.java"


# static fields
.field public static final APP_STATUS_ACTIVE:I = 0x1

.field private static final DEFAULT_BUCKET_CAPACITY:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "BD.AppActivityInfoReporter"


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field private context:Landroid/content/Context;

.field private filter:Lcom/huawei/filter/FilterInterface;

.field private networkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->context:Landroid/content/Context;

    .line 61
    const-string v0, "content://com.huawei.bd.provider.BigDataInnerProvider/ai"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->uri:Landroid/net/Uri;

    .line 64
    iput-object p1, p0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->context:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->packageManager:Landroid/content/pm/PackageManager;

    .line 66
    iget-object v0, p0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->contentResolver:Landroid/content/ContentResolver;

    .line 67
    iget-object v0, p0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->context:Landroid/content/Context;

    const-string v1, "netstats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->networkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 68
    new-instance v0, Lcom/huawei/filter/FilterInterfaceImpl;

    iget-object v1, p0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huawei/filter/FilterInterfaceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->filter:Lcom/huawei/filter/FilterInterface;

    .line 69
    return-void
.end method

.method private closeNetworkStatus(Landroid/app/usage/NetworkStats;Landroid/app/usage/NetworkStats;)V
    .locals 0
    .param p1, "networkWifi"    # Landroid/app/usage/NetworkStats;
    .param p2, "networkMobile"    # Landroid/app/usage/NetworkStats;

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->close()V

    .line 130
    :cond_0
    if-eqz p2, :cond_1

    .line 131
    invoke-virtual {p2}, Landroid/app/usage/NetworkStats;->close()V

    .line 133
    :cond_1
    return-void
.end method

.method private getNetworkBuckets(Landroid/app/usage/NetworkStats;)Ljava/util/HashMap;
    .locals 10
    .param p1, "networkStats"    # Landroid/app/usage/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/usage/NetworkStats;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Ljava/util/HashMap;

    const/16 v4, 0xc8

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 145
    .local v0, "buckets":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-nez p1, :cond_0

    .line 159
    :goto_0
    return-object v0

    .line 148
    :cond_0
    new-instance v1, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v1}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 150
    .local v1, "summaryBucket":Landroid/app/usage/NetworkStats$Bucket;
    :cond_1
    invoke-virtual {p1, v1}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 151
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v3

    .line 152
    .local v3, "uid":I
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 153
    .local v2, "totalBytes":Ljava/lang/Long;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :goto_1
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 156
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private saveActivityInfo(Ljava/util/List;Lorg/json/JSONArray;)V
    .locals 4
    .param p2, "appArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/bd/events/AppActiveInfoEvent;",
            ">;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/bd/events/AppActiveInfoEvent;>;"
    invoke-virtual {p0, p1}, Lcom/huawei/bd/collector/AppActivityInfoReporter;->recordData(Ljava/util/List;)V

    .line 137
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 138
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v0

    const v1, 0x20020

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/bd/collector/BigDataCollector;->saveLocalInfo(ILjava/lang/String;I)V

    .line 141
    :cond_0
    return-void
.end method

.method private setAppActiveInfoEventPara(Ljava/util/List;Lorg/json/JSONArray;Ljava/lang/String;J)V
    .locals 6
    .param p2, "appArray"    # Lorg/json/JSONArray;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "reportTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/bd/events/AppActiveInfoEvent;",
            ">;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/bd/events/AppActiveInfoEvent;>;"
    new-instance v0, Lcom/huawei/bd/events/AppActiveInfoEvent;

    invoke-direct {v0}, Lcom/huawei/bd/events/AppActiveInfoEvent;-><init>()V

    .line 166
    .local v0, "appActiveInfoEvent":Lcom/huawei/bd/events/AppActiveInfoEvent;
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/bd/events/AppActiveInfoEvent;->setRecordTime(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, p3}, Lcom/huawei/bd/events/AppActiveInfoEvent;->setPackageName(Ljava/lang/String;)V

    .line 168
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/huawei/bd/events/AppActiveInfoEvent;->setStatus(I)V

    .line 169
    invoke-virtual {v0, p4, p5}, Lcom/huawei/bd/events/AppActiveInfoEvent;->setActiveTime(J)V

    .line 170
    invoke-virtual {v0, p4, p5}, Lcom/huawei/bd/events/AppActiveInfoEvent;->setReportTime(J)V

    .line 171
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 173
    .local v1, "appJson":Lorg/json/JSONObject;
    const-string v2, "pkg"

    invoke-virtual {v0}, Lcom/huawei/bd/events/AppActiveInfoEvent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string v2, "timestamp"

    invoke-virtual {v0}, Lcom/huawei/bd/events/AppActiveInfoEvent;->getActiveTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 175
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 176
    return-void
.end method


# virtual methods
.method public getAppActiveInfo(Ljava/lang/String;)Lcom/huawei/bd/events/AppActiveInfoEvent;
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 210
    const/4 v6, 0x0

    .line 211
    .local v6, "appInfo":Lcom/huawei/bd/events/AppActiveInfoEvent;
    const-string v3, "b = ?"

    .line 212
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 213
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "a"

    aput-object v0, v2, v1

    const-string v0, "b"

    aput-object v0, v2, v5

    const/4 v0, 0x2

    const-string v1, "c"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "d"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "e"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "f"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "g"

    aput-object v1, v2, v0

    .line 217
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->uri:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 218
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v6, Lcom/huawei/bd/events/AppActiveInfoEvent;

    .end local v6    # "appInfo":Lcom/huawei/bd/events/AppActiveInfoEvent;
    invoke-direct {v6}, Lcom/huawei/bd/events/AppActiveInfoEvent;-><init>()V

    .line 220
    .restart local v6    # "appInfo":Lcom/huawei/bd/events/AppActiveInfoEvent;
    const-string v0, "a"

    .line 221
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 220
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/huawei/bd/events/AppActiveInfoEvent;->setRecordTime(Ljava/lang/String;)V

    .line 222
    const-string v0, "b"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/huawei/bd/events/AppActiveInfoEvent;->setPackageName(Ljava/lang/String;)V

    .line 223
    const-string v0, "c"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/huawei/bd/events/AppActiveInfoEvent;->setStatus(I)V

    .line 224
    const-string v0, "d"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/huawei/bd/events/AppActiveInfoEvent;->setActiveTime(J)V

    .line 225
    const-string v0, "e"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/huawei/bd/events/AppActiveInfoEvent;->setReportTime(J)V

    .line 226
    const-string v0, "f"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/huawei/bd/events/AppActiveInfoEvent;->setReserved(Ljava/lang/String;)V

    .line 227
    const-string v0, "g"

    .line 228
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 227
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/huawei/bd/events/AppActiveInfoEvent;->setReservedSecond(Ljava/lang/String;)V

    .line 229
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_0
    return-object v6
.end method

.method public handleMessage(Ljava/util/List;)V
    .locals 26
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
    .line 77
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 78
    :cond_0
    const-string v5, "BD.AppActivityInfoReporter"

    const-string v6, "pkgList is invalid"

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 81
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    const/16 v5, 0x10

    invoke-direct {v13, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .local v13, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/bd/events/AppActiveInfoEvent;>;"
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 83
    .local v14, "appArray":Lorg/json/JSONArray;
    const-wide/16 v8, 0x0

    .line 84
    .local v8, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 85
    .local v10, "endTime":J
    const/16 v23, 0x0

    .line 86
    .local v23, "networkWifi":Landroid/app/usage/NetworkStats;
    const/16 v22, 0x0

    .line 87
    .local v22, "networkMobile":Landroid/app/usage/NetworkStats;
    const/16 v25, 0x0

    .line 88
    .local v25, "wifiBuckets":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const/16 v21, 0x0

    .line 90
    .local v21, "mobileBuckets":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->networkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 v6, 0x1

    const-string v7, ""

    invoke-virtual/range {v5 .. v11}, Landroid/app/usage/NetworkStatsManager;->querySummary(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;

    move-result-object v23

    .line 91
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->networkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 v6, 0x0

    const-string v7, ""

    invoke-virtual/range {v5 .. v11}, Landroid/app/usage/NetworkStatsManager;->querySummary(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 95
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/huawei/bd/collector/AppActivityInfoReporter;->getNetworkBuckets(Landroid/app/usage/NetworkStats;)Ljava/util/HashMap;

    move-result-object v25

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/huawei/bd/collector/AppActivityInfoReporter;->getNetworkBuckets(Landroid/app/usage/NetworkStats;)Ljava/util/HashMap;

    move-result-object v21

    .line 97
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 99
    .local v15, "pkgName":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x1

    .line 100
    invoke-virtual {v6, v15, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v18

    .line 101
    .local v18, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v24, v0

    .line 102
    .local v24, "packageUid":I
    move-object/from16 v0, v18

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v20, v6, 0x1

    .line 103
    .local v20, "flag":I
    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->filter:Lcom/huawei/filter/FilterInterface;

    invoke-interface {v6, v15}, Lcom/huawei/filter/FilterInterface;->isHuaweiSignatures(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 106
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/huawei/bd/collector/AppActivityInfoReporter;->getAppActiveInfo(Ljava/lang/String;)Lcom/huawei/bd/events/AppActiveInfoEvent;

    move-result-object v4

    .line 107
    .local v4, "appActiveInfoEvent":Lcom/huawei/bd/events/AppActiveInfoEvent;
    if-eqz v4, :cond_4

    .line 108
    invoke-virtual {v4}, Lcom/huawei/bd/events/AppActiveInfoEvent;->getStatus()I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    goto :goto_2

    .line 92
    .end local v4    # "appActiveInfoEvent":Lcom/huawei/bd/events/AppActiveInfoEvent;
    .end local v15    # "pkgName":Ljava/lang/String;
    .end local v18    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v20    # "flag":I
    .end local v24    # "packageUid":I
    :catch_0
    move-exception v19

    .line 93
    .local v19, "e":Landroid/os/RemoteException;
    const-string v5, "BD.AppActivityInfoReporter"

    const-string v6, "network connect fail"

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 112
    .end local v19    # "e":Landroid/os/RemoteException;
    .restart local v4    # "appActiveInfoEvent":Lcom/huawei/bd/events/AppActiveInfoEvent;
    .restart local v15    # "pkgName":Ljava/lang/String;
    .restart local v18    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v20    # "flag":I
    .restart local v24    # "packageUid":I
    :cond_4
    :try_start_2
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/huawei/bd/utils/BigDataUtils;->isNetWorkConnect(Ljava/util/HashMap;Ljava/util/HashMap;I)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object/from16 v12, p0

    move-wide/from16 v16, v10

    .line 113
    invoke-direct/range {v12 .. v17}, Lcom/huawei/bd/collector/AppActivityInfoReporter;->setAppActiveInfoEventPara(Ljava/util/List;Lorg/json/JSONArray;Ljava/lang/String;J)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 116
    .end local v4    # "appActiveInfoEvent":Lcom/huawei/bd/events/AppActiveInfoEvent;
    .end local v18    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v20    # "flag":I
    .end local v24    # "packageUid":I
    :catch_1
    move-exception v19

    .line 117
    .local v19, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "BD.AppActivityInfoReporter"

    const-string v7, "handleMessage PackageManager.NameNotFoundException"

    invoke-static {v6, v7}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 118
    .end local v19    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v19

    .line 119
    .local v19, "e":Lorg/json/JSONException;
    const-string v6, "BD.AppActivityInfoReporter"

    const-string v7, "handleMessage JSONException"

    invoke-static {v6, v7}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 122
    .end local v15    # "pkgName":Ljava/lang/String;
    .end local v19    # "e":Lorg/json/JSONException;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/huawei/bd/collector/AppActivityInfoReporter;->closeNetworkStatus(Landroid/app/usage/NetworkStats;Landroid/app/usage/NetworkStats;)V

    .line 123
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/huawei/bd/collector/AppActivityInfoReporter;->saveActivityInfo(Ljava/util/List;Lorg/json/JSONArray;)V

    goto/16 :goto_0
.end method

.method public recordData(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/bd/events/AppActiveInfoEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/bd/events/AppActiveInfoEvent;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 188
    .local v1, "dataLen":I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 189
    iget-object v5, p0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->contentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->uri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/bd/events/AppActiveInfoEvent;

    invoke-virtual {v4}, Lcom/huawei/bd/events/AppActiveInfoEvent;->format()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 191
    :cond_2
    new-array v0, v1, [Landroid/content/ContentValues;

    .line 193
    .local v0, "contentValues":[Landroid/content/ContentValues;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 194
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/bd/events/EventFormatInterface;

    .line 195
    .local v2, "eventFormator":Lcom/huawei/bd/events/EventFormatInterface;
    if-eqz v2, :cond_3

    .line 196
    invoke-interface {v2}, Lcom/huawei/bd/events/EventFormatInterface;->format()Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v0, v3

    .line 193
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 199
    .end local v2    # "eventFormator":Lcom/huawei/bd/events/EventFormatInterface;
    :cond_4
    iget-object v4, p0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->contentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/huawei/bd/collector/AppActivityInfoReporter;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto :goto_0
.end method
