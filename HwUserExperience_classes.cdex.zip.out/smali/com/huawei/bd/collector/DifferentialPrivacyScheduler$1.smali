.class Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$1;
.super Landroid/os/Handler;
.source "DifferentialPrivacyScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;


# direct methods
.method constructor <init>(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$1;->this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 89
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$1;->this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    invoke-static {v0}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->access$000(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;)V

    .line 83
    const-string v0, "BD.DifferentialPrivacyScheduler"

    const-string v1, "Differential privacy alarm start."

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
