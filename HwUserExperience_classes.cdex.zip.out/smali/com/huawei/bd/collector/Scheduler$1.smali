.class Lcom/huawei/bd/collector/Scheduler$1;
.super Landroid/os/Handler;
.source "Scheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/bd/collector/Scheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/bd/collector/Scheduler;


# direct methods
.method constructor <init>(Lcom/huawei/bd/collector/Scheduler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/bd/collector/Scheduler;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/huawei/bd/collector/Scheduler$1;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 131
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 132
    :goto_1
    return-void

    .line 115
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/bd/collector/Scheduler$1;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-static {v0}, Lcom/huawei/bd/collector/Scheduler;->access$000(Lcom/huawei/bd/collector/Scheduler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    const-string v0, "BD.Scheduler"

    const-string v1, "Can\'t get the context, stop running ACQUISITION_INIT"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/huawei/bd/collector/Scheduler$1;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-static {v0}, Lcom/huawei/bd/collector/Scheduler;->access$100(Lcom/huawei/bd/collector/Scheduler;)V

    .line 120
    iget-object v0, p0, Lcom/huawei/bd/collector/Scheduler$1;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-static {v0}, Lcom/huawei/bd/collector/Scheduler;->access$200(Lcom/huawei/bd/collector/Scheduler;)V

    .line 121
    iget-object v0, p0, Lcom/huawei/bd/collector/Scheduler$1;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-static {v0}, Lcom/huawei/bd/collector/Scheduler;->access$300(Lcom/huawei/bd/collector/Scheduler;)V

    goto :goto_0

    .line 124
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/bd/collector/Scheduler$1;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-static {v0}, Lcom/huawei/bd/collector/Scheduler;->access$400(Lcom/huawei/bd/collector/Scheduler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/bd/collector/Scheduler$1;->this$0:Lcom/huawei/bd/collector/Scheduler;

    invoke-static {v1}, Lcom/huawei/bd/collector/Scheduler;->access$400(Lcom/huawei/bd/collector/Scheduler;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/huawei/bd/collector/BigDataCollector;->saveEvent(Ljava/util/List;I)V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
