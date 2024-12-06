.class Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;
.super Ljava/lang/Object;
.source "BigDataCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/bd/collector/BigDataCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsageStatsParameter"
.end annotation


# instance fields
.field private appLaunchCount:I

.field private landUsageTime:J

.field private lastTimeUsedInPc:J

.field private lastTimeUsedInWirelessPc:J

.field private sdkBuildVersion:I

.field final synthetic this$0:Lcom/huawei/bd/collector/BigDataCollector;

.field private timeInPcForeground:J

.field private timeInWirelessPcForeground:J

.field private us:Landroid/app/usage/UsageStats;


# direct methods
.method constructor <init>(Lcom/huawei/bd/collector/BigDataCollector;ILandroid/app/usage/UsageStats;)V
    .locals 0
    .param p2, "sdkBuildVersion"    # I
    .param p3, "us"    # Landroid/app/usage/UsageStats;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->this$0:Lcom/huawei/bd/collector/BigDataCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    iput p2, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->sdkBuildVersion:I

    .line 806
    iput-object p3, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->us:Landroid/app/usage/UsageStats;

    .line 807
    return-void
.end method


# virtual methods
.method public getAppLaunchCount()I
    .locals 1

    .prologue
    .line 830
    iget v0, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->appLaunchCount:I

    return v0
.end method

.method public getLandUsageTime()J
    .locals 2

    .prologue
    .line 810
    iget-wide v0, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->landUsageTime:J

    return-wide v0
.end method

.method public getLastTimeUsedInPc()J
    .locals 2

    .prologue
    .line 818
    iget-wide v0, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->lastTimeUsedInPc:J

    return-wide v0
.end method

.method public getLastTimeUsedInWirelessPc()J
    .locals 2

    .prologue
    .line 826
    iget-wide v0, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->lastTimeUsedInWirelessPc:J

    return-wide v0
.end method

.method public getTimeInPcForeground()J
    .locals 2

    .prologue
    .line 814
    iget-wide v0, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->timeInPcForeground:J

    return-wide v0
.end method

.method public getTimeInWirelessPcForeground()J
    .locals 2

    .prologue
    .line 822
    iget-wide v0, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->timeInWirelessPcForeground:J

    return-wide v0
.end method

.method public invoke()Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    .line 835
    iget-object v1, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->us:Landroid/app/usage/UsageStats;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v6, "getLandTimeInForeground"

    new-array v7, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 836
    .local v0, "getLndTimeInForeground":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->us:Landroid/app/usage/UsageStats;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 837
    .local v2, "landTimeInForeground":J
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    .end local v2    # "landTimeInForeground":J
    :goto_0
    iput-wide v2, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->landUsageTime:J

    .line 839
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->access$200()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->us:Landroid/app/usage/UsageStats;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v6, "mTimeInPCForeground"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v6, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->us:Landroid/app/usage/UsageStats;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v6

    :goto_1
    iput-wide v6, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->timeInPcForeground:J

    .line 840
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->us:Landroid/app/usage/UsageStats;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "mLastTimeUsedInPC"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v4, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->us:Landroid/app/usage/UsageStats;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    :cond_0
    iput-wide v4, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->lastTimeUsedInPc:J

    .line 841
    iget-object v1, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->us:Landroid/app/usage/UsageStats;

    invoke-static {v1, v9}, Lcom/huawei/android/app/usage/UsageStatsEx;->getTimeInPCForeground(Landroid/app/usage/UsageStats;Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->timeInWirelessPcForeground:J

    .line 842
    iget-object v1, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->us:Landroid/app/usage/UsageStats;

    invoke-static {v1, v9}, Lcom/huawei/android/app/usage/UsageStatsEx;->getLastTimeUsedInPC(Landroid/app/usage/UsageStats;Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->lastTimeUsedInWirelessPc:J

    .line 843
    iput v8, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->appLaunchCount:I

    .line 844
    iget v1, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->sdkBuildVersion:I

    const/16 v4, 0x1c

    if-lt v1, v4, :cond_1

    .line 845
    iget-object v1, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->us:Landroid/app/usage/UsageStats;

    invoke-static {v1}, Lcom/huawei/android/app/usage/UsageStatsEx;->getAppLaunchCount(Landroid/app/usage/UsageStats;)I

    move-result v1

    iput v1, p0, Lcom/huawei/bd/collector/BigDataCollector$UsageStatsParameter;->appLaunchCount:I

    .line 847
    :cond_1
    return-object p0

    .restart local v2    # "landTimeInForeground":J
    :cond_2
    move-wide v2, v4

    .line 837
    goto :goto_0

    .end local v2    # "landTimeInForeground":J
    :cond_3
    move-wide v6, v4

    .line 839
    goto :goto_1
.end method
