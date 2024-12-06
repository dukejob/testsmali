.class public Lcom/huawei/opcollect/OpInterfaceImpl;
.super Ljava/lang/Object;
.source "OpInterfaceImpl.java"

# interfaces
.implements Lcom/huawei/opcollect/OpInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "OpInterfaceImpl"


# instance fields
.field private isModuleCanBeStarted:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/opcollect/OpInterfaceImpl;->isModuleCanBeStarted:Z

    .line 30
    const-string v0, "OpInterfaceImpl"

    const-string v1, "OpInterface impl"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 89
    const-string v0, "OpInterfaceImpl"

    const-string v1, "OpInterface dump impl"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/huawei/opcollect/OpInterfaceImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.huawei.nb.service"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectUtils;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    const-string v0, "OpInterfaceImpl"

    const-string v1, "odmf is not installed."

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-boolean v0, p0, Lcom/huawei/opcollect/OpInterfaceImpl;->isModuleCanBeStarted:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const-string v0, "OpInterfaceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpInterface initialize impl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/huawei/opcollect/OpInterfaceImpl;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {}, Lcom/huawei/opcollect/config/CollectConfigManager;->getInstance()Lcom/huawei/opcollect/config/CollectConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/config/CollectConfigManager;->isModuleCanBeStarted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/opcollect/OpInterfaceImpl;->isModuleCanBeStarted:Z

    .line 42
    iget-boolean v0, p0, Lcom/huawei/opcollect/OpInterfaceImpl;->isModuleCanBeStarted:Z

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "OpInterfaceImpl"

    const-string v1, "the switch is on"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->initialize(Landroid/content/Context;)V

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v0, "OpInterfaceImpl"

    const-string v1, "the switch is off"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchOff()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 71
    const-string v1, "OpInterfaceImpl"

    const-string v2, "OpInterface impl switch off."

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/huawei/opcollect/OpInterfaceImpl;->mContext:Landroid/content/Context;

    const-string v2, "com.huawei.nb.service"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectUtils;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    const-string v1, "OpInterfaceImpl"

    const-string v2, "odmf is not installed."

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v0

    .line 77
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public switchOn()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 55
    const-string v1, "OpInterfaceImpl"

    const-string v2, "OpInterface impl switch on."

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/huawei/opcollect/OpInterfaceImpl;->mContext:Landroid/content/Context;

    const-string v2, "com.huawei.nb.service"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectUtils;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    const-string v1, "OpInterfaceImpl"

    const-string v2, "odmf is not installed."

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v0

    .line 61
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
