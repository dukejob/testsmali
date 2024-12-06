.class public Lcom/huawei/bd/priority/PriorityManager;
.super Ljava/lang/Object;
.source "PriorityManager.java"

# interfaces
.implements Lcom/huawei/bd/priority/AdjustmentInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/bd/priority/PriorityManager$Checker;
    }
.end annotation


# static fields
.field private static final AUTHORIZED_PRIVILEGE_EVENT:[Lcom/huawei/bd/events/AppActionEvent;


# instance fields
.field private authChecker:Lcom/huawei/bd/priority/PriorityManager$Checker;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v5, 0xf

    .line 19
    const/4 v0, 0x3

    new-array v6, v0, [Lcom/huawei/bd/events/AppActionEvent;

    const/4 v7, 0x0

    new-instance v0, Lcom/huawei/bd/events/AppActionEvent;

    const-string v1, "android"

    const-string v2, ""

    const v3, 0x10079

    const-string v4, ""

    invoke-direct/range {v0 .. v5}, Lcom/huawei/bd/events/AppActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    aput-object v0, v6, v7

    const/4 v7, 0x1

    new-instance v0, Lcom/huawei/bd/events/AppActionEvent;

    const-string v1, "android"

    const-string v2, ""

    const v3, 0x1007a

    const-string v4, ""

    invoke-direct/range {v0 .. v5}, Lcom/huawei/bd/events/AppActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    aput-object v0, v6, v7

    const/4 v7, 0x2

    new-instance v0, Lcom/huawei/bd/events/AppActionEvent;

    const-string v1, "android"

    const-string v2, ""

    const v3, 0x1007b

    const-string v4, ""

    invoke-direct/range {v0 .. v5}, Lcom/huawei/bd/events/AppActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    aput-object v0, v6, v7

    sput-object v6, Lcom/huawei/bd/priority/PriorityManager;->AUTHORIZED_PRIVILEGE_EVENT:[Lcom/huawei/bd/events/AppActionEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/huawei/bd/priority/PriorityManager$Checker;

    invoke-direct {v0}, Lcom/huawei/bd/priority/PriorityManager$Checker;-><init>()V

    iput-object v0, p0, Lcom/huawei/bd/priority/PriorityManager;->authChecker:Lcom/huawei/bd/priority/PriorityManager$Checker;

    return-void
.end method

.method static synthetic access$000()[Lcom/huawei/bd/events/AppActionEvent;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/huawei/bd/priority/PriorityManager;->AUTHORIZED_PRIVILEGE_EVENT:[Lcom/huawei/bd/events/AppActionEvent;

    return-object v0
.end method


# virtual methods
.method public getDefaultChecker()Lcom/huawei/bd/events/PriorityAdjustableInterface$InterFaceChecker;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/huawei/bd/priority/PriorityManager;->authChecker:Lcom/huawei/bd/priority/PriorityManager$Checker;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/huawei/bd/priority/PriorityManager$Checker;

    invoke-direct {v0}, Lcom/huawei/bd/priority/PriorityManager$Checker;-><init>()V

    iput-object v0, p0, Lcom/huawei/bd/priority/PriorityManager;->authChecker:Lcom/huawei/bd/priority/PriorityManager$Checker;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/huawei/bd/priority/PriorityManager;->authChecker:Lcom/huawei/bd/priority/PriorityManager$Checker;

    return-object v0
.end method

.method public isAdjustPriority(Lcom/huawei/bd/events/PriorityAdjustableInterface;)Z
    .locals 2
    .param p1, "adjustable"    # Lcom/huawei/bd/events/PriorityAdjustableInterface;

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/huawei/bd/priority/PriorityManager;->authChecker:Lcom/huawei/bd/priority/PriorityManager$Checker;

    invoke-interface {p1, v0, v1}, Lcom/huawei/bd/events/PriorityAdjustableInterface;->isChangeLevel(ILcom/huawei/bd/events/PriorityAdjustableInterface$InterFaceChecker;)Z

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrivilegeEvent(Lcom/huawei/bd/events/AppActionEvent;)Z
    .locals 2
    .param p1, "event"    # Lcom/huawei/bd/events/AppActionEvent;

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/huawei/bd/events/AppActionEvent;->getPriority()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
