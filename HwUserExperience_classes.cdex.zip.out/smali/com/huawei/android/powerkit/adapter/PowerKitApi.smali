.class public Lcom/huawei/android/powerkit/adapter/PowerKitApi;
.super Ljava/lang/Object;
.source "PowerKitApi.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/powerkit/adapter/PowerKitApi$SinkTransport;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PowerKitApi"

.field private static final TIME_THRESHOLD:I = 0x493e0


# instance fields
.field mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mEnabledStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKitConnection:Lcom/huawei/android/powerkit/PowerKitConnection;

.field private final mLock:Ljava/lang/Object;

.field private mMe:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

.field private mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

.field private final mSinkSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/huawei/android/powerkit/Sink;",
            ">;"
        }
    .end annotation
.end field

.field private final mSinkSetStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/huawei/android/powerkit/Sink;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSinkTransport:Lcom/huawei/android/powerkit/adapter/PowerKitApi$SinkTransport;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/huawei/android/powerkit/PowerKitConnection;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkConnection"    # Lcom/huawei/android/powerkit/PowerKitConnection;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mMe:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    .line 32
    iput-object v1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mKitConnection:Lcom/huawei/android/powerkit/PowerKitConnection;

    .line 33
    iput-object v1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    .line 36
    new-instance v0, Lcom/huawei/android/powerkit/adapter/PowerKitApi$1;

    invoke-direct {v0, p0}, Lcom/huawei/android/powerkit/adapter/PowerKitApi$1;-><init>(Lcom/huawei/android/powerkit/adapter/PowerKitApi;)V

    iput-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mConnection:Landroid/content/ServiceConnection;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mSinkSet:Ljava/util/HashSet;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mEnabledStates:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mSinkSetStates:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Lcom/huawei/android/powerkit/adapter/PowerKitApi$SinkTransport;

    invoke-direct {v0, p0, v1}, Lcom/huawei/android/powerkit/adapter/PowerKitApi$SinkTransport;-><init>(Lcom/huawei/android/powerkit/adapter/PowerKitApi;Lcom/huawei/android/powerkit/adapter/PowerKitApi$1;)V

    iput-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mSinkTransport:Lcom/huawei/android/powerkit/adapter/PowerKitApi$SinkTransport;

    .line 71
    iput-object p0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mMe:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    .line 72
    iput-object p2, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mKitConnection:Lcom/huawei/android/powerkit/PowerKitConnection;

    .line 73
    iput-object p1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mContext:Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->bindPowerKitService()Z

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/powerkit/adapter/PowerKitApi;)Lcom/huawei/android/powerkit/PowerKitConnection;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mKitConnection:Lcom/huawei/android/powerkit/PowerKitConnection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/android/powerkit/adapter/PowerKitApi;)Lcom/huawei/android/powerkit/adapter/IPowerKitApi;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    return-object v0
.end method

.method static synthetic access$102(Lcom/huawei/android/powerkit/adapter/PowerKitApi;Lcom/huawei/android/powerkit/adapter/IPowerKitApi;)Lcom/huawei/android/powerkit/adapter/IPowerKitApi;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/android/powerkit/adapter/PowerKitApi;
    .param p1, "x1"    # Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    return-object p1
.end method

.method static synthetic access$200(Lcom/huawei/android/powerkit/adapter/PowerKitApi;)Lcom/huawei/android/powerkit/adapter/PowerKitApi;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mMe:Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/android/powerkit/adapter/PowerKitApi;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huawei/android/powerkit/adapter/PowerKitApi;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mSinkSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/huawei/android/powerkit/adapter/PowerKitApi;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/powerkit/adapter/PowerKitApi;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mSinkSetStates:Ljava/util/HashMap;

    return-object v0
.end method

.method private bindPowerKitService()Z
    .locals 5

    .prologue
    .line 82
    iget-object v2, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.huawei.android.powerkit.PowerKitService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->createExplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    .line 85
    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 87
    .local v1, "ret":Z
    const-string v2, "PowerKitApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bind powerkit service, ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v1
.end method

.method private createExplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "implicitIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 95
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p2, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 97
    .local v5, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v3, "com.huawei.powergenie"

    .line 98
    .local v3, "packageName":Ljava/lang/String;
    const-string v0, "com.huawei.android.powerkit.PowerKitService"

    .line 102
    .local v0, "className":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 103
    :cond_0
    const-string v7, "PowerKitApi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "not only one match for intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v1, "component":Landroid/content/ComponentName;
    const-string v7, "PowerKitApi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "match for intent,  packageName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " className:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 119
    .local v2, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 121
    return-object v2

    .line 106
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "explicitIntent":Landroid/content/Intent;
    :cond_1
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 107
    .local v6, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 108
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private registerSink(Lcom/huawei/android/powerkit/Sink;)Z
    .locals 2
    .param p1, "sink"    # Lcom/huawei/android/powerkit/Sink;

    .prologue
    const/4 v0, 0x1

    .line 372
    if-nez p1, :cond_1

    .line 373
    const-string v0, "PowerKitApi"

    const-string v1, "registerSink a null sink fail."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v0, 0x0

    .line 386
    :cond_0
    :goto_0
    return v0

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mSinkSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mSinkSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mSinkSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->startStateRecognitionProvider()V

    goto :goto_0
.end method

.method private startStateRecognitionProvider()V
    .locals 3

    .prologue
    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    iget-object v2, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mSinkTransport:Lcom/huawei/android/powerkit/adapter/PowerKitApi$SinkTransport;

    invoke-interface {v1, v2}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi;->registerSink(Lcom/huawei/android/powerkit/adapter/IStateSink;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "PowerKitApi"

    const-string v2, "register sink transport fail."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopStateRecognitionProvider()V
    .locals 3

    .prologue
    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    iget-object v2, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mSinkTransport:Lcom/huawei/android/powerkit/adapter/PowerKitApi$SinkTransport;

    invoke-interface {v1, v2}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi;->unregisterSink(Lcom/huawei/android/powerkit/adapter/IStateSink;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "PowerKitApi"

    const-string v2, "unregister sink transport fail."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterSink(Lcom/huawei/android/powerkit/Sink;)V
    .locals 1
    .param p1, "sink"    # Lcom/huawei/android/powerkit/Sink;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mSinkSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mSinkSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->stopStateRecognitionProvider()V

    .line 395
    :cond_0
    return-void
.end method


# virtual methods
.method public applyForResourceUse(Landroid/content/Context;ZLjava/lang/String;IJLjava/lang/String;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apply"    # Z
    .param p3, "module"    # Ljava/lang/String;
    .param p4, "resourceType"    # I
    .param p5, "timeoutInMS"    # J
    .param p7, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "PowerKit server is not found"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi;->applyForResourceUse(Ljava/lang/String;ZLjava/lang/String;IJLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public binderDied()V
    .locals 4

    .prologue
    .line 399
    const-string v2, "PowerKitApi"

    const-string v3, "powerkit process binder was died and connecting ..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    .line 402
    const/4 v1, 0x5

    .line 404
    .local v1, "maxCount":I
    :cond_0
    if-lez v1, :cond_1

    .line 405
    add-int/lit8 v1, v1, -0x1

    .line 407
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x7d1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v0, v2, 0x3e8

    .line 408
    .local v0, "delay":I
    int-to-long v2, v0

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 410
    invoke-direct {p0}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->bindPowerKitService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    .end local v0    # "delay":I
    :cond_1
    return-void
.end method

.method public disableStateEvent(Lcom/huawei/android/powerkit/Sink;I)Z
    .locals 4
    .param p1, "sink"    # Lcom/huawei/android/powerkit/Sink;
    .param p2, "stateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    if-nez v1, :cond_0

    .line 244
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "PowerKit server is not found"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mSinkSetStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 250
    .local v0, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    .line 251
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mSinkSetStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-direct {p0, p1}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->unregisterSink(Lcom/huawei/android/powerkit/Sink;)V

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mEnabledStates:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 260
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    const-string v1, "PowerKitApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableStateEvent ! stateType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    invoke-interface {v1, p2}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi;->disableStateEvent(I)Z

    move-result v1

    return v1

    .line 260
    .end local v0    # "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public enableStateEvent(Lcom/huawei/android/powerkit/Sink;I)Z
    .locals 4
    .param p1, "sink"    # Lcom/huawei/android/powerkit/Sink;
    .param p2, "stateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    if-nez v1, :cond_0

    .line 209
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "PowerKit server is not found"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 213
    :try_start_0
    invoke-direct {p0, p1}, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->registerSink(Lcom/huawei/android/powerkit/Sink;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    const/4 v1, 0x0

    monitor-exit v2

    .line 232
    :goto_0
    return v1

    .line 217
    :cond_1
    const-string v1, "PowerKitApi"

    const-string v3, "registerSink return true"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mSinkSetStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 221
    .local v0, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_2

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .restart local v0    # "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mSinkSetStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :goto_1
    iget-object v1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mEnabledStates:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    iget-object v1, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    invoke-interface {v1, p2}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi;->enableStateEvent(I)Z

    move-result v1

    goto :goto_0

    .line 226
    :cond_2
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 230
    .end local v0    # "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCurrentFps(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "PowerKit server is not found"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi;->getCurrentFps(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCurrentResolutionRatio(Landroid/content/Context;)F
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "PowerKit server is not found"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi;->getCurrentResolutionRatio(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getPowerKitVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "PowerKit server is not found"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi;->getPowerKitVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerMode(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "PowerKit server is not found"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    const-string v0, "PowerKitApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPowerMode ! pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi;->getPowerMode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPowerOptimizeType(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "PowerKit server is not found"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    const-string v0, "PowerKitApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " get optimize type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi;->getPowerOptimizeType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isUserSleeping(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "PowerKit server is not found"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    const-string v0, "PowerKitApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUserSleeping ! pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi;->isUserSleeping(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public notifyCallingModules(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "self"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 193
    .local p3, "callingModules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "PowerKit server is not found"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi;->notifyCallingModules(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public registerMaintenanceTime(Landroid/content/Context;ZLjava/lang/String;JJ)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isRegister"    # Z
    .param p3, "module"    # Ljava/lang/String;
    .param p4, "inactiveTime"    # J
    .param p6, "activeTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/32 v2, 0x493e0

    .line 303
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "PowerKit server is not found"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    if-eqz p2, :cond_2

    cmp-long v0, p4, v2

    if-ltz v0, :cond_1

    cmp-long v0, p6, v2

    if-lez v0, :cond_2

    .line 308
    :cond_1
    const-string v0, "PowerKitApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inactiveTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " activeTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0

    .line 311
    :cond_2
    const-string v1, "PowerKitApi"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_3

    const-string v0, " register"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " maintenance time for pkg "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi;->registerMaintenanceTime(Ljava/lang/String;ZLjava/lang/String;JJ)Z

    move-result v0

    goto :goto_0

    .line 311
    :cond_3
    const-string v0, " unRegister"

    goto :goto_1
.end method

.method public setActiveState(Landroid/content/Context;II)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateType"    # I
    .param p3, "eventType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "PowerKit server is not found"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    const-string v0, "PowerKitApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set stateType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " eventType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi;->setActiveState(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setFps(Landroid/content/Context;I)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "PowerKit server is not found"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi;->setFps(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setPowerOptimizeType(Landroid/content/Context;ZII)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSet"    # Z
    .param p3, "appType"    # I
    .param p4, "optimizeType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "PowerKit server is not found"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    const-string v0, "PowerKitApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " optimizeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/huawei/android/powerkit/adapter/PowerKitApi;->mService:Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi;->setPowerOptimizeType(Ljava/lang/String;ZII)Z

    move-result v0

    return v0
.end method
