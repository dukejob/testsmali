.class final Lcom/huawei/hiai/awareness/service/AwarenessManager$MsdpConMsgHandler;
.super Landroid/os/Handler;
.source "AwarenessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hiai/awareness/service/AwarenessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsdpConMsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hiai/awareness/service/AwarenessManager;


# direct methods
.method constructor <init>(Lcom/huawei/hiai/awareness/service/AwarenessManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager$MsdpConMsgHandler;->this$0:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    .line 113
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 114
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 124
    const-string v0, "AwarenessManager"

    const-string v1, "handleMessage error msg."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_0
    return-void

    .line 119
    :pswitch_0
    const-string v0, "AwarenessManager"

    const-string v1, "receive Msdp Connction request!"

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager$MsdpConMsgHandler;->this$0:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    invoke-static {v0}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->access$100(Lcom/huawei/hiai/awareness/service/AwarenessManager;)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
