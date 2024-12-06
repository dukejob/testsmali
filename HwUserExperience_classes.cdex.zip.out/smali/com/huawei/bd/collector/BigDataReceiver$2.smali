.class Lcom/huawei/bd/collector/BigDataReceiver$2;
.super Ljava/lang/Object;
.source "BigDataReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/bd/collector/BigDataReceiver;->onReceiveLockBootCompletedEvent()V
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
    .line 116
    iput-object p1, p0, Lcom/huawei/bd/collector/BigDataReceiver$2;->this$0:Lcom/huawei/bd/collector/BigDataReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 119
    const-string v0, "BD.BigDataReceiver"

    const-string v1, "ACTION_LOCKED_BOOT_COMPLETED"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/bd/collector/BigDataCollector;->recordRomInfo()V

    .line 121
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v0

    const v1, 0x20012

    const-string v2, ""

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/bd/collector/BigDataCollector;->saveLocalInfo(ILjava/lang/String;I)V

    .line 122
    return-void
.end method
