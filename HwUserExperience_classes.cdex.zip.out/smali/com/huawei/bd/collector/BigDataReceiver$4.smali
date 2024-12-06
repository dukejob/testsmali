.class Lcom/huawei/bd/collector/BigDataReceiver$4;
.super Ljava/lang/Object;
.source "BigDataReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/bd/collector/BigDataReceiver;->onReceivePowerConnectedEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/bd/collector/BigDataReceiver;


# direct methods
.method constructor <init>(Lcom/huawei/bd/collector/BigDataReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/bd/collector/BigDataReceiver;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/huawei/bd/collector/BigDataReceiver$4;->this$0:Lcom/huawei/bd/collector/BigDataReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v10, -0x1

    .line 163
    iget-object v6, p0, Lcom/huawei/bd/collector/BigDataReceiver$4;->this$0:Lcom/huawei/bd/collector/BigDataReceiver;

    invoke-static {v6}, Lcom/huawei/bd/collector/BigDataReceiver;->access$000(Lcom/huawei/bd/collector/BigDataReceiver;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 164
    .local v0, "batteryIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 168
    :cond_0
    const-string v6, "plugged"

    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 169
    .local v2, "chargePlug":I
    const-string v3, ""

    .line 170
    .local v3, "chargeType":Ljava/lang/String;
    if-ne v2, v11, :cond_2

    .line 171
    const-string v3, "USB"

    .line 178
    :cond_1
    :goto_1
    const-string v6, "level"

    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 179
    .local v4, "level":I
    const-string v6, "scale"

    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 180
    .local v5, "scale":I
    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 182
    .local v1, "batteryPct":I
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v6

    const v7, 0x20014

    const-string v8, "{level:%d, chargeType:%s}"

    new-array v9, v11, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    aput-object v3, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x19

    .line 182
    invoke-virtual {v6, v7, v8, v9}, Lcom/huawei/bd/collector/BigDataCollector;->saveLocalInfo(ILjava/lang/String;I)V

    goto :goto_0

    .line 172
    .end local v1    # "batteryPct":I
    .end local v4    # "level":I
    .end local v5    # "scale":I
    :cond_2
    if-ne v2, v12, :cond_3

    .line 173
    const-string v3, "AC"

    goto :goto_1

    .line 174
    :cond_3
    const/4 v6, 0x4

    if-ne v2, v6, :cond_1

    .line 175
    const-string v3, "Wireless"

    goto :goto_1
.end method
