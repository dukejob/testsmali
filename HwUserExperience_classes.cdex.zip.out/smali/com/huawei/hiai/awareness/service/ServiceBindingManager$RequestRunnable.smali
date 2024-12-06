.class Lcom/huawei/hiai/awareness/service/ServiceBindingManager$RequestRunnable;
.super Ljava/lang/Object;
.source "ServiceBindingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hiai/awareness/service/ServiceBindingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestRunnable"
.end annotation


# instance fields
.field private iRequestCallBack:Lcom/huawei/hiai/awareness/service/IRequestCallBack;

.field result:Lcom/huawei/hiai/awareness/service/RequestResult;


# direct methods
.method private constructor <init>(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/RequestResult;)V
    .locals 0
    .param p1, "iRequestCallBack"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "result"    # Lcom/huawei/hiai/awareness/service/RequestResult;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/ServiceBindingManager$RequestRunnable;->iRequestCallBack:Lcom/huawei/hiai/awareness/service/IRequestCallBack;

    .line 62
    iput-object p2, p0, Lcom/huawei/hiai/awareness/service/ServiceBindingManager$RequestRunnable;->result:Lcom/huawei/hiai/awareness/service/RequestResult;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/RequestResult;Lcom/huawei/hiai/awareness/service/ServiceBindingManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "x1"    # Lcom/huawei/hiai/awareness/service/RequestResult;
    .param p3, "x2"    # Lcom/huawei/hiai/awareness/service/ServiceBindingManager$1;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/huawei/hiai/awareness/service/ServiceBindingManager$RequestRunnable;-><init>(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/RequestResult;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 68
    :try_start_0
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RequestRunnable run() start"

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/ServiceBindingManager$RequestRunnable;->iRequestCallBack:Lcom/huawei/hiai/awareness/service/IRequestCallBack;

    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/ServiceBindingManager$RequestRunnable;->result:Lcom/huawei/hiai/awareness/service/RequestResult;

    invoke-interface {v1, v2}, Lcom/huawei/hiai/awareness/service/IRequestCallBack;->onRequestResult(Lcom/huawei/hiai/awareness/service/RequestResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/huawei/hiai/awareness/service/ServiceBindingManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RequestRunnable run() RemoteException "

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
