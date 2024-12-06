.class final Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;
.super Landroid/os/Handler;
.source "OdmfCollectScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OdmfCtrlMsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;


# direct methods
.method public constructor <init>(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;->this$0:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    .line 197
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 198
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 202
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    .line 203
    invoke-static {p1}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->handleMessage(Landroid/os/Message;)V

    .line 241
    :goto_0
    return-void

    .line 207
    :cond_0
    const-string v0, "OdmfCollectScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 238
    const-string v0, "OdmfCollectScheduler"

    const-string v1, "handleMessage error msg."

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;->this$0:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    invoke-static {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->access$100(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;)Lcom/huawei/opcollect/odmf/OdmfHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->connectOdmfService()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    const/4 v0, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 213
    :cond_1
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->access$200()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;->isAMInited()Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    invoke-static {}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->getInstance()Lcom/huawei/opcollect/strategy/OdmfActionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;->this$0:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    invoke-static {v1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->access$300(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->initialize(Landroid/content/Context;)V

    .line 216
    :cond_2
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->access$200()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;->access$002(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;I)I

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;->this$0:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    invoke-static {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->access$400(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;)V

    goto :goto_0

    .line 223
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;->this$0:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    invoke-static {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->access$500(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;)V

    goto :goto_0

    .line 226
    :pswitch_3
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;->this$0:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    invoke-static {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->access$600(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;)V

    goto :goto_0

    .line 229
    :pswitch_4
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;->this$0:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    invoke-static {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->access$700(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;)V

    goto :goto_0

    .line 232
    :pswitch_5
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;->this$0:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    invoke-static {v0, p1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->access$800(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;Landroid/os/Message;)V

    goto :goto_0

    .line 235
    :pswitch_6
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;->this$0:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    invoke-static {v0, p1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->access$900(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;Landroid/os/Message;)V

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
