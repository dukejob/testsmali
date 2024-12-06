.class Lcom/huawei/opcollect/location/SystemLocation$PassiveLocationListener;
.super Ljava/lang/Object;
.source "SystemLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/location/SystemLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PassiveLocationListener"
.end annotation


# instance fields
.field private service:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/huawei/opcollect/location/SystemLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/location/SystemLocation;)V
    .locals 1
    .param p1, "service"    # Lcom/huawei/opcollect/location/SystemLocation;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation$PassiveLocationListener;->service:Ljava/lang/ref/WeakReference;

    .line 74
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 78
    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v4, p0, Lcom/huawei/opcollect/location/SystemLocation$PassiveLocationListener;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/location/SystemLocation;

    .line 82
    .local v0, "action":Lcom/huawei/opcollect/location/SystemLocation;
    if-eqz v0, :cond_0

    .line 85
    invoke-static {v0, p1}, Lcom/huawei/opcollect/location/SystemLocation;->access$002(Lcom/huawei/opcollect/location/SystemLocation;Landroid/location/Location;)Landroid/location/Location;

    .line 86
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/huawei/opcollect/location/SystemLocation;->access$102(Lcom/huawei/opcollect/location/SystemLocation;Z)Z

    .line 87
    new-instance v1, Lcom/huawei/opcollect/location/HwLocation;

    invoke-direct {v1}, Lcom/huawei/opcollect/location/HwLocation;-><init>()V

    .line 88
    .local v1, "hwLocation":Lcom/huawei/opcollect/location/HwLocation;
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/huawei/opcollect/location/HwLocation;->setAccuracy(I)V

    .line 89
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/huawei/opcollect/location/HwLocation;->setLatitude(D)V

    .line 90
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/huawei/opcollect/location/HwLocation;->setLongitude(D)V

    .line 91
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/huawei/opcollect/location/HwLocation;->setAltitude(D)V

    .line 92
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/huawei/opcollect/location/HwLocation;->setProvider(Ljava/lang/String;)V

    .line 93
    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->access$200(Lcom/huawei/opcollect/location/SystemLocation;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;

    move-result-object v3

    .line 94
    .local v3, "locationRecordAction":Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;
    invoke-virtual {v3}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->getLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 95
    :try_start_0
    invoke-virtual {v3}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->getLocationHandler()Landroid/os/Handler;

    move-result-object v2

    .line 96
    .local v2, "locationHandler":Landroid/os/Handler;
    if-eqz v2, :cond_2

    .line 97
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 98
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 100
    :cond_2
    monitor-exit v5

    goto :goto_0

    .end local v2    # "locationHandler":Landroid/os/Handler;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 113
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 109
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 105
    return-void
.end method
