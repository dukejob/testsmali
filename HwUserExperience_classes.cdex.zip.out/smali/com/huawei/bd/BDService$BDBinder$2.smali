.class Lcom/huawei/bd/BDService$BDBinder$2;
.super Ljava/lang/Object;
.source "BDService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/bd/BDService$BDBinder;->sendAccumulativeData(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huawei/bd/BDService$BDBinder;

.field final synthetic val$count:I

.field final synthetic val$eventId:I

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huawei/bd/BDService$BDBinder;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/huawei/bd/BDService$BDBinder;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/huawei/bd/BDService$BDBinder$2;->this$1:Lcom/huawei/bd/BDService$BDBinder;

    iput-object p2, p0, Lcom/huawei/bd/BDService$BDBinder$2;->val$pkgName:Ljava/lang/String;

    iput p3, p0, Lcom/huawei/bd/BDService$BDBinder$2;->val$eventId:I

    iput p4, p0, Lcom/huawei/bd/BDService$BDBinder$2;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v5, -0x10001

    .line 545
    iget-object v1, p0, Lcom/huawei/bd/BDService$BDBinder$2;->this$1:Lcom/huawei/bd/BDService$BDBinder;

    iget-object v1, v1, Lcom/huawei/bd/BDService$BDBinder;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v1}, Lcom/huawei/bd/BDService;->access$400(Lcom/huawei/bd/BDService;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 546
    iget-object v1, p0, Lcom/huawei/bd/BDService$BDBinder$2;->this$1:Lcom/huawei/bd/BDService$BDBinder;

    iget-object v1, v1, Lcom/huawei/bd/BDService$BDBinder;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v1}, Lcom/huawei/bd/BDService;->access$900(Lcom/huawei/bd/BDService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/huawei/bd/BDService$BDBinder$2;->this$1:Lcom/huawei/bd/BDService$BDBinder;

    iget-object v1, v1, Lcom/huawei/bd/BDService$BDBinder;->this$0:Lcom/huawei/bd/BDService;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1, v3}, Lcom/huawei/bd/BDService;->access$902(Lcom/huawei/bd/BDService;Ljava/util/List;)Ljava/util/List;

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/huawei/bd/BDService$BDBinder$2;->this$1:Lcom/huawei/bd/BDService$BDBinder;

    iget-object v1, v1, Lcom/huawei/bd/BDService$BDBinder;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v1}, Lcom/huawei/bd/BDService;->access$900(Lcom/huawei/bd/BDService;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/huawei/bd/events/ReportParamBean;

    iget-object v4, p0, Lcom/huawei/bd/BDService$BDBinder$2;->val$pkgName:Ljava/lang/String;

    iget v5, p0, Lcom/huawei/bd/BDService$BDBinder$2;->val$eventId:I

    iget v7, p0, Lcom/huawei/bd/BDService$BDBinder$2;->val$count:I

    invoke-direct {v3, v4, v5, v7}, Lcom/huawei/bd/events/ReportParamBean;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    const-string v1, "BD.BDService"

    const-string v3, "accumulative action report req cached..."

    invoke-static {v1, v3}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_1
    :goto_0
    return-void

    .line 554
    :cond_2
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->isNormalCountry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    iget-object v1, p0, Lcom/huawei/bd/BDService$BDBinder$2;->this$1:Lcom/huawei/bd/BDService$BDBinder;

    iget-object v1, v1, Lcom/huawei/bd/BDService$BDBinder;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v1}, Lcom/huawei/bd/BDService;->access$600(Lcom/huawei/bd/BDService;)Lcom/huawei/filter/FilterInterface;

    move-result-object v1

    iget-object v3, p0, Lcom/huawei/bd/BDService$BDBinder$2;->val$pkgName:Ljava/lang/String;

    iget v4, p0, Lcom/huawei/bd/BDService$BDBinder$2;->val$eventId:I

    invoke-interface {v1, v3, v4, v7}, Lcom/huawei/filter/FilterInterface;->isFiltered(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 559
    invoke-static {}, Lcom/huawei/bd/utils/BigDataSwitchUtil;->isBdServiceDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    iget v1, p0, Lcom/huawei/bd/BDService$BDBinder$2;->val$eventId:I

    and-int v6, v1, v5

    .line 561
    .local v6, "id":I
    const-string v1, "BD.BDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/bd/BDService$BDBinder$2;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 566
    .end local v6    # "id":I
    :cond_3
    invoke-static {}, Lcom/huawei/bd/utils/BigDataSwitchUtil;->isBdServiceDebug()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 567
    iget v1, p0, Lcom/huawei/bd/BDService$BDBinder$2;->val$eventId:I

    and-int v6, v1, v5

    .line 568
    .restart local v6    # "id":I
    const-string v1, "BD.BDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/bd/BDService$BDBinder$2;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .end local v6    # "id":I
    :cond_4
    iget-object v1, p0, Lcom/huawei/bd/BDService$BDBinder$2;->this$1:Lcom/huawei/bd/BDService$BDBinder;

    iget-object v1, v1, Lcom/huawei/bd/BDService$BDBinder;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v1}, Lcom/huawei/bd/BDService;->access$200(Lcom/huawei/bd/BDService;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/huawei/bd/BDService$BDBinder$2;->val$pkgName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/huawei/bd/utils/BigDataUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, "verName":Ljava/lang/String;
    new-instance v0, Lcom/huawei/bd/events/AppActionEvent;

    iget-object v1, p0, Lcom/huawei/bd/BDService$BDBinder$2;->val$pkgName:Ljava/lang/String;

    iget v3, p0, Lcom/huawei/bd/BDService$BDBinder$2;->val$eventId:I

    const-string v4, ""

    const/4 v5, 0x5

    invoke-direct/range {v0 .. v5}, Lcom/huawei/bd/events/AppActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 573
    .local v0, "aaEvent":Lcom/huawei/bd/events/AppActionEvent;
    sget-object v1, Lcom/huawei/bd/utils/Common;->PACKAGE_ALIAS:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/huawei/bd/BDService$BDBinder$2;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 574
    sget-object v1, Lcom/huawei/bd/utils/Common;->PACKAGE_ALIAS:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/huawei/bd/BDService$BDBinder$2;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/bd/events/AppActionEvent;->setPkgName(Ljava/lang/String;)V

    .line 577
    :cond_5
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/huawei/bd/collector/BigDataCollector;->saveEvent(Lcom/huawei/bd/events/BaseEvent;I)V

    .line 579
    iget-object v1, p0, Lcom/huawei/bd/BDService$BDBinder$2;->this$1:Lcom/huawei/bd/BDService$BDBinder;

    iget-object v1, v1, Lcom/huawei/bd/BDService$BDBinder;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v1}, Lcom/huawei/bd/BDService;->access$600(Lcom/huawei/bd/BDService;)Lcom/huawei/filter/FilterInterface;

    move-result-object v1

    iget v3, p0, Lcom/huawei/bd/BDService$BDBinder$2;->val$eventId:I

    iget-object v4, p0, Lcom/huawei/bd/BDService$BDBinder$2;->val$pkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v7}, Lcom/huawei/filter/FilterInterface;->saveLastEventInfo(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
