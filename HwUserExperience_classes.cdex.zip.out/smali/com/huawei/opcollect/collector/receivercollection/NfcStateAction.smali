.class public Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;
.super Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;
.source "NfcStateAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateActionParam;,
        Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateReceiver;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "NfcStateAction"

.field private static instance:Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->LOCK:Ljava/lang/Object;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p2, p1}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    const-string v1, "nfc_status"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v0

    .line 32
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->setDailyRecordNum(I)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;Lcom/huawei/opcollect/strategy/AbsActionParam;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;
    .param p1, "x1"    # Lcom/huawei/opcollect/strategy/AbsActionParam;

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->performWithArgs(Lcom/huawei/opcollect/strategy/AbsActionParam;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;Lcom/huawei/opcollect/strategy/AbsActionParam;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;
    .param p1, "x1"    # Lcom/huawei/opcollect/strategy/AbsActionParam;

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->performWithArgs(Lcom/huawei/opcollect/strategy/AbsActionParam;)Z

    move-result v0

    return v0
.end method

.method private static destroyNfcStateActionInstance()V
    .locals 2

    .prologue
    .line 128
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;

    .line 130
    monitor-exit v1

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;

    const-string v2, "nfc_status"

    invoke-direct {v0, v2, p0}, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;

    .line 40
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public destroy()Z
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->destroy()Z

    .line 123
    invoke-static {}, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->destroyNfcStateActionInstance()V

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public enable()V
    .locals 6

    .prologue
    .line 49
    invoke-super {p0}, Lcom/huawei/opcollect/collector/receivercollection/ReceiverAction;->enable()V

    .line 50
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 51
    new-instance v2, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateReceiver;

    invoke-direct {v2, p0}, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateReceiver;-><init>(Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;)V

    iput-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    .line 54
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v5

    .line 53
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 56
    iget-object v2, p0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 57
    .local v1, "nfcAdapter":Landroid/nfc/NfcAdapter;
    const-string v3, "device_connection/nfc_status"

    const-string v4, "nfc_status"

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "1"

    .line 57
    :goto_0
    invoke-static {v3, v4, v2}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v2, "NfcStateAction"

    const-string v3, "enabled"

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    .end local v1    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_0
    return-void

    .line 59
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v1    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_1
    const-string v2, "0"

    goto :goto_0
.end method

.method protected executeWithArgs(Lcom/huawei/opcollect/strategy/AbsActionParam;)Z
    .locals 3
    .param p1, "absActionParam"    # Lcom/huawei/opcollect/strategy/AbsActionParam;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    const-string v1, "nfc_status"

    move-object v0, p1

    check-cast v0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateActionParam;

    .line 107
    invoke-virtual {v0}, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateActionParam;->getState()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v1, v0}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectSysEventData(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "device_connection/nfc_status"

    const-string v1, "nfc_status"

    check-cast p1, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateActionParam;

    .line 109
    .end local p1    # "absActionParam":Lcom/huawei/opcollect/strategy/AbsActionParam;
    invoke-virtual {p1}, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateActionParam;->getState()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-static {v0, v1, v2}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->collectKVSysEventData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
