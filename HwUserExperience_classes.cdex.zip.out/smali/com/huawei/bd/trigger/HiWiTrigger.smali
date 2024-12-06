.class public Lcom/huawei/bd/trigger/HiWiTrigger;
.super Ljava/lang/Object;
.source "HiWiTrigger.java"


# static fields
.field private static final BOOT_DELAY_TIME:I = 0x927c0

.field private static final DISALLOW_END_HOUR:I = 0x7

.field private static final DISALLOW_END_MINUTE:I = 0x37

.field private static final DISALLOW_FIRST_MINUTE:I = 0x5

.field private static final DISALLOW_SECOND_MINUTE:I = 0x19

.field private static final DISALLOW_START_HOUR:I = 0x5

.field private static final DISALLOW_THIRD_MINUTE:I = 0x23

.field private static final JOB_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HiWiServiceBD.HiWiTrigger"


# instance fields
.field private context:Landroid/content/Context;

.field private reportDataTimes:I

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/bd/trigger/HiWiTrigger;->reportDataTimes:I

    .line 64
    iput-object p1, p0, Lcom/huawei/bd/trigger/HiWiTrigger;->context:Landroid/content/Context;

    .line 65
    invoke-static {p1}, Lcom/huawei/bd/utils/HiWiUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/bd/trigger/HiWiTrigger;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 66
    return-void
.end method

.method private isAllowTime()Z
    .locals 11

    .prologue
    const/16 v10, 0x37

    const/4 v9, 0x7

    const/4 v8, 0x5

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 189
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 190
    .local v0, "hour":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 191
    .local v4, "minute":I
    if-ne v0, v8, :cond_1

    .line 192
    if-ge v4, v10, :cond_0

    .line 202
    .local v1, "isExecute":Z
    :goto_0
    const-string v5, "HiWiServiceBD.HiWiTrigger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllowTime is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return v1

    .end local v1    # "isExecute":Z
    :cond_0
    move v1, v5

    .line 192
    goto :goto_0

    .line 193
    :cond_1
    if-le v0, v8, :cond_6

    if-ge v0, v9, :cond_6

    .line 194
    if-le v4, v8, :cond_3

    const/16 v6, 0x19

    if-ge v4, v6, :cond_3

    move v2, v1

    .line 195
    .local v2, "isFirstTimeAllow":Z
    :goto_1
    const/16 v6, 0x23

    if-le v4, v6, :cond_4

    if-ge v4, v10, :cond_4

    move v3, v1

    .line 196
    .local v3, "isThirdTimeAllow":Z
    :goto_2
    if-nez v2, :cond_2

    if-eqz v3, :cond_5

    .line 197
    .restart local v1    # "isExecute":Z
    :cond_2
    :goto_3
    goto :goto_0

    .end local v1    # "isExecute":Z
    .end local v2    # "isFirstTimeAllow":Z
    .end local v3    # "isThirdTimeAllow":Z
    :cond_3
    move v2, v5

    .line 194
    goto :goto_1

    .restart local v2    # "isFirstTimeAllow":Z
    :cond_4
    move v3, v5

    .line 195
    goto :goto_2

    .restart local v3    # "isThirdTimeAllow":Z
    :cond_5
    move v1, v5

    .line 196
    goto :goto_3

    .line 197
    .end local v2    # "isFirstTimeAllow":Z
    .end local v3    # "isThirdTimeAllow":Z
    :cond_6
    if-ne v0, v9, :cond_8

    .line 198
    if-le v4, v8, :cond_7

    .restart local v1    # "isExecute":Z
    :goto_4
    goto :goto_0

    .end local v1    # "isExecute":Z
    :cond_7
    move v1, v5

    goto :goto_4

    .line 200
    :cond_8
    const/4 v1, 0x1

    .restart local v1    # "isExecute":Z
    goto :goto_0
.end method

.method private isInitDataManager(JLandroid/net/NetworkInfo;)Z
    .locals 5
    .param p1, "lastReportTime"    # J
    .param p3, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 170
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 171
    const-string v2, "HiWiServiceBD.HiWiTrigger"

    const-string v3, "do report by wifi"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Lcom/huawei/bd/utils/HiWiUtil;->getMinutes(JJ)I

    move-result v2

    const/16 v3, 0x78

    if-lt v2, v3, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 175
    goto :goto_0

    .line 178
    :cond_2
    const-string v2, "HiWiServiceBD.HiWiTrigger"

    const-string v3, "do report by mobile data"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Lcom/huawei/bd/utils/HiWiUtil;->getMinutes(JJ)I

    move-result v2

    const/16 v3, 0x168

    if-ge v2, v3, :cond_0

    move v0, v1

    .line 182
    goto :goto_0
.end method


# virtual methods
.method public initialize()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/huawei/bd/trigger/HiWiTrigger;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "reportdata_times"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/huawei/bd/trigger/HiWiTrigger;->jobSchedulerExecute()V

    .line 77
    :cond_0
    const-string v0, "HiWiServiceBD.HiWiTrigger"

    const-string v1, "initialize finished - clear info and set scheduler"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public isCanReport()Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x927c0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 132
    const-string v7, "HiWiServiceBD.HiWiTrigger"

    const-string v8, "Boot time is less than 10 minutes"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    :goto_0
    return v6

    .line 135
    :cond_1
    iget-object v8, p0, Lcom/huawei/bd/trigger/HiWiTrigger;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/huawei/bd/utils/HiWiUtil;->getActiveNetwork(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 136
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v8

    if-nez v8, :cond_3

    .line 137
    :cond_2
    const-string v7, "HiWiServiceBD.HiWiTrigger"

    const-string v8, "network not connect"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v8, p0, Lcom/huawei/bd/trigger/HiWiTrigger;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/huawei/bd/utils/HiWiUtil;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 141
    const-string v7, "HiWiServiceBD.HiWiTrigger"

    const-string v8, "Roaming to not report"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_4
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-eq v8, v7, :cond_5

    .line 145
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_8

    :cond_5
    move v0, v7

    .line 146
    .local v0, "isWifiNetwork":Z
    :goto_1
    invoke-direct {p0}, Lcom/huawei/bd/trigger/HiWiTrigger;->isAllowTime()Z

    move-result v8

    if-nez v8, :cond_a

    .line 147
    iget-object v8, p0, Lcom/huawei/bd/trigger/HiWiTrigger;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v9, "LAST_REPORT_TIME"

    invoke-interface {v8, v9, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 147
    invoke-static {v8, v9, v10, v11}, Lcom/huawei/bd/utils/HiWiUtil;->getMinutes(JJ)I

    move-result v5

    .line 149
    .local v5, "timeDiff":I
    if-eqz v0, :cond_9

    const/16 v8, 0x78

    if-lt v5, v8, :cond_9

    move v1, v7

    .line 150
    .local v1, "isWifiReport":Z
    :goto_2
    if-nez v1, :cond_6

    const/16 v7, 0x168

    if-lt v5, v7, :cond_7

    .line 151
    :cond_6
    iget-object v7, p0, Lcom/huawei/bd/trigger/HiWiTrigger;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "LAST_REPORT_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v7, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    :cond_7
    const-string v7, "HiWiServiceBD.HiWiTrigger"

    const-string v8, "not allow time"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "isWifiNetwork":Z
    .end local v1    # "isWifiReport":Z
    .end local v5    # "timeDiff":I
    :cond_8
    move v0, v6

    .line 145
    goto :goto_1

    .restart local v0    # "isWifiNetwork":Z
    .restart local v5    # "timeDiff":I
    :cond_9
    move v1, v6

    .line 149
    goto :goto_2

    .line 156
    .end local v5    # "timeDiff":I
    :cond_a
    if-nez v0, :cond_b

    invoke-static {}, Lcom/huawei/bd/utils/HiWiUtil;->isDomestic()Z

    move-result v8

    if-nez v8, :cond_b

    .line 157
    const-string v7, "HiWiServiceBD.HiWiTrigger"

    const-string v8, "overseas mobile net can not report"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :cond_b
    iget-object v8, p0, Lcom/huawei/bd/trigger/HiWiTrigger;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v9, "LAST_REPORT_TIME"

    invoke-interface {v8, v9, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 161
    .local v2, "lastReportTime":J
    const-string v8, "HiWiServiceBD.HiWiTrigger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastReportTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/bd/utils/BigDataLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, v2, v3, v4}, Lcom/huawei/bd/trigger/HiWiTrigger;->isInitDataManager(JLandroid/net/NetworkInfo;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 165
    iget-object v6, p0, Lcom/huawei/bd/trigger/HiWiTrigger;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v8, "LAST_REPORT_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v6, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v6, v7

    .line 166
    goto/16 :goto_0
.end method

.method public jobSchedulerExecute()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 85
    iget-object v2, p0, Lcom/huawei/bd/trigger/HiWiTrigger;->context:Landroid/content/Context;

    const-string v3, "jobscheduler"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 86
    .local v1, "jobScheduler":Landroid/app/job/JobScheduler;
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/huawei/bd/trigger/HiWiTrigger;->context:Landroid/content/Context;

    .line 87
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/huawei/bd/trigger/HiWiJobService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v5, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 88
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    invoke-virtual {v0, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 89
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 90
    return-void
.end method

.method public startTunnelService()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 96
    iget-object v5, p0, Lcom/huawei/bd/trigger/HiWiTrigger;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "reportdata_times"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/huawei/bd/trigger/HiWiTrigger;->reportDataTimes:I

    .line 97
    invoke-static {}, Lcom/huawei/bd/utils/CommonsUtils;->getIsoCountry()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "simCountryIso":Ljava/lang/String;
    const-string v5, "HiWiServiceBD.HiWiTrigger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simCountryIso="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v3, "intentService":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.huawei.hiviewtunnel"

    const-string v7, "com.huawei.hiwibd.android.HiWiService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 102
    const-string v5, "sim_countrycode"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v5, "reportdata_times"

    iget v6, p0, Lcom/huawei/bd/trigger/HiWiTrigger;->reportDataTimes:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    invoke-static {}, Lcom/huawei/bd/utils/HiWiUtil;->getCountryLocalRegion()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "countryLocalRegion":Ljava/lang/String;
    invoke-static {}, Lcom/huawei/bd/utils/CommonsUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "countryCode":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "156"

    .line 107
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    const-string v5, "normal_country"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    const-string v5, "HiWiServiceBD.HiWiTrigger"

    const-string v6, "startTunnelService 1 version"

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    iget-object v5, p0, Lcom/huawei/bd/trigger/HiWiTrigger;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "reportdata_times"

    iget v7, p0, Lcom/huawei/bd/trigger/HiWiTrigger;->reportDataTimes:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    :try_start_0
    iget-object v5, p0, Lcom/huawei/bd/trigger/HiWiTrigger;->context:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    :goto_1
    return-void

    .line 111
    :cond_0
    const-string v5, "normal_country"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    const-string v5, "HiWiServiceBD.HiWiTrigger"

    const-string v6, "startTunnelService 1 version"

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v5, "HiWiServiceBD.HiWiTrigger"

    const-string v6, "start HiWiService failed: SecurityException"

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 119
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v5, "HiWiServiceBD.HiWiTrigger"

    const-string v6, "start HiWiService failed: IllegalStateException"

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
