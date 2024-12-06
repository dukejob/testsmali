.class Lcom/huawei/android/powerkit/adapter/PowerKitApi$1;
.super Ljava/lang/Object;
.source "PowerKitApi.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/powerkit/adapter/PowerKitApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/powerkit/adapter/PowerKitApi;


# direct methods
.method constructor <init>(Lcom/huawei/android/powerkit/adapter/PowerKitApi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi$1;->this$0:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 47
    iget-object v2, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi$1;->this$0:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    invoke-static {p2}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->access$102(Lcom/huawei/android/powerkit/adapter/PowerKitApi;Lcom/huawei/android/powerkit/adapter/IPowerKitApi;)Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    .line 48
    const-string v2, "PowerKitApi"

    const-string v3, "Powerkit service connected"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v2, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi$1;->this$0:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    invoke-static {v2}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->access$000(Lcom/huawei/android/powerkit/adapter/PowerKitApi;)Lcom/huawei/android/powerkit/PowerKitConnection;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/powerkit/PowerKitConnection;->onServiceConnected()V

    .line 51
    iget-object v2, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi$1;->this$0:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    invoke-static {v2}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->access$100(Lcom/huawei/android/powerkit/adapter/PowerKitApi;)Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .local v0, "binder":Landroid/os/IBinder;
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi$1;->this$0:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    invoke-static {v2}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->access$200(Lcom/huawei/android/powerkit/adapter/PowerKitApi;)Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PowerKitApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "powerkit linkToDeath failed ! calling pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 58
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 40
    const-string v0, "PowerKitApi"

    const-string v1, "Powerkit service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi$1;->this$0:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    invoke-static {v0}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->access$000(Lcom/huawei/android/powerkit/adapter/PowerKitApi;)Lcom/huawei/android/powerkit/PowerKitConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/android/powerkit/PowerKitConnection;->onServiceDisconnected()V

    .line 42
    return-void
.end method
