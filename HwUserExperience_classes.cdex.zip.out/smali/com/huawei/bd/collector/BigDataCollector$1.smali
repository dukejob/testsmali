.class Lcom/huawei/bd/collector/BigDataCollector$1;
.super Ljava/lang/Object;
.source "BigDataCollector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/bd/collector/BigDataCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/bd/collector/BigDataCollector;


# direct methods
.method constructor <init>(Lcom/huawei/bd/collector/BigDataCollector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/bd/collector/BigDataCollector;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/huawei/bd/collector/BigDataCollector$1;->this$0:Lcom/huawei/bd/collector/BigDataCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 145
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 116
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v7, v11

    .line 117
    .local v5, "light":F
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/bd/collector/BigDataCollector;->getCollection()Lcom/huawei/bd/collector/InterfaceBigDataCollection;

    move-result-object v2

    .line 119
    .local v2, "collection":Lcom/huawei/bd/collector/InterfaceBigDataCollection;
    iget-object v7, p0, Lcom/huawei/bd/collector/BigDataCollector$1;->this$0:Lcom/huawei/bd/collector/BigDataCollector;

    invoke-static {v7}, Lcom/huawei/bd/collector/BigDataCollector;->access$000(Lcom/huawei/bd/collector/BigDataCollector;)Landroid/content/Context;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getScreenBrightnessMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "brightnessMode":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 124
    :cond_0
    const/4 v6, 0x1

    .line 126
    .local v6, "mode":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 132
    :goto_1
    if-ne v6, v12, :cond_1

    .line 133
    iget-object v7, p0, Lcom/huawei/bd/collector/BigDataCollector$1;->this$0:Lcom/huawei/bd/collector/BigDataCollector;

    invoke-static {v7}, Lcom/huawei/bd/collector/BigDataCollector;->access$000(Lcom/huawei/bd/collector/BigDataCollector;)Landroid/content/Context;

    move-result-object v7

    invoke-interface {v2, v7, v12}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getScreenBrightness(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "brightness":Ljava/lang/String;
    :goto_2
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "{li:%.2f, br:%s, brM:%s}"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 138
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v11

    aput-object v0, v9, v12

    const/4 v10, 0x2

    aput-object v1, v9, v10

    .line 137
    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "content":Ljava/lang/String;
    iget-object v7, p0, Lcom/huawei/bd/collector/BigDataCollector$1;->this$0:Lcom/huawei/bd/collector/BigDataCollector;

    const-string v8, "SensorVal"

    invoke-virtual {v7, v8, v3}, Lcom/huawei/bd/collector/BigDataCollector;->cacheDataAtAccuFile(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    iget-object v7, p0, Lcom/huawei/bd/collector/BigDataCollector$1;->this$0:Lcom/huawei/bd/collector/BigDataCollector;

    invoke-virtual {v7}, Lcom/huawei/bd/collector/BigDataCollector;->unregisterLightSensorListener()V

    goto :goto_0

    .line 127
    .end local v0    # "brightness":Ljava/lang/String;
    .end local v3    # "content":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 128
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v7, "BD.BigDataCollector"

    const-string v8, "NumberFormatException: onSensorChanged"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 135
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v7, p0, Lcom/huawei/bd/collector/BigDataCollector$1;->this$0:Lcom/huawei/bd/collector/BigDataCollector;

    invoke-static {v7}, Lcom/huawei/bd/collector/BigDataCollector;->access$000(Lcom/huawei/bd/collector/BigDataCollector;)Landroid/content/Context;

    move-result-object v7

    invoke-interface {v2, v7, v11}, Lcom/huawei/bd/collector/InterfaceBigDataCollection;->getScreenBrightness(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "brightness":Ljava/lang/String;
    goto :goto_2
.end method
