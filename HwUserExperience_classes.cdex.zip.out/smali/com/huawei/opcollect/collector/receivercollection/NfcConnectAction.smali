.class public Lcom/huawei/opcollect/collector/receivercollection/NfcConnectAction;
.super Lcom/huawei/opcollect/strategy/Action;
.source "NfcConnectAction.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "NfcConnectAction"

.field private static instance:Lcom/huawei/opcollect/collector/receivercollection/NfcConnectAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/NfcConnectAction;->LOCK:Ljava/lang/Object;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/NfcConnectAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/NfcConnectAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p2, p1}, Lcom/huawei/opcollect/strategy/Action;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    const-string v1, "nfc_connect_status"

    invoke-static {v1}, Lcom/huawei/opcollect/collector/receivercollection/SysEventUtil;->querySysEventDailyCount(Ljava/lang/String;)I

    move-result v0

    .line 26
    .local v0, "dailyRecordNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/receivercollection/NfcConnectAction;->setDailyRecordNum(I)V

    .line 27
    return-void
.end method

.method private static destroyNfcConnectActionInstance()V
    .locals 2

    .prologue
    .line 51
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/NfcConnectAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/NfcConnectAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/NfcConnectAction;

    .line 53
    monitor-exit v1

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/receivercollection/NfcConnectAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    sget-object v1, Lcom/huawei/opcollect/collector/receivercollection/NfcConnectAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/NfcConnectAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/NfcConnectAction;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/huawei/opcollect/collector/receivercollection/NfcConnectAction;

    const-string v2, "nfc_connect_status"

    invoke-direct {v0, v2, p0}, Lcom/huawei/opcollect/collector/receivercollection/NfcConnectAction;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/opcollect/collector/receivercollection/NfcConnectAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/NfcConnectAction;

    .line 34
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/receivercollection/NfcConnectAction;->instance:Lcom/huawei/opcollect/collector/receivercollection/NfcConnectAction;

    monitor-exit v1

    return-object v0

    .line 35
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
    .line 45
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/Action;->destroy()Z

    .line 46
    invoke-static {}, Lcom/huawei/opcollect/collector/receivercollection/NfcConnectAction;->destroyNfcConnectActionInstance()V

    .line 47
    const/4 v0, 0x1

    return v0
.end method
