.class Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;
.super Ljava/lang/Object;
.source "ConnectServiceManager.java"

# interfaces
.implements Lcom/huawei/msdp/movement/HwMSDPMovementServiceConnection;


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
    .line 108
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 110
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    iput-boolean v5, v2, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mIsConMovementServer:Z

    .line 111
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onServiceConnected() Movement service connected"

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v3}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$200(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->getSupportedModule()I

    move-result v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$102(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;I)I

    .line 114
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected() mMSDPSupportModule:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v4}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$100(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v2}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$100(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-ne v5, v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v3}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$200(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->getSupportedMovements(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$302(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;[Ljava/lang/String;)[Ljava/lang/String;

    .line 118
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v2}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$300(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v2}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$300(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    .line 120
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 121
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected() i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMSDPMovementSupportedActivities[i] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v4}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$300(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_0
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v3}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$100(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-ne v2, v3, :cond_1

    .line 126
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v3}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$200(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->getSupportedMovements(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$402(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;[Ljava/lang/String;)[Ljava/lang/String;

    .line 127
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v2}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$400(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v2}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$400(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    .line 129
    .restart local v1    # "length":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 130
    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v2}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$200(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)Lcom/huawei/msdp/movement/HwMSDPMovementManager;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v3}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$400(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/huawei/msdp/movement/HwMSDPMovementManager;->initEnvironment(Ljava/lang/String;)Z

    .line 131
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected() i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMSDPSupportedEnvironments[i] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    invoke-static {v4}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$400(Lcom/huawei/hiai/awareness/service/ConnectServiceManager;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "var1"    # Ljava/lang/Boolean;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager$1;->this$0:Lcom/huawei/hiai/awareness/service/ConnectServiceManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->mIsConMovementServer:Z

    .line 139
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ConnectServiceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected() Movement service Disconnected"

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method
