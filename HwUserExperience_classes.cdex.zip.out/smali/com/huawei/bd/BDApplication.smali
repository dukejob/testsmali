.class public Lcom/huawei/bd/BDApplication;
.super Landroid/app/Application;
.source "BDApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BD.BDApplication"

.field private static contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAppContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 56
    const-class v1, Lcom/huawei/bd/BDApplication;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/bd/BDApplication;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized setAppContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 60
    const-class v1, Lcom/huawei/bd/BDApplication;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/bd/BDApplication;->contextWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/huawei/bd/BDApplication;->contextWeakReference:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit v1

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startBigDataService()V
    .locals 4

    .prologue
    .line 40
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/huawei/bd/BDService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/huawei/bd/BDApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "BD.BDApplication"

    const-string v3, "start BDService failed: SecurityException"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "BD.BDApplication"

    const-string v3, "start BDService failed: IllegalStateException"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 31
    invoke-virtual {p0}, Lcom/huawei/bd/BDApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/bd/utils/BigDataUtils;->isLowRam(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->isEmuiVersionOverQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "BD.BDApplication"

    const-string v1, "low memory, return"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/bd/BDApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/bd/BDApplication;->setAppContext(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/huawei/bd/BDApplication;->startBigDataService()V

    goto :goto_0
.end method
