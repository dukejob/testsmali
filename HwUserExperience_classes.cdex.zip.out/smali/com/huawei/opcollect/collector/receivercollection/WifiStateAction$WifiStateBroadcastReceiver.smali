.class Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction$WifiStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction$WifiStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    if-nez p2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "action":Ljava/lang/String;
    const-string v1, "WifiStateAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction$WifiStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;

    const-string v2, "wifi_state"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->access$002(Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;I)I

    .line 86
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction$WifiStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/receivercollection/WifiStateAction;->perform()Z

    goto :goto_0
.end method
