.class Lcom/huawei/msdp/movement/HwMSDPMovementManager$2;
.super Ljava/lang/Object;
.source "HwMSDPMovementManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 61
    iput-object p1, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$2;->this$0:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 64
    const-string v0, "HwMSDPMovementManager"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$2;->this$0:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-static {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->access$200(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$2;->this$0:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-static {p2}, Lcom/huawei/msdp/movement/IMSDPMovementService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/msdp/movement/IMSDPMovementService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->access$302(Lcom/huawei/msdp/movement/HwMSDPMovementManager;Lcom/huawei/msdp/movement/IMSDPMovementService;)Lcom/huawei/msdp/movement/IMSDPMovementService;

    .line 67
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$2;->this$0:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-static {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->access$400(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)Z

    .line 68
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$2;->this$0:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-static {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->access$500(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)V

    .line 69
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$2;->this$0:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-static {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->access$100(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)V

    .line 70
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 74
    const-string v0, "HwMSDPMovementManager"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$2;->this$0:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-static {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->access$600(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;->onServiceDisconnected(Ljava/lang/Boolean;)V

    .line 76
    return-void
.end method
