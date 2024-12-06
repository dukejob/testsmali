.class final Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;
.super Ljava/lang/Object;
.source "BigDataRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/bd/recorder/BigDataRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataBuffer"
.end annotation


# instance fields
.field private buffer:[Lcom/huawei/bd/events/EventFormatInterface;

.field private capacity:I

.field private index:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/16 v0, 0xa

    iput v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->capacity:I

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->index:I

    .line 110
    iget v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->capacity:I

    new-array v0, v0, [Lcom/huawei/bd/events/EventFormatInterface;

    iput-object v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->buffer:[Lcom/huawei/bd/events/EventFormatInterface;

    .line 111
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "capacityCount"    # I

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/16 v0, 0xa

    iput v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->capacity:I

    .line 114
    iput p1, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->capacity:I

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->index:I

    .line 116
    iget v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->capacity:I

    new-array v0, v0, [Lcom/huawei/bd/events/EventFormatInterface;

    iput-object v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->buffer:[Lcom/huawei/bd/events/EventFormatInterface;

    .line 117
    return-void
.end method

.method private declared-synchronized isValidIndex(I)Z
    .locals 1
    .param p1, "validIndex"    # I

    .prologue
    .line 153
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized flush()[Lcom/huawei/bd/events/EventFormatInterface;
    .locals 3

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->index:I

    if-gtz v1, :cond_0

    .line 135
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/huawei/bd/events/EventFormatInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :goto_0
    monitor-exit p0

    return-object v1

    .line 137
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->index:I

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->capacity:I

    if-ge v0, v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->buffer:[Lcom/huawei/bd/events/EventFormatInterface;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->index:I

    .line 141
    iget-object v1, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->buffer:[Lcom/huawei/bd/events/EventFormatInterface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isFull()Z
    .locals 2

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->index:I

    iget v1, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pull()Lcom/huawei/bd/events/EventFormatInterface;
    .locals 2

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->index:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->index:I

    invoke-direct {p0, v0}, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->isValidIndex(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    const/4 v0, 0x0

    .line 130
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->buffer:[Lcom/huawei/bd/events/EventFormatInterface;

    iget v1, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->index:I

    aget-object v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized push(Lcom/huawei/bd/events/EventFormatInterface;)V
    .locals 3
    .param p1, "data"    # Lcom/huawei/bd/events/EventFormatInterface;

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->index:I

    invoke-direct {p0, v0}, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->isValidIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->index:I

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->buffer:[Lcom/huawei/bd/events/EventFormatInterface;

    iget v1, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->index:I

    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->index:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
