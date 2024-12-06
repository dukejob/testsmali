.class Lcom/huawei/bd/BDService$1;
.super Landroid/content/BroadcastReceiver;
.source "BDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/bd/BDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field registerLightSensorListenerRunner:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/huawei/bd/BDService;


# direct methods
.method constructor <init>(Lcom/huawei/bd/BDService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/huawei/bd/BDService;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/huawei/bd/BDService$1;->this$0:Lcom/huawei/bd/BDService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 112
    new-instance v0, Lcom/huawei/bd/BDService$1$1;

    invoke-direct {v0, p0}, Lcom/huawei/bd/BDService$1$1;-><init>(Lcom/huawei/bd/BDService$1;)V

    iput-object v0, p0, Lcom/huawei/bd/BDService$1;->registerLightSensorListenerRunner:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    if-nez p2, :cond_0

    .line 121
    const-string v1, "BD.BDService"

    const-string v2, "intent is null!"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 126
    const-string v1, "BD.BDService"

    const-string v2, "action is null!"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-static {}, Lcom/huawei/bd/BDService;->isUserExperienceSwitchOff()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    const-string v1, "BD.BDService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userexperience switch is off, action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_2
    const-string v1, "BD.BDService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/huawei/bd/BDService$1;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/huawei/bd/BDService;->access$002(Lcom/huawei/bd/BDService;J)J

    .line 136
    iget-object v1, p0, Lcom/huawei/bd/BDService$1;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v1}, Lcom/huawei/bd/BDService;->access$100(Lcom/huawei/bd/BDService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/bd/BDService$1;->registerLightSensorListenerRunner:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    :goto_1
    const-string v1, "BD.BDService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_3
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    iget-object v1, p0, Lcom/huawei/bd/BDService$1;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v1}, Lcom/huawei/bd/BDService;->access$100(Lcom/huawei/bd/BDService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/bd/BDService$1;->registerLightSensorListenerRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    iget-object v1, p0, Lcom/huawei/bd/BDService$1;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v1}, Lcom/huawei/bd/BDService;->access$100(Lcom/huawei/bd/BDService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/huawei/bd/BDService$1$2;

    invoke-direct {v2, p0}, Lcom/huawei/bd/BDService$1$2;-><init>(Lcom/huawei/bd/BDService$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 150
    :cond_4
    const-string v1, "com.huawei.bd.action.heartbeat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 151
    invoke-static {}, Lcom/huawei/bd/collector/Scheduler;->getInstance()Lcom/huawei/bd/collector/Scheduler;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/bd/BDService$1;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v2}, Lcom/huawei/bd/BDService;->access$200(Lcom/huawei/bd/BDService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/bd/collector/Scheduler;->startDayTask(Landroid/content/Context;)V

    .line 152
    iget-object v1, p0, Lcom/huawei/bd/BDService$1;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v1}, Lcom/huawei/bd/BDService;->access$300(Lcom/huawei/bd/BDService;)Lcom/huawei/bd/FlowController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/bd/FlowController;->clearAllHistory()V

    goto :goto_1

    .line 153
    :cond_5
    const-string v1, "com.huawei.bd.action.heartbeat_hour"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 154
    invoke-static {}, Lcom/huawei/bd/collector/Scheduler;->getInstance()Lcom/huawei/bd/collector/Scheduler;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/bd/BDService$1;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v2}, Lcom/huawei/bd/BDService;->access$200(Lcom/huawei/bd/BDService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/bd/collector/Scheduler;->startHourTask(Landroid/content/Context;)V

    goto :goto_1

    .line 155
    :cond_6
    const-string v1, "com.huawei.bd.action.eventusage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 156
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/bd/collector/BigDataCollector;->updateQueue()V

    goto :goto_1

    .line 158
    :cond_7
    const-string v1, "BD.BDService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
