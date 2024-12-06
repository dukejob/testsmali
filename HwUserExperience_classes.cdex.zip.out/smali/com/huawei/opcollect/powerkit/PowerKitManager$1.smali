.class Lcom/huawei/opcollect/powerkit/PowerKitManager$1;
.super Ljava/lang/Object;
.source "PowerKitManager.java"

# interfaces
.implements Lcom/huawei/android/powerkit/PowerKitConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/opcollect/powerkit/PowerKitManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/powerkit/PowerKitManager;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/powerkit/PowerKitManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/opcollect/powerkit/PowerKitManager;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/huawei/opcollect/powerkit/PowerKitManager$1;->this$0:Lcom/huawei/opcollect/powerkit/PowerKitManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "PowerKitManager"

    const-string v1, "PowerKitManager connected"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/huawei/opcollect/powerkit/PowerKitManager$1;->this$0:Lcom/huawei/opcollect/powerkit/PowerKitManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/powerkit/PowerKitManager;->access$002(Lcom/huawei/opcollect/powerkit/PowerKitManager;Z)Z

    .line 45
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "PowerKitManager"

    const-string v1, "PowerKit disconnected"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/huawei/opcollect/powerkit/PowerKitManager$1;->this$0:Lcom/huawei/opcollect/powerkit/PowerKitManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/opcollect/powerkit/PowerKitManager;->access$002(Lcom/huawei/opcollect/powerkit/PowerKitManager;Z)Z

    .line 39
    return-void
.end method
