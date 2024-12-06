.class Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction$BluetoothBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothConnectAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction$BluetoothBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    if-nez p2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 97
    const-string v2, "BluetoothConnectAction"

    const-string v3, "onReceive"

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction$BluetoothBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->access$002(Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;I)I

    .line 108
    :goto_1
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 109
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction$BluetoothBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;

    invoke-static {v2, v1}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->access$100(Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;Landroid/bluetooth/BluetoothDevice;)V

    .line 110
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction$BluetoothBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;

    invoke-virtual {v2}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->perform()Z

    goto :goto_0

    .line 101
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction$BluetoothBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;->access$002(Lcom/huawei/opcollect/collector/receivercollection/BluetoothConnectAction;I)I

    goto :goto_1

    .line 104
    :cond_3
    const-string v2, "BluetoothConnectAction"

    const-string v3, "Unexpected Action"

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
