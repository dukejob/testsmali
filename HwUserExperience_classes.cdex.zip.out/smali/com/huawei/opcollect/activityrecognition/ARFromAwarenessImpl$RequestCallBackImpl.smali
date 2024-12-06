.class Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$RequestCallBackImpl;
.super Lcom/huawei/hiai/awareness/service/IRequestCallBack$Stub;
.source "ARFromAwarenessImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestCallBackImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/huawei/hiai/awareness/service/IRequestCallBack$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$1;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/huawei/opcollect/activityrecognition/ARFromAwarenessImpl$RequestCallBackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Lcom/huawei/hiai/awareness/service/RequestResult;)V
    .locals 3
    .param p1, "requestResult"    # Lcom/huawei/hiai/awareness/service/RequestResult;

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    const-string v0, "ARFromAwarenessImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/RequestResult;->getErrorResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    return-void
.end method
