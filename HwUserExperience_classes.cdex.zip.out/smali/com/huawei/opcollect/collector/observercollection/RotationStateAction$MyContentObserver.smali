.class final Lcom/huawei/opcollect/collector/observercollection/RotationStateAction$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "RotationStateAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction$MyContentObserver;->this$0:Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;

    .line 48
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction$MyContentObserver;->this$0:Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;

    invoke-virtual {v0}, Lcom/huawei/opcollect/collector/observercollection/RotationStateAction;->perform()Z

    .line 54
    return-void
.end method
