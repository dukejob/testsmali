.class Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction$HeadSetStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetPlugStateAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeadSetStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction$HeadSetStateReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    if-nez p2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 76
    const-string v1, "HeadsetPlugStateAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction$HeadSetStateReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;

    const-string v2, "state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->access$002(Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;I)I

    .line 81
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction$HeadSetStateReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/receivercollection/HeadsetPlugStateAction;->perform()Z

    goto :goto_0
.end method
