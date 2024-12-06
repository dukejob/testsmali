.class Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction$UserPresentBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserPresentAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserPresentBroadcastReceiver"
.end annotation


# instance fields
.field private final service:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;)V
    .locals 1
    .param p1, "service"    # Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction$UserPresentBroadcastReceiver;->service:Ljava/lang/ref/WeakReference;

    .line 76
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    if-nez p2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "action":Ljava/lang/String;
    const-string v2, "UserPresentAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction$UserPresentBroadcastReceiver;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;

    .line 88
    .local v1, "userPresentAction":Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;
    if-eqz v1, :cond_0

    .line 91
    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->access$000(Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 92
    :try_start_0
    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->access$100(Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 93
    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;->access$100(Lcom/huawei/opcollect/collector/receivercollection/UserPresentAction;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 95
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
