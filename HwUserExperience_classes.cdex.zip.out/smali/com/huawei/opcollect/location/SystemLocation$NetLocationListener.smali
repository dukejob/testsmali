.class Lcom/huawei/opcollect/location/SystemLocation$NetLocationListener;
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
    name = "NetLocationListener"
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
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation$NetLocationListener;->service:Ljava/lang/ref/WeakReference;

    .line 121
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 124
    const-string v1, "SystemLocation"

    const-string v2, "locationListenerNetwork onLocationChanged"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/huawei/opcollect/location/SystemLocation$NetLocationListener;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/location/SystemLocation;

    .line 126
    .local v0, "action":Lcom/huawei/opcollect/location/SystemLocation;
    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->access$300(Lcom/huawei/opcollect/location/SystemLocation;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 130
    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->access$300(Lcom/huawei/opcollect/location/SystemLocation;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 132
    :cond_2
    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->access$400(Lcom/huawei/opcollect/location/SystemLocation;)Landroid/location/LocationManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 133
    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->access$400(Lcom/huawei/opcollect/location/SystemLocation;)Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 135
    :cond_3
    invoke-static {v0, p1}, Lcom/huawei/opcollect/location/SystemLocation;->access$002(Lcom/huawei/opcollect/location/SystemLocation;Landroid/location/Location;)Landroid/location/Location;

    .line 136
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/opcollect/location/SystemLocation;->access$102(Lcom/huawei/opcollect/location/SystemLocation;Z)Z

    .line 137
    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->access$500(Lcom/huawei/opcollect/location/SystemLocation;)Lcom/huawei/opcollect/utils/LocationChange;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->access$500(Lcom/huawei/opcollect/location/SystemLocation;)Lcom/huawei/opcollect/utils/LocationChange;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/huawei/opcollect/utils/LocationChange;->onGetLocation(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 143
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 146
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 149
    return-void
.end method
