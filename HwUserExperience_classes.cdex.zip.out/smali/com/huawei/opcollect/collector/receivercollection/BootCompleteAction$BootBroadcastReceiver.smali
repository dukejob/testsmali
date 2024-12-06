.class Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction$BootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompleteAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BootBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction$BootBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    if-nez p2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "action":Ljava/lang/String;
    const-string v1, "BootCompleteAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction$BootBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/receivercollection/BootCompleteAction;->perform()Z

    goto :goto_0
.end method
