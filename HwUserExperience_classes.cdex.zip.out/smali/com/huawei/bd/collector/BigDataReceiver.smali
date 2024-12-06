.class public Lcom/huawei/bd/collector/BigDataReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BigDataReceiver.java"


# static fields
.field private static final BATTERY_SCALE_PLUS:I = 0x64

.field private static final HANDLER_POST_DELAY_TIME:I = 0x64

.field private static final TAG:Ljava/lang/String; = "BD.BigDataReceiver"

.field private static handler:Landroid/os/Handler;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/huawei/bd/collector/BigDataReceiver;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/bd/collector/BigDataReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/collector/BigDataReceiver;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huawei/bd/collector/BigDataReceiver;->context:Landroid/content/Context;

    return-object v0
.end method

.method private onReceiveLockBootCompletedEvent()V
    .locals 4

    .prologue
    .line 112
    const-wide/16 v0, 0x3e8

    .line 113
    .local v0, "delayLoadTimeMillis":J
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->isCommercialVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    const-wide/32 v0, 0x927c0

    .line 116
    :cond_0
    sget-object v2, Lcom/huawei/bd/collector/BigDataReceiver;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/huawei/bd/collector/BigDataReceiver$2;

    invoke-direct {v3, p0}, Lcom/huawei/bd/collector/BigDataReceiver$2;-><init>(Lcom/huawei/bd/collector/BigDataReceiver;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    return-void
.end method

.method private onReceivePackageAddedOrRemovedOrReplacedEvent(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 127
    move-object v0, p1

    .line 128
    .local v0, "innerIntent":Landroid/content/Intent;
    sget-object v1, Lcom/huawei/bd/collector/BigDataReceiver;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/huawei/bd/collector/BigDataReceiver$3;

    invoke-direct {v2, p0, v0, p2}, Lcom/huawei/bd/collector/BigDataReceiver$3;-><init>(Lcom/huawei/bd/collector/BigDataReceiver;Landroid/content/Intent;Ljava/lang/String;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    return-void
.end method

.method private onReceivePowerConnectedEvent()V
    .locals 4

    .prologue
    .line 160
    sget-object v0, Lcom/huawei/bd/collector/BigDataReceiver;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/huawei/bd/collector/BigDataReceiver$4;

    invoke-direct {v1, p0}, Lcom/huawei/bd/collector/BigDataReceiver$4;-><init>(Lcom/huawei/bd/collector/BigDataReceiver;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    return-void
.end method

.method private onReceivePowerDisconnectedEvent()V
    .locals 4

    .prologue
    .line 189
    sget-object v0, Lcom/huawei/bd/collector/BigDataReceiver;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/huawei/bd/collector/BigDataReceiver$5;

    invoke-direct {v1, p0}, Lcom/huawei/bd/collector/BigDataReceiver$5;-><init>(Lcom/huawei/bd/collector/BigDataReceiver;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    return-void
.end method

.method private onReceiveUpdateConfigEvent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    const-string v0, "BD.BigDataReceiver"

    const-string v1, "intent is null"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/huawei/bd/collector/BigDataReceiver;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/huawei/bd/collector/BigDataReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/huawei/bd/collector/BigDataReceiver$1;-><init>(Lcom/huawei/bd/collector/BigDataReceiver;Landroid/content/Intent;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-static {p1}, Lcom/huawei/bd/utils/BigDataUtils;->isLowRam(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->isEmuiVersionOverQ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const-string v1, "BD.BigDataReceiver"

    const-string v2, "low memory, return"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 53
    :cond_0
    if-nez p2, :cond_1

    .line 54
    const-string v1, "BD.BigDataReceiver"

    const-string v2, "intent is null!"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 59
    const-string v1, "BD.BigDataReceiver"

    const-string v2, "action is null!"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-static {}, Lcom/huawei/bd/BDService;->isUserExperienceSwitchOff()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    const-string v1, "BD.BigDataReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ue swith is off, not receive: action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_3
    iput-object p1, p0, Lcom/huawei/bd/collector/BigDataReceiver;->context:Landroid/content/Context;

    .line 68
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    invoke-direct {p0}, Lcom/huawei/bd/collector/BigDataReceiver;->onReceiveLockBootCompletedEvent()V

    goto :goto_0

    .line 70
    :cond_4
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 72
    :cond_5
    invoke-direct {p0, p2, v0}, Lcom/huawei/bd/collector/BigDataReceiver;->onReceivePackageAddedOrRemovedOrReplacedEvent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_6
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 74
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v1

    const v2, 0x20013

    const-string v3, ""

    const/16 v4, 0x19

    invoke-virtual {v1, v2, v3, v4}, Lcom/huawei/bd/collector/BigDataCollector;->saveLocalInfo(ILjava/lang/String;I)V

    goto :goto_0

    .line 75
    :cond_7
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 76
    invoke-direct {p0}, Lcom/huawei/bd/collector/BigDataReceiver;->onReceivePowerConnectedEvent()V

    goto/16 :goto_0

    .line 77
    :cond_8
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 78
    invoke-direct {p0}, Lcom/huawei/bd/collector/BigDataReceiver;->onReceivePowerDisconnectedEvent()V

    goto/16 :goto_0

    .line 79
    :cond_9
    const-string v1, "com.huawei.lcagent.UPDATE_UE_CONFIG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 80
    invoke-direct {p0, p2}, Lcom/huawei/bd/collector/BigDataReceiver;->onReceiveUpdateConfigEvent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 82
    :cond_a
    const-string v1, "BD.BigDataReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
