.class Lcom/huawei/hiai/awareness/service/AwarenessManager$1;
.super Ljava/lang/Object;
.source "AwarenessManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hiai/awareness/service/AwarenessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hiai/awareness/service/AwarenessManager;


# direct methods
.method constructor <init>(Lcom/huawei/hiai/awareness/service/AwarenessManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/hiai/awareness/service/AwarenessManager;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager$1;->this$0:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager$1;->this$0:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    invoke-static {p2}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hiai/awareness/service/IAwarenessService;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    .line 43
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager$1;->this$0:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    invoke-static {v0}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->access$000(Lcom/huawei/hiai/awareness/service/AwarenessManager;)Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "AwarenessManager"

    const-string v1, "service connect"

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager$1;->this$0:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    invoke-static {v0}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->access$000(Lcom/huawei/hiai/awareness/service/AwarenessManager;)Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;->onServiceConnected()V

    .line 47
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager$1;->this$0:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/huawei/hiai/awareness/service/AwarenessManager;->mIAwarenessService:Lcom/huawei/hiai/awareness/service/IAwarenessService;

    .line 51
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager$1;->this$0:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    invoke-static {v0}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->access$000(Lcom/huawei/hiai/awareness/service/AwarenessManager;)Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "AwarenessManager"

    const-string v1, "service disconnect"

    invoke-static {v0, v1}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessManager$1;->this$0:Lcom/huawei/hiai/awareness/service/AwarenessManager;

    invoke-static {v0}, Lcom/huawei/hiai/awareness/service/AwarenessManager;->access$000(Lcom/huawei/hiai/awareness/service/AwarenessManager;)Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/hiai/awareness/service/AwarenessServiceConnection;->onServiceDisconnected()V

    .line 55
    :cond_0
    return-void
.end method
