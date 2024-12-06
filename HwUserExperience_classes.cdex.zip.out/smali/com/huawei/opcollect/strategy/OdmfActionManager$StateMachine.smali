.class final Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;
.super Ljava/lang/Object;
.source "OdmfActionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/strategy/OdmfActionManager;
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
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;->state:I

    .line 149
    return-void
.end method

.method static synthetic access$002(Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;->state:I

    return p1
.end method


# virtual methods
.method isInited()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 152
    iget v1, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;->state:I

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPolicyInited()Z
    .locals 2

    .prologue
    .line 156
    iget v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;->state:I

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
    .line 160
    iget v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;->state:I

    packed-switch v0, :pswitch_data_0

    .line 170
    const-string v0, "UNKNOWN STATE"

    :goto_0
    return-object v0

    .line 162
    :pswitch_0
    const-string v0, "STATE_UNINITED"

    goto :goto_0

    .line 164
    :pswitch_1
    const-string v0, "STATE_INITED"

    goto :goto_0

    .line 166
    :pswitch_2
    const-string v0, "STATE_POLICY_INITED"

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
