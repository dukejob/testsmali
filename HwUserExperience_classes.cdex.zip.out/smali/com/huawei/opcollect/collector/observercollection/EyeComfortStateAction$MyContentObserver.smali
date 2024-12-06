.class final Lcom/huawei/opcollect/collector/observercollection/EyeComfortStateAction$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "EyeComfortStateAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/observercollection/EyeComfortStateAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/opcollect/collector/observercollection/EyeComfortStateAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/observercollection/EyeComfortStateAction;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/huawei/opcollect/collector/observercollection/EyeComfortStateAction$MyContentObserver;->this$0:Lcom/huawei/opcollect/collector/observercollection/EyeComfortStateAction;

    .line 49
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huawei/opcollect/collector/observercollection/EyeComfortStateAction$MyContentObserver;->this$0:Lcom/huawei/opcollect/collector/observercollection/EyeComfortStateAction;

    invoke-virtual {v0}, Lcom/huawei/opcollect/collector/observercollection/EyeComfortStateAction;->perform()Z

    .line 55
    return-void
.end method
