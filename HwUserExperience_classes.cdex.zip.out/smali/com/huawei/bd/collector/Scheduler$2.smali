.class Lcom/huawei/bd/collector/Scheduler$2;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/bd/collector/Scheduler;->startDayTask(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/bd/collector/Scheduler;

.field final synthetic val$applicationContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/huawei/bd/collector/Scheduler;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/bd/collector/Scheduler;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/huawei/bd/collector/Scheduler$2;->this$0:Lcom/huawei/bd/collector/Scheduler;

    iput-object p2, p0, Lcom/huawei/bd/collector/Scheduler$2;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 321
    iget-object v7, p0, Lcom/huawei/bd/collector/Scheduler$2;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-static {v7}, Lcom/huawei/bd/collector/Scheduler;->access$000(Lcom/huawei/bd/collector/Scheduler;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 322
    const-string v7, "BD.Scheduler"

    const-string v8, "Can\'t get the context, stop running startHourTask"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :goto_0
    return-void

    .line 325
    :cond_0
    const-string v7, "BD.Scheduler"

    const-string v8, "Day task start"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v7, p0, Lcom/huawei/bd/collector/Scheduler$2;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/huawei/bd/collector/Scheduler;->access$502(Lcom/huawei/bd/collector/Scheduler;J)J

    .line 327
    iget-object v7, p0, Lcom/huawei/bd/collector/Scheduler$2;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-static {v7}, Lcom/huawei/bd/collector/Scheduler;->access$600(Lcom/huawei/bd/collector/Scheduler;)Landroid/content/Context;

    move-result-object v7

    if-nez v7, :cond_1

    .line 328
    iget-object v7, p0, Lcom/huawei/bd/collector/Scheduler$2;->this$0:Lcom/huawei/bd/collector/Scheduler;

    iget-object v8, p0, Lcom/huawei/bd/collector/Scheduler$2;->val$applicationContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/huawei/bd/collector/Scheduler;->access$602(Lcom/huawei/bd/collector/Scheduler;Landroid/content/Context;)Landroid/content/Context;

    .line 330
    :cond_1
    iget-object v7, p0, Lcom/huawei/bd/collector/Scheduler$2;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-static {v7}, Lcom/huawei/bd/collector/Scheduler;->access$600(Lcom/huawei/bd/collector/Scheduler;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 331
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "SchedulerInfo"

    const-string v8, "{time:0, count:0, day_of_year:-1}"

    .line 332
    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 333
    .local v6, "schedulerInfo":Ljava/lang/String;
    const-wide/16 v0, -0x1

    .line 335
    .local v0, "dayOfYear":J
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 336
    .local v3, "jsonSchedulerInfo":Lorg/json/JSONObject;
    const-string v7, "day_of_year"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 340
    .end local v3    # "jsonSchedulerInfo":Lorg/json/JSONObject;
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-long v8, v7

    cmp-long v7, v0, v8

    if-nez v7, :cond_2

    .line 341
    const-string v7, "BD.Scheduler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current day("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") task has been scheduled."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :catch_0
    move-exception v2

    .line 338
    .local v2, "e":Lorg/json/JSONException;
    const-string v7, "BD.Scheduler"

    const-string v8, "JSONException : startDayTask"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 345
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_2
    invoke-static {}, Lcom/huawei/bd/collector/Scheduler;->access$700()I

    move-result v7

    invoke-static {}, Lcom/huawei/bd/collector/Scheduler;->access$800()I

    move-result v8

    if-le v7, v8, :cond_3

    .line 346
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/huawei/bd/collector/Scheduler;->access$702(I)I

    .line 350
    :goto_2
    iget-object v7, p0, Lcom/huawei/bd/collector/Scheduler$2;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-static {v7}, Lcom/huawei/bd/collector/Scheduler;->access$400(Lcom/huawei/bd/collector/Scheduler;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 352
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "SchedulerInfo"

    const-string v9, "{time:%d, count:%d, day_of_year:%d}"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/huawei/bd/collector/Scheduler$2;->this$0:Lcom/huawei/bd/collector/Scheduler;

    .line 354
    invoke-static {v12}, Lcom/huawei/bd/collector/Scheduler;->access$500(Lcom/huawei/bd/collector/Scheduler;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {}, Lcom/huawei/bd/collector/Scheduler;->access$700()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 355
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    const/4 v13, 0x6

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 354
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 353
    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 356
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 358
    iget-object v7, p0, Lcom/huawei/bd/collector/Scheduler$2;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/huawei/bd/collector/Scheduler;->access$900(Lcom/huawei/bd/collector/Scheduler;I)V

    .line 359
    iget-object v7, p0, Lcom/huawei/bd/collector/Scheduler$2;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-static {v7}, Lcom/huawei/bd/collector/Scheduler;->access$1000(Lcom/huawei/bd/collector/Scheduler;)V

    .line 361
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 362
    .local v4, "message":Landroid/os/Message;
    const/4 v7, 0x1

    iput v7, v4, Landroid/os/Message;->what:I

    .line 363
    iget-object v7, p0, Lcom/huawei/bd/collector/Scheduler$2;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-static {v7}, Lcom/huawei/bd/collector/Scheduler;->access$1100(Lcom/huawei/bd/collector/Scheduler;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 364
    const-string v7, "BD.Scheduler"

    const-string v8, "Day task finish"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 348
    .end local v4    # "message":Landroid/os/Message;
    :cond_3
    invoke-static {}, Lcom/huawei/bd/collector/Scheduler;->access$708()I

    goto :goto_2
.end method
