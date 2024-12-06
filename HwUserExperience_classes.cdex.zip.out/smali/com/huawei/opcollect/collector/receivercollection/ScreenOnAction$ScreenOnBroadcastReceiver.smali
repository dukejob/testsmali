.class Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction$ScreenOnBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenOnAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenOnBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction$ScreenOnBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    if-nez p2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "action":Ljava/lang/String;
    const-string v1, "ScreenOnAction"

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

    .line 77
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction$ScreenOnBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;

    monitor-enter v2

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction$ScreenOnBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->access$000(Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction$ScreenOnBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;->access$000(Lcom/huawei/opcollect/collector/receivercollection/ScreenOnAction;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 82
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
