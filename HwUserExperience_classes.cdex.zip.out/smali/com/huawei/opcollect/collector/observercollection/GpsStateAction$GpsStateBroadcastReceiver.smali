.class Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$GpsStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GpsStateAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;


# direct methods
.method private constructor <init>(Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$GpsStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;
    .param p2, "x1"    # Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$1;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$GpsStateBroadcastReceiver;-><init>(Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 67
    iget-object v2, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$GpsStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    invoke-static {v2}, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->access$000(Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;)Landroid/location/LocationManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 68
    const-string v2, "GpsStateAction"

    const-string v3, "mLocationManager is null!"

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const/4 v1, 0x0

    .line 73
    .local v1, "enabled":Z
    :try_start_0
    iget-object v2, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$GpsStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    invoke-static {v2}, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->access$000(Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;)Landroid/location/LocationManager;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 77
    :goto_1
    if-eqz v1, :cond_3

    .line 78
    iget-object v2, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$GpsStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    invoke-static {v2}, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->access$100(Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$GpsStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    invoke-static {v2}, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->access$200(Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    :cond_2
    iget-object v2, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$GpsStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    invoke-static {v2, v4}, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->access$102(Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;Z)Z

    .line 80
    iget-object v2, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$GpsStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    invoke-static {v2, v4}, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->access$202(Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;Z)Z

    .line 81
    iget-object v2, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$GpsStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    invoke-virtual {v2}, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->perform()Z

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "GpsStateAction"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 84
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_3
    iget-object v2, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$GpsStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    invoke-static {v2}, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->access$100(Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$GpsStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    invoke-static {v2}, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->access$200(Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    :cond_4
    iget-object v2, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$GpsStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->access$102(Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;Z)Z

    .line 86
    iget-object v2, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$GpsStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    invoke-static {v2, v4}, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->access$202(Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;Z)Z

    .line 87
    iget-object v2, p0, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction$GpsStateBroadcastReceiver;->this$0:Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;

    invoke-virtual {v2}, Lcom/huawei/opcollect/collector/observercollection/GpsStateAction;->perform()Z

    goto :goto_0
.end method
