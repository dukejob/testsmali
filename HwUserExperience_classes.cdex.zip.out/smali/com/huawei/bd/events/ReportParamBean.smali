.class public Lcom/huawei/bd/events/ReportParamBean;
.super Ljava/lang/Object;
.source "ReportParamBean.java"


# instance fields
.field private count:I

.field private eventId:I

.field private message:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "eventId"    # I
    .param p3, "count"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/huawei/bd/events/ReportParamBean;->packageName:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/huawei/bd/events/ReportParamBean;->eventId:I

    .line 49
    iput p3, p0, Lcom/huawei/bd/events/ReportParamBean;->count:I

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "eventId"    # I
    .param p3, "priority"    # I
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/huawei/bd/events/ReportParamBean;->packageName:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/huawei/bd/events/ReportParamBean;->eventId:I

    .line 35
    iput p3, p0, Lcom/huawei/bd/events/ReportParamBean;->priority:I

    .line 36
    iput-object p4, p0, Lcom/huawei/bd/events/ReportParamBean;->message:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/huawei/bd/events/ReportParamBean;->count:I

    return v0
.end method

.method public getEventId()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/huawei/bd/events/ReportParamBean;->eventId:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/huawei/bd/events/ReportParamBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/huawei/bd/events/ReportParamBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/huawei/bd/events/ReportParamBean;->priority:I

    return v0
.end method
