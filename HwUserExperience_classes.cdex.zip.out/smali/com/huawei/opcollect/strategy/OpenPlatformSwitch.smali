.class public Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;
.super Ljava/lang/Object;
.source "OpenPlatformSwitch.java"


# static fields
.field private static final ANTI_PINGPONG_DELAYTIME:J = 0x3e8L

.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "OpenPlatformSwitch"

.field private static mInstance:Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;->LOCK:Ljava/lang/Object;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;->mInstance:Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static getInstance()Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;
    .locals 2

    .prologue
    .line 32
    sget-object v1, Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;->mInstance:Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;

    invoke-direct {v0}, Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;->mInstance:Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;

    .line 36
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;->mInstance:Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getSwitchState()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;->mContext:Landroid/content/Context;

    .line 47
    new-instance v1, Lcom/huawei/opcollect/strategy/OpenPlatformSwitch$1;

    invoke-direct {v1, p0}, Lcom/huawei/opcollect/strategy/OpenPlatformSwitch$1;-><init>(Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;)V

    iput-object v1, p0, Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    .line 72
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getRecvHandler()Landroid/os/Handler;

    move-result-object v4

    .line 71
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 73
    return-void
.end method
