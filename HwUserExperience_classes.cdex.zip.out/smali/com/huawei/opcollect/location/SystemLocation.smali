.class public Lcom/huawei/opcollect/location/SystemLocation;
.super Ljava/lang/Object;
.source "SystemLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/location/SystemLocation$GetLastLocationTask;,
        Lcom/huawei/opcollect/location/SystemLocation$NetLocationListener;,
        Lcom/huawei/opcollect/location/SystemLocation$PassiveLocationListener;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "SystemLocation"

.field private static final TWENTY_SECOND:J = 0x4e20L

.field private static final TWO_MINUTES:J = 0x1d4c0L

.field private static instance:Lcom/huawei/opcollect/location/SystemLocation;


# instance fields
.field private isLocating:Z

.field private mContext:Landroid/content/Context;

.field private mEnable:Z

.field private mLocation:Landroid/location/Location;

.field private mLocationChangeListener:Lcom/huawei/opcollect/utils/LocationChange;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNetListener:Landroid/location/LocationListener;

.field private mPassiveListener:Landroid/location/LocationListener;

.field private mTimer:Ljava/util/Timer;

.field private networkEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/location/SystemLocation;->LOCK:Ljava/lang/Object;

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/location/SystemLocation;->instance:Lcom/huawei/opcollect/location/SystemLocation;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mContext:Landroid/content/Context;

    .line 50
    iput-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocationManager:Landroid/location/LocationManager;

    .line 51
    iput-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocation:Landroid/location/Location;

    .line 52
    iput-boolean v1, p0, Lcom/huawei/opcollect/location/SystemLocation;->networkEnabled:Z

    .line 55
    iput-boolean v1, p0, Lcom/huawei/opcollect/location/SystemLocation;->isLocating:Z

    .line 56
    iput-boolean v1, p0, Lcom/huawei/opcollect/location/SystemLocation;->mEnable:Z

    .line 57
    iput-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mPassiveListener:Landroid/location/LocationListener;

    .line 58
    iput-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mNetListener:Landroid/location/LocationListener;

    .line 61
    const-string v0, "SystemLocation"

    const-string v1, "create"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/huawei/opcollect/location/SystemLocation;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method static synthetic access$002(Lcom/huawei/opcollect/location/SystemLocation;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/location/SystemLocation;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$102(Lcom/huawei/opcollect/location/SystemLocation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/location/SystemLocation;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/huawei/opcollect/location/SystemLocation;->isLocating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/huawei/opcollect/location/SystemLocation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/location/SystemLocation;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/opcollect/location/SystemLocation;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/location/SystemLocation;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/opcollect/location/SystemLocation;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/location/SystemLocation;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huawei/opcollect/location/SystemLocation;)Lcom/huawei/opcollect/utils/LocationChange;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/location/SystemLocation;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocationChangeListener:Lcom/huawei/opcollect/utils/LocationChange;

    return-object v0
.end method

.method static synthetic access$600(Lcom/huawei/opcollect/location/SystemLocation;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/location/SystemLocation;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mNetListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/huawei/opcollect/location/SystemLocation;Landroid/location/LocationListener;)Landroid/location/LocationListener;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/location/SystemLocation;
    .param p1, "x1"    # Landroid/location/LocationListener;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/huawei/opcollect/location/SystemLocation;->mNetListener:Landroid/location/LocationListener;

    return-object p1
.end method

.method static synthetic access$700(Lcom/huawei/opcollect/location/SystemLocation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/location/SystemLocation;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->networkEnabled:Z

    return v0
.end method

.method private static destroySystemLocationInstance()V
    .locals 2

    .prologue
    .line 227
    sget-object v1, Lcom/huawei/opcollect/location/SystemLocation;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/location/SystemLocation;->instance:Lcom/huawei/opcollect/location/SystemLocation;

    .line 229
    monitor-exit v1

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/location/SystemLocation;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    sget-object v1, Lcom/huawei/opcollect/location/SystemLocation;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/location/SystemLocation;->instance:Lcom/huawei/opcollect/location/SystemLocation;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/huawei/opcollect/location/SystemLocation;

    invoke-direct {v0, p0}, Lcom/huawei/opcollect/location/SystemLocation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/opcollect/location/SystemLocation;->instance:Lcom/huawei/opcollect/location/SystemLocation;

    .line 177
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/location/SystemLocation;->instance:Lcom/huawei/opcollect/location/SystemLocation;

    monitor-exit v1

    return-object v0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLocationFromSystem()V
    .locals 8

    .prologue
    .line 263
    iget-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 264
    const-string v0, "SystemLocation"

    const-string v1, "mLocationManager is null."

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_0
    return-void

    .line 268
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->networkEnabled:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_1
    iget-boolean v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->networkEnabled:Z

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocationChangeListener:Lcom/huawei/opcollect/utils/LocationChange;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/opcollect/utils/LocationChange;->onGetLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 269
    :catch_0
    move-exception v6

    .line 270
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v0, "SystemLocation"

    const-string v1, "provider is not permitted"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 278
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 279
    .local v7, "location":Landroid/location/Location;
    if-eqz v7, :cond_3

    .line 280
    invoke-direct {p0, v7}, Lcom/huawei/opcollect/location/SystemLocation;->isFreshLocation(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    iput-object v7, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocation:Landroid/location/Location;

    .line 282
    iget-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocationChangeListener:Lcom/huawei/opcollect/utils/LocationChange;

    iget-object v1, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocation:Landroid/location/Location;

    invoke-interface {v0, v1}, Lcom/huawei/opcollect/utils/LocationChange;->onGetLocation(Landroid/location/Location;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 294
    .end local v7    # "location":Landroid/location/Location;
    :catch_1
    move-exception v6

    .line 295
    .local v6, "e":Ljava/lang/SecurityException;
    const-string v0, "SystemLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocationFromSystem security: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .end local v6    # "e":Ljava/lang/SecurityException;
    :goto_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mTimer:Ljava/util/Timer;

    .line 302
    iget-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/huawei/opcollect/location/SystemLocation$GetLastLocationTask;

    invoke-direct {v1, p0}, Lcom/huawei/opcollect/location/SystemLocation$GetLastLocationTask;-><init>(Lcom/huawei/opcollect/location/SystemLocation;)V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 285
    .restart local v7    # "location":Landroid/location/Location;
    :cond_2
    :try_start_2
    new-instance v0, Lcom/huawei/opcollect/location/SystemLocation$NetLocationListener;

    invoke-direct {v0, p0}, Lcom/huawei/opcollect/location/SystemLocation$NetLocationListener;-><init>(Lcom/huawei/opcollect/location/SystemLocation;)V

    iput-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mNetListener:Landroid/location/LocationListener;

    .line 286
    iget-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/huawei/opcollect/location/SystemLocation;->mNetListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->isLocating:Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 296
    .end local v7    # "location":Landroid/location/Location;
    :catch_2
    move-exception v6

    .line 297
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "SystemLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocationFromSystem illegal argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 290
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "location":Landroid/location/Location;
    :cond_3
    :try_start_3
    new-instance v0, Lcom/huawei/opcollect/location/SystemLocation$NetLocationListener;

    invoke-direct {v0, p0}, Lcom/huawei/opcollect/location/SystemLocation$NetLocationListener;-><init>(Lcom/huawei/opcollect/location/SystemLocation;)V

    iput-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mNetListener:Landroid/location/LocationListener;

    .line 291
    iget-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/huawei/opcollect/location/SystemLocation;->mNetListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->isLocating:Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2
.end method

.method private isFreshLocation(Landroid/location/Location;)Z
    .locals 8
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 306
    const/4 v2, 0x0

    .line 307
    .local v2, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 308
    .local v0, "delta":J
    const-wide/16 v4, 0x4e20

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 309
    const/4 v2, 0x1

    .line 311
    :cond_0
    return v2
.end method

.method private registerPassiveListener()V
    .locals 7

    .prologue
    .line 153
    new-instance v0, Lcom/huawei/opcollect/location/SystemLocation$PassiveLocationListener;

    invoke-direct {v0, p0}, Lcom/huawei/opcollect/location/SystemLocation$PassiveLocationListener;-><init>(Lcom/huawei/opcollect/location/SystemLocation;)V

    iput-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mPassiveListener:Landroid/location/LocationListener;

    .line 158
    iget-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 159
    const-string v0, "SystemLocation"

    const-string v1, "registerPassiveListener mLocationManager is null."

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_0
    return-void

    .line 163
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/huawei/opcollect/location/SystemLocation;->mPassiveListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 165
    :catch_0
    move-exception v6

    .line 166
    .local v6, "e":Ljava/lang/SecurityException;
    const-string v0, "SystemLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerPassiveListener security failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    .end local v6    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    .line 168
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "SystemLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerPassiveListener failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "SystemLocation"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/huawei/opcollect/location/SystemLocation;->destroySystemLocationInstance()V

    .line 224
    return-void
.end method

.method public disable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 206
    const-string v0, "SystemLocation"

    const-string v1, "disable"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mPassiveListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/huawei/opcollect/location/SystemLocation;->mPassiveListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 209
    iput-object v2, p0, Lcom/huawei/opcollect/location/SystemLocation;->mPassiveListener:Landroid/location/LocationListener;

    .line 211
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mEnable:Z

    .line 212
    iput-object v2, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocation:Landroid/location/Location;

    .line 213
    iput-object v2, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocationManager:Landroid/location/LocationManager;

    .line 214
    iput-object v2, p0, Lcom/huawei/opcollect/location/SystemLocation;->mNetListener:Landroid/location/LocationListener;

    .line 215
    iput-object v2, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocationChangeListener:Lcom/huawei/opcollect/utils/LocationChange;

    .line 216
    return-void
.end method

.method public dump(ILjava/io/PrintWriter;)V
    .locals 0
    .param p1, "indentNum"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 361
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 193
    const-string v0, "SystemLocation"

    const-string v1, "enable"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-boolean v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mEnable:Z

    if-nez v0, :cond_0

    .line 195
    const-string v0, "SystemLocation"

    const-string v1, "register passive listener"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocationManager:Landroid/location/LocationManager;

    .line 197
    invoke-direct {p0}, Lcom/huawei/opcollect/location/SystemLocation;->registerPassiveListener()V

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mEnable:Z

    .line 200
    :cond_0
    return-void
.end method

.method public getCurrentLocation(Lcom/huawei/opcollect/utils/LocationChange;)V
    .locals 4
    .param p1, "lc"    # Lcom/huawei/opcollect/utils/LocationChange;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 238
    if-nez p1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iput-object p1, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocationChangeListener:Lcom/huawei/opcollect/utils/LocationChange;

    .line 242
    iget-object v2, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocation:Landroid/location/Location;

    if-eqz v2, :cond_2

    .line 244
    iget-object v2, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocation:Landroid/location/Location;

    invoke-direct {p0, v2}, Lcom/huawei/opcollect/location/SystemLocation;->isFreshLocation(Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 245
    iget-object v1, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocation:Landroid/location/Location;

    invoke-interface {p1, v1}, Lcom/huawei/opcollect/utils/LocationChange;->onGetLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 249
    :cond_2
    iget-object v2, p0, Lcom/huawei/opcollect/location/SystemLocation;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/huawei/opcollect/location/SystemLocation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 255
    .local v0, "isAirPlanModeEnable":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 256
    iget-object v1, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocationChangeListener:Lcom/huawei/opcollect/utils/LocationChange;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/huawei/opcollect/utils/LocationChange;->onGetLocation(Landroid/location/Location;)V

    goto :goto_0

    .end local v0    # "isAirPlanModeEnable":Z
    :cond_3
    move v0, v1

    .line 253
    goto :goto_1

    .line 259
    .restart local v0    # "isAirPlanModeEnable":Z
    :cond_4
    invoke-direct {p0}, Lcom/huawei/opcollect/location/SystemLocation;->getLocationFromSystem()V

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public isLocating()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/huawei/opcollect/location/SystemLocation;->isLocating:Z

    return v0
.end method
