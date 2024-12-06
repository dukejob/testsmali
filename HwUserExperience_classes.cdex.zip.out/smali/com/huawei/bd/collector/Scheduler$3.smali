.class Lcom/huawei/bd/collector/Scheduler$3;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/bd/collector/Scheduler;->startHourTask(Landroid/content/Context;)V
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
    .line 376
    iput-object p1, p0, Lcom/huawei/bd/collector/Scheduler$3;->this$0:Lcom/huawei/bd/collector/Scheduler;

    iput-object p2, p0, Lcom/huawei/bd/collector/Scheduler$3;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/huawei/bd/collector/Scheduler$3;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-static {v0}, Lcom/huawei/bd/collector/Scheduler;->access$000(Lcom/huawei/bd/collector/Scheduler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    const-string v0, "BD.Scheduler"

    const-string v1, "Can\'t get the context, stop running startHourTask"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    const-string v0, "BD.Scheduler"

    const-string v1, "Hour task coming"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/huawei/bd/collector/Scheduler$3;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-static {v0}, Lcom/huawei/bd/collector/Scheduler;->access$600(Lcom/huawei/bd/collector/Scheduler;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/huawei/bd/collector/Scheduler$3;->this$0:Lcom/huawei/bd/collector/Scheduler;

    iget-object v1, p0, Lcom/huawei/bd/collector/Scheduler$3;->val$applicationContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/huawei/bd/collector/Scheduler;->access$602(Lcom/huawei/bd/collector/Scheduler;Landroid/content/Context;)Landroid/content/Context;

    .line 387
    :cond_2
    invoke-static {}, Lcom/huawei/bd/collector/Scheduler;->access$1204()I

    .line 388
    invoke-static {}, Lcom/huawei/bd/collector/Scheduler;->access$1200()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 389
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/bd/collector/Scheduler;->access$1202(I)I

    .line 391
    :cond_3
    invoke-static {}, Lcom/huawei/bd/collector/Scheduler;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/huawei/bd/collector/Scheduler$3;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-static {v0}, Lcom/huawei/bd/collector/Scheduler;->access$1400(Lcom/huawei/bd/collector/Scheduler;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 392
    iget-object v0, p0, Lcom/huawei/bd/collector/Scheduler$3;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-static {v0}, Lcom/huawei/bd/collector/Scheduler;->access$1500(Lcom/huawei/bd/collector/Scheduler;)V

    .line 394
    :cond_4
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/bd/collector/BigDataCollector;->saveChipsetsInfo()V

    .line 395
    invoke-static {}, Lcom/huawei/bd/collector/Scheduler;->access$1200()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    .line 396
    iget-object v0, p0, Lcom/huawei/bd/collector/Scheduler$3;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-static {v0}, Lcom/huawei/bd/collector/Scheduler;->access$1600(Lcom/huawei/bd/collector/Scheduler;)V

    .line 398
    :cond_5
    invoke-static {}, Lcom/huawei/bd/collector/Scheduler;->access$1200()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Lcom/huawei/bd/trigger/HiWiTrigger;

    iget-object v1, p0, Lcom/huawei/bd/collector/Scheduler$3;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-static {v1}, Lcom/huawei/bd/collector/Scheduler;->access$600(Lcom/huawei/bd/collector/Scheduler;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/bd/trigger/HiWiTrigger;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/huawei/bd/collector/Scheduler;->access$1702(Lcom/huawei/bd/trigger/HiWiTrigger;)Lcom/huawei/bd/trigger/HiWiTrigger;

    .line 400
    invoke-static {}, Lcom/huawei/bd/collector/Scheduler;->access$1700()Lcom/huawei/bd/trigger/HiWiTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/bd/trigger/HiWiTrigger;->isCanReport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-static {}, Lcom/huawei/bd/collector/Scheduler;->access$1700()Lcom/huawei/bd/trigger/HiWiTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/bd/trigger/HiWiTrigger;->startTunnelService()V

    goto :goto_0
.end method
