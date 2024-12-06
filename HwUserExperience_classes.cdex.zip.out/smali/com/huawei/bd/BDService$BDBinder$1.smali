.class Lcom/huawei/bd/BDService$BDBinder$1;
.super Ljava/lang/Object;
.source "BDService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/bd/BDService$BDBinder;->sendAppActionData(Ljava/lang/String;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huawei/bd/BDService$BDBinder;

.field final synthetic val$eventId:I

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$priority:I


# direct methods
.method constructor <init>(Lcom/huawei/bd/BDService$BDBinder;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huawei/bd/BDService$BDBinder;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/huawei/bd/BDService$BDBinder$1;->this$1:Lcom/huawei/bd/BDService$BDBinder;

    iput-object p2, p0, Lcom/huawei/bd/BDService$BDBinder$1;->val$pkgName:Ljava/lang/String;

    iput p3, p0, Lcom/huawei/bd/BDService$BDBinder$1;->val$eventId:I

    iput p4, p0, Lcom/huawei/bd/BDService$BDBinder$1;->val$priority:I

    iput-object p5, p0, Lcom/huawei/bd/BDService$BDBinder$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 444
    iget-object v1, p0, Lcom/huawei/bd/BDService$BDBinder$1;->this$1:Lcom/huawei/bd/BDService$BDBinder;

    iget-object v1, v1, Lcom/huawei/bd/BDService$BDBinder;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v1}, Lcom/huawei/bd/BDService;->access$400(Lcom/huawei/bd/BDService;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 445
    iget-object v1, p0, Lcom/huawei/bd/BDService$BDBinder$1;->this$1:Lcom/huawei/bd/BDService$BDBinder;

    iget-object v1, v1, Lcom/huawei/bd/BDService$BDBinder;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v1}, Lcom/huawei/bd/BDService;->access$500(Lcom/huawei/bd/BDService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/huawei/bd/BDService$BDBinder$1;->this$1:Lcom/huawei/bd/BDService$BDBinder;

    iget-object v1, v1, Lcom/huawei/bd/BDService$BDBinder;->this$0:Lcom/huawei/bd/BDService;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1, v2}, Lcom/huawei/bd/BDService;->access$502(Lcom/huawei/bd/BDService;Ljava/util/List;)Ljava/util/List;

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/huawei/bd/BDService$BDBinder$1;->this$1:Lcom/huawei/bd/BDService$BDBinder;

    iget-object v1, v1, Lcom/huawei/bd/BDService$BDBinder;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v1}, Lcom/huawei/bd/BDService;->access$500(Lcom/huawei/bd/BDService;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/huawei/bd/events/ReportParamBean;

    iget-object v3, p0, Lcom/huawei/bd/BDService$BDBinder$1;->val$pkgName:Ljava/lang/String;

    iget v4, p0, Lcom/huawei/bd/BDService$BDBinder$1;->val$eventId:I

    iget v5, p0, Lcom/huawei/bd/BDService$BDBinder$1;->val$priority:I

    iget-object v6, p0, Lcom/huawei/bd/BDService$BDBinder$1;->val$message:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/huawei/bd/events/ReportParamBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    const-string v1, "BD.BDService"

    const-string v2, "app action report req cached..."

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_1
    :goto_0
    return-void

    .line 453
    :cond_2
    iget-object v1, p0, Lcom/huawei/bd/BDService$BDBinder$1;->this$1:Lcom/huawei/bd/BDService$BDBinder;

    iget-object v1, v1, Lcom/huawei/bd/BDService$BDBinder;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v1}, Lcom/huawei/bd/BDService;->access$600(Lcom/huawei/bd/BDService;)Lcom/huawei/filter/FilterInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/bd/BDService$BDBinder$1;->val$pkgName:Ljava/lang/String;

    iget v3, p0, Lcom/huawei/bd/BDService$BDBinder$1;->val$eventId:I

    iget-object v4, p0, Lcom/huawei/bd/BDService$BDBinder$1;->val$message:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/huawei/filter/FilterInterface;->isFiltered(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 454
    invoke-static {}, Lcom/huawei/bd/utils/BigDataSwitchUtil;->isBdServiceDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 455
    iget v1, p0, Lcom/huawei/bd/BDService$BDBinder$1;->val$eventId:I

    const v2, -0x10001

    and-int v0, v1, v2

    .line 456
    .local v0, "id":I
    const-string v1, "BD.BDService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/bd/BDService$BDBinder$1;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/bd/BDService$BDBinder$1;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] -- is filtered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    .end local v0    # "id":I
    :cond_3
    iget-object v1, p0, Lcom/huawei/bd/BDService$BDBinder$1;->this$1:Lcom/huawei/bd/BDService$BDBinder;

    iget v2, p0, Lcom/huawei/bd/BDService$BDBinder$1;->val$eventId:I

    iget-object v3, p0, Lcom/huawei/bd/BDService$BDBinder$1;->val$message:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/bd/BDService$BDBinder$1;->val$pkgName:Ljava/lang/String;

    iget v5, p0, Lcom/huawei/bd/BDService$BDBinder$1;->val$priority:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/huawei/bd/BDService$BDBinder;->access$700(Lcom/huawei/bd/BDService$BDBinder;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
