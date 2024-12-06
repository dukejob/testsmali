.class final Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;
.super Ljava/lang/Object;
.source "OdmfCollectScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StateMachine"
.end annotation


# instance fields
.field private state:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;->state:I

    .line 87
    iput v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;->state:I

    .line 88
    return-void
.end method

.method static synthetic access$002(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;->state:I

    return p1
.end method


# virtual methods
.method public isAMInited()Z
    .locals 2

    .prologue
    .line 99
    iget v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;->state:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInited()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 91
    iget v1, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;->state:I

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOdmfConnected()Z
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;->state:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;->state:I

    packed-switch v0, :pswitch_data_0

    .line 115
    const-string v0, "UNKNOWN STATE"

    :goto_0
    return-object v0

    .line 105
    :pswitch_0
    const-string v0, "STATE_UNINITED"

    goto :goto_0

    .line 107
    :pswitch_1
    const-string v0, "STATE_INITED"

    goto :goto_0

    .line 109
    :pswitch_2
    const-string v0, "STATE_ODMFCONNECTED"

    goto :goto_0

    .line 111
    :pswitch_3
    const-string v0, "STATE_AMINITED"

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
