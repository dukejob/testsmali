.class public Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;
.super Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;
.source "AwareLocationAction.java"

# interfaces
.implements Lcom/huawei/opcollect/location/ILocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareLocationReceiver;,
        Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;
    }
.end annotation


# static fields
.field private static final CHINA_COUNTRY_CODE:Ljava/lang/String; = "CN"

.field private static final CHINA_COUNTRY_NUM:Ljava/lang/String; = "156"

.field private static final LOCATION_COMPANY:I = 0x1

.field private static final LOCATION_HOME:I = 0x0

.field private static final LOCATION_HOMECITY:I = 0x3

.field private static final LOCATION_OUTSIDE_CITY:I = 0x2

.field private static final LOCATION_OVERSEA:I = 0x4

.field private static final LOCATION_UNKNOWN:I = -0x1

.field private static final LOCK:Ljava/lang/Object;

.field private static final MESSAGE_ON_CHANGE:I = 0x1

.field private static final PLACE_RECOGNITION_ACTION:Ljava/lang/String; = "com.huawei.placerecognition.action.PLACE_RECOG"

.field private static final PLACE_RECOGNITION_KEY:Ljava/lang/String; = "placerecognition_key"

.field private static final PLACE_RECOGNITION_PERMISSION:Ljava/lang/String; = "com.huawei.placerecognition.permission.PLACE_RECOG"

.field private static final SP_BC_FLAG:Ljava/lang/String; = "intelligent_broadcast_flag"

.field private static final SP_CACHE_KEY:Ljava/lang/String; = "CachedCity"

.field private static final SP_CACHE_XML:Ljava/lang/String; = "CachedCity"

.field private static final TAG:Ljava/lang/String; = "AwareLocationAction"

.field private static instance:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;


# instance fields
.field private isHomeOrOffice:Z

.field private isNeedModifyCityCode:Z

.field private mHandler:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;

.field private mLocationType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->LOCK:Ljava/lang/Object;

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mHandler:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;

    .line 58
    iput-boolean v2, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->isNeedModifyCityCode:Z

    .line 59
    iput-boolean v2, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->isHomeOrOffice:Z

    .line 60
    const/4 v1, -0x1

    iput v1, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mLocationType:I

    .line 64
    const-string v1, "AwareLocationAction"

    const-string v2, "AwareLocationAction"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-class v1, Lcom/huawei/nb/model/collectencrypt/RawPositionState;

    invoke-virtual {p0, v1}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->queryDailyRecordNum(Ljava/lang/Class;)I

    move-result v0

    .line 66
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->setDailyRecordNum(I)V

    .line 67
    return-void
.end method

.method static synthetic access$002(Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mLocationType:I

    return p1
.end method

.method static synthetic access$100(Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->setBroadcastFlag()V

    return-void
.end method

.method static synthetic access$202(Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->isHomeOrOffice:Z

    return p1
.end method

.method static synthetic access$300(Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->isNeedModifyCityCode:Z

    return v0
.end method

.method static synthetic access$302(Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->isNeedModifyCityCode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;)Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mHandler:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;

    return-object v0
.end method

.method private static destroyAwareLocationActionInstance()V
    .locals 2

    .prologue
    .line 91
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    .line 93
    monitor-exit v1

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    const-string v2, "AwareLocationAction"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    .line 74
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setBroadcastFlag()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 252
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 253
    const-string v2, "AwareLocationAction"

    const-string v3, "context is null"

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mContext:Landroid/content/Context;

    const-string v3, "CachedCity"

    const v4, 0x8000

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 257
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "intelligent_broadcast_flag"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 258
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 259
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "intelligent_broadcast_flag"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 260
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 261
    const-string v2, "AwareLocationAction"

    const-string v3, "receive intelligent broadcast, store it"

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCityCode(Ljava/lang/String;)V
    .locals 5
    .param p1, "cityCode"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    const-string v2, "AwareLocationAction"

    const-string v3, "cityCode is null or is empty"

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-boolean v2, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->isNeedModifyCityCode:Z

    if-nez v2, :cond_1

    .line 272
    const-string v2, "AwareLocationAction"

    const-string v3, "no need modify city code"

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_1
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mContext:Landroid/content/Context;

    const-string v3, "CachedCity"

    const v4, 0x8000

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 277
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 278
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "CachedCity"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 280
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->isNeedModifyCityCode:Z

    goto :goto_0
.end method


# virtual methods
.method public destroy()Z
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->destroy()Z

    .line 86
    invoke-static {}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->destroyAwareLocationActionInstance()V

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->disable()V

    .line 145
    invoke-static {}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->getInstance()Lcom/huawei/opcollect/strategy/OdmfActionManager;

    move-result-object v0

    const-string v1, "AwareLocationAction"

    invoke-virtual {v0, v1, p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->removeLocationListener(Ljava/lang/String;Lcom/huawei/opcollect/location/ILocationListener;)V

    .line 146
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mHandler:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mHandler:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;

    .line 149
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 5

    .prologue
    .line 101
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->enable()V

    .line 102
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareLocationReceiver;

    invoke-direct {v1, p0}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareLocationReceiver;-><init>(Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;)V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.huawei.placerecognition.action.PLACE_RECOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.huawei.placerecognition.permission.PLACE_RECOG"

    .line 107
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v4

    .line 106
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;

    move-result-object v1

    const-string v2, "AwareLocationAction"

    invoke-virtual {v1, v2, p0}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->addLocationListener(Ljava/lang/String;Lcom/huawei/opcollect/location/ILocationListener;)V

    .line 111
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mHandler:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;

    if-nez v1, :cond_1

    .line 112
    new-instance v1, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;

    invoke-direct {v1, p0}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;-><init>(Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;)V

    iput-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mHandler:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;

    .line 114
    :cond_1
    return-void
.end method

.method protected execute()Z
    .locals 3

    .prologue
    .line 158
    new-instance v0, Lcom/huawei/nb/model/collectencrypt/RawPositionState;

    invoke-direct {v0}, Lcom/huawei/nb/model/collectencrypt/RawPositionState;-><init>()V

    .line 159
    .local v0, "rawPositionState":Lcom/huawei/nb/model/collectencrypt/RawPositionState;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawPositionState;->setMTimeStamp(Ljava/util/Date;)V

    .line 160
    iget v1, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mLocationType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawPositionState;->setMStatus(Ljava/lang/Integer;)V

    .line 161
    invoke-static {}, Lcom/huawei/opcollect/utils/OPCollectUtils;->formatCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawPositionState;->setMReservedText(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 164
    const/4 v1, 0x1

    return v1
.end method

.method public onLocationSuccess(Lcom/huawei/opcollect/location/HwLocation;)V
    .locals 9
    .param p1, "hwLocation"    # Lcom/huawei/opcollect/location/HwLocation;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 174
    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 175
    const-string v4, "AwareLocationAction"

    const-string v5, "context is null"

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mContext:Landroid/content/Context;

    const-string v5, "CachedCity"

    const v6, 0x8000

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 179
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v4, "intelligent_broadcast_flag"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v7, :cond_2

    .line 180
    const-string v4, "AwareLocationAction"

    const-string v5, "not receive intelligent broadcast, return"

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_2
    if-nez p1, :cond_3

    .line 184
    const-string v4, "AwareLocationAction"

    const-string v5, "hwLocation is null"

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_3
    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mHandler:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;

    if-nez v4, :cond_4

    .line 188
    const-string v4, "AwareLocationAction"

    const-string v5, "handler is null"

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_4
    const-string v4, "AwareLocationAction"

    const-string v5, "callback."

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Lcom/huawei/opcollect/location/HwLocation;->getCityCode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->setCityCode(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Lcom/huawei/opcollect/location/HwLocation;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "curCountry":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/huawei/opcollect/location/HwLocation;->getCityCode()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "curCityCode":Ljava/lang/String;
    const-string v4, "CachedCity"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "cacheCityCode":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "CN"

    .line 199
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "156"

    .line 200
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 201
    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mHandler:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;

    const/4 v5, 0x4

    invoke-virtual {v4, v7, v5, v8}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 203
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 210
    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mHandler:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v7, v5, v8}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 212
    :cond_6
    iget-boolean v4, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->isHomeOrOffice:Z

    if-nez v4, :cond_0

    .line 213
    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->mHandler:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v7, v5, v8}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method
