.class public Lcom/huawei/opcollect/appchange/AppChangeImpl;
.super Ljava/lang/Object;
.source "AppChangeImpl.java"


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "comp"

.field private static final INIT_LIST_SIZE:I = 0xa

.field private static final LOCK:Ljava/lang/Object;

.field private static final ONRESUME_METHOD_NAME:Ljava/lang/String; = "onResume"

.field private static final PID_NAME:Ljava/lang/String; = "pid"

.field private static final STATE_NAME:Ljava/lang/String; = "state"

.field private static final TAG:Ljava/lang/String; = "AppChangeImpl"

.field private static final UID_NAME:Ljava/lang/String; = "uid"

.field private static instance:Lcom/huawei/opcollect/appchange/AppChangeImpl;


# instance fields
.field private isRegistered:Z

.field private mActivityNotifierEx:Lcom/huawei/android/app/IHwActivityNotifierEx;

.field private mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/opcollect/appchange/AppChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->LOCK:Ljava/lang/Object;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->instance:Lcom/huawei/opcollect/appchange/AppChangeImpl;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->mListeners:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->isRegistered:Z

    .line 41
    new-instance v0, Lcom/huawei/opcollect/appchange/AppChangeImpl$1;

    invoke-direct {v0, p0}, Lcom/huawei/opcollect/appchange/AppChangeImpl$1;-><init>(Lcom/huawei/opcollect/appchange/AppChangeImpl;)V

    iput-object v0, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->mActivityNotifierEx:Lcom/huawei/android/app/IHwActivityNotifierEx;

    .line 65
    iput-object p1, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/opcollect/appchange/AppChangeImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/appchange/AppChangeImpl;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method private disable()V
    .locals 4

    .prologue
    .line 87
    const-string v1, "AppChangeImpl"

    const-string v2, "disable."

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->mActivityNotifierEx:Lcom/huawei/android/app/IHwActivityNotifierEx;

    invoke-static {v1}, Lcom/huawei/android/app/ActivityManagerEx;->unregisterHwActivityNotifier(Lcom/huawei/android/app/IHwActivityNotifierEx;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "AppChangeImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enable()V
    .locals 4

    .prologue
    .line 78
    const-string v1, "AppChangeImpl"

    const-string v2, "enable."

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->mActivityNotifierEx:Lcom/huawei/android/app/IHwActivityNotifierEx;

    const-string v2, "activityLifeState"

    invoke-static {v1, v2}, Lcom/huawei/android/app/ActivityManagerEx;->registerHwActivityNotifier(Lcom/huawei/android/app/IHwActivityNotifierEx;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "AppChangeImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/appchange/AppChangeImpl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    sget-object v1, Lcom/huawei/opcollect/appchange/AppChangeImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->instance:Lcom/huawei/opcollect/appchange/AppChangeImpl;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/huawei/opcollect/appchange/AppChangeImpl;

    invoke-direct {v0, p0}, Lcom/huawei/opcollect/appchange/AppChangeImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->instance:Lcom/huawei/opcollect/appchange/AppChangeImpl;

    .line 73
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->instance:Lcom/huawei/opcollect/appchange/AppChangeImpl;

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/huawei/opcollect/appchange/AppChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/opcollect/appchange/AppChangeListener;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->isRegistered:Z

    if-nez v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/huawei/opcollect/appchange/AppChangeImpl;->enable()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->isRegistered:Z

    .line 109
    :cond_1
    monitor-exit v1

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeListener(Lcom/huawei/opcollect/appchange/AppChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/opcollect/appchange/AppChangeListener;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->isRegistered:Z

    if-eqz v0, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/huawei/opcollect/appchange/AppChangeImpl;->disable()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/opcollect/appchange/AppChangeImpl;->isRegistered:Z

    .line 126
    :cond_1
    monitor-exit v1

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
