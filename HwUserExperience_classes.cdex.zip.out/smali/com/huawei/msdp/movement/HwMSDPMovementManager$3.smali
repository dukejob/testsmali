.class final Lcom/huawei/msdp/movement/HwMSDPMovementManager$3;
.super Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack$Stub;
.source "HwMSDPMovementManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/msdp/movement/HwMSDPMovementManager;->createMSDPMovementSink(Lcom/huawei/msdp/movement/HwMSDPMovementStatusChangeCallback;)Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sink:Lcom/huawei/msdp/movement/HwMSDPMovementStatusChangeCallback;


# direct methods
.method constructor <init>(Lcom/huawei/msdp/movement/HwMSDPMovementStatusChangeCallback;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$3;->val$sink:Lcom/huawei/msdp/movement/HwMSDPMovementStatusChangeCallback;

    invoke-direct {p0}, Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityChanged(ILcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "event"    # Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPMovementManager$3;->val$sink:Lcom/huawei/msdp/movement/HwMSDPMovementStatusChangeCallback;

    invoke-interface {v0, p1, p2}, Lcom/huawei/msdp/movement/HwMSDPMovementStatusChangeCallback;->onMovementStatusChanged(ILcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;)V

    .line 492
    return-void
.end method
