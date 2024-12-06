.class public Lcom/huawei/filter/RegisteredEventInfo;
.super Ljava/lang/Object;
.source "RegisteredEventInfo.java"


# instance fields
.field private diffContent:I

.field private eventInfoId:I

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiffContent()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/huawei/filter/RegisteredEventInfo;->diffContent:I

    return v0
.end method

.method public getEventInfoId()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/huawei/filter/RegisteredEventInfo;->eventInfoId:I

    return v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/huawei/filter/RegisteredEventInfo;->threshold:I

    return v0
.end method

.method public setDiffContent(I)V
    .locals 0
    .param p1, "diffContent"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/huawei/filter/RegisteredEventInfo;->diffContent:I

    .line 42
    return-void
.end method

.method public setEventInfoId(I)V
    .locals 0
    .param p1, "eventInfoId"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/huawei/filter/RegisteredEventInfo;->eventInfoId:I

    .line 26
    return-void
.end method

.method public setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/huawei/filter/RegisteredEventInfo;->threshold:I

    .line 34
    return-void
.end method
