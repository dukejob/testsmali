.class Lcom/huawei/bd/BDService$1$2;
.super Ljava/lang/Object;
.source "BDService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/bd/BDService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huawei/bd/BDService$1;


# direct methods
.method constructor <init>(Lcom/huawei/bd/BDService$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huawei/bd/BDService$1;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/huawei/bd/BDService$1$2;->this$1:Lcom/huawei/bd/BDService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 142
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/bd/collector/BigDataCollector;->unregisterLightSensorListener()V

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/huawei/bd/BDService$1$2;->this$1:Lcom/huawei/bd/BDService$1;

    iget-object v4, v4, Lcom/huawei/bd/BDService$1;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v4}, Lcom/huawei/bd/BDService;->access$000(Lcom/huawei/bd/BDService;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 144
    .local v0, "duration":J
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 145
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v2

    const-string v3, "UsingDura"

    div-long v4, v0, v6

    .line 146
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 145
    invoke-virtual {v2, v3, v4}, Lcom/huawei/bd/collector/BigDataCollector;->cacheDataAtAccuFile(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    :cond_0
    return-void
.end method
