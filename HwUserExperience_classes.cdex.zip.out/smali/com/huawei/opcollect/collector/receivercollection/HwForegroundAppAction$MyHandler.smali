.class Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$MyHandler;
.super Landroid/os/Handler;
.source "HwForegroundAppAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private final service:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;)V
    .locals 1
    .param p1, "service"    # Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$MyHandler;->service:Ljava/lang/ref/WeakReference;

    .line 161
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 166
    const-string v1, "HwForegroundAppAction"

    const-string v2, "handleMessage "

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$MyHandler;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;

    .line 168
    .local v0, "action":Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;
    if-eqz v0, :cond_0

    .line 169
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 170
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$AppActionParam;

    invoke-static {v0, v1}, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;->access$000(Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;Lcom/huawei/opcollect/strategy/AbsActionParam;)Z

    .line 173
    :cond_0
    return-void
.end method
