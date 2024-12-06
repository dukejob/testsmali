.class Lcom/huawei/bd/collector/BigDataReceiver$5;
.super Ljava/lang/Object;
.source "BigDataReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/bd/collector/BigDataReceiver;->onReceivePowerDisconnectedEvent()V
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
    .line 189
    iput-object p1, p0, Lcom/huawei/bd/collector/BigDataReceiver$5;->this$0:Lcom/huawei/bd/collector/BigDataReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v8, -0x1

    .line 192
    iget-object v4, p0, Lcom/huawei/bd/collector/BigDataReceiver$5;->this$0:Lcom/huawei/bd/collector/BigDataReceiver;

    invoke-static {v4}, Lcom/huawei/bd/collector/BigDataReceiver;->access$000(Lcom/huawei/bd/collector/BigDataReceiver;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 193
    .local v0, "batteryIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 197
    :cond_0
    const-string v4, "level"

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 198
    .local v2, "level":I
    const-string v4, "scale"

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 200
    .local v3, "scale":I
    int-to-float v4, v2

    int-to-float v5, v3

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 201
    .local v1, "batteryPct":I
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v4

    const v5, 0x20015

    const-string v6, "{level:%d}"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 202
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xf

    .line 201
    invoke-virtual {v4, v5, v6, v7}, Lcom/huawei/bd/collector/BigDataCollector;->saveLocalInfo(ILjava/lang/String;I)V

    goto :goto_0
.end method
