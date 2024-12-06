.class public Lcom/huawei/opcollect/odmf/OdmfHelper;
.super Ljava/lang/Object;
.source "OdmfHelper.java"


# static fields
.field private static final INSERT_INTERVAL_MS:J = 0xdbba0L

.field private static final MAX_BUFFER_COUNT:I = 0x32

.field public static final ODMF_API_VERSION_2_11_2:Ljava/lang/String; = "2.11.2"

.field public static final ODMF_API_VERSION_2_11_3:Ljava/lang/String; = "2.11.3"

.field public static final ODMF_API_VERSION_2_11_6:Ljava/lang/String; = "2.11.6"

.field public static final ODMF_API_VERSION_2_11_7:Ljava/lang/String; = "2.11.7"

.field private static final RECONNECT_TIMES:I = 0xa

.field private static final TAG:Ljava/lang/String; = "OdmfHelper"


# instance fields
.field private count:I

.field private volatile hasConnected:Z

.field private lastTime:J

.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private mContext:Landroid/content/Context;

.field private mDataServiceProxy:Lcom/huawei/nb/client/DataServiceProxy;

.field private mKvClient:Lcom/huawei/nb/client/kv/KvClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/nb/client/kv/KvClient",
            "<",
            "Lcom/huawei/nb/kv/KCompositeString;",
            "Lcom/huawei/nb/kv/VJson;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field protected odmfConnectCallback:Lcom/huawei/nb/client/ServiceConnectCallback;

.field private rawDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/odmf/core/AManagedObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private record:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mLock:Ljava/lang/Object;

    .line 52
    iput-object v3, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mDataServiceProxy:Lcom/huawei/nb/client/DataServiceProxy;

    .line 55
    iput-boolean v2, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    .line 56
    iput v2, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->count:I

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->rawDatas:Ljava/util/Map;

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->lastTime:J

    .line 59
    iput v2, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->record:I

    .line 60
    iput-object v3, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/huawei/opcollect/odmf/OdmfHelper$1;

    invoke-direct {v0, p0}, Lcom/huawei/opcollect/odmf/OdmfHelper$1;-><init>(Lcom/huawei/opcollect/odmf/OdmfHelper;)V

    iput-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->odmfConnectCallback:Lcom/huawei/nb/client/ServiceConnectCallback;

    .line 85
    const-string v0, "OdmfHelper"

    const-string v1, "OdmfHelper"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 88
    iput-boolean v2, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    .line 89
    new-instance v0, Lcom/huawei/nb/client/kv/KvClient;

    invoke-direct {v0, p1}, Lcom/huawei/nb/client/kv/KvClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mKvClient:Lcom/huawei/nb/client/kv/KvClient;

    .line 90
    const-string v0, "2.11.7"

    invoke-static {p1, v0}, Lcom/huawei/opcollect/utils/OPCollectUtils;->checkODMFApiVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mKvClient:Lcom/huawei/nb/client/kv/KvClient;

    invoke-virtual {v0}, Lcom/huawei/nb/client/kv/KvClient;->getDataServiceProxy()Lcom/huawei/nb/client/DataServiceProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mDataServiceProxy:Lcom/huawei/nb/client/DataServiceProxy;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/huawei/nb/client/DataServiceProxy;

    invoke-direct {v0, p1}, Lcom/huawei/nb/client/DataServiceProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mDataServiceProxy:Lcom/huawei/nb/client/DataServiceProxy;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/huawei/opcollect/odmf/OdmfHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/odmf/OdmfHelper;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->count:I

    return p1
.end method

.method static synthetic access$102(Lcom/huawei/opcollect/odmf/OdmfHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/odmf/OdmfHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/huawei/opcollect/odmf/OdmfHelper;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/odmf/OdmfHelper;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->latch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private checkReConnectOdmfService()V
    .locals 2

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->count:I

    .line 124
    iget v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->count:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->count:I

    .line 126
    invoke-virtual {p0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->connectOdmfService()Z

    .line 128
    :cond_0
    monitor-exit p0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isCharging()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 142
    iget-object v2, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 143
    .local v0, "batteryBroadcast":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 144
    const-string v2, "OdmfHelper"

    const-string v3, "isCharging batteryBroadcast is null"

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_0
    return v1

    .line 149
    :cond_0
    const-string v2, "plugged"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    .local v1, "isCharging":Z
    :goto_1
    const-string v2, "OdmfHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCharging: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    .end local v1    # "isCharging":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isScreenOn()Z
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 133
    .local v0, "powerManager":Landroid/os/PowerManager;
    if-nez v0, :cond_0

    .line 134
    const-string v1, "OdmfHelper"

    const-string v2, "isScreenOn powerManager is null"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v1, 0x1

    .line 138
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    goto :goto_0
.end method

.method private opcollectCache(Lcom/huawei/odmf/core/AManagedObject;)V
    .locals 12
    .param p1, "rawData"    # Lcom/huawei/odmf/core/AManagedObject;

    .prologue
    .line 155
    iget-object v8, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 156
    if-eqz p1, :cond_0

    .line 157
    :try_start_0
    iget v7, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->record:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->record:I

    .line 158
    const-string v7, "OdmfHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "opcollectCache "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->record:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Lcom/huawei/odmf/core/AManagedObject;->getEntityName()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "entityName":Ljava/lang/String;
    iget-object v7, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->rawDatas:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 161
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v6, "rawDataPerList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v7, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->rawDatas:Ljava/util/Map;

    invoke-interface {v7, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .end local v2    # "entityName":Ljava/lang/String;
    .end local v6    # "rawDataPerList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 170
    .local v0, "curTime":J
    iget-wide v10, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->lastTime:J

    sub-long v4, v0, v10

    .line 171
    .local v4, "interval":J
    const-string v7, "OdmfHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "opcollectCache curTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", interval: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->isCharging()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->isScreenOn()Z

    move-result v7

    if-nez v7, :cond_1

    iget v7, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->record:I

    const/16 v9, 0x32

    if-ge v7, v9, :cond_1

    const-wide/32 v10, 0xdbba0

    cmp-long v7, v4, v10

    if-ltz v7, :cond_4

    .line 173
    :cond_1
    iget-object v7, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->rawDatas:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 174
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/huawei/opcollect/odmf/OdmfHelper;->bulkInsertManageObject(Ljava/util/List;)Ljava/util/List;

    .line 175
    const-string v10, "OdmfHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "opcollectCache size: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 182
    .end local v0    # "curTime":J
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;>;"
    .end local v4    # "interval":J
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 165
    .restart local v2    # "entityName":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->rawDatas:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 177
    .end local v2    # "entityName":Ljava/lang/String;
    .restart local v0    # "curTime":J
    .restart local v4    # "interval":J
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->lastTime:J

    .line 178
    const/4 v7, 0x0

    iput v7, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->record:I

    .line 179
    iget-object v7, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->rawDatas:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 180
    const-string v7, "OdmfHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "opcollectCache lastTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->lastTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    return-void
.end method


# virtual methods
.method public addDataLifeCycleConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "fieldName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .param p5, "count"    # I

    .prologue
    .line 445
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 446
    :cond_0
    const/4 v0, 0x1

    .line 452
    :goto_0
    return v0

    .line 448
    :cond_1
    iget-boolean v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    if-nez v0, :cond_2

    .line 449
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->checkReConnectOdmfService()V

    .line 450
    const/4 v0, 0x2

    goto :goto_0

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mDataServiceProxy:Lcom/huawei/nb/client/DataServiceProxy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/nb/client/DataServiceProxy;->addDataLifeCycleConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method

.method public bulkInsertManageObject(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/odmf/core/AManagedObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/odmf/core/AManagedObject;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    const/4 v0, 0x0

    .line 236
    if-nez p1, :cond_0

    .line 250
    :goto_0
    return-object v0

    .line 239
    :cond_0
    iget-boolean v1, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    if-nez v1, :cond_1

    .line 240
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->checkReConnectOdmfService()V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mDataServiceProxy:Lcom/huawei/nb/client/DataServiceProxy;

    invoke-virtual {v1, p1}, Lcom/huawei/nb/client/DataServiceProxy;->executeInsert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 245
    .local v0, "retObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    if-eqz v0, :cond_2

    .line 246
    const-string v1, "OdmfHelper"

    const-string v2, "insert database success "

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_2
    const-string v1, "OdmfHelper"

    const-string v2, "insert database failed "

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public connectOdmfService()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 103
    iget-boolean v2, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    if-eqz v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 106
    :cond_1
    const-string v2, "OdmfHelper"

    const-string v3, "connectOdmfService"

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mKvClient:Lcom/huawei/nb/client/kv/KvClient;

    iget-object v3, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->odmfConnectCallback:Lcom/huawei/nb/client/ServiceConnectCallback;

    invoke-virtual {v2, v3}, Lcom/huawei/nb/client/kv/KvClient;->connect(Lcom/huawei/nb/client/ServiceConnectCallback;)Z

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->latch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_1
    iget-boolean v2, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    if-nez v2, :cond_0

    .line 117
    const-string v1, "OdmfHelper"

    const-string v2, "connect failed"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v1, 0x0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "OdmfHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectOdmfService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public deleteManageObject(Lcom/huawei/odmf/core/AManagedObject;)Z
    .locals 2
    .param p1, "rawData"    # Lcom/huawei/odmf/core/AManagedObject;

    .prologue
    const/4 v0, 0x0

    .line 369
    if-nez p1, :cond_0

    .line 376
    :goto_0
    return v0

    .line 372
    :cond_0
    iget-boolean v1, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    if-nez v1, :cond_1

    .line 373
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->checkReConnectOdmfService()V

    goto :goto_0

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mDataServiceProxy:Lcom/huawei/nb/client/DataServiceProxy;

    invoke-virtual {v0, p1}, Lcom/huawei/nb/client/DataServiceProxy;->executeDelete(Lcom/huawei/odmf/core/AManagedObject;)Z

    move-result v0

    goto :goto_0
.end method

.method public deleteManageObjects(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/odmf/core/AManagedObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "rawDatas":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    const/4 v0, 0x0

    .line 386
    if-nez p1, :cond_0

    .line 393
    :goto_0
    return v0

    .line 389
    :cond_0
    iget-boolean v1, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    if-nez v1, :cond_1

    .line 390
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->checkReConnectOdmfService()V

    goto :goto_0

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mDataServiceProxy:Lcom/huawei/nb/client/DataServiceProxy;

    invoke-virtual {v0, p1}, Lcom/huawei/nb/client/DataServiceProxy;->executeDelete(Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(Lcom/huawei/nb/kv/KCompositeString;)Lcom/huawei/nb/kv/VJson;
    .locals 1
    .param p1, "key"    # Lcom/huawei/nb/kv/KCompositeString;

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    if-nez v0, :cond_0

    .line 517
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->checkReConnectOdmfService()V

    .line 518
    const/4 v0, 0x0

    .line 520
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mKvClient:Lcom/huawei/nb/client/kv/KvClient;

    invoke-virtual {v0, p1}, Lcom/huawei/nb/client/kv/KvClient;->get(Lcom/huawei/nb/kv/Key;)Lcom/huawei/nb/kv/Value;

    move-result-object v0

    check-cast v0, Lcom/huawei/nb/kv/VJson;

    goto :goto_0
.end method

.method public grant(Lcom/huawei/nb/kv/KCompositeString;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "key"    # Lcom/huawei/nb/kv/KCompositeString;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "authority"    # I

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    if-nez v0, :cond_0

    .line 533
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->checkReConnectOdmfService()V

    .line 534
    const/4 v0, 0x0

    .line 536
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mKvClient:Lcom/huawei/nb/client/kv/KvClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/nb/client/kv/KvClient;->grant(Lcom/huawei/nb/kv/Key;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public insertManageObject(Lcom/huawei/odmf/core/AManagedObject;)V
    .locals 0
    .param p1, "rawData"    # Lcom/huawei/odmf/core/AManagedObject;

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/opcollect/odmf/OdmfHelper;->opcollectCache(Lcom/huawei/odmf/core/AManagedObject;)V

    goto :goto_0
.end method

.method public insertManageObjectWithoutCache(Lcom/huawei/odmf/core/AManagedObject;)Lcom/huawei/odmf/core/AManagedObject;
    .locals 3
    .param p1, "rawData"    # Lcom/huawei/odmf/core/AManagedObject;

    .prologue
    const/4 v0, 0x0

    .line 212
    if-nez p1, :cond_0

    .line 226
    :goto_0
    return-object v0

    .line 215
    :cond_0
    iget-boolean v1, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    if-nez v1, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->checkReConnectOdmfService()V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mDataServiceProxy:Lcom/huawei/nb/client/DataServiceProxy;

    invoke-virtual {v1, p1}, Lcom/huawei/nb/client/DataServiceProxy;->executeInsert(Lcom/huawei/odmf/core/AManagedObject;)Lcom/huawei/odmf/core/AManagedObject;

    move-result-object v0

    .line 221
    .local v0, "object":Lcom/huawei/odmf/core/AManagedObject;
    if-eqz v0, :cond_2

    .line 222
    const-string v1, "OdmfHelper"

    const-string v2, "insert database success "

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_2
    const-string v1, "OdmfHelper"

    const-string v2, "insert database failed "

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public put(Lcom/huawei/nb/kv/KCompositeString;Lcom/huawei/nb/kv/VJson;)Z
    .locals 1
    .param p1, "key"    # Lcom/huawei/nb/kv/KCompositeString;
    .param p2, "value"    # Lcom/huawei/nb/kv/VJson;

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    if-nez v0, :cond_0

    .line 503
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->checkReConnectOdmfService()V

    .line 504
    const/4 v0, 0x0

    .line 506
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mKvClient:Lcom/huawei/nb/client/kv/KvClient;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/nb/client/kv/KvClient;->put(Lcom/huawei/nb/kv/Key;Lcom/huawei/nb/kv/Value;)Z

    move-result v0

    goto :goto_0
.end method

.method public queryDataLifeCycleConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/nb/model/meta/DataLifeCycle;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 484
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-object v0

    .line 487
    :cond_1
    iget-boolean v1, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    if-nez v1, :cond_2

    .line 488
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->checkReConnectOdmfService()V

    goto :goto_0

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mDataServiceProxy:Lcom/huawei/nb/client/DataServiceProxy;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/nb/client/DataServiceProxy;->queryDataLifeCycleConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public queryManageObject(Lcom/huawei/nb/query/Query;)Ljava/util/List;
    .locals 2
    .param p1, "query"    # Lcom/huawei/nb/query/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/nb/query/Query;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/odmf/core/AManagedObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 280
    if-nez p1, :cond_0

    .line 287
    :goto_0
    return-object v0

    .line 283
    :cond_0
    iget-boolean v1, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    if-nez v1, :cond_1

    .line 284
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->checkReConnectOdmfService()V

    goto :goto_0

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mDataServiceProxy:Lcom/huawei/nb/client/DataServiceProxy;

    invoke-virtual {v0, p1}, Lcom/huawei/nb/client/DataServiceProxy;->executeQuery(Lcom/huawei/nb/query/Query;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public queryManageObjectCount(Lcom/huawei/nb/query/Query;)J
    .locals 3
    .param p1, "query"    # Lcom/huawei/nb/query/Query;

    .prologue
    const-wide/16 v0, -0x1

    .line 263
    if-nez p1, :cond_0

    .line 270
    :goto_0
    return-wide v0

    .line 266
    :cond_0
    iget-boolean v2, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    if-nez v2, :cond_1

    .line 267
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->checkReConnectOdmfService()V

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mDataServiceProxy:Lcom/huawei/nb/client/DataServiceProxy;

    invoke-virtual {v0, p1}, Lcom/huawei/nb/client/DataServiceProxy;->executeCountQuery(Lcom/huawei/nb/query/Query;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public querySingleManageObject(Lcom/huawei/nb/query/Query;)Lcom/huawei/odmf/core/AManagedObject;
    .locals 2
    .param p1, "query"    # Lcom/huawei/nb/query/Query;

    .prologue
    const/4 v0, 0x0

    .line 302
    if-nez p1, :cond_0

    .line 309
    :goto_0
    return-object v0

    .line 305
    :cond_0
    iget-boolean v1, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    if-nez v1, :cond_1

    .line 306
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->checkReConnectOdmfService()V

    goto :goto_0

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mDataServiceProxy:Lcom/huawei/nb/client/DataServiceProxy;

    invoke-virtual {v0, p1}, Lcom/huawei/nb/client/DataServiceProxy;->executeSingleQuery(Lcom/huawei/nb/query/Query;)Lcom/huawei/odmf/core/AManagedObject;

    move-result-object v0

    goto :goto_0
.end method

.method public removeDataLifeCycleConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "fieldName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .param p5, "count"    # I

    .prologue
    .line 466
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 467
    :cond_0
    const/4 v0, 0x1

    .line 473
    :goto_0
    return v0

    .line 469
    :cond_1
    iget-boolean v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    if-nez v0, :cond_2

    .line 470
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->checkReConnectOdmfService()V

    .line 471
    const/4 v0, 0x2

    goto :goto_0

    .line 473
    :cond_2
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mDataServiceProxy:Lcom/huawei/nb/client/DataServiceProxy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/nb/client/DataServiceProxy;->removeDataLifeCycleConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method

.method public subscribeManagedObject(Ljava/lang/Class;Lcom/huawei/nb/notification/ObserverType;Lcom/huawei/nb/notification/ModelObserver;)Z
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "type"    # Lcom/huawei/nb/notification/ObserverType;
    .param p3, "observer"    # Lcom/huawei/nb/notification/ModelObserver;

    .prologue
    const/4 v0, 0x0

    .line 405
    if-nez p3, :cond_0

    .line 412
    :goto_0
    return v0

    .line 408
    :cond_0
    iget-boolean v1, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    if-nez v1, :cond_1

    .line 409
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->checkReConnectOdmfService()V

    goto :goto_0

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mDataServiceProxy:Lcom/huawei/nb/client/DataServiceProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/nb/client/DataServiceProxy;->subscribe(Ljava/lang/Class;Lcom/huawei/nb/notification/ObserverType;Lcom/huawei/nb/notification/ModelObserver;)Z

    move-result v0

    goto :goto_0
.end method

.method public unSubscribeManagedObject(Ljava/lang/Class;Lcom/huawei/nb/notification/ObserverType;Lcom/huawei/nb/notification/ModelObserver;)Z
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "type"    # Lcom/huawei/nb/notification/ObserverType;
    .param p3, "observer"    # Lcom/huawei/nb/notification/ModelObserver;

    .prologue
    const/4 v0, 0x0

    .line 424
    if-nez p3, :cond_0

    .line 431
    :goto_0
    return v0

    .line 427
    :cond_0
    iget-boolean v1, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    if-nez v1, :cond_1

    .line 428
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->checkReConnectOdmfService()V

    goto :goto_0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mDataServiceProxy:Lcom/huawei/nb/client/DataServiceProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/nb/client/DataServiceProxy;->unSubscribe(Ljava/lang/Class;Lcom/huawei/nb/notification/ObserverType;Lcom/huawei/nb/notification/ModelObserver;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateManageObject(Lcom/huawei/odmf/core/AManagedObject;)Z
    .locals 2
    .param p1, "rawData"    # Lcom/huawei/odmf/core/AManagedObject;

    .prologue
    const/4 v0, 0x0

    .line 327
    if-nez p1, :cond_0

    .line 334
    :goto_0
    return v0

    .line 330
    :cond_0
    iget-boolean v1, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    if-nez v1, :cond_1

    .line 331
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->checkReConnectOdmfService()V

    goto :goto_0

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mDataServiceProxy:Lcom/huawei/nb/client/DataServiceProxy;

    invoke-virtual {v0, p1}, Lcom/huawei/nb/client/DataServiceProxy;->executeUpdate(Lcom/huawei/odmf/core/AManagedObject;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateManageObjects(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/odmf/core/AManagedObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    const/4 v0, 0x0

    .line 344
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return v0

    .line 347
    :cond_1
    iget-boolean v1, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->hasConnected:Z

    if-nez v1, :cond_2

    .line 348
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->checkReConnectOdmfService()V

    goto :goto_0

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfHelper;->mDataServiceProxy:Lcom/huawei/nb/client/DataServiceProxy;

    invoke-virtual {v0, p1}, Lcom/huawei/nb/client/DataServiceProxy;->executeUpdate(Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method
