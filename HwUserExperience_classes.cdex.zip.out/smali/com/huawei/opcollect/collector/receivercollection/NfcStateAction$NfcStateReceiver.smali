.class Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NfcStateAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 67
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
    const-string v2, "NfcStateAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 75
    .local v1, "state":I
    if-ne v1, v5, :cond_2

    .line 76
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;

    new-instance v3, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateActionParam;

    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;

    const-string v5, "0"

    invoke-direct {v3, v4, v5}, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateActionParam;-><init>(Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->access$000(Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;Lcom/huawei/opcollect/strategy/AbsActionParam;)Z

    goto :goto_0

    .line 77
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;

    new-instance v3, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateActionParam;

    iget-object v4, p0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateReceiver;->this$0:Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;

    const-string v5, "1"

    invoke-direct {v3, v4, v5}, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateActionParam;-><init>(Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->access$100(Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;Lcom/huawei/opcollect/strategy/AbsActionParam;)Z

    goto :goto_0
.end method
