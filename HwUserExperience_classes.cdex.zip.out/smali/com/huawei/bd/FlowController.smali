.class public Lcom/huawei/bd/FlowController;
.super Ljava/lang/Object;
.source "FlowController.java"


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x10

.field private static final MAX_LIMIT_NUM:I = 0xa


# instance fields
.field private actionEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/huawei/bd/events/AppActionEvent;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private priorityManager:Lcom/huawei/bd/priority/PriorityManager;


# direct methods
.method public constructor <init>(Lcom/huawei/bd/priority/PriorityManager;)V
    .locals 2
    .param p1, "priorityManager"    # Lcom/huawei/bd/priority/PriorityManager;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/bd/FlowController;->actionEvents:Ljava/util/HashMap;

    .line 33
    iput-object p1, p0, Lcom/huawei/bd/FlowController;->priorityManager:Lcom/huawei/bd/priority/PriorityManager;

    .line 34
    return-void
.end method


# virtual methods
.method public clearAllHistory()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/huawei/bd/FlowController;->actionEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 61
    return-void
.end method

.method public isCanCollect(Lcom/huawei/bd/events/AppActionEvent;)Z
    .locals 4
    .param p1, "event"    # Lcom/huawei/bd/events/AppActionEvent;

    .prologue
    const/4 v1, 0x1

    .line 43
    iget-object v2, p0, Lcom/huawei/bd/FlowController;->priorityManager:Lcom/huawei/bd/priority/PriorityManager;

    invoke-virtual {v2}, Lcom/huawei/bd/priority/PriorityManager;->getDefaultChecker()Lcom/huawei/bd/events/PriorityAdjustableInterface$InterFaceChecker;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/huawei/bd/events/PriorityAdjustableInterface$InterFaceChecker;->isAuthorized(Lcom/huawei/bd/events/PriorityAdjustableInterface;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/huawei/bd/FlowController;->actionEvents:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 45
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 46
    iget-object v2, p0, Lcom/huawei/bd/FlowController;->actionEvents:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .end local v0    # "count":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return v1

    .line 47
    .restart local v0    # "count":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_2

    .line 48
    const/4 v1, 0x0

    goto :goto_0

    .line 50
    :cond_2
    iget-object v2, p0, Lcom/huawei/bd/FlowController;->actionEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
