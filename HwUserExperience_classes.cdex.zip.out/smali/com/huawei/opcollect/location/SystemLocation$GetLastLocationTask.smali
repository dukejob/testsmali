.class Lcom/huawei/opcollect/location/SystemLocation$GetLastLocationTask;
.super Ljava/util/TimerTask;
.source "SystemLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/location/SystemLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetLastLocationTask"
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
    .line 317
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 318
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/opcollect/location/SystemLocation$GetLastLocationTask;->service:Ljava/lang/ref/WeakReference;

    .line 319
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 323
    iget-object v3, p0, Lcom/huawei/opcollect/location/SystemLocation$GetLastLocationTask;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/location/SystemLocation;

    .line 324
    .local v0, "action":Lcom/huawei/opcollect/location/SystemLocation;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->access$400(Lcom/huawei/opcollect/location/SystemLocation;)Landroid/location/LocationManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->access$600(Lcom/huawei/opcollect/location/SystemLocation;)Landroid/location/LocationListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 328
    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->access$400(Lcom/huawei/opcollect/location/SystemLocation;)Landroid/location/LocationManager;

    move-result-object v3

    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->access$600(Lcom/huawei/opcollect/location/SystemLocation;)Landroid/location/LocationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 331
    :cond_2
    invoke-static {v0, v6}, Lcom/huawei/opcollect/location/SystemLocation;->access$602(Lcom/huawei/opcollect/location/SystemLocation;Landroid/location/LocationListener;)Landroid/location/LocationListener;

    .line 332
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/huawei/opcollect/location/SystemLocation;->access$102(Lcom/huawei/opcollect/location/SystemLocation;Z)Z

    .line 334
    const/4 v2, 0x0

    .line 336
    .local v2, "netLoc":Landroid/location/Location;
    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->access$700(Lcom/huawei/opcollect/location/SystemLocation;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 338
    :try_start_0
    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->access$400(Lcom/huawei/opcollect/location/SystemLocation;)Landroid/location/LocationManager;

    move-result-object v3

    const-string v4, "network"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 346
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 347
    invoke-static {v0, v2}, Lcom/huawei/opcollect/location/SystemLocation;->access$002(Lcom/huawei/opcollect/location/SystemLocation;Landroid/location/Location;)Landroid/location/Location;

    .line 348
    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->access$500(Lcom/huawei/opcollect/location/SystemLocation;)Lcom/huawei/opcollect/utils/LocationChange;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 349
    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->access$500(Lcom/huawei/opcollect/location/SystemLocation;)Lcom/huawei/opcollect/utils/LocationChange;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/huawei/opcollect/utils/LocationChange;->onGetLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 339
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v3, "SystemLocation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastKnownLocation security failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 341
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "SystemLocation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastKnownLocation failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 353
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    invoke-static {v0, v6}, Lcom/huawei/opcollect/location/SystemLocation;->access$002(Lcom/huawei/opcollect/location/SystemLocation;Landroid/location/Location;)Landroid/location/Location;

    .line 354
    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->access$500(Lcom/huawei/opcollect/location/SystemLocation;)Lcom/huawei/opcollect/utils/LocationChange;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 355
    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->access$500(Lcom/huawei/opcollect/location/SystemLocation;)Lcom/huawei/opcollect/utils/LocationChange;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/huawei/opcollect/utils/LocationChange;->onGetLocation(Landroid/location/Location;)V

    goto/16 :goto_0
.end method
