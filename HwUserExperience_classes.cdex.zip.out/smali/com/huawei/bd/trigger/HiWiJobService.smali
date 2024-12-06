.class public Lcom/huawei/bd/trigger/HiWiJobService;
.super Landroid/app/job/JobService;
.source "HiWiJobService.java"


# static fields
.field private static final START_HIWI_SERVICE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HiWiServiceBD.HiWiJobService"


# instance fields
.field private jobHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 25
    new-instance v0, Lcom/huawei/bd/trigger/HiWiJobService$1;

    invoke-direct {v0, p0}, Lcom/huawei/bd/trigger/HiWiJobService$1;-><init>(Lcom/huawei/bd/trigger/HiWiJobService;)V

    iput-object v0, p0, Lcom/huawei/bd/trigger/HiWiJobService;->jobHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v2, 0x1

    .line 46
    iget-object v0, p0, Lcom/huawei/bd/trigger/HiWiJobService;->jobHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/bd/trigger/HiWiJobService;->jobHandler:Landroid/os/Handler;

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 47
    const-string v0, "HiWiServiceBD.HiWiJobService"

    const-string v1, "HiWiJobService onStartJob"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v2, 0x1

    .line 53
    iget-object v0, p0, Lcom/huawei/bd/trigger/HiWiJobService;->jobHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 54
    const-string v0, "HiWiServiceBD.HiWiJobService"

    const-string v1, "HiWiJobService onStopJob"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return v2
.end method
