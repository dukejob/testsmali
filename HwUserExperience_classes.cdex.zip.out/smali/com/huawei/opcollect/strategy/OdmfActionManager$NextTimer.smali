.class final Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;
.super Ljava/lang/Object;
.source "OdmfActionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/strategy/OdmfActionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NextTimer"
.end annotation


# instance fields
.field beginAtMillis:J

.field triggerAtMillis:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->reset()V

    .line 118
    return-void
.end method


# virtual methods
.method reset()V
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->beginAtMillis:J

    .line 126
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->triggerAtMillis:J

    .line 127
    return-void
.end method

.method setBegin(J)V
    .locals 1
    .param p1, "begin"    # J

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->beginAtMillis:J

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 140
    .local v0, "rtNow":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The next trigger timer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->beginAtMillis:J

    iget-wide v6, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->triggerAtMillis:J

    add-long/2addr v4, v6

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms later"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public update(J)V
    .locals 3
    .param p1, "nextTime"    # J

    .prologue
    .line 130
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-wide v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->triggerAtMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 134
    iput-wide p1, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->triggerAtMillis:J

    goto :goto_0
.end method
