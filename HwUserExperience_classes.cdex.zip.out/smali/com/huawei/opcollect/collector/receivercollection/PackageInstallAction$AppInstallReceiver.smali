.class Lcom/huawei/opcollect/collector/receivercollection/PackageInstallAction$AppInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageInstallAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/PackageInstallAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/receivercollection/PackageInstallAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/receivercollection/PackageInstallAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/opcollect/collector/receivercollection/PackageInstallAction;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/huawei/opcollect/collector/receivercollection/PackageInstallAction$AppInstallReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/PackageInstallAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    if-nez p2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 72
    const-string v1, "PackageInstallAction"

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

    .line 74
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const-string v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/PackageInstallAction$AppInstallReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/PackageInstallAction;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/collector/receivercollection/PackageInstallAction;->access$002(Lcom/huawei/opcollect/collector/receivercollection/PackageInstallAction;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/PackageInstallAction$AppInstallReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/PackageInstallAction;

    invoke-virtual {v1}, Lcom/huawei/opcollect/collector/receivercollection/PackageInstallAction;->perform()Z

    goto :goto_0
.end method
