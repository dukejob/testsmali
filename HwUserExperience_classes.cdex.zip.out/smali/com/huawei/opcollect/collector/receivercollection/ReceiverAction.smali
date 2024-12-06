.class public Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;
.super Lcom/huawei/opcollect/strategy/Action;
.source "ReceiverAction.java"


# instance fields
.field protected mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/strategy/Action;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 26
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/Action;->disable()V

    .line 34
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    :cond_0
    return-void
.end method

.method public dump(ILjava/io/PrintWriter;)V
    .locals 6
    .param p1, "indentNum"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/huawei/opcollect/strategy/Action;->dump(ILjava/io/PrintWriter;)V

    .line 49
    if-eqz p2, :cond_0

    .line 50
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s\\-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, " "

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "indent":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "receiver is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    .end local v0    # "indent":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 54
    .restart local v0    # "indent":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "receiver not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
