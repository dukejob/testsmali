.class public Lcom/huawei/hiai/awareness/movement/MovementController;
.super Ljava/lang/Object;
.source "MovementController.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mMovenentStatusEvent:Lcom/huawei/hiai/awareness/awareness/Event;

.field private static final sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultMovementStatusConfigMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/huawei/hiai/awareness/movement/MovementController;


# instance fields
.field private mActionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyStringArray:[Ljava/lang/String;

.field private mMSDPSupportModule:I

.field private mMSDPSupportedEnvironments:[Ljava/lang/String;

.field private mSupportedActivities:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/huawei/hiai/awareness/movement/MovementController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementStatusConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    new-instance v0, Lcom/huawei/hiai/awareness/awareness/Event;

    invoke-direct {v0}, Lcom/huawei/hiai/awareness/awareness/Event;-><init>()V

    sput-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMovenentStatusEvent:Lcom/huawei/hiai/awareness/awareness/Event;

    .line 52
    sget-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementStatusConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementStatusConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "android.activity_recognition.in_vehicle"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "android.activity_recognition.on_bicycle"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "android.activity_recognition.walking"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "android.activity_recognition.running"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "android.activity_recognition.still"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "android.activity_recognition.fast_walking"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "android.activity_recognition.high_speed_rail"

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "android.activity_recognition.on_foot"

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "android.activity_recognition.elevator"

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "android.activity_recognition.relative_still"

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "android.activity_recognition.env_home"

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "android.activity_recognition.env_office"

    const/high16 v2, 0x20000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "android.activity_recognition.env_way_home"

    const/high16 v2, 0x40000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "android.activity_recognition.env_way_office"

    const/high16 v2, 0x80000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hiai/awareness/movement/MovementController;->mEmptyStringArray:[Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/huawei/hiai/awareness/movement/MovementController;->mEmptyStringArray:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hiai/awareness/movement/MovementController;->mSupportedActivities:[Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/huawei/hiai/awareness/movement/MovementController;->mEmptyStringArray:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportedEnvironments:[Ljava/lang/String;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportModule:I

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hiai/awareness/movement/MovementController;->mActionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private doRealUnRegisterSensor(Lcom/huawei/hiai/awareness/service/AwarenessFence;)Z
    .locals 4
    .param p1, "fence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;

    .prologue
    .line 253
    sget-object v1, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    const-string v2, "doRealUnRegisterSensor "

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getAction()I

    move-result v0

    .line 256
    .local v0, "action":I
    sget-object v1, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareUnregister action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/huawei/hiai/awareness/movement/MovementController;->mActionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/hiai/awareness/movement/MovementController;->mActionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getTopKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/huawei/hiai/awareness/movement/MovementController;->mActionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getTopKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const/4 v1, 0x1

    .line 262
    .end local v0    # "action":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private executeSensorCallback(Lcom/huawei/msdp/movement/HwMSDPMovementEvent;)V
    .locals 14
    .param p1, "event"    # Lcom/huawei/msdp/movement/HwMSDPMovementEvent;

    .prologue
    .line 331
    sget-object v10, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    const-string v11, "enter executeSensorCallback()"

    invoke-static {v10, v11}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    sget-object v10, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->getMovement()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 333
    .local v0, "action":I
    invoke-virtual {p1}, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->getTimestampNs()J

    move-result-wide v8

    .line 334
    .local v8, "timeNS":J
    invoke-virtual {p1}, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->getEventType()I

    move-result v4

    .line 335
    .local v4, "eventTypeInt":I
    const/4 v7, -0x1

    .line 336
    .local v7, "registerAction":I
    iget-object v10, p0, Lcom/huawei/hiai/awareness/movement/MovementController;->mActionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 337
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/PendingIntent;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/huawei/hiai/awareness/common/Utils;->getArrayListFromTopKey(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 338
    .local v1, "arrayList":Ljava/util/ArrayList;
    if-nez v1, :cond_2

    .line 339
    sget-object v10, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    const-string v11, "executeSensorCallback() arrayList == null"

    invoke-static {v10, v11}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .end local v1    # "arrayList":Ljava/util/ArrayList;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/PendingIntent;>;"
    :cond_1
    :goto_1
    return-void

    .line 342
    .restart local v1    # "arrayList":Ljava/util/ArrayList;
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/PendingIntent;>;"
    :cond_2
    sget-object v10, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "executeSensorCallback() arrayList:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const/4 v10, 0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v10, v12, :cond_3

    .line 344
    sget-object v10, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    const-string v11, "executeSensorCallback() arrayList size is not 1"

    invoke-static {v10, v11}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 347
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 349
    const/4 v10, -0x1

    if-ne v10, v7, :cond_4

    .line 350
    sget-object v10, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    const-string v11, "executeSensorCallback() registerAction == -1"

    invoke-static {v10, v11}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 353
    :cond_4
    sget-object v10, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "executeSensorCallback() registerAction : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    and-int v10, v0, v7

    if-ne v0, v10, :cond_0

    .line 356
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 357
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v6, :cond_1

    .line 361
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 362
    .local v5, "intent":Landroid/content/Intent;
    const-string v10, "dataSensorTimeStamp"

    invoke-virtual {v5, v10, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 363
    const-string v10, "eventType"

    invoke-virtual {v5, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 364
    const-string v10, "action"

    invoke-virtual {v5, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    const-string v10, "action_string"

    invoke-virtual {p1}, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->getMovement()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    sget-object v10, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "executeSensorCallback() timeNS : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",eventTypeInt : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",DATA_ACTION_TYPE:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",intent.toString():"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 368
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 366
    invoke-static {v10, v12}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :try_start_0
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getConnectServiceManagerContext()Landroid/content/Context;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v12, v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 371
    :catch_0
    move-exception v2

    .line 372
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    sget-object v10, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "executeSensorCallback() send failure "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getDefaultMovementActionConfigMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/hiai/awareness/movement/MovementController;
    .locals 2

    .prologue
    .line 83
    const-class v1, Lcom/huawei/hiai/awareness/movement/MovementController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sInstance:Lcom/huawei/hiai/awareness/movement/MovementController;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/huawei/hiai/awareness/movement/MovementController;

    invoke-direct {v0}, Lcom/huawei/hiai/awareness/movement/MovementController;-><init>()V

    sput-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sInstance:Lcom/huawei/hiai/awareness/movement/MovementController;

    .line 86
    :cond_0
    sget-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->sInstance:Lcom/huawei/hiai/awareness/movement/MovementController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private prepareQueryMovementStatus(Ljava/lang/String;IJI)V
    .locals 7
    .param p1, "Movement"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "timeNS"    # J
    .param p5, "confidence"    # I

    .prologue
    const/4 v6, 0x1

    .line 308
    sget-object v2, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareQueryMovementStatus() Movement : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " eventType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timeNS : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " confidence : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v1, -0x1

    .line 311
    .local v1, "status":I
    const/4 v0, -0x1

    .line 312
    .local v0, "action":I
    sget-object v2, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementStatusConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    sget-object v2, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementStatusConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 316
    :cond_0
    sget-object v2, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareQueryMovementStatus() status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-object v2, Lcom/huawei/hiai/awareness/movement/MovementController;->mMovenentStatusEvent:Lcom/huawei/hiai/awareness/awareness/Event;

    invoke-virtual {v2, p5}, Lcom/huawei/hiai/awareness/awareness/Event;->setEventConfidence(I)V

    .line 318
    sget-object v2, Lcom/huawei/hiai/awareness/movement/MovementController;->mMovenentStatusEvent:Lcom/huawei/hiai/awareness/awareness/Event;

    invoke-virtual {v2, v0}, Lcom/huawei/hiai/awareness/awareness/Event;->setEventCurAction(I)V

    .line 319
    sget-object v2, Lcom/huawei/hiai/awareness/movement/MovementController;->mMovenentStatusEvent:Lcom/huawei/hiai/awareness/awareness/Event;

    invoke-virtual {v2, v1}, Lcom/huawei/hiai/awareness/awareness/Event;->setEventCurStatus(I)V

    .line 320
    sget-object v2, Lcom/huawei/hiai/awareness/movement/MovementController;->mMovenentStatusEvent:Lcom/huawei/hiai/awareness/awareness/Event;

    invoke-virtual {v2, v6}, Lcom/huawei/hiai/awareness/awareness/Event;->setEventCurType(I)V

    .line 321
    sget-object v2, Lcom/huawei/hiai/awareness/movement/MovementController;->mMovenentStatusEvent:Lcom/huawei/hiai/awareness/awareness/Event;

    invoke-virtual {v2, p3, p4}, Lcom/huawei/hiai/awareness/awareness/Event;->setEventSensorTime(J)V

    .line 322
    sget-object v2, Lcom/huawei/hiai/awareness/movement/MovementController;->mMovenentStatusEvent:Lcom/huawei/hiai/awareness/awareness/Event;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/huawei/hiai/awareness/awareness/Event;->setEventTime(J)V

    .line 323
    sget-object v2, Lcom/huawei/hiai/awareness/movement/MovementController;->mMovenentStatusEvent:Lcom/huawei/hiai/awareness/awareness/Event;

    invoke-virtual {v2, v6}, Lcom/huawei/hiai/awareness/awareness/Event;->setEventTriggerStatus(I)V

    .line 325
    return-void
.end method


# virtual methods
.method public doSensorRegister(Lcom/huawei/hiai/awareness/service/AwarenessFence;Lcom/huawei/hiai/awareness/service/IRequestCallBack;Landroid/app/PendingIntent;)Z
    .locals 22
    .param p1, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p2, "iRequestCallBack"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 99
    sget-object v18, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    const-string v19, "doSensorUnRegister "

    invoke-static/range {v18 .. v19}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-nez p1, :cond_0

    .line 101
    sget-object v18, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    const-string v19, "doSensorRegister illegal!"

    invoke-static/range {v18 .. v19}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/16 v18, 0x0

    .line 210
    :goto_0
    return v18

    .line 105
    :cond_0
    const/16 v18, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportModule:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 106
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getmMSDPSupportModule()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportModule:I

    .line 107
    sget-object v18, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "doSensorRegister, mMSDPSupportModule: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportModule:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\t action: 0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getAction()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportModule:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mSupportedActivities:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mSupportedActivities:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 110
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getmMSDPMovementSupportedActivities()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huawei/hiai/awareness/movement/MovementController;->mSupportedActivities:[Ljava/lang/String;

    .line 111
    sget-object v18, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    const-string v19, "doSensorRegister, printHashMap mSupportedActivities"

    invoke-static/range {v18 .. v19}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_1
    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportModule:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportedEnvironments:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportedEnvironments:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 116
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getmMSDPSupportedEnvironments()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportedEnvironments:[Ljava/lang/String;

    .line 117
    sget-object v18, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    const-string v19, "doSensorRegister, printHashMap mMSDPSupportedEnvironments"

    invoke-static/range {v18 .. v19}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mSupportedActivities:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mSupportedActivities:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 121
    sget-object v18, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    const-string v19, "awareness doSensorRegister, get movenent mSupportedActivities failure!"

    invoke-static/range {v18 .. v19}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportModule:I

    .line 127
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getAction()I

    move-result v6

    .local v6, "action":I
    move-object/from16 v10, p1

    .line 129
    check-cast v10, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    .line 130
    .local v10, "extendAwarenessFence":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    invoke-virtual {v10}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->getRegisterBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 131
    .local v8, "bundle":Landroid/os/Bundle;
    if-nez v8, :cond_4

    .line 132
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 135
    :cond_4
    const-string v18, "sensorhub_control_report_period"

    const-wide v20, 0x2e90edd000L

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 136
    .local v15, "screenOnReportPeriod":Ljava/lang/Long;
    const/16 v16, 0x0

    .line 137
    .local v16, "strHwMSDPOtherParameters":Ljava/lang/String;
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0xc

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 138
    const-string v18, "HwMSDPOtherParams"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 140
    :cond_5
    invoke-static/range {v16 .. v16}, Lcom/huawei/hiai/awareness/common/Utils;->getHwMSDPOtherParametersbyString(Ljava/lang/String;)Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    move-result-object v11

    .line 141
    .local v11, "hwMSDPOtherParameters":Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
    sget-object v18, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "doSensorRegister, action: 0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getAction()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\t screenOnReportPeriod: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\t HwMSDPOtherParameters:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v13, 0x0

    .line 147
    .local v13, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v17, 0x0

    .line 148
    .local v17, "supportAction":[Ljava/lang/String;
    const/4 v14, -0x1

    .line 149
    .local v14, "movementType":I
    sget-object v13, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 151
    const/4 v12, 0x0

    .line 152
    .local v12, "isRegistered":Z
    invoke-virtual {v13}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 153
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getAction()I

    move-result v20

    and-int v18, v18, v20

    if-eqz v18, :cond_6

    .line 157
    const/4 v12, 0x1

    .line 158
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/high16 v20, 0x10000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    const/4 v14, 0x0

    .line 159
    :goto_1
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/high16 v20, 0x10000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mSupportedActivities:[Ljava/lang/String;

    move-object/from16 v17, v0

    .line 160
    :goto_2
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v13, v1}, Lcom/huawei/hiai/awareness/common/Utils;->actionSupport(ILjava/util/concurrent/ConcurrentHashMap;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, "activity":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getAction()I

    move-result v21

    and-int v18, v18, v21

    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    if-nez v7, :cond_6

    .line 166
    :cond_7
    sget-object v19, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "doSensorRegister unsupport register type: entry.getValue(): 0x"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v12, 0x0

    .line 168
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 173
    .end local v7    # "activity":Ljava/lang/String;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_8
    if-nez v12, :cond_b

    .line 175
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->setAction(I)V

    .line 176
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->getInstance()Lcom/huawei/hiai/awareness/service/ServiceBindingManager;

    move-result-object v18

    const/16 v19, 0x4

    const v20, 0x30d49

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->registerResultCallback(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;II)V

    .line 180
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 158
    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_9
    const/4 v14, 0x2

    goto/16 :goto_1

    .line 159
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportedEnvironments:[Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_2

    .line 183
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mActionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    .line 184
    new-instance v18, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huawei/hiai/awareness/movement/MovementController;->mActionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 186
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mActionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getAction()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mActionCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getTopKey()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_d
    invoke-virtual {v13}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_e
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 192
    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getAction()I

    move-result v20

    and-int v18, v18, v20

    if-eqz v18, :cond_e

    .line 196
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/high16 v20, 0x10000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_f

    const/4 v14, 0x0

    .line 197
    :goto_4
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/high16 v20, 0x10000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mSupportedActivities:[Ljava/lang/String;

    move-object/from16 v17, v0

    .line 198
    :goto_5
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v13, v1}, Lcom/huawei/hiai/awareness/common/Utils;->actionSupport(ILjava/util/concurrent/ConcurrentHashMap;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 199
    .restart local v7    # "activity":Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v14, v15, v11}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->enableMovementEvent(Ljava/lang/String;ILjava/lang/Long;Lcom/huawei/msdp/movement/HwMSDPOtherParameters;)V

    goto :goto_3

    .line 196
    .end local v7    # "activity":Ljava/lang/String;
    :cond_f
    const/4 v14, 0x2

    goto :goto_4

    .line 197
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportedEnvironments:[Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_5

    .line 203
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_11
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->getInstance()Lcom/huawei/hiai/awareness/service/ServiceBindingManager;

    move-result-object v18

    const/16 v19, 0x3

    const v20, 0x30d40

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->registerResultCallback(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;II)V

    .line 208
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 210
    .end local v6    # "action":I
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v10    # "extendAwarenessFence":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .end local v11    # "hwMSDPOtherParameters":Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
    .end local v12    # "isRegistered":Z
    .end local v13    # "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "movementType":I
    .end local v15    # "screenOnReportPeriod":Ljava/lang/Long;
    .end local v16    # "strHwMSDPOtherParameters":Ljava/lang/String;
    .end local v17    # "supportAction":[Ljava/lang/String;
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method public doSensorUnRegister(Lcom/huawei/hiai/awareness/service/AwarenessFence;)Z
    .locals 12
    .param p1, "fence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;

    .prologue
    const/high16 v11, 0x10000

    const/4 v7, 0x0

    .line 215
    sget-object v6, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    const-string v8, "doSensorUnRegister "

    invoke-static {v6, v8}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    if-nez p1, :cond_0

    .line 217
    sget-object v6, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    const-string v8, "doSensorUnRegister illegal!"

    invoke-static {v6, v8}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :goto_0
    return v7

    .line 221
    :cond_0
    iget-object v6, p0, Lcom/huawei/hiai/awareness/movement/MovementController;->mSupportedActivities:[Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/huawei/hiai/awareness/movement/MovementController;->mSupportedActivities:[Ljava/lang/String;

    array-length v6, v6

    if-nez v6, :cond_2

    .line 222
    :cond_1
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getmMSDPMovementSupportedActivities()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/huawei/hiai/awareness/movement/MovementController;->mSupportedActivities:[Ljava/lang/String;

    .line 224
    :cond_2
    iget-object v6, p0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportedEnvironments:[Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportedEnvironments:[Ljava/lang/String;

    array-length v6, v6

    if-nez v6, :cond_4

    .line 225
    :cond_3
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getmMSDPSupportedEnvironments()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportedEnvironments:[Ljava/lang/String;

    .line 228
    :cond_4
    const/4 v3, 0x0

    .line 229
    .local v3, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 231
    .local v5, "supportAction":[Ljava/lang/String;
    sget-object v3, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 232
    const/4 v2, 0x1

    .line 233
    .local v2, "flag":Z
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 234
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getAction()I

    move-result v9

    and-int/2addr v6, v9

    if-eqz v6, :cond_5

    .line 238
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v11, :cond_6

    move v4, v7

    .line 239
    .local v4, "movementType":I
    :goto_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v11, :cond_7

    iget-object v5, p0, Lcom/huawei/hiai/awareness/movement/MovementController;->mSupportedActivities:[Ljava/lang/String;

    .line 240
    :goto_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, v3, v5}, Lcom/huawei/hiai/awareness/common/Utils;->actionSupport(ILjava/util/concurrent/ConcurrentHashMap;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "activity":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getAction()I

    move-result v10

    and-int/2addr v6, v10

    if-ne v9, v6, :cond_5

    if-eqz v0, :cond_5

    .line 242
    sget-object v9, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doSensorUnRegister success 2, entry.getValue():0x"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->diableMovementEvent(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 238
    .end local v0    # "activity":Ljava/lang/String;
    .end local v4    # "movementType":I
    :cond_6
    const/4 v4, 0x2

    goto :goto_2

    .line 239
    .restart local v4    # "movementType":I
    :cond_7
    iget-object v5, p0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportedEnvironments:[Ljava/lang/String;

    goto :goto_3

    .line 246
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "movementType":I
    :cond_8
    invoke-direct {p0, p1}, Lcom/huawei/hiai/awareness/movement/MovementController;->doRealUnRegisterSensor(Lcom/huawei/hiai/awareness/service/AwarenessFence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 247
    const/4 v2, 0x0

    :cond_9
    move v7, v2

    .line 249
    goto/16 :goto_0
.end method

.method public doSetReportPeriod(Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;)Lcom/huawei/hiai/awareness/service/RequestResult;
    .locals 18
    .param p1, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    .prologue
    .line 379
    const/4 v9, 0x0

    .line 380
    .local v9, "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->getRegisterBundle()Landroid/os/Bundle;

    move-result-object v14

    if-nez v14, :cond_1

    .line 381
    :cond_0
    sget-object v14, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    const-string v15, "doSetReportPeriod(): illegal parameters!"

    invoke-static {v14, v15}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v9, Lcom/huawei/hiai/awareness/service/RequestResult;

    .end local v9    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const v14, 0x30d44

    const-string v15, "error_unknown"

    invoke-direct {v9, v14, v15}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>(ILjava/lang/String;)V

    .line 384
    .restart local v9    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const/4 v14, 0x7

    invoke-virtual {v9, v14}, Lcom/huawei/hiai/awareness/service/RequestResult;->setResultType(I)V

    move-object v10, v9

    .line 468
    .end local v9    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    .local v10, "result":Ljava/lang/Object;
    :goto_0
    return-object v10

    .line 387
    .end local v10    # "result":Ljava/lang/Object;
    .restart local v9    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_1
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportModule:I

    if-ne v14, v15, :cond_4

    .line 388
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getmMSDPSupportModule()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportModule:I

    .line 389
    sget-object v14, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "doSetReportPeriod, mMSDPSupportModule: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportModule:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\t action: 0x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->getAction()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportModule:I

    and-int/lit8 v15, v15, 0x1

    if-ne v14, v15, :cond_2

    .line 391
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mSupportedActivities:[Ljava/lang/String;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mSupportedActivities:[Ljava/lang/String;

    array-length v14, v14

    if-nez v14, :cond_2

    .line 392
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getmMSDPMovementSupportedActivities()[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mSupportedActivities:[Ljava/lang/String;

    .line 393
    sget-object v14, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    const-string v15, "doSetReportPeriod, printHashMap mSupportedActivities"

    invoke-static {v14, v15}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_2
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportModule:I

    and-int/lit8 v15, v15, 0x2

    if-ne v14, v15, :cond_3

    .line 397
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportedEnvironments:[Ljava/lang/String;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportedEnvironments:[Ljava/lang/String;

    array-length v14, v14

    if-nez v14, :cond_3

    .line 398
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getmMSDPSupportedEnvironments()[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportedEnvironments:[Ljava/lang/String;

    .line 399
    sget-object v14, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    const-string v15, "doSetReportPeriod, printHashMap mMSDPSupportedEnvironments"

    invoke-static {v14, v15}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mSupportedActivities:[Ljava/lang/String;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mSupportedActivities:[Ljava/lang/String;

    array-length v14, v14

    if-nez v14, :cond_4

    .line 403
    sget-object v14, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    const-string v15, "doSetReportPeriod, get movenent mSupportedActivities failure!"

    invoke-static {v14, v15}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportModule:I

    .line 408
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->getRegisterBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 409
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v14, "sensorhub_control_report_period"

    const-wide v16, 0x2e90edd000L

    move-wide/from16 v0, v16

    invoke-virtual {v3, v14, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 410
    .local v11, "screenOnReportPeriod":Ljava/lang/Long;
    const/4 v12, 0x0

    .line 411
    .local v12, "strHwMSDPOtherParameters":Ljava/lang/String;
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0xc

    if-lt v14, v15, :cond_5

    .line 412
    const-string v14, "HwMSDPOtherParams"

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 415
    :cond_5
    invoke-static {v12}, Lcom/huawei/hiai/awareness/common/Utils;->getHwMSDPOtherParametersbyString(Ljava/lang/String;)Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    move-result-object v5

    .line 416
    .local v5, "hwMSDPOtherParameters":Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
    sget-object v14, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "doSetReportPeriod, action: 0x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->getAction()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\t screenOnReportPeriod: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\t HwMSDPOtherParameters:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const/4 v7, 0x0

    .line 422
    .local v7, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .line 423
    .local v13, "supportAction":[Ljava/lang/String;
    const/4 v8, -0x1

    .line 424
    .local v8, "movementType":I
    sget-object v7, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 426
    const/4 v6, 0x0

    .line 427
    .local v6, "isRegistered":Z
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 428
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->getAction()I

    move-result v16

    and-int v14, v14, v16

    if-eqz v14, :cond_6

    .line 432
    const/4 v6, 0x1

    .line 433
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/high16 v16, 0x10000

    move/from16 v0, v16

    if-ge v14, v0, :cond_9

    const/4 v8, 0x0

    .line 434
    :goto_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/high16 v16, 0x10000

    move/from16 v0, v16

    if-ge v14, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mSupportedActivities:[Ljava/lang/String;

    .line 435
    :goto_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14, v7, v13}, Lcom/huawei/hiai/awareness/common/Utils;->actionSupport(ILjava/util/concurrent/ConcurrentHashMap;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "activity":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->getAction()I

    move-result v17

    and-int v14, v14, v17

    move/from16 v0, v16

    if-ne v0, v14, :cond_7

    if-nez v2, :cond_6

    .line 439
    :cond_7
    sget-object v15, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "doSetReportPeriod unsupport register type: entry.getValue(): 0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const/4 v6, 0x0

    .line 445
    .end local v2    # "activity":Ljava/lang/String;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_8
    if-nez v6, :cond_b

    .line 446
    new-instance v9, Lcom/huawei/hiai/awareness/service/RequestResult;

    .end local v9    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const v14, 0x30d47

    const/4 v15, 0x0

    invoke-direct {v9, v14, v15}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>(ILjava/lang/String;)V

    .line 447
    .restart local v9    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const/4 v14, 0x7

    invoke-virtual {v9, v14}, Lcom/huawei/hiai/awareness/service/RequestResult;->setResultType(I)V

    move-object v10, v9

    .line 448
    .restart local v10    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 433
    .end local v10    # "result":Ljava/lang/Object;
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_9
    const/4 v8, 0x2

    goto :goto_1

    .line 434
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportedEnvironments:[Ljava/lang/String;

    goto :goto_2

    .line 453
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_b
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_c
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 455
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->getAction()I

    move-result v16

    and-int v14, v14, v16

    if-eqz v14, :cond_c

    .line 459
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/high16 v16, 0x10000

    move/from16 v0, v16

    if-ge v14, v0, :cond_d

    const/4 v8, 0x0

    .line 460
    :goto_4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/high16 v16, 0x10000

    move/from16 v0, v16

    if-ge v14, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mSupportedActivities:[Ljava/lang/String;

    .line 461
    :goto_5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14, v7, v13}, Lcom/huawei/hiai/awareness/common/Utils;->actionSupport(ILjava/util/concurrent/ConcurrentHashMap;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 462
    .restart local v2    # "activity":Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->getInstance()Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    move-result-object v14

    invoke-virtual {v14, v2, v8, v11, v5}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->enableMovementEvent(Ljava/lang/String;ILjava/lang/Long;Lcom/huawei/msdp/movement/HwMSDPOtherParameters;)V

    goto :goto_3

    .line 459
    .end local v2    # "activity":Ljava/lang/String;
    :cond_d
    const/4 v8, 0x2

    goto :goto_4

    .line 460
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMSDPSupportedEnvironments:[Ljava/lang/String;

    goto :goto_5

    .line 466
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_f
    new-instance v9, Lcom/huawei/hiai/awareness/service/RequestResult;

    .end local v9    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const v14, 0x30d40

    const/4 v15, 0x0

    invoke-direct {v9, v14, v15}, Lcom/huawei/hiai/awareness/service/RequestResult;-><init>(ILjava/lang/String;)V

    .line 467
    .restart local v9    # "result":Lcom/huawei/hiai/awareness/service/RequestResult;
    const/4 v14, 0x6

    invoke-virtual {v9, v14}, Lcom/huawei/hiai/awareness/service/RequestResult;->setResultType(I)V

    move-object v10, v9

    .line 468
    .restart local v10    # "result":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public getAction(I)Ljava/lang/String;
    .locals 3
    .param p1, "action"    # I

    .prologue
    .line 90
    sget-object v1, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 91
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 92
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMovenentStatusEvent()Lcom/huawei/hiai/awareness/awareness/Event;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/huawei/hiai/awareness/movement/MovementController;->mMovenentStatusEvent:Lcom/huawei/hiai/awareness/awareness/Event;

    return-object v0
.end method

.method public onMovementStatusChanged(Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;)V
    .locals 13
    .param p1, "var1"    # Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;

    .prologue
    .line 266
    sget-object v1, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    const-string v10, "HwMSDPMovementStatusChangedCallBack onMovementStatusChanged()"

    invoke-static {v1, v10}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1}, Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;->getMovementEvents()Ljava/lang/Iterable;

    move-result-object v7

    .line 269
    .local v7, "eventIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/huawei/msdp/movement/HwMSDPMovementEvent;>;"
    if-nez v7, :cond_1

    .line 270
    sget-object v1, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    const-string v10, "onMovementStatusChanged() eventIterable == null"

    invoke-static {v1, v10}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_0
    return-void

    .line 274
    :cond_1
    const/4 v9, 0x0

    .line 275
    .local v9, "i":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;

    .line 276
    .local v0, "event":Lcom/huawei/msdp/movement/HwMSDPMovementEvent;
    add-int/lit8 v9, v9, 0x1

    .line 277
    invoke-virtual {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->getMovement()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "Movement":Ljava/lang/String;
    sget-object v1, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onMovementStatusChanged() i = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Movement : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {v2}, Lcom/huawei/hiai/awareness/common/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/huawei/hiai/awareness/movement/MovementController;->sDefaultMovementActionConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 281
    sget-object v1, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    const-string v11, "onMovementStatusChanged() sDefaultMovementActionConfigMap.containsKey(Movement) false"

    invoke-static {v1, v11}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_2
    const-string v8, ""

    .line 286
    .local v8, "eventTypeString":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->getEventType()I

    move-result v3

    .line 287
    .local v3, "eventTypeInt":I
    const/4 v1, 0x1

    if-ne v1, v3, :cond_4

    .line 288
    const-string v8, "In"

    .line 289
    const/4 v3, 0x1

    .line 295
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->getTimestampNs()J

    move-result-wide v4

    .line 296
    .local v4, "timeNS":J
    invoke-virtual {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementEvent;->getConfidence()I

    move-result v6

    .line 298
    .local v6, "confidence":I
    sget-object v1, Lcom/huawei/hiai/awareness/movement/MovementController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onMovementChanged() timeNS : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",eventTypeString:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",eventTypeString:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",confidence: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    .line 301
    invoke-direct/range {v1 .. v6}, Lcom/huawei/hiai/awareness/movement/MovementController;->prepareQueryMovementStatus(Ljava/lang/String;IJI)V

    .line 302
    invoke-direct {p0, v0}, Lcom/huawei/hiai/awareness/movement/MovementController;->executeSensorCallback(Lcom/huawei/msdp/movement/HwMSDPMovementEvent;)V

    goto/16 :goto_0

    .line 290
    .end local v4    # "timeNS":J
    .end local v6    # "confidence":I
    :cond_4
    const/4 v1, 0x2

    if-ne v1, v3, :cond_3

    .line 291
    const-string v8, "Out"

    .line 292
    const/4 v3, 0x2

    goto :goto_1
.end method
