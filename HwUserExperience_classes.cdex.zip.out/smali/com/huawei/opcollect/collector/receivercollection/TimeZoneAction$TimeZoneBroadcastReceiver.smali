.class Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction$TimeZoneBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeZoneAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeZoneBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction$TimeZoneBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    if-nez p2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "action":Ljava/lang/String;
    const-string v1, "TimeZoneAction"

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

    .line 92
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction$TimeZoneBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/receivercollection/TimeZoneAction;->perform()Z

    goto :goto_0
.end method
