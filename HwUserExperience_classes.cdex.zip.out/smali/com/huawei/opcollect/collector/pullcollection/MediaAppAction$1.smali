.class Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction$1;
.super Ljava/lang/Object;
.source "MediaAppAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->collectRawMediaAppStatics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction$1;->this$0:Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 115
    iget-object v1, p0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction$1;->this$0:Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;

    invoke-static {v1}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->access$000(Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;)Lcom/huawei/nb/model/collectencrypt/RawMediaAppStastic;

    move-result-object v0

    .line 116
    .local v0, "rawMediaAppStastic":Lcom/huawei/nb/model/collectencrypt/RawMediaAppStastic;
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 118
    return-void
.end method
