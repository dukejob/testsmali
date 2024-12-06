.class Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction$WifiConnectBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiConnectBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction$WifiConnectBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    if-nez p2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "action":Ljava/lang/String;
    const-string v2, "WifiConnectAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 90
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 93
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction$WifiConnectBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;

    const-string v3, "networkType"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->access$002(Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;I)I

    .line 94
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction$WifiConnectBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;

    invoke-virtual {v2}, Lcom/huawei/opcollect/collector/receivercollection/WifiConnectAction;->perform()Z

    goto :goto_0
.end method
