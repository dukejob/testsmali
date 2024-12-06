.class Lcom/huawei/bd/collector/BigDataReceiver$3;
.super Ljava/lang/Object;
.source "BigDataReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/bd/collector/BigDataReceiver;->onReceivePackageAddedOrRemovedOrReplacedEvent(Landroid/content/Intent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/bd/collector/BigDataReceiver;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$innerIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/huawei/bd/collector/BigDataReceiver;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/bd/collector/BigDataReceiver;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/huawei/bd/collector/BigDataReceiver$3;->this$0:Lcom/huawei/bd/collector/BigDataReceiver;

    iput-object p2, p0, Lcom/huawei/bd/collector/BigDataReceiver$3;->val$innerIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/huawei/bd/collector/BigDataReceiver$3;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 131
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->isNormalCountry()Z

    move-result v5

    if-nez v5, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v5, p0, Lcom/huawei/bd/collector/BigDataReceiver$3;->val$innerIntent:Landroid/content/Intent;

    const-string v6, "android.intent.extra.REPLACING"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 137
    .local v2, "isReplacing":Z
    iget-object v5, p0, Lcom/huawei/bd/collector/BigDataReceiver$3;->val$innerIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "pkgName":Ljava/lang/String;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    iget-object v6, p0, Lcom/huawei/bd/collector/BigDataReceiver$3;->val$action:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v2, :cond_2

    .line 141
    const v1, 0x20002

    .line 142
    .local v1, "id":I
    iget-object v5, p0, Lcom/huawei/bd/collector/BigDataReceiver$3;->this$0:Lcom/huawei/bd/collector/BigDataReceiver;

    invoke-static {v5}, Lcom/huawei/bd/collector/BigDataReceiver;->access$000(Lcom/huawei/bd/collector/BigDataReceiver;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/huawei/bd/utils/BigDataUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "verName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{PN:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", VR:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .end local v4    # "verName":Ljava/lang/String;
    .local v0, "content":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v5

    const/16 v6, 0x19

    invoke-virtual {v5, v1, v0, v6}, Lcom/huawei/bd/collector/BigDataCollector;->saveLocalInfo(ILjava/lang/String;I)V

    goto :goto_0

    .line 144
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "id":I
    :cond_2
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    iget-object v6, p0, Lcom/huawei/bd/collector/BigDataReceiver$3;->val$action:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v2, :cond_3

    .line 145
    const v1, 0x20003

    .line 146
    .restart local v1    # "id":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{PN:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_1

    .line 147
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "id":I
    :cond_3
    const-string v5, "android.intent.action.PACKAGE_REPLACED"

    iget-object v6, p0, Lcom/huawei/bd/collector/BigDataReceiver$3;->val$action:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    const v1, 0x20004

    .line 149
    .restart local v1    # "id":I
    iget-object v5, p0, Lcom/huawei/bd/collector/BigDataReceiver$3;->this$0:Lcom/huawei/bd/collector/BigDataReceiver;

    invoke-static {v5}, Lcom/huawei/bd/collector/BigDataReceiver;->access$000(Lcom/huawei/bd/collector/BigDataReceiver;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/huawei/bd/utils/BigDataUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .restart local v4    # "verName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{PN:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", VR:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_1
.end method
