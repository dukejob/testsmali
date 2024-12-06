.class public abstract Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARProvider;
.super Ljava/lang/Object;
.source "ARStatusAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ARProvider"
.end annotation


# instance fields
.field private final service:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;)V
    .locals 1
    .param p1, "service"    # Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARProvider;->service:Ljava/lang/ref/WeakReference;

    .line 191
    return-void
.end method


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract enableAREvent(I)Z
.end method

.method protected storeARStatus(IIJ)V
    .locals 3
    .param p1, "motion"    # I
    .param p2, "event"    # I
    .param p3, "timestampNs"    # J

    .prologue
    .line 200
    iget-object v2, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARProvider;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;

    .line 201
    .local v0, "action":Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;
    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    new-instance v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARActionParam;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARActionParam;-><init>(IIJ)V

    .line 205
    .local v1, "actionParam":Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ARActionParam;
    invoke-virtual {v0, v1}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->performWithArgs(Lcom/huawei/opcollect/strategy/AbsActionParam;)Z

    goto :goto_0
.end method
