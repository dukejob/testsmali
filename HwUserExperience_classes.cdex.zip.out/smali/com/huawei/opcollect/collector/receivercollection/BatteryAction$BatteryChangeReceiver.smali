.class Lcom/huawei/opcollect/collector/receivercollection/BatteryAction$BatteryChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction$BatteryChangeReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 66
    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction$BatteryChangeReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;

    invoke-static {v4}, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->access$000(Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;)Lcom/huawei/opcollect/powerkit/PowerKitManager;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction$BatteryChangeReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;

    invoke-static {v4}, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->access$000(Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;)Lcom/huawei/opcollect/powerkit/PowerKitManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/opcollect/powerkit/PowerKitManager;->isUserSleeping()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    const-string v4, "BatteryAction"

    const-string v5, "user sleep just ignore"

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "action":Ljava/lang/String;
    const-string v4, "BatteryAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    const-string v4, "level"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 79
    .local v2, "level":I
    const-string v4, "scale"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 80
    .local v3, "scale":I
    if-eqz v3, :cond_0

    .line 81
    int-to-float v4, v2

    int-to-float v5, v3

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 82
    .local v1, "battery":I
    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction$BatteryChangeReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;

    new-instance v5, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction$BatteryActionParam;

    iget-object v6, p0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction$BatteryChangeReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction$BatteryActionParam;-><init>(Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;->access$100(Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;Lcom/huawei/opcollect/strategy/AbsActionParam;)Z

    goto :goto_0
.end method
