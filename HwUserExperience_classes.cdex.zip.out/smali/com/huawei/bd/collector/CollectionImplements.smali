.class public final Lcom/huawei/bd/collector/CollectionImplements;
.super Ljava/lang/Object;
.source "CollectionImplements.java"

# interfaces
.implements Lcom/huawei/bd/collector/InterfaceBigDataCollection;


# static fields
.field private static final CLASS_BUILDEX:Ljava/lang/String; = "com.huawei.system.BuildEx"

.field private static final FIELD_DISPLAY_NAME:Ljava/lang/String; = "DISPLAY"

.field private static final FILE_SIZE_GAIN:D = 1024.0

.field private static final IMSI_END_INDEX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BD.CollectionImplements"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getExternalStorageDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 114
    .local v0, "externalStorageDirectory":Ljava/io/File;
    invoke-static {v0}, Lcom/huawei/bd/utils/CommonsUtils;->getCanonicalPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isExternalStorageAvailable()Z
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "sdcardState":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getAllInstalledApps(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/bd/collector/AppDataModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 405
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v5, 0x2000

    .line 406
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 407
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 408
    .local v4, "thirdAppNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/bd/collector/AppDataModel;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 409
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Lcom/huawei/bd/collector/AppDataModel;

    invoke-direct {v2}, Lcom/huawei/bd/collector/AppDataModel;-><init>()V

    .line 410
    .local v2, "newApp":Lcom/huawei/bd/collector/AppDataModel;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/huawei/bd/collector/AppDataModel;->setPackageName(Ljava/lang/String;)V

    .line 411
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/huawei/bd/utils/BigDataUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/huawei/bd/collector/AppDataModel;->setVerName(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "newApp":Lcom/huawei/bd/collector/AppDataModel;
    :cond_0
    return-object v4
.end method

.method public getAvailableMemory(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 99
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 100
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 101
    .local v4, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 102
    iget-wide v2, v4, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 103
    .local v2, "avialMem":J
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v5, "#0.##"

    invoke-direct {v1, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "decimalFormat":Ljava/text/DecimalFormat;
    long-to-double v6, v2

    div-double/2addr v6, v8

    div-double/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getAvailableSpace(Ljava/lang/String;)J
    .locals 8
    .param p1, "storagePath"    # Ljava/lang/String;

    .prologue
    .line 443
    const-wide/16 v0, 0x0

    .line 444
    .local v0, "counts":J
    if-eqz p1, :cond_0

    .line 446
    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 447
    .local v3, "statFs":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    mul-long v0, v4, v6

    .line 452
    .end local v3    # "statFs":Landroid/os/StatFs;
    :cond_0
    :goto_0
    return-wide v0

    .line 448
    :catch_0
    move-exception v2

    .line 449
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "BD.CollectionImplements"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBuildNumber()Ljava/lang/String;
    .locals 6

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, "buildDisplay":Ljava/lang/String;
    :try_start_0
    const-string v4, "com.huawei.system.BuildEx"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 77
    .local v1, "buildExClass":Ljava/lang/Class;
    const-string v4, "DISPLAY"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 78
    .local v2, "displayField":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 86
    .end local v1    # "buildExClass":Ljava/lang/Class;
    .end local v2    # "displayField":Ljava/lang/reflect/Field;
    :goto_0
    if-nez v0, :cond_0

    .line 87
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 89
    :cond_0
    return-object v0

    .line 79
    :catch_0
    move-exception v3

    .line 80
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "BD.CollectionImplements"

    const-string v5, "getBuildNumber fail IllegalAccessException"

    invoke-static {v4, v5}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    .line 82
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "BD.CollectionImplements"

    const-string v5, "getBuildNumber fail ClassNotFoundException"

    invoke-static {v4, v5}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v3

    .line 84
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    const-string v4, "BD.CollectionImplements"

    const-string v5, "getBuildNumber fail NoSuchFieldException"

    invoke-static {v4, v5}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getEmuiVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lcom/huawei/android/os/SystemPropertiesEx;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontScale(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 238
    .local v2, "outConfig":Landroid/content/res/Configuration;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 239
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 240
    iget v1, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 241
    .local v1, "fontScale":F
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x5

    .line 306
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 307
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 309
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 311
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public getInputMethod(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 294
    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "inputMethod":Ljava/lang/String;
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 277
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 278
    .local v1, "locale":Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 279
    .local v0, "languageStringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "{language:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v2, ",country:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getNetworkName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 332
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, ""

    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 343
    const-string v4, "connectivity"

    .line 344
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 345
    .local v0, "connectivityMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 346
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 347
    const-string v3, ""

    .line 377
    :goto_0
    return-object v3

    .line 349
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 351
    .local v2, "subType":I
    const-string v3, ""

    .line 352
    .local v3, "type":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 374
    :pswitch_0
    const-string v3, "UNKNOWN"

    goto :goto_0

    .line 355
    :pswitch_1
    const-string v3, "GSM"

    .line 356
    goto :goto_0

    .line 361
    :pswitch_2
    const-string v3, "WCDMA"

    .line 362
    goto :goto_0

    .line 367
    :pswitch_3
    const-string v3, "CDMA"

    .line 368
    goto :goto_0

    .line 370
    :pswitch_4
    const-string v3, "LTE"

    .line 371
    goto :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getRootState(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    invoke-static {}, Landroid/securitydiagnose/HwSecurityDiagnoseManager;->getInstance()Landroid/securitydiagnose/HwSecurityDiagnoseManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/securitydiagnose/HwSecurityDiagnoseManager;->getRootStatusSync()I

    move-result v5

    .line 167
    .local v5, "rootStatus":I
    if-gez v5, :cond_0

    .line 168
    const-string v8, ""

    .line 212
    :goto_0
    return-object v8

    .line 170
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "oldstate"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "onceState":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 172
    const-string v4, "safe"

    .line 175
    :cond_1
    const-string v0, "safe"

    .line 176
    .local v0, "currentState":Ljava/lang/String;
    if-lez v5, :cond_2

    .line 177
    const-string v0, "risk"

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "oldstate"

    invoke-static {v8, v9, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 181
    :cond_2
    const-string v8, "safe"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "safe"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 182
    const-string v8, ""

    goto :goto_0

    .line 184
    :cond_3
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 185
    .local v6, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "safe"

    .line 186
    .local v1, "defaultState":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 187
    const-string v1, "risk"

    .line 190
    :cond_4
    const-string v8, "Root"

    invoke-interface {v6, v8, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "lastState":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 192
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 193
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "Root"

    invoke-interface {v2, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x10

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 197
    .local v7, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v8, "{once:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v8, "risk"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 199
    const-string v8, "rooted, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :goto_1
    const-string v8, "now:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v8, "risk"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 205
    const-string v8, "rooted}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 201
    :cond_5
    const-string v8, "normal, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 207
    :cond_6
    const-string v8, "normal}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 212
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_7
    const-string v8, ""

    goto/16 :goto_0
.end method

.method public getScreenBrightness(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isAuto"    # Z

    .prologue
    .line 253
    if-eqz p2, :cond_0

    .line 254
    invoke-static {}, Lcom/huawei/android/provider/SettingsEx$System;->getScreenAutoBrightness()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "screenBrightness":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 256
    .end local v0    # "screenBrightness":Ljava/lang/String;
    :cond_0
    const-string v0, "screen_brightness"

    .restart local v0    # "screenBrightness":Ljava/lang/String;
    goto :goto_0
.end method

.method public getScreenBrightnessMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStorageFree(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 124
    const-wide/16 v2, 0x0

    .line 125
    .local v2, "size":J
    invoke-direct {p0}, Lcom/huawei/bd/collector/CollectionImplements;->isExternalStorageAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {p0}, Lcom/huawei/bd/collector/CollectionImplements;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "statFs":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    mul-long v2, v4, v6

    .line 130
    .end local v1    # "statFs":Landroid/os/StatFs;
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 131
    const-string v4, ""

    .line 134
    :goto_0
    return-object v4

    .line 133
    :cond_1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "#0.##"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "decimalFormat":Ljava/text/DecimalFormat;
    long-to-double v4, v2

    div-double/2addr v4, v8

    div-double/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getStorageTotal(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 145
    const-wide/16 v2, 0x0

    .line 146
    .local v2, "size":J
    invoke-direct {p0}, Lcom/huawei/bd/collector/CollectionImplements;->isExternalStorageAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {p0}, Lcom/huawei/bd/collector/CollectionImplements;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, "statFs":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v6

    mul-long v2, v4, v6

    .line 151
    .end local v1    # "statFs":Landroid/os/StatFs;
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 152
    const-string v4, ""

    .line 155
    :goto_0
    return-object v4

    .line 154
    :cond_1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "#0.##"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "decimalFormat":Ljava/text/DecimalFormat;
    long-to-double v4, v2

    div-double/2addr v4, v8

    div-double/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getTotalSpace(Ljava/lang/String;)J
    .locals 8
    .param p1, "storagePath"    # Ljava/lang/String;

    .prologue
    .line 424
    const-wide/16 v0, 0x0

    .line 425
    .local v0, "counts":J
    if-eqz p1, :cond_0

    .line 427
    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 428
    .local v3, "statFs":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    mul-long v0, v4, v6

    .line 433
    .end local v3    # "statFs":Landroid/os/StatFs;
    :cond_0
    :goto_0
    return-wide v0

    .line 429
    :catch_0
    move-exception v2

    .line 430
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "BD.CollectionImplements"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUserExperienceSwitch(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 223
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 224
    const-string v2, "user_experience_involved"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 225
    .local v1, "state":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v2, "OPEN"

    .line 227
    .end local v1    # "state":I
    :goto_0
    return-object v2

    .line 225
    .restart local v1    # "state":I
    :cond_0
    const-string v2, "CLOSE"

    goto :goto_0

    .line 227
    .end local v1    # "state":I
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public getWifiState(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 387
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 388
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 389
    .local v1, "wifiState":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 390
    :cond_0
    const-string v2, "OPEN"

    .line 394
    :goto_0
    return-object v2

    .line 391
    :cond_1
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_3

    .line 392
    :cond_2
    const-string v2, "CLOSE"

    goto :goto_0

    .line 394
    :cond_3
    const-string v2, ""

    goto :goto_0
.end method
