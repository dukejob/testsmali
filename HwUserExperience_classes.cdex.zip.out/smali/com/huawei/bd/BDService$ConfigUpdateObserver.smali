.class final Lcom/huawei/bd/BDService$ConfigUpdateObserver;
.super Landroid/database/ContentObserver;
.source "BDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/bd/BDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConfigUpdateObserver"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 615
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 616
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "isSelfChange"    # Z

    .prologue
    .line 620
    const-string v0, "BD.BDService"

    const-string v1, "config file updated, start to reload..."

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-static {}, Lcom/huawei/filter/PolicyGenerator;->getInstance()Lcom/huawei/filter/PolicyGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/filter/PolicyGenerator;->loadCustRegisterMap()V

    .line 622
    return-void
.end method
