.class final Lcom/huawei/android/powerkit/adapter/PowerKitApi$SinkTransport;
.super Lcom/huawei/android/powerkit/adapter/IStateSink$Stub;
.source "PowerKitApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/powerkit/adapter/PowerKitApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SinkTransport"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/powerkit/adapter/PowerKitApi;


# direct methods
.method private constructor <init>(Lcom/huawei/android/powerkit/adapter/PowerKitApi;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi$SinkTransport;->this$0:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    invoke-direct {p0}, Lcom/huawei/android/powerkit/adapter/IStateSink$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/android/powerkit/adapter/PowerKitApi;Lcom/huawei/android/powerkit/adapter/PowerKitApi$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/android/powerkit/adapter/PowerKitApi;
    .param p2, "x1"    # Lcom/huawei/android/powerkit/adapter/PowerKitApi$1;

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/huawei/android/powerkit/adapter/PowerKitApi$SinkTransport;-><init>(Lcom/huawei/android/powerkit/adapter/PowerKitApi;)V

    return-void
.end method


# virtual methods
.method public onPowerOverUsing(Ljava/lang/String;IJJLjava/lang/String;)V
    .locals 13
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "resourceType"    # I
    .param p3, "stats_duration"    # J
    .param p5, "hold_time"    # J
    .param p7, "extend"    # Ljava/lang/String;

    .prologue
    .line 420
    const-string v4, "PowerKitApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPowerOverUsing moudle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " resource:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " duration:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " extend:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v4, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi$SinkTransport;->this$0:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    invoke-static {v4}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->access$400(Lcom/huawei/android/powerkit/adapter/PowerKitApi;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 426
    :try_start_0
    iget-object v4, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi$SinkTransport;->this$0:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    invoke-static {v4}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->access$500(Lcom/huawei/android/powerkit/adapter/PowerKitApi;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 427
    monitor-exit v11

    .line 441
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v4, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi$SinkTransport;->this$0:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    invoke-static {v4}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->access$500(Lcom/huawei/android/powerkit/adapter/PowerKitApi;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/powerkit/Sink;

    .line 431
    .local v3, "sink":Lcom/huawei/android/powerkit/Sink;
    iget-object v4, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi$SinkTransport;->this$0:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    invoke-static {v4}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->access$600(Lcom/huawei/android/powerkit/adapter/PowerKitApi;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 433
    .local v2, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_1

    const/16 v4, 0x32

    .line 435
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 434
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, p1

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    .line 436
    invoke-interface/range {v3 .. v10}, Lcom/huawei/android/powerkit/Sink;->onPowerOverUsing(Ljava/lang/String;IJJLjava/lang/String;)V

    goto :goto_1

    .line 440
    .end local v2    # "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "sink":Lcom/huawei/android/powerkit/Sink;
    :catchall_0
    move-exception v4

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
