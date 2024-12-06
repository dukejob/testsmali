.class Lcom/huawei/bd/trigger/HiWiJobService$1;
.super Landroid/os/Handler;
.source "HiWiJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/bd/trigger/HiWiJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/bd/trigger/HiWiJobService;


# direct methods
.method constructor <init>(Lcom/huawei/bd/trigger/HiWiJobService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/bd/trigger/HiWiJobService;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/huawei/bd/trigger/HiWiJobService$1;->this$0:Lcom/huawei/bd/trigger/HiWiJobService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 28
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 41
    :goto_0
    return-void

    .line 30
    :pswitch_0
    new-instance v0, Lcom/huawei/bd/trigger/HiWiTrigger;

    iget-object v1, p0, Lcom/huawei/bd/trigger/HiWiJobService$1;->this$0:Lcom/huawei/bd/trigger/HiWiJobService;

    invoke-virtual {v1}, Lcom/huawei/bd/trigger/HiWiJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/bd/trigger/HiWiTrigger;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, "hiWiTrigger":Lcom/huawei/bd/trigger/HiWiTrigger;
    invoke-virtual {v0}, Lcom/huawei/bd/trigger/HiWiTrigger;->isCanReport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    iget-object v2, p0, Lcom/huawei/bd/trigger/HiWiJobService$1;->this$0:Lcom/huawei/bd/trigger/HiWiJobService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/job/JobParameters;

    invoke-virtual {v2, v1, v3}, Lcom/huawei/bd/trigger/HiWiJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/bd/trigger/HiWiTrigger;->startTunnelService()V

    .line 36
    iget-object v2, p0, Lcom/huawei/bd/trigger/HiWiJobService$1;->this$0:Lcom/huawei/bd/trigger/HiWiJobService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/job/JobParameters;

    invoke-virtual {v2, v1, v3}, Lcom/huawei/bd/trigger/HiWiJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
