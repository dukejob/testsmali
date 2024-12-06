.class Lcom/huawei/bd/collector/BigDataReceiver$1;
.super Ljava/lang/Object;
.source "BigDataReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/bd/collector/BigDataReceiver;->onReceiveUpdateConfigEvent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/bd/collector/BigDataReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/huawei/bd/collector/BigDataReceiver;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/bd/collector/BigDataReceiver;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/huawei/bd/collector/BigDataReceiver$1;->this$0:Lcom/huawei/bd/collector/BigDataReceiver;

    iput-object p2, p0, Lcom/huawei/bd/collector/BigDataReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 94
    iget-object v6, p0, Lcom/huawei/bd/collector/BigDataReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 96
    const-string v6, "BD.BigDataReceiver"

    const-string v7, "bundle is null"

    invoke-static {v6, v7}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v6, "UEConfigFileVerison"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 100
    .local v4, "ueConfigFileVerison":J
    iget-object v6, p0, Lcom/huawei/bd/collector/BigDataReceiver$1;->this$0:Lcom/huawei/bd/collector/BigDataReceiver;

    invoke-static {v6}, Lcom/huawei/bd/collector/BigDataReceiver;->access$000(Lcom/huawei/bd/collector/BigDataReceiver;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 101
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "UEConfigFileVerison"

    invoke-interface {v6, v7, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    const-string v6, "ReleaseTime"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 103
    .local v2, "releaseTime":J
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "ReleaseTime"

    invoke-interface {v6, v7, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    const-string v6, "BD.BigDataReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UEConfigFileVerison: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ReleaseTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v6, p0, Lcom/huawei/bd/collector/BigDataReceiver$1;->this$0:Lcom/huawei/bd/collector/BigDataReceiver;

    invoke-static {v6}, Lcom/huawei/bd/collector/BigDataReceiver;->access$000(Lcom/huawei/bd/collector/BigDataReceiver;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->doUnzipFile(Landroid/content/Context;)V

    .line 106
    invoke-static {}, Lcom/huawei/filter/PolicyGenerator;->getInstance()Lcom/huawei/filter/PolicyGenerator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/filter/PolicyGenerator;->loadCustRegisterMap()V

    goto :goto_0
.end method
