.class Lcom/huawei/opcollect/collector/pullcollection/ContactsAction$1;
.super Ljava/lang/Object;
.source "ContactsAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->collectDSContactsInfo()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction$1;->this$0:Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction$1;->this$0:Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;

    invoke-static {v1}, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->access$000(Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;)Lcom/huawei/nb/model/collectencrypt/DSContactsInfo;

    move-result-object v0

    .line 84
    .local v0, "dsContactsInfo":Lcom/huawei/nb/model/collectencrypt/DSContactsInfo;
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 86
    return-void
.end method
