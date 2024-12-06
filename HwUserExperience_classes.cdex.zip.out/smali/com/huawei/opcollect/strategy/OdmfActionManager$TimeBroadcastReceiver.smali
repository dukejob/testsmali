.class final Lcom/huawei/opcollect/strategy/OdmfActionManager$TimeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OdmfActionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/strategy/OdmfActionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeBroadcastReceiver"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 940
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v2, 0x0

    .line 943
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.huawei.opcollect.action.halfhour_timetick"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 945
    invoke-static {v2, v3}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->access$100(J)V

    .line 946
    const-wide/32 v2, 0x6ddd00

    invoke-static {p1, v2, v3}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->access$200(Landroid/content/Context;J)V

    .line 947
    const-string v1, "OdmfActionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "repeating timer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 948
    :cond_1
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 949
    invoke-static {v2, v3}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->access$100(J)V

    .line 950
    const-string v1, "OdmfActionManager"

    const-string v2, "ACTION_TIME_CHANGED"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 951
    :cond_2
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 952
    invoke-static {v2, v3}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->access$100(J)V

    .line 953
    const-string v1, "OdmfActionManager"

    const-string v2, "ACTION_TIMEZONE_CHANGED"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
