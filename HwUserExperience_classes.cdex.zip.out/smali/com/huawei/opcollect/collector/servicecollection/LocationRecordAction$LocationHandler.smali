.class Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationHandler;
.super Landroid/os/Handler;
.source "LocationRecordAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationHandler"
.end annotation


# instance fields
.field private final service:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;)V
    .locals 1
    .param p1, "service"    # Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;

    .prologue
    .line 449
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 450
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationHandler;->service:Ljava/lang/ref/WeakReference;

    .line 451
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 455
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 456
    const-string v3, "LocationRecordAction"

    const-string v4, "handleMessage "

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v3, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationHandler;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;

    .line 458
    .local v0, "action":Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;
    if-eqz v0, :cond_1

    .line 459
    const/4 v2, 0x0

    .line 460
    .local v2, "location":Lcom/huawei/opcollect/location/HwLocation;
    const/4 v1, 0x0

    .line 461
    .local v1, "actionParam":Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_2

    .line 462
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v2    # "location":Lcom/huawei/opcollect/location/HwLocation;
    check-cast v2, Lcom/huawei/opcollect/location/HwLocation;

    .line 463
    .restart local v2    # "location":Lcom/huawei/opcollect/location/HwLocation;
    new-instance v1, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;

    .end local v1    # "actionParam":Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;
    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;-><init>(Lcom/huawei/opcollect/location/HwLocation;Z)V

    .line 471
    .restart local v1    # "actionParam":Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 472
    invoke-static {v0, v1}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->access$100(Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;Lcom/huawei/opcollect/strategy/AbsActionParam;)Z

    .line 475
    .end local v1    # "actionParam":Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;
    .end local v2    # "location":Lcom/huawei/opcollect/location/HwLocation;
    :cond_1
    :goto_1
    return-void

    .line 464
    .restart local v1    # "actionParam":Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;
    .restart local v2    # "location":Lcom/huawei/opcollect/location/HwLocation;
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 465
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v2    # "location":Lcom/huawei/opcollect/location/HwLocation;
    check-cast v2, Lcom/huawei/opcollect/location/HwLocation;

    .line 466
    .restart local v2    # "location":Lcom/huawei/opcollect/location/HwLocation;
    new-instance v1, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;

    .end local v1    # "actionParam":Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;
    invoke-direct {v1, v2, v5}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;-><init>(Lcom/huawei/opcollect/location/HwLocation;Z)V

    .restart local v1    # "actionParam":Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;
    goto :goto_0

    .line 467
    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 468
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->access$000(Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;Ljava/lang/String;)V

    goto :goto_1
.end method
