.class Lcom/huawei/opcollect/collector/receivercollection/CameraAction$CameraReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/CameraAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/receivercollection/CameraAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/receivercollection/CameraAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/opcollect/collector/receivercollection/CameraAction;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/huawei/opcollect/collector/receivercollection/CameraAction$CameraReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/CameraAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    if-nez p2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "CameraAction"

    invoke-static {v1, v0}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/CameraAction$CameraReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/CameraAction;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/receivercollection/CameraAction;->perform()Z

    goto :goto_0
.end method
