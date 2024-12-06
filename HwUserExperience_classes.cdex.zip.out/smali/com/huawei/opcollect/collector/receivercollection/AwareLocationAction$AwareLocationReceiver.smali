.class Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareLocationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AwareLocationAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AwareLocationReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareLocationReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 222
    if-nez p2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.huawei.placerecognition.action.PLACE_RECOG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    iget-object v3, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareLocationReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    invoke-static {v3}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->access$100(Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;)V

    .line 228
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 229
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_2

    .line 230
    const-string v3, "AwareLocationAction"

    const-string v4, "onReceive --> bundle is null"

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_2
    const-string v3, "placerecognition_key"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 235
    .local v2, "eventId":I
    const-string v3, "AwareLocationAction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "eventID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 237
    iget-object v3, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareLocationReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    invoke-static {v3, v4}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->access$202(Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;Z)Z

    goto :goto_0

    .line 240
    :cond_3
    iget-object v6, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareLocationReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    if-eqz v2, :cond_4

    if-ne v2, v5, :cond_5

    :cond_4
    move v3, v5

    :goto_1
    invoke-static {v6, v3}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->access$302(Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;Z)Z

    .line 241
    iget-object v3, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareLocationReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    iget-object v6, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareLocationReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    invoke-static {v6}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->access$300(Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;)Z

    move-result v6

    invoke-static {v3, v6}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->access$202(Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;Z)Z

    .line 242
    iget-object v3, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareLocationReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    invoke-static {v3}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->access$400(Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;)Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;

    move-result-object v3

    if-nez v3, :cond_6

    .line 243
    const-string v3, "AwareLocationAction"

    const-string v4, "handler is null"

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v3, v4

    .line 240
    goto :goto_1

    .line 246
    :cond_6
    iget-object v3, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareLocationReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    invoke-static {v3}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->access$400(Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;)Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;

    move-result-object v3

    invoke-virtual {v3, v5, v2, v4}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
