.class Lcom/huawei/opcollect/appchange/AppChangeImpl$1;
.super Lcom/huawei/android/app/IHwActivityNotifierEx;
.source "AppChangeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/appchange/AppChangeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/appchange/AppChangeImpl;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/appchange/AppChangeImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/opcollect/appchange/AppChangeImpl;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl$1;->this$0:Lcom/huawei/opcollect/appchange/AppChangeImpl;

    invoke-direct {p0}, Lcom/huawei/android/app/IHwActivityNotifierEx;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 43
    if-nez p1, :cond_1

    .line 44
    const-string v5, "AppChangeImpl"

    const-string v6, "call extras is null."

    invoke-static {v5, v6}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string v5, "pid"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 48
    .local v3, "pid":I
    const-string v5, "uid"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 49
    .local v4, "uid":I
    const-string v5, "state"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "flag":Ljava/lang/String;
    const-string v5, "comp"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 51
    .local v0, "componentName":Landroid/content/ComponentName;
    const-string v5, "onResume"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 52
    iget-object v5, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl$1;->this$0:Lcom/huawei/opcollect/appchange/AppChangeImpl;

    invoke-static {v5}, Lcom/huawei/opcollect/appchange/AppChangeImpl;->access$000(Lcom/huawei/opcollect/appchange/AppChangeImpl;)Ljava/util/List;

    move-result-object v6

    monitor-enter v6

    .line 53
    :try_start_0
    const-string v5, "AppChangeImpl"

    const-string v7, "call onAppChange."

    invoke-static {v5, v7}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v5, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl$1;->this$0:Lcom/huawei/opcollect/appchange/AppChangeImpl;

    invoke-static {v5}, Lcom/huawei/opcollect/appchange/AppChangeImpl;->access$000(Lcom/huawei/opcollect/appchange/AppChangeImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/opcollect/appchange/AppChangeListener;

    .line 55
    .local v2, "listener":Lcom/huawei/opcollect/appchange/AppChangeListener;
    if-eqz v2, :cond_2

    .line 56
    invoke-interface {v2, v3, v4, v0}, Lcom/huawei/opcollect/appchange/AppChangeListener;->onAppChange(IILandroid/content/ComponentName;)V

    goto :goto_1

    .line 59
    .end local v2    # "listener":Lcom/huawei/opcollect/appchange/AppChangeListener;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
