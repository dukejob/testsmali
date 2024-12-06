.class public Lcom/huawei/bd/priority/PriorityManager$Checker;
.super Ljava/lang/Object;
.source "PriorityManager.java"

# interfaces
.implements Lcom/huawei/bd/events/PriorityAdjustableInterface$InterFaceChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/bd/priority/PriorityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAuthorized(Lcom/huawei/bd/events/PriorityAdjustableInterface;)Z
    .locals 6
    .param p1, "adjustable"    # Lcom/huawei/bd/events/PriorityAdjustableInterface;

    .prologue
    const/4 v1, 0x0

    .line 66
    instance-of v2, p1, Lcom/huawei/bd/events/AppActionEvent;

    if-eqz v2, :cond_0

    .line 67
    invoke-static {}, Lcom/huawei/bd/priority/PriorityManager;->access$000()[Lcom/huawei/bd/events/AppActionEvent;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 68
    .local v0, "appEvent":Lcom/huawei/bd/events/AppActionEvent;
    invoke-virtual {v0, p1}, Lcom/huawei/bd/events/AppActionEvent;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    const/4 v1, 0x1

    .line 73
    .end local v0    # "appEvent":Lcom/huawei/bd/events/AppActionEvent;
    :cond_0
    return v1

    .line 67
    .restart local v0    # "appEvent":Lcom/huawei/bd/events/AppActionEvent;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
