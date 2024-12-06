.class Lcom/huawei/opcollect/collector/receivercollection/DeskClockAction$DeskClockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeskClockAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/DeskClockAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeskClockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/receivercollection/DeskClockAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/receivercollection/DeskClockAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/opcollect/collector/receivercollection/DeskClockAction;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/huawei/opcollect/collector/receivercollection/DeskClockAction$DeskClockReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/DeskClockAction;

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

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "action":Ljava/lang/String;
    const-string v1, "DeskClockAction"

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

    .line 69
    const-string v1, "huawei.deskclock.ALARM_ALERT_CONFLICT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/DeskClockAction$DeskClockReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/DeskClockAction;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/receivercollection/DeskClockAction;->perform()Z

    goto :goto_0
.end method
