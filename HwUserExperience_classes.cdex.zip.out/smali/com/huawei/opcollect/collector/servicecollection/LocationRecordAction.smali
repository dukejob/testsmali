.class public Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;
.super Lcom/huawei/opcollect/strategy/Action;
.source "LocationRecordAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;,
        Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationHandler;,
        Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;,
        Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;
    }
.end annotation


# static fields
.field private static final FIVE_MINUTES_IN_MILLISECOND:I = 0x493e0

.field private static final INVALID_ALTITUTE:D = -1.0

.field private static final INVALID_LATITUTE:D = -1.0

.field private static final INVALID_LONGITUTE:D = -1.0

.field private static final INVALID_SUBSCRIPTION_ID:I = -0x1

.field private static final LOCK:Ljava/lang/Object;

.field private static final ODMF_API_VERSION_2_4_4:Ljava/lang/String; = "2.4.4"

.field public static final POSITION_CHANGE_INTELLIGENT:I = 0x1

.field public static final POSITION_CHANGE_SYSTEM:I = 0x2

.field public static final POSITION_CHANGE_WIFI:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LocationRecordAction"

.field private static instance:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mGeocoder:Landroid/location/Geocoder;

.field private mHandler:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationHandler;

.field private mLocationListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huawei/opcollect/location/ILocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->LOCK:Ljava/lang/Object;

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->instance:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p2, p1}, Lcom/huawei/opcollect/strategy/Action;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mLock:Ljava/lang/Object;

    .line 81
    iput-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 82
    iput-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 84
    iput-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mLocationListeners:Ljava/util/HashMap;

    .line 85
    iput-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mGeocoder:Landroid/location/Geocoder;

    .line 86
    iput-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mHandler:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationHandler;

    .line 90
    const-class v0, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;

    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->queryDailyRecordNum(Ljava/lang/Class;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->setDailyRecordNum(I)V

    .line 91
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 92
    const-string v0, "LocationRecordAction"

    const-string v1, "context is null"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 98
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 100
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mLocationListeners:Ljava/util/HashMap;

    .line 102
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mContext:Landroid/content/Context;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mGeocoder:Landroid/location/Geocoder;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->insertRecordWithoutGPS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;Lcom/huawei/opcollect/strategy/AbsActionParam;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;
    .param p1, "x1"    # Lcom/huawei/opcollect/strategy/AbsActionParam;

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->performWithArgs(Lcom/huawei/opcollect/strategy/AbsActionParam;)Z

    move-result v0

    return v0
.end method

.method private checkCellMnc(I)I
    .locals 1
    .param p1, "cellMnc"    # I

    .prologue
    .line 392
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 393
    const/4 p1, -0x1

    .line 395
    .end local p1    # "cellMnc":I
    :cond_0
    return p1
.end method

.method private static destroyLocationRecordActionInstance()V
    .locals 2

    .prologue
    .line 190
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->instance:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;

    .line 192
    monitor-exit v1

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getCellInfo(Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;)V
    .locals 10
    .param p1, "rawLocationRecord"    # Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;

    .prologue
    .line 292
    iget-object v7, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v7, :cond_0

    .line 293
    const-string v7, "LocationRecordAction"

    const-string v8, "TelephonyManager is null"

    invoke-static {v7, v8}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :goto_0
    return-void

    .line 296
    :cond_0
    const/4 v3, 0x0

    .line 298
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :try_start_0
    iget-object v7, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 302
    :goto_1
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 303
    :cond_1
    const-string v7, "LocationRecordAction"

    const-string v8, "list is null"

    invoke-static {v7, v8}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v7, "LocationRecordAction"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAllCellInfo failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 306
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v5, "registeredList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 308
    .local v0, "cellInfo":Landroid/telephony/CellInfo;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 309
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 312
    .end local v0    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 313
    .local v6, "size":I
    if-gtz v6, :cond_5

    .line 314
    const-string v7, "LocationRecordAction"

    const-string v8, "registeredList size is 0"

    invoke-static {v7, v8}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_5
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    .line 319
    .local v4, "mainSlot":I
    const-string v7, "LocationRecordAction"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "slot: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 v7, 0x1

    if-eq v6, v7, :cond_6

    const/4 v7, -0x1

    if-le v4, v7, :cond_6

    if-lt v4, v6, :cond_7

    .line 322
    :cond_6
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    .line 326
    .local v2, "info":Landroid/telephony/CellInfo;
    :goto_3
    invoke-direct {p0, p1, v2}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->getCellInfoInner(Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;Landroid/telephony/CellInfo;)V

    goto/16 :goto_0

    .line 324
    .end local v2    # "info":Landroid/telephony/CellInfo;
    :cond_7
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    .restart local v2    # "info":Landroid/telephony/CellInfo;
    goto :goto_3
.end method

.method private getCellInfoInner(Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;Landroid/telephony/CellInfo;)V
    .locals 17
    .param p1, "rawLocationRecord"    # Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;
    .param p2, "info"    # Landroid/telephony/CellInfo;

    .prologue
    .line 330
    const/4 v9, -0x1

    .line 331
    .local v9, "cellMcc":I
    const/4 v10, -0x1

    .line 332
    .local v10, "cellMnc":I
    const/4 v1, -0x1

    .line 333
    .local v1, "cellId":I
    const/4 v8, -0x1

    .line 334
    .local v8, "cellLac":I
    if-eqz p2, :cond_2

    .line 335
    move-object/from16 v0, p2

    instance-of v15, v0, Landroid/telephony/CellInfoLte;

    if-eqz v15, :cond_3

    move-object/from16 v7, p2

    .line 336
    check-cast v7, Landroid/telephony/CellInfoLte;

    .line 337
    .local v7, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-virtual {v7}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v4

    .line 338
    .local v4, "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    if-nez v4, :cond_1

    .line 389
    .end local v4    # "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    .end local v7    # "cellInfoLte":Landroid/telephony/CellInfoLte;
    :cond_0
    :goto_0
    return-void

    .line 341
    .restart local v4    # "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    .restart local v7    # "cellInfoLte":Landroid/telephony/CellInfoLte;
    :cond_1
    invoke-virtual {v4}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v9

    .line 342
    invoke-virtual {v4}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->checkCellMnc(I)I

    move-result v10

    .line 343
    invoke-virtual {v4}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v1

    .line 344
    invoke-virtual {v4}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v8

    .line 385
    .end local v4    # "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    .end local v7    # "cellInfoLte":Landroid/telephony/CellInfoLte;
    :cond_2
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMCellID(Ljava/lang/Integer;)V

    .line 386
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMCellLAC(Ljava/lang/Integer;)V

    .line 387
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMCellMCC(Ljava/lang/Integer;)V

    .line 388
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMCellMNC(Ljava/lang/Integer;)V

    goto :goto_0

    .line 345
    :cond_3
    move-object/from16 v0, p2

    instance-of v15, v0, Landroid/telephony/CellInfoGsm;

    if-eqz v15, :cond_4

    move-object/from16 v6, p2

    .line 346
    check-cast v6, Landroid/telephony/CellInfoGsm;

    .line 347
    .local v6, "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 348
    .local v3, "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    if-eqz v3, :cond_0

    .line 351
    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v9

    .line 352
    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->checkCellMnc(I)I

    move-result v10

    .line 353
    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v1

    .line 354
    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v8

    .line 355
    goto :goto_1

    .end local v3    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    .end local v6    # "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    :cond_4
    move-object/from16 v0, p2

    instance-of v15, v0, Landroid/telephony/CellInfoCdma;

    if-eqz v15, :cond_6

    move-object/from16 v5, p2

    .line 356
    check-cast v5, Landroid/telephony/CellInfoCdma;

    .line 357
    .local v5, "cellInfoCdma":Landroid/telephony/CellInfoCdma;
    invoke-virtual {v5}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v2

    .line 358
    .local v2, "cellIdentityCdma":Landroid/telephony/CellIdentityCdma;
    if-eqz v2, :cond_0

    .line 361
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v14

    .line 363
    .local v14, "networkOperator":Ljava/lang/String;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    .line 365
    const/4 v15, 0x0

    const/16 v16, 0x3

    :try_start_0
    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 370
    :cond_5
    :goto_2
    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->checkCellMnc(I)I

    move-result v10

    .line 371
    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v1

    .line 372
    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v8

    .line 373
    goto/16 :goto_1

    .line 366
    :catch_0
    move-exception v13

    .line 367
    .local v13, "e":Ljava/lang/NumberFormatException;
    const-string v15, "LocationRecordAction"

    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 373
    .end local v2    # "cellIdentityCdma":Landroid/telephony/CellIdentityCdma;
    .end local v5    # "cellInfoCdma":Landroid/telephony/CellInfoCdma;
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "networkOperator":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p2

    instance-of v15, v0, Landroid/telephony/CellInfoWcdma;

    if-eqz v15, :cond_2

    move-object/from16 v11, p2

    .line 374
    check-cast v11, Landroid/telephony/CellInfoWcdma;

    .line 375
    .local v11, "cellWcdma":Landroid/telephony/CellInfoWcdma;
    invoke-virtual {v11}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v12

    .line 376
    .local v12, "cellWcdmaCellIdentity":Landroid/telephony/CellIdentityWcdma;
    if-eqz v12, :cond_0

    .line 379
    invoke-virtual {v12}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v9

    .line 380
    invoke-virtual {v12}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->checkCellMnc(I)I

    move-result v10

    .line 381
    invoke-virtual {v12}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v1

    .line 382
    invoke-virtual {v12}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v8

    goto/16 :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->instance:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;

    const-string v2, "RawLocationRecord"

    invoke-direct {v0, v2, p0}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->instance:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;

    .line 134
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->instance:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;

    monitor-exit v1

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLocation(Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;Lcom/huawei/opcollect/location/HwLocation;)V
    .locals 4
    .param p1, "rawLocationRecord"    # Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;
    .param p2, "hwLocation"    # Lcom/huawei/opcollect/location/HwLocation;

    .prologue
    .line 255
    invoke-virtual {p2}, Lcom/huawei/opcollect/location/HwLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMLongitude(Ljava/lang/Double;)V

    .line 256
    invoke-virtual {p2}, Lcom/huawei/opcollect/location/HwLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMLatitude(Ljava/lang/Double;)V

    .line 257
    invoke-virtual {p2}, Lcom/huawei/opcollect/location/HwLocation;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMCity(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Lcom/huawei/opcollect/location/HwLocation;->getAltitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMAltitude(Ljava/lang/Double;)V

    .line 259
    invoke-virtual {p2}, Lcom/huawei/opcollect/location/HwLocation;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMCountry(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Lcom/huawei/opcollect/location/HwLocation;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMProvince(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Lcom/huawei/opcollect/location/HwLocation;->getAccuracy()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMReservedInt(Ljava/lang/Integer;)V

    .line 262
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mContext:Landroid/content/Context;

    const-string v2, "2.4.4"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectUtils;->checkODMFApiVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 263
    .local v0, "geodeticSystemExist":Z
    if-eqz v0, :cond_0

    .line 264
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;->WGS84:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setGeodeticSystem(Ljava/lang/String;)V

    .line 267
    :cond_0
    const-string v1, "gps"

    invoke-virtual {p2}, Lcom/huawei/opcollect/location/HwLocation;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;->GPS:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;->getChr()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMLocationType(Ljava/lang/Character;)V

    .line 274
    :goto_0
    return-void

    .line 269
    :cond_1
    const-string v1, "network"

    invoke-virtual {p2}, Lcom/huawei/opcollect/location/HwLocation;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;->NET:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;->getChr()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMLocationType(Ljava/lang/Character;)V

    goto :goto_0

    .line 272
    :cond_2
    const-string v1, "LocationRecordAction"

    const-string v2, "unknown provider"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getWifiInfo(Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;)V
    .locals 4
    .param p1, "rawLocationRecord"    # Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_0

    .line 278
    iget-object v3, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 279
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    .line 280
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "wifiBssid":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMWifiBSSID(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    .line 283
    .local v2, "wifiRssi":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMWifiLevel(Ljava/lang/Integer;)V

    .line 289
    .end local v0    # "wifiBssid":Ljava/lang/String;
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifiRssi":I
    :cond_0
    :goto_0
    return-void

    .line 285
    .restart local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMWifiBSSID(Ljava/lang/String;)V

    .line 286
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMWifiLevel(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private insertRecordWithoutGPS(Ljava/lang/String;)V
    .locals 8
    .param p1, "wifiStr"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 503
    const-string v4, "LocationRecordAction"

    const-string v5, "insertRecordWithoutGPS"

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 505
    :cond_0
    const-string v4, "LocationRecordAction"

    const-string v5, "invalid wifi info."

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :goto_0
    return-void

    .line 509
    :cond_1
    new-instance v3, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;

    invoke-direct {v3}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;-><init>()V

    .line 510
    .local v3, "rawLocationRecord":Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMTimeStamp(Ljava/util/Date;)V

    .line 511
    sget-object v4, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;->WIFI:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    invoke-virtual {v4}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;->getChr()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMLocationType(Ljava/lang/Character;)V

    .line 512
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMAltitude(Ljava/lang/Double;)V

    .line 513
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMLatitude(Ljava/lang/Double;)V

    .line 514
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMLongitude(Ljava/lang/Double;)V

    .line 515
    iget-object v4, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mContext:Landroid/content/Context;

    const-string v5, "2.4.4"

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectUtils;->checkODMFApiVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 516
    sget-object v4, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;->GS_INVALID:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

    invoke-virtual {v4}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setGeodeticSystem(Ljava/lang/String;)V

    .line 518
    :cond_2
    const/4 v1, 0x0

    .line 520
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "object":Lorg/json/JSONObject;
    .local v2, "object":Lorg/json/JSONObject;
    move-object v1, v2

    .line 525
    .end local v2    # "object":Lorg/json/JSONObject;
    .restart local v1    # "object":Lorg/json/JSONObject;
    :goto_1
    if-eqz v1, :cond_3

    .line 527
    :try_start_1
    const-string v4, "wifiBssid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMWifiBSSID(Ljava/lang/String;)V

    .line 528
    const-string v4, "wifiLevel"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMWifiLevel(Ljava/lang/Integer;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 533
    :cond_3
    :goto_2
    invoke-direct {p0, v3}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->getCellInfo(Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;)V

    .line 534
    invoke-static {}, Lcom/huawei/opcollect/utils/OPCollectUtils;->formatCurrentTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMReservedText(Ljava/lang/String;)V

    .line 535
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getDataHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 536
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "LocationRecordAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 529
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 530
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v4, "LocationRecordAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private isWifiConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 399
    iget-object v3, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_0

    .line 403
    :goto_0
    return v2

    .line 402
    :cond_0
    iget-object v3, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 403
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private locationToGeocode(Lcom/huawei/opcollect/location/HwLocation;)V
    .locals 9
    .param p1, "location"    # Lcom/huawei/opcollect/location/HwLocation;

    .prologue
    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mGeocoder:Landroid/location/Geocoder;

    if-nez v1, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mGeocoder:Landroid/location/Geocoder;

    invoke-virtual {p1}, Lcom/huawei/opcollect/location/HwLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/huawei/opcollect/location/HwLocation;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 545
    .local v7, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_3

    .line 546
    :cond_2
    const-string v1, "LocationRecordAction"

    const-string v2, "Geocoder exception!"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 558
    .end local v7    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v8

    .line 559
    .local v8, "e":Ljava/io/IOException;
    const-string v1, "LocationRecordAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFromLocation io failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 549
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v7    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 550
    .local v0, "address":Landroid/location/Address;
    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/opcollect/location/HwLocation;->setCityCode(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/opcollect/location/HwLocation;->setCountry(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/opcollect/location/HwLocation;->setCity(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0}, Landroid/location/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/opcollect/location/HwLocation;->setDetailAddress(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/opcollect/location/HwLocation;->setDistrict(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/opcollect/location/HwLocation;->setProvince(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 560
    .end local v0    # "address":Landroid/location/Address;
    .end local v7    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_1
    move-exception v8

    .line 561
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "LocationRecordAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFromLocation illegal failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addLocationListener(Ljava/lang/String;Lcom/huawei/opcollect/location/ILocationListener;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/huawei/opcollect/location/ILocationListener;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mLocationListeners:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 414
    const-string v0, "LocationRecordAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mLocationListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_0
    return-void
.end method

.method public destroy()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/Action;->destroy()Z

    .line 177
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mLocationListeners:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mLocationListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 179
    iput-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mLocationListeners:Ljava/util/HashMap;

    .line 181
    :cond_0
    iput-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 182
    iput-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 183
    iput-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 184
    iput-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mGeocoder:Landroid/location/Geocoder;

    .line 185
    invoke-static {}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->destroyLocationRecordActionInstance()V

    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 158
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/Action;->disable()V

    .line 160
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mHandler:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationHandler;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mHandler:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationHandler;->removeMessages(I)V

    .line 163
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mHandler:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationHandler;->removeMessages(I)V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mHandler:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationHandler;

    .line 166
    :cond_0
    monitor-exit v1

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(ILjava/io/PrintWriter;)V
    .locals 1
    .param p1, "indentNum"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 434
    invoke-super {p0, p1, p2}, Lcom/huawei/opcollect/strategy/Action;->dump(ILjava/io/PrintWriter;)V

    .line 435
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/location/SystemLocation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/huawei/opcollect/location/SystemLocation;->dump(ILjava/io/PrintWriter;)V

    .line 436
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/Action;->enable()V

    .line 144
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/location/SystemLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/location/SystemLocation;->enable()V

    .line 146
    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mHandler:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationHandler;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationHandler;

    invoke-direct {v0, p0}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationHandler;-><init>(Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;)V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mHandler:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationHandler;

    .line 150
    :cond_0
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected executeWithArgs(Lcom/huawei/opcollect/strategy/AbsActionParam;)Z
    .locals 14
    .param p1, "absActionParam"    # Lcom/huawei/opcollect/strategy/AbsActionParam;

    .prologue
    const/4 v9, 0x0

    .line 203
    const-string v8, "LocationRecordAction"

    const-string v10, "executeWithArgs"

    invoke-static {v8, v10}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    if-eqz p1, :cond_0

    instance-of v8, p1, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;

    if-nez v8, :cond_1

    :cond_0
    move v8, v9

    .line 251
    :goto_0
    return v8

    :cond_1
    move-object v1, p1

    .line 207
    check-cast v1, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;

    .line 208
    .local v1, "actionParam":Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;
    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;->getHwLocation()Lcom/huawei/opcollect/location/HwLocation;

    move-result-object v3

    .line 209
    .local v3, "location":Lcom/huawei/opcollect/location/HwLocation;
    if-nez v3, :cond_2

    move v8, v9

    .line 210
    goto :goto_0

    .line 212
    :cond_2
    new-instance v5, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;

    invoke-direct {v5}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;-><init>()V

    .line 213
    .local v5, "rawLocationRecord":Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;
    invoke-virtual {v3}, Lcom/huawei/opcollect/location/HwLocation;->getTimestamp()J

    move-result-wide v6

    .line 214
    .local v6, "timestamp":J
    const-string v8, "LocationRecordAction"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "execute: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-wide/16 v10, -0x1

    cmp-long v8, v6, v10

    if-nez v8, :cond_4

    .line 216
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v8}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMTimeStamp(Ljava/util/Date;)V

    .line 234
    :goto_1
    invoke-direct {p0, v3}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->locationToGeocode(Lcom/huawei/opcollect/location/HwLocation;)V

    .line 235
    invoke-direct {p0, v5, v3}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->getLocation(Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;Lcom/huawei/opcollect/location/HwLocation;)V

    .line 236
    invoke-direct {p0, v5}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->getWifiInfo(Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;)V

    .line 237
    invoke-direct {p0, v5}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->getCellInfo(Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;)V

    .line 238
    invoke-static {}, Lcom/huawei/opcollect/utils/OPCollectUtils;->formatCurrentTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMReservedText(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getDataHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 240
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 242
    iget-object v8, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mLocationListeners:Ljava/util/HashMap;

    if-eqz v8, :cond_7

    .line 243
    const-string v8, "LocationRecordAction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "listener size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mLocationListeners:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v8, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mLocationListeners:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/opcollect/location/ILocationListener;

    .line 245
    .local v2, "listener":Lcom/huawei/opcollect/location/ILocationListener;
    if-eqz v2, :cond_3

    .line 246
    invoke-interface {v2, v3}, Lcom/huawei/opcollect/location/ILocationListener;->onLocationSuccess(Lcom/huawei/opcollect/location/HwLocation;)V

    goto :goto_2

    .line 218
    .end local v2    # "listener":Lcom/huawei/opcollect/location/ILocationListener;
    :cond_4
    const-class v8, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;

    invoke-static {v8}, Lcom/huawei/nb/query/Query;->select(Ljava/lang/Class;)Lcom/huawei/nb/query/Query;

    move-result-object v8

    const-string v10, "mTimeStamp"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/huawei/nb/query/Query;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lcom/huawei/nb/query/Query;

    move-result-object v4

    .line 219
    .local v4, "query":Lcom/huawei/nb/query/Query;
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getOdmfHelper()Lcom/huawei/opcollect/odmf/OdmfHelper;

    move-result-object v8

    .line 220
    invoke-virtual {v8, v4}, Lcom/huawei/opcollect/odmf/OdmfHelper;->querySingleManageObject(Lcom/huawei/nb/query/Query;)Lcom/huawei/odmf/core/AManagedObject;

    move-result-object v0

    .line 221
    .local v0, "aManagedObject":Lcom/huawei/odmf/core/AManagedObject;
    if-eqz v0, :cond_5

    move-object v8, v0

    .line 222
    check-cast v8, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;

    invoke-virtual {v3}, Lcom/huawei/opcollect/location/HwLocation;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMLongitude(Ljava/lang/Double;)V

    move-object v8, v0

    .line 223
    check-cast v8, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;

    invoke-virtual {v3}, Lcom/huawei/opcollect/location/HwLocation;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMLatitude(Ljava/lang/Double;)V

    .line 224
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getOdmfHelper()Lcom/huawei/opcollect/odmf/OdmfHelper;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->updateManageObject(Lcom/huawei/odmf/core/AManagedObject;)Z

    .line 225
    const-string v8, "LocationRecordAction"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update record: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 226
    goto/16 :goto_0

    .line 228
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x493e0

    cmp-long v8, v10, v12

    if-lez v8, :cond_6

    .line 229
    const-string v8, "LocationRecordAction"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " data is old, ignore."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 230
    goto/16 :goto_0

    .line 232
    :cond_6
    new-instance v8, Ljava/util/Date;

    invoke-virtual {v3}, Lcom/huawei/opcollect/location/HwLocation;->getTimestamp()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v8}, Lcom/huawei/nb/model/collectencrypt/RawLocationRecord;->setMTimeStamp(Ljava/util/Date;)V

    goto/16 :goto_1

    .line 251
    .end local v0    # "aManagedObject":Lcom/huawei/odmf/core/AManagedObject;
    .end local v4    # "query":Lcom/huawei/nb/query/Query;
    :cond_7
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method public getLocationHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mHandler:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationHandler;

    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public removeLocationListener(Ljava/lang/String;Lcom/huawei/opcollect/location/ILocationListener;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/huawei/opcollect/location/ILocationListener;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mLocationListeners:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 427
    const-string v0, "LocationRecordAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->mLocationListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :cond_0
    return-void
.end method
