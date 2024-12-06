.class public Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;
.super Ljava/lang/Object;
.source "OdmfCollectScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;,
        Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;
    }
.end annotation


# static fields
.field private static final CTRLTHREAD_NAME:Ljava/lang/String; = "OdmfCtrlThread"

.field private static final DATATHREAD_NAME:Ljava/lang/String; = "OdmfDataThread"

.field private static final DEBUG:Z = false

.field private static final LOCK:Ljava/lang/Object;

.field public static final MSG_CTRL_ODMF_INIT:I = 0x1

.field public static final MSG_CTRL_TIME_TICK:I = 0x65

.field public static final MSG_DATA_RAW_DATA_INSERT:I = 0x4

.field public static final MSG_DATA_RAW_DATA_UPDATE:I = 0x5

.field public static final MSG_MAX:I = 0xc8

.field public static final MSG_ODMF_CONNECTED:I = 0x67

.field public static final MSG_ODMF_DISCONNECTED:I = 0x68

.field public static final MSG_ODMF_POLICY_CHANGED:I = 0x66

.field public static final MSG_ODMF_SWITCH_CHANGED:I = 0x69

.field public static final MSG_SCREEN_OFF:I = 0x7

.field public static final MSG_SCREEN_ON:I = 0x6

.field public static final MSG_SWITCH_OFF:I = 0x3

.field public static final MSG_SWITCH_ON:I = 0x2

.field private static final ODMF_CONNECT_TIME:J = 0x7d0L

.field private static final RECVTHREAD_NAME:Ljava/lang/String; = "OdmfRecvThread"

.field private static final STATE_AMINITED:I = 0x3

.field private static final STATE_INITED:I = 0x1

.field private static final STATE_ODMFCONNECTED:I = 0x2

.field private static final STATE_UNINITED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OdmfCollectScheduler"

.field private static instance:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

.field private static mState:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCtrlHandler:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;

.field private mDataHandler:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;

.field private mOdmfHelper:Lcom/huawei/opcollect/odmf/OdmfHelper;

.field private mRecvHandler:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->LOCK:Ljava/lang/Object;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->instance:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    .line 62
    new-instance v0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;

    invoke-direct {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mState:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mCtrlHandler:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;

    .line 65
    iput-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mDataHandler:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;

    .line 66
    iput-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mRecvHandler:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;

    .line 67
    iput-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mOdmfHelper:Lcom/huawei/opcollect/odmf/OdmfHelper;

    .line 68
    iput-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mContext:Landroid/content/Context;

    .line 71
    const-string v0, "OdmfCollectScheduler"

    const-string v1, "OdmfCollectScheduler"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;)Lcom/huawei/opcollect/odmf/OdmfHelper;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mOdmfHelper:Lcom/huawei/opcollect/odmf/OdmfHelper;

    return-object v0
.end method

.method static synthetic access$200()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mState:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->switchOn()V

    return-void
.end method

.method static synthetic access$500(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->switchOff()V

    return-void
.end method

.method static synthetic access$600(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->screenOn()V

    return-void
.end method

.method static synthetic access$700(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->screenOff()V

    return-void
.end method

.method static synthetic access$800(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->onRawDataInsert(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->onRawDataUpdate(Landroid/os/Message;)V

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OdmfCollectScheduler MachineState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mState:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;

    invoke-virtual {v1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    invoke-static {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->dump(Ljava/io/PrintWriter;)V

    .line 272
    return-void
.end method

.method public static getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;
    .locals 2

    .prologue
    .line 75
    sget-object v1, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->instance:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    invoke-direct {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->instance:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    .line 79
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->instance:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onRawDataInsert(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 245
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/odmf/core/AManagedObject;

    .line 246
    .local v0, "rawData":Lcom/huawei/odmf/core/AManagedObject;
    if-nez v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mOdmfHelper:Lcom/huawei/opcollect/odmf/OdmfHelper;

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mOdmfHelper:Lcom/huawei/opcollect/odmf/OdmfHelper;

    invoke-virtual {v1, v0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->insertManageObject(Lcom/huawei/odmf/core/AManagedObject;)V

    goto :goto_0
.end method

.method private onRawDataUpdate(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 255
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/odmf/core/AManagedObject;

    .line 256
    .local v0, "rawData":Lcom/huawei/odmf/core/AManagedObject;
    if-nez v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mOdmfHelper:Lcom/huawei/opcollect/odmf/OdmfHelper;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mOdmfHelper:Lcom/huawei/opcollect/odmf/OdmfHelper;

    invoke-virtual {v1, v0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->updateManageObject(Lcom/huawei/odmf/core/AManagedObject;)Z

    goto :goto_0
.end method

.method private screenOff()V
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->getInstance()Lcom/huawei/opcollect/strategy/OdmfActionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->checkIfDisableLocation()V

    .line 176
    invoke-static {}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->getInstance()Lcom/huawei/opcollect/strategy/OdmfActionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->checkIfDisableARService()V

    .line 177
    return-void
.end method

.method private screenOn()V
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->getInstance()Lcom/huawei/opcollect/strategy/OdmfActionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->checkIfEnableLocation()V

    .line 171
    invoke-static {}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->getInstance()Lcom/huawei/opcollect/strategy/OdmfActionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->checkIfEnableARService()V

    .line 172
    return-void
.end method

.method private switchOff()V
    .locals 2

    .prologue
    .line 163
    sget-object v0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mState:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;

    invoke-virtual {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;->isAMInited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->getInstance()Lcom/huawei/opcollect/strategy/OdmfActionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->uninitialize()V

    .line 165
    sget-object v0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mState:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;->access$002(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;I)I

    .line 167
    :cond_0
    return-void
.end method

.method private switchOn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 153
    sget-object v0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mState:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;

    invoke-virtual {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;->isOdmfConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-static {}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->getInstance()Lcom/huawei/opcollect/strategy/OdmfActionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->initialize(Landroid/content/Context;)V

    .line 155
    sget-object v0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mState:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;->access$002(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;I)I

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    sget-object v0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mState:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;

    invoke-virtual {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mCtrlHandler:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;

    invoke-virtual {v0, v1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;->removeMessages(I)V

    .line 158
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mCtrlHandler:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;

    invoke-virtual {v0, v1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public getCtrlHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mCtrlHandler:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;

    return-object v0
.end method

.method public getDataHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mDataHandler:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;

    return-object v0
.end method

.method public getOdmfHelper()Lcom/huawei/opcollect/odmf/OdmfHelper;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mOdmfHelper:Lcom/huawei/opcollect/odmf/OdmfHelper;

    return-object v0
.end method

.method public getRecvHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mRecvHandler:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 125
    const-string v2, "OdmfCollectScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "odmf initialize contxt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v2, "com.huawei.nb.service"

    invoke-static {p1, v2}, Lcom/huawei/opcollect/utils/OPCollectUtils;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    const-string v2, "OdmfCollectScheduler"

    const-string v3, "odmf is not installed."

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 130
    :cond_0
    iput-object p1, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mContext:Landroid/content/Context;

    .line 131
    sget-object v2, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mState:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;

    invoke-static {v2, v5}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;->access$002(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$StateMachine;I)I

    .line 132
    new-instance v2, Lcom/huawei/opcollect/odmf/OdmfHelper;

    iget-object v3, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/huawei/opcollect/odmf/OdmfHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mOdmfHelper:Lcom/huawei/opcollect/odmf/OdmfHelper;

    .line 133
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "OdmfCtrlThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "ctrlThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 135
    new-instance v2, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;-><init>(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mCtrlHandler:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;

    .line 136
    invoke-static {}, Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;->getInstance()Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;->getSwitchState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mCtrlHandler:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;

    invoke-virtual {v2, v5}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;->sendEmptyMessage(I)Z

    .line 140
    :cond_1
    new-instance v2, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;-><init>(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mDataHandler:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;

    .line 142
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "OdmfRecvThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, "receiverThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 144
    new-instance v2, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;-><init>(Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->mRecvHandler:Lcom/huawei/opcollect/odmf/OdmfCollectScheduler$OdmfCtrlMsgHandler;

    .line 146
    invoke-static {v0}, Lcom/huawei/opcollect/utils/OPCollectThreadLooperCheck;->initLoopCheck(Landroid/os/HandlerThread;)V

    .line 147
    invoke-static {v1}, Lcom/huawei/opcollect/utils/OPCollectThreadLooperCheck;->initLoopCheck(Landroid/os/HandlerThread;)V

    .line 149
    invoke-static {}, Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;->getInstance()Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/huawei/opcollect/strategy/OpenPlatformSwitch;->initialize(Landroid/content/Context;)V

    goto :goto_0
.end method
