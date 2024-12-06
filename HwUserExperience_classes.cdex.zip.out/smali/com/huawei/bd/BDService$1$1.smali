.class Lcom/huawei/bd/BDService$1$1;
.super Ljava/lang/Object;
.source "BDService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/bd/BDService$1;
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
    .line 112
    iput-object p1, p0, Lcom/huawei/bd/BDService$1$1;->this$1:Lcom/huawei/bd/BDService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/bd/collector/BigDataCollector;->registerLightSensorListener()V

    .line 116
    return-void
.end method
