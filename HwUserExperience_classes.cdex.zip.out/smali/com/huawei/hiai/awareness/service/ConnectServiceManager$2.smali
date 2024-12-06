.class Lcom/huawei/hiai/awareness/service/ConnectServiceManager$2;
.super Ljava/lang/Object;
.source "ConnectServiceManager.java"

# interfaces
.implements Lcom/huawei/msdp/movement/HwMSDPMovementStatusChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;


# direct methods
.method constructor <init>(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$2;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovementStatusChanged(ILcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "var1"    # Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;

    .prologue
    const/4 v3, 0x1

    .line 150
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMovementStatusChanged() type is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq v0, p1, :cond_0

    .line 153
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMovementStatusChanged() type is not support!"

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMovementStatusChanged()"

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$2;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v0}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$300(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$2;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v0}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$300(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    .line 158
    :cond_1
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMovementStatusChanged() mMSDPMovementSupportedActivities == null "

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$2;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$2;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v1}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$200(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->getSupportedModule()I

    move-result v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$102(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;I)I

    .line 161
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMovementStatusChanged() mMSDPSupportModule:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$2;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v2}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$100(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$2;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v0}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$100(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v3, v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$2;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$2;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v1}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$200(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->getSupportedMovements(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$302(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;[Ljava/lang/String;)[Ljava/lang/String;

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$2;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v0}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$300(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$2;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v0}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$300(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_4

    .line 169
    :cond_3
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMovementStatusChanged() mMSDPMovementSupportedActivities == null 2! "

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :cond_4
    invoke-static {}, Lcom/huawei/hiai/awareness/movement/MovementController;->getInstance()Lcom/huawei/hiai/awareness/movement/MovementController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/huawei/hiai/awareness/movement/MovementController;->onMovementStatusChanged(Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;)V

    goto/16 :goto_0
.end method
