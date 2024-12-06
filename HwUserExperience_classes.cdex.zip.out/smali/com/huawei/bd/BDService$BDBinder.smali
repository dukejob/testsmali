.class public final Lcom/huawei/bd/BDService$BDBinder;
.super Lcom/huawei/bd/IBDService$Stub;
.source "BDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/bd/BDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BDBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/bd/BDService;


# direct methods
.method public constructor <init>(Lcom/huawei/bd/BDService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/bd/BDService;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/huawei/bd/BDService$BDBinder;->this$0:Lcom/huawei/bd/BDService;

    invoke-direct {p0}, Lcom/huawei/bd/IBDService$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/huawei/bd/BDService$BDBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/BDService$BDBinder;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 420
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/bd/BDService$BDBinder;->saveAppActionEvent(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private saveAppActionEvent(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "eventId"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "priority"    # I

    .prologue
    const v10, -0x10001

    .line 469
    invoke-static {}, Lcom/huawei/bd/BDService;->isUserExperienceSwitchOff()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    const-string v1, "BD.BDService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ue swith is off, not send app event: eventid : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    move v3, p1

    .line 474
    .local v3, "tempEventId":I
    move-object v4, p2

    .line 475
    .local v4, "tempMsg":Ljava/lang/String;
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->isNormalCountry()Z

    move-result v1

    if-nez v1, :cond_4

    .line 476
    invoke-static {p2}, Lcom/huawei/bd/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 477
    and-int v8, p1, v10

    .line 478
    .local v8, "id":I
    const-string v1, "BD.BDService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", ] content is empty, not allow to diffprivacy."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 482
    .end local v8    # "id":I
    :cond_2
    const-string v1, "hiview_countsketch"

    invoke-static {v1}, Lcom/huawei/bd/utils/BigDataUtils;->getDiffPrivacyParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 483
    .local v9, "param":Ljava/lang/String;
    const-string v1, "No Parameter Matched"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 484
    const-string v1, "BD.BDService"

    const-string v5, "differential privacy parameter hiview_countsketch is not found."

    invoke-static {v1, v5}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_3
    const/high16 v3, 0x40000

    .line 489
    :try_start_0
    invoke-static {}, Lcom/huawei/privacyability/DiffPrivacyManager;->getInstance()Lcom/huawei/privacyability/DiffPrivacyManager;

    move-result-object v6

    .line 490
    .local v6, "diffPrivacyManager":Lcom/huawei/privacyability/DiffPrivacyManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v9}, Lcom/huawei/privacyability/DiffPrivacyManager;->diffPrivacyCountsketch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 498
    .end local v6    # "diffPrivacyManager":Lcom/huawei/privacyability/DiffPrivacyManager;
    .end local v9    # "param":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/huawei/bd/BDService$BDBinder;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v1}, Lcom/huawei/bd/BDService;->access$200(Lcom/huawei/bd/BDService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/huawei/bd/utils/BigDataUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "verionName":Ljava/lang/String;
    new-instance v0, Lcom/huawei/bd/events/AppActionEvent;

    move-object v1, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/huawei/bd/events/AppActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 501
    .local v0, "appActionEvent":Lcom/huawei/bd/events/AppActionEvent;
    iget-object v1, p0, Lcom/huawei/bd/BDService$BDBinder;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v1}, Lcom/huawei/bd/BDService;->access$800(Lcom/huawei/bd/BDService;)Lcom/huawei/bd/priority/PriorityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huawei/bd/priority/PriorityManager;->isPrivilegeEvent(Lcom/huawei/bd/events/AppActionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 502
    iget-object v1, p0, Lcom/huawei/bd/BDService$BDBinder;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v1}, Lcom/huawei/bd/BDService;->access$800(Lcom/huawei/bd/BDService;)Lcom/huawei/bd/priority/PriorityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huawei/bd/priority/PriorityManager;->isAdjustPriority(Lcom/huawei/bd/events/PriorityAdjustableInterface;)Z

    .line 504
    iget-object v1, p0, Lcom/huawei/bd/BDService$BDBinder;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v1}, Lcom/huawei/bd/BDService;->access$300(Lcom/huawei/bd/BDService;)Lcom/huawei/bd/FlowController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huawei/bd/FlowController;->isCanCollect(Lcom/huawei/bd/events/AppActionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    :cond_5
    sget-object v1, Lcom/huawei/bd/utils/Common;->PACKAGE_ALIAS:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 510
    sget-object v1, Lcom/huawei/bd/utils/Common;->PACKAGE_ALIAS:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/bd/events/AppActionEvent;->setPkgName(Ljava/lang/String;)V

    .line 513
    :cond_6
    invoke-static {}, Lcom/huawei/bd/utils/BigDataSwitchUtil;->isBdServiceDebug()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 514
    and-int v8, p1, v10

    .line 515
    .restart local v8    # "id":I
    const-string v1, "BD.BDService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[package name:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", internal id:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", event id: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", message:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ",diff event id:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ",diff message:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "]"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    .end local v8    # "id":I
    :cond_7
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v5}, Lcom/huawei/bd/collector/BigDataCollector;->saveEvent(Lcom/huawei/bd/events/BaseEvent;I)V

    .line 522
    iget-object v1, p0, Lcom/huawei/bd/BDService$BDBinder;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v1}, Lcom/huawei/bd/BDService;->access$600(Lcom/huawei/bd/BDService;)Lcom/huawei/filter/FilterInterface;

    move-result-object v1

    invoke-interface {v1, p1, p3, p2}, Lcom/huawei/filter/FilterInterface;->saveLastEventInfo(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    .end local v0    # "appActionEvent":Lcom/huawei/bd/events/AppActionEvent;
    .end local v2    # "verionName":Ljava/lang/String;
    .restart local v9    # "param":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 492
    .local v7, "e":Lcom/huawei/android/util/NoExtAPIException;
    const-string v1, "BD.BDService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NoExtAPIException:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Lcom/huawei/android/util/NoExtAPIException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 588
    invoke-super {p0, p1, p2, p3}, Lcom/huawei/bd/IBDService$Stub;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 589
    if-eqz p3, :cond_0

    array-length v3, p3

    if-eq v3, v5, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    const-string v3, "-d"

    aget-object v4, p3, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 593
    invoke-static {}, Lcom/huawei/bd/BDService;->access$1000()Ljava/lang/Object;

    move-result-object v2

    .line 594
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 596
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "dump"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/io/PrintWriter;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 597
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 598
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v3, "BD.BDService"

    const-string v4, "NoSuchMethodException : dump PrintWriter.class"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 598
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public sendAccumulativeData(Ljava/lang/String;II)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "eventId"    # I
    .param p3, "count"    # I

    .prologue
    .line 533
    invoke-static {}, Lcom/huawei/bd/BDService;->isUserExperienceSwitchOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    const-string v0, "BD.BDService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ue swith is off, not send Accumulative data: eventid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :goto_0
    return-void

    .line 537
    :cond_0
    if-nez p1, :cond_1

    .line 538
    const-string v0, "BD.BDService"

    const-string v1, "pkgName is null"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/huawei/bd/BDService$BDBinder;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v0}, Lcom/huawei/bd/BDService;->access$100(Lcom/huawei/bd/BDService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/huawei/bd/BDService$BDBinder$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/huawei/bd/BDService$BDBinder$2;-><init>(Lcom/huawei/bd/BDService$BDBinder;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 583
    const-string v0, "BD.BDService"

    const-string v1, "send accumulative data success"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendAppActionData(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "eventId"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "priority"    # I

    .prologue
    .line 431
    invoke-static {}, Lcom/huawei/bd/BDService;->isUserExperienceSwitchOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const-string v0, "BD.BDService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ue swith is off, not send app data: eventid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :goto_0
    return-void

    .line 435
    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x1e

    if-le p4, v0, :cond_2

    .line 436
    :cond_1
    const-string v0, "BD.BDService"

    const-string v1, "pkgName is null or priority is more than max priority"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/huawei/bd/BDService$BDBinder;->this$0:Lcom/huawei/bd/BDService;

    invoke-static {v0}, Lcom/huawei/bd/BDService;->access$100(Lcom/huawei/bd/BDService;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/huawei/bd/BDService$BDBinder$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/huawei/bd/BDService$BDBinder$1;-><init>(Lcom/huawei/bd/BDService$BDBinder;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 465
    const-string v0, "BD.BDService"

    const-string v1, "send app action data success"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
