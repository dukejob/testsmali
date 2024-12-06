.class public Lcom/huawei/bd/collector/BigDataUsageStats;
.super Ljava/lang/Object;
.source "BigDataUsageStats.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/huawei/bd/collector/BigDataUsageStats;",
        ">;"
    }
.end annotation


# instance fields
.field private appLaunchCount:I

.field private landUsageTime:J

.field private lastTimeUsedInPc:J

.field private lastTimeUsedInWirelessPc:J

.field private lastUseTime:J

.field private launchCount:I

.field private packageName:Ljava/lang/String;

.field private timeInPcForeground:J

.field private timeInWirelessPcForeground:J

.field private usageTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/huawei/bd/collector/BigDataUsageStats;)I
    .locals 8
    .param p1, "bigDataUsageStats"    # Lcom/huawei/bd/collector/BigDataUsageStats;

    .prologue
    const-wide/16 v6, 0x0

    .line 116
    iget-object v1, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/huawei/bd/collector/BigDataUsageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 118
    iget-wide v2, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->lastUseTime:J

    iget-wide v4, p1, Lcom/huawei/bd/collector/BigDataUsageStats;->lastUseTime:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    .line 119
    const/4 v0, -0x1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    iget-wide v2, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->lastUseTime:J

    iget-wide v4, p1, Lcom/huawei/bd/collector/BigDataUsageStats;->lastUseTime:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    .line 121
    const/4 v0, 0x1

    goto :goto_0

    .line 123
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lcom/huawei/bd/collector/BigDataUsageStats;

    invoke-virtual {p0, p1}, Lcom/huawei/bd/collector/BigDataUsageStats;->compareTo(Lcom/huawei/bd/collector/BigDataUsageStats;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    if-ne p0, p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v1

    .line 143
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 144
    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 147
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 149
    check-cast v0, Lcom/huawei/bd/collector/BigDataUsageStats;

    .line 150
    .local v0, "other":Lcom/huawei/bd/collector/BigDataUsageStats;
    iget-object v3, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->packageName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 151
    iget-object v3, v0, Lcom/huawei/bd/collector/BigDataUsageStats;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 152
    goto :goto_0

    .line 154
    :cond_4
    iget-object v3, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/huawei/bd/collector/BigDataUsageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 155
    goto :goto_0
.end method

.method public getAppLaunchCount()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->appLaunchCount:I

    return v0
.end method

.method public getLandUsageTime()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->landUsageTime:J

    return-wide v0
.end method

.method public getLastTimeUsedInPc()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->lastTimeUsedInPc:J

    return-wide v0
.end method

.method public getLastTimeUsedInWirelessPc()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->lastTimeUsedInWirelessPc:J

    return-wide v0
.end method

.method public getLastUseTime()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->lastUseTime:J

    return-wide v0
.end method

.method public getLaunchCount()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->launchCount:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeInPcForeground()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->timeInPcForeground:J

    return-wide v0
.end method

.method public getTimeInWirelessPcForeground()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->timeInWirelessPcForeground:J

    return-wide v0
.end method

.method public getUsageTime()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->usageTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 132
    const/16 v0, 0x1f

    .line 133
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 134
    .local v1, "result":I
    iget-object v2, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->packageName:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 135
    return v1

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setAppLaunchCount(I)V
    .locals 0
    .param p1, "appLaunchCount"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->appLaunchCount:I

    .line 40
    return-void
.end method

.method public setLandUsageTime(J)V
    .locals 1
    .param p1, "landUsageTime"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->landUsageTime:J

    .line 80
    return-void
.end method

.method public setLastTimeUsedInPc(J)V
    .locals 1
    .param p1, "lastTimeUsedInPc"    # J

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->lastTimeUsedInPc:J

    .line 96
    return-void
.end method

.method public setLastTimeUsedInWirelessPc(J)V
    .locals 1
    .param p1, "lastTimeUsedInWirelessPc"    # J

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->lastTimeUsedInWirelessPc:J

    .line 112
    return-void
.end method

.method public setLastUseTime(J)V
    .locals 1
    .param p1, "lastUseTime"    # J

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->lastUseTime:J

    .line 72
    return-void
.end method

.method public setLaunchCount(I)V
    .locals 0
    .param p1, "launchCount"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->launchCount:I

    .line 56
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->packageName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setTimeInPcForeground(J)V
    .locals 1
    .param p1, "timeInPcForeground"    # J

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->timeInPcForeground:J

    .line 88
    return-void
.end method

.method public setTimeInWirelessPcForeground(J)V
    .locals 1
    .param p1, "timeInWirelessPcForeground"    # J

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->timeInWirelessPcForeground:J

    .line 104
    return-void
.end method

.method public setUsageTime(J)V
    .locals 1
    .param p1, "usageTime"    # J

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/huawei/bd/collector/BigDataUsageStats;->usageTime:J

    .line 64
    return-void
.end method
