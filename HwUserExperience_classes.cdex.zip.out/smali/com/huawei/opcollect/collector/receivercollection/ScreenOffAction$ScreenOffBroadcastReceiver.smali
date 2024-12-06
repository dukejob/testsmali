.class Lcom/huawei/opcollect/collector/receivercollection/ScreenOffAction$ScreenOffBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenOffAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/ScreenOffAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenOffBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/receivercollection/ScreenOffAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/receivercollection/ScreenOffAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/opcollect/collector/receivercollection/ScreenOffAction;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOffAction$ScreenOffBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/ScreenOffAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    if-nez p2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v0, "ScreenOffAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOffAction$ScreenOffBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/ScreenOffAction;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOffAction$ScreenOffBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/ScreenOffAction;

    invoke-static {v0}, Lcom/huawei/opcollect/collector/receivercollection/ScreenOffAction;->access$000(Lcom/huawei/opcollect/collector/receivercollection/ScreenOffAction;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOffAction$ScreenOffBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/ScreenOffAction;

    invoke-static {v0}, Lcom/huawei/opcollect/collector/receivercollection/ScreenOffAction;->access$000(Lcom/huawei/opcollect/collector/receivercollection/ScreenOffAction;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 81
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
