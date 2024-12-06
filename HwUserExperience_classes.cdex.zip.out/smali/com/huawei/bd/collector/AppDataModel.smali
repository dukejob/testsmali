.class public Lcom/huawei/bd/collector/AppDataModel;
.super Ljava/lang/Object;
.source "AppDataModel.java"


# instance fields
.field private appOpenTimes:Ljava/lang/String;

.field private appUseTime:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private verName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppOpenTimes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/huawei/bd/collector/AppDataModel;->appOpenTimes:Ljava/lang/String;

    return-object v0
.end method

.method public getAppUseTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/huawei/bd/collector/AppDataModel;->appUseTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/huawei/bd/collector/AppDataModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/huawei/bd/collector/AppDataModel;->verName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppOpenTimes(Ljava/lang/String;)V
    .locals 0
    .param p1, "appOpenTimes"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/huawei/bd/collector/AppDataModel;->appOpenTimes:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setAppUseTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "appUseTime"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/huawei/bd/collector/AppDataModel;->appUseTime:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/huawei/bd/collector/AppDataModel;->packageName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setVerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "verName"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/huawei/bd/collector/AppDataModel;->verName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public toInfoString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{OpenTimes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/bd/collector/AppDataModel;->appOpenTimes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", UsedTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/bd/collector/AppDataModel;->appUseTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{PN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/bd/collector/AppDataModel;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", VR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/bd/collector/AppDataModel;->verName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
