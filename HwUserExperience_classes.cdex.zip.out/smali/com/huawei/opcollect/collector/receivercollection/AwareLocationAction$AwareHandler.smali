.class Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;
.super Landroid/os/Handler;
.source "AwareLocationAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AwareHandler"
.end annotation


# instance fields
.field private final service:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;)V
    .locals 1
    .param p1, "service"    # Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;->service:Ljava/lang/ref/WeakReference;

    .line 121
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 126
    if-nez p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 130
    iget-object v1, p0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction$AwareHandler;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;

    .line 131
    .local v0, "action":Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;
    if-eqz v0, :cond_0

    .line 132
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->access$002(Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;I)I

    .line 133
    invoke-virtual {v0}, Lcom/huawei/opcollect/collector/receivercollection/AwareLocationAction;->perform()Z

    goto :goto_0
.end method
