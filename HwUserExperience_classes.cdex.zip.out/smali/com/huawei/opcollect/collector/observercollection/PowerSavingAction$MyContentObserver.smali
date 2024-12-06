.class final Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "PowerSavingAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction$MyContentObserver;->this$0:Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;

    .line 47
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 48
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 52
    const-string v0, "PowerSavingAction"

    const-string v1, "onChange"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction$MyContentObserver;->this$0:Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;

    invoke-virtual {v0}, Lcom/huawei/opcollect/collector/observercollection/PowerSavingAction;->perform()Z

    .line 54
    return-void
.end method
