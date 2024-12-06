.class Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction$BluetoothStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothStateAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction$BluetoothStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    if-nez p2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "action":Ljava/lang/String;
    const-string v2, "BluetoothStateAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 68
    .local v1, "state":I
    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction$BluetoothStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;

    const-string v3, "contentobserver.bluetooth_on"

    invoke-static {v2, v3}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->access$002(Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction$BluetoothStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;

    invoke-virtual {v2}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->perform()Z

    goto :goto_0

    .line 71
    :cond_2
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction$BluetoothStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;

    const-string v3, "contentobserver.bluetooth_off"

    invoke-static {v2, v3}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->access$002(Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction$BluetoothStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;

    invoke-virtual {v2}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothStateAction;->perform()Z

    goto :goto_0
.end method
