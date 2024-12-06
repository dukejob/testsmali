.class public abstract Lcom/huawei/opcollect/strategy/AbsActionParam;
.super Ljava/lang/Object;
.source "AbsActionParam.java"


# instance fields
.field private checkMaxRecordOneDay:Z

.field private checkMinInterval:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/huawei/opcollect/strategy/AbsActionParam;->checkMinInterval:Z

    .line 29
    iput-boolean v0, p0, Lcom/huawei/opcollect/strategy/AbsActionParam;->checkMaxRecordOneDay:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "checkMinInterval"    # Z

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/huawei/opcollect/strategy/AbsActionParam;->checkMinInterval:Z

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/opcollect/strategy/AbsActionParam;->checkMaxRecordOneDay:Z

    .line 25
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "checkMinInterval"    # Z
    .param p2, "checkMaxRecordOneDay"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p1, p0, Lcom/huawei/opcollect/strategy/AbsActionParam;->checkMinInterval:Z

    .line 19
    iput-boolean p2, p0, Lcom/huawei/opcollect/strategy/AbsActionParam;->checkMaxRecordOneDay:Z

    .line 20
    return-void
.end method


# virtual methods
.method public isCheckMaxRecordOneDay()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/huawei/opcollect/strategy/AbsActionParam;->checkMaxRecordOneDay:Z

    return v0
.end method

.method public isCheckMinInterval()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/huawei/opcollect/strategy/AbsActionParam;->checkMinInterval:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbsActionParam{checkMinInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huawei/opcollect/strategy/AbsActionParam;->checkMinInterval:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checkMaxRecordOneDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huawei/opcollect/strategy/AbsActionParam;->checkMaxRecordOneDay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
