.class Lcom/huawei/msdp/movement/HwMSDPMovementManager$1;
.super Landroid/os/Handler;
.source "HwMSDPMovementManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/msdp/movement/HwMSDPMovementManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/msdp/movement/HwMSDPMovementManager;


# direct methods
.method constructor <init>(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$1;->this$0:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$1;->this$0:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-static {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->access$000(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)V

    goto :goto_0

    .line 53
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$1;->this$0:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-static {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->access$100(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
