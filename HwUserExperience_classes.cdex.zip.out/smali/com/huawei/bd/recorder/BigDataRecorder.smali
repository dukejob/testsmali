.class public Lcom/huawei/bd/recorder/BigDataRecorder;
.super Ljava/lang/Object;
.source "BigDataRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;,
        Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;
    }
.end annotation


# static fields
.field private static final INIT_SIZE:I = 0x10

.field private static final INSERT_CACHE_SIZE:I = 0x5

.field private static final SINGLE_DATA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BD.BigDataRecorder"

.field private static final UPDATE_CACHE_SIZE:I = 0xa


# instance fields
.field private dataQueue:Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;

.field private globalContext:Landroid/content/Context;

.field private handle:Landroid/os/Handler;

.field private isInit:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder;->handle:Landroid/os/Handler;

    .line 57
    iput-object v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder;->dataQueue:Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;

    .line 59
    iput-object v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder;->globalContext:Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder;->isInit:Z

    .line 69
    invoke-direct {p0, p1}, Lcom/huawei/bd/recorder/BigDataRecorder;->initialize(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/bd/recorder/BigDataRecorder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/recorder/BigDataRecorder;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder;->isInit:Z

    return v0
.end method

.method static synthetic access$100(Lcom/huawei/bd/recorder/BigDataRecorder;Landroid/net/Uri;[Lcom/huawei/bd/events/EventFormatInterface;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/recorder/BigDataRecorder;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # [Lcom/huawei/bd/events/EventFormatInterface;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/huawei/bd/recorder/BigDataRecorder;->recordData(Landroid/net/Uri;[Lcom/huawei/bd/events/EventFormatInterface;)V

    return-void
.end method

.method static synthetic access$200(Lcom/huawei/bd/recorder/BigDataRecorder;Lcom/huawei/bd/events/BaseEvent;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/recorder/BigDataRecorder;
    .param p1, "x1"    # Lcom/huawei/bd/events/BaseEvent;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/huawei/bd/recorder/BigDataRecorder;->isLegalData(Lcom/huawei/bd/events/BaseEvent;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/huawei/bd/recorder/BigDataRecorder;Landroid/net/Uri;Lcom/huawei/bd/events/EventFormatInterface;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/recorder/BigDataRecorder;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Lcom/huawei/bd/events/EventFormatInterface;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/huawei/bd/recorder/BigDataRecorder;->updateData(Landroid/net/Uri;Lcom/huawei/bd/events/EventFormatInterface;)V

    return-void
.end method

.method static synthetic access$400(Lcom/huawei/bd/recorder/BigDataRecorder;Landroid/net/Uri;[Lcom/huawei/bd/events/EventFormatInterface;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/recorder/BigDataRecorder;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # [Lcom/huawei/bd/events/EventFormatInterface;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/bd/recorder/BigDataRecorder;->updateUsage(Landroid/net/Uri;[Lcom/huawei/bd/events/EventFormatInterface;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/huawei/bd/recorder/BigDataRecorder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/recorder/BigDataRecorder;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder;->globalContext:Landroid/content/Context;

    return-object v0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/bd/recorder/BigDataRecorder;->globalContext:Landroid/content/Context;

    .line 74
    new-instance v2, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;

    const-string v3, "BD.BigDataRecorder"

    invoke-direct {v2, p0, v3}, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;-><init>(Lcom/huawei/bd/recorder/BigDataRecorder;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/huawei/bd/recorder/BigDataRecorder;->dataQueue:Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/huawei/bd/recorder/BigDataRecorder;->dataQueue:Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;

    invoke-virtual {v2}, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->start()V

    .line 77
    iget-object v2, p0, Lcom/huawei/bd/recorder/BigDataRecorder;->dataQueue:Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;

    invoke-static {v2}, Lcom/huawei/bd/utils/HiViewThreadLooperCheck;->initLoopCheck(Landroid/os/HandlerThread;)V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    iget-object v2, p0, Lcom/huawei/bd/recorder/BigDataRecorder;->dataQueue:Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;

    invoke-virtual {v2}, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 83
    .local v1, "looper":Landroid/os/Looper;
    if-nez v1, :cond_0

    .line 84
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/huawei/bd/recorder/BigDataRecorder;->dataQueue:Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/huawei/bd/recorder/BigDataRecorder;->handle:Landroid/os/Handler;

    .line 88
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/huawei/bd/recorder/BigDataRecorder;->isInit:Z

    .line 89
    return-void

    .line 78
    .end local v1    # "looper":Landroid/os/Looper;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    const-string v2, "BD.BigDataRecorder"

    const-string v3, "DataQueue start failed"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v0    # "e":Ljava/lang/IllegalThreadStateException;
    .restart local v1    # "looper":Landroid/os/Looper;
    :cond_0
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/huawei/bd/recorder/BigDataRecorder;->dataQueue:Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;

    invoke-direct {v2, v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/huawei/bd/recorder/BigDataRecorder;->handle:Landroid/os/Handler;

    goto :goto_1
.end method

.method private isLegalData(Lcom/huawei/bd/events/BaseEvent;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "data"    # Lcom/huawei/bd/events/BaseEvent;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 498
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    const/4 v0, 0x1

    .line 502
    :goto_0
    return v0

    .line 501
    :cond_0
    const-string v0, "BD.BigDataRecorder"

    const-string v1, "Illegal data of BaseEvent"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recordData(Landroid/net/Uri;[Lcom/huawei/bd/events/EventFormatInterface;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "data"    # [Lcom/huawei/bd/events/EventFormatInterface;

    .prologue
    const/4 v6, 0x0

    .line 433
    if-eqz p2, :cond_0

    array-length v5, p2

    if-nez v5, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v5, p0, Lcom/huawei/bd/recorder/BigDataRecorder;->globalContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 437
    .local v4, "resolver":Landroid/content/ContentResolver;
    array-length v1, p2

    .line 438
    .local v1, "dataLen":I
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    .line 439
    aget-object v5, p2, v6

    invoke-interface {v5}, Lcom/huawei/bd/events/EventFormatInterface;->format()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 440
    const-string v5, "BD.BigDataRecorder"

    aget-object v6, p2, v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :cond_2
    new-array v0, v1, [Landroid/content/ContentValues;

    .line 444
    .local v0, "contentValues":[Landroid/content/ContentValues;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 445
    aget-object v2, p2, v3

    .line 446
    .local v2, "eventFormat":Lcom/huawei/bd/events/EventFormatInterface;
    if-eqz v2, :cond_3

    .line 447
    invoke-interface {v2}, Lcom/huawei/bd/events/EventFormatInterface;->format()Landroid/content/ContentValues;

    move-result-object v5

    aput-object v5, v0, v3

    .line 444
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 450
    .end local v2    # "eventFormat":Lcom/huawei/bd/events/EventFormatInterface;
    :cond_4
    invoke-virtual {v4, p1, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto :goto_0
.end method

.method private updateData(Landroid/net/Uri;Lcom/huawei/bd/events/EventFormatInterface;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "data"    # Lcom/huawei/bd/events/EventFormatInterface;

    .prologue
    const/4 v2, 0x0

    .line 455
    if-nez p2, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-object v1, p0, Lcom/huawei/bd/recorder/BigDataRecorder;->globalContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 459
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 460
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 462
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 463
    invoke-interface {p2}, Lcom/huawei/bd/events/EventFormatInterface;->format()Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 465
    :cond_2
    :try_start_1
    invoke-interface {p2}, Lcom/huawei/bd/events/EventFormatInterface;->format()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 468
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 469
    throw v1
.end method

.method private updateUsage(Landroid/net/Uri;[Lcom/huawei/bd/events/EventFormatInterface;Ljava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "data"    # [Lcom/huawei/bd/events/EventFormatInterface;
    .param p3, "selection"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 474
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/huawei/bd/recorder/BigDataRecorder;->globalContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 478
    .local v0, "resolver":Landroid/content/ContentResolver;
    array-length v1, p2

    if-ne v1, v4, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 479
    new-array v2, v4, [Ljava/lang/String;

    const-string v1, "f"

    aput-object v1, v2, v5

    const-string v3, "f = ? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object p3, v4, v5

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 482
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 484
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 485
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-interface {v1}, Lcom/huawei/bd/events/EventFormatInterface;->format()Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "f = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 488
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    aget-object v1, p2, v1

    invoke-interface {v1}, Lcom/huawei/bd/events/EventFormatInterface;->format()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 491
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 492
    throw v1
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder;->handle:Landroid/os/Handler;

    return-object v0
.end method
