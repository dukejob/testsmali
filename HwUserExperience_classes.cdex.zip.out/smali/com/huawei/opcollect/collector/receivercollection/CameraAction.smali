.class public Lcom/huawei/opcollect/collector/receivercollection/CameraAction;
.super Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;
.source "CameraAction.java"

# interfaces
.implements Lcom/huawei/opcollect/utils/LocationChange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/receivercollection/CameraAction$CameraReceiver;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "CameraAction"

.field private static instance:Lcom/huawei/opcollect/collector/receivercollection/CameraAction;


# instance fields
.field private accumulateNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->LOCK:Ljava/lang/Object;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/CameraAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->accumulateNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    const-string v1, "broadcast.take_picture"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v0

    .line 41
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->setDailyRecordNum(I)V

    .line 42
    return-void
.end method

.method private static destroyCameraActionInstance()V
    .locals 2

    .prologue
    .line 127
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/CameraAction;

    .line 129
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/CameraAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/CameraAction;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;

    const-string v2, "CameraAction"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/CameraAction;

    .line 49
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/CameraAction;

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private saveLocation(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 133
    iget-object v3, p0, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->accumulateNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    .line 134
    .local v2, "sendNum":I
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 135
    .local v1, "object":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 137
    :try_start_0
    const-string v3, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 138
    const-string v3, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    if-ltz v2, :cond_1

    .line 151
    const-string v3, "broadcast.take_picture"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "CameraAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSONException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :try_start_1
    const-string v3, "latitude"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v3, "longitude"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 146
    :catch_1
    move-exception v0

    .line 147
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v3, "CameraAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSONException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()Z
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->destroy()Z

    .line 122
    invoke-static {}, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->destroyCameraActionInstance()V

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public enable()V
    .locals 6

    .prologue
    .line 58
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->enable()V

    .line 59
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 60
    new-instance v2, Lcom/huawei/opcollect/collector/receivercollection/CameraAction$CameraReceiver;

    invoke-direct {v2, p0}, Lcom/huawei/opcollect/collector/receivercollection/CameraAction$CameraReceiver;-><init>(Lcom/huawei/opcollect/collector/receivercollection/CameraAction;)V

    iput-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    :try_start_0
    const-string v2, "android.hardware.action.NEW_PICTURE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    .line 69
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v5

    .line 68
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 71
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/huawei/opcollect/location/SystemLocation;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/location/SystemLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/opcollect/location/SystemLocation;->enable()V

    .line 73
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 65
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v2, "CameraAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MalformedMimeTypeException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected execute()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/location/SystemLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/location/SystemLocation;->isLocating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/location/SystemLocation;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/opcollect/location/SystemLocation;->getCurrentLocation(Lcom/huawei/opcollect/utils/LocationChange;)V

    .line 111
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->accumulateNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    goto :goto_0
.end method

.method public onGetLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->saveLocation(Landroid/location/Location;)V

    .line 83
    return-void
.end method
