.class Lcom/huawei/msdp/movement/HwMSDPMovementManager$ServiceDeathHandler;
.super Ljava/lang/Object;
.source "HwMSDPMovementManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/msdp/movement/HwMSDPMovementManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceDeathHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/msdp/movement/HwMSDPMovementManager;


# direct methods
.method public constructor <init>(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$ServiceDeathHandler;->this$0:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 502
    const-string v0, "HwMSDPMovementManager"

    const-string v1, "the movement Service has died !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$ServiceDeathHandler;->this$0:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-static {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->access$600(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$ServiceDeathHandler;->this$0:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-static {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->access$600(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;->onServiceDisconnected(Ljava/lang/Boolean;)V

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$ServiceDeathHandler;->this$0:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-static {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->access$300(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)Lcom/huawei/msdp/movement/IMSDPMovementService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$ServiceDeathHandler;->this$0:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-static {v0}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->access$300(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)Lcom/huawei/msdp/movement/IMSDPMovementService;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/msdp/movement/IMSDPMovementService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$ServiceDeathHandler;->this$0:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    invoke-static {v1}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->access$700(Lcom/huawei/msdp/movement/HwMSDPMovementManager;)Lcom/huawei/msdp/movement/HwMSDPMovementManager$ServiceDeathHandler;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 508
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$ServiceDeathHandler;->this$0:Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->access$302(Lcom/huawei/msdp/movement/HwMSDPMovementManager;Lcom/huawei/msdp/movement/IMSDPMovementService;)Lcom/huawei/msdp/movement/IMSDPMovementService;

    .line 510
    :cond_1
    return-void
.end method
