.class public Lcom/huawei/bd/BDService;
.super Landroid/app/Service;
.source "BDService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/bd/BDService$ConfigUpdateObserver;,
        Lcom/huawei/bd/BDService$BDBinder;
    }
.end annotation


# static fields
.field private static final BOOT_WAIT_TIMES:J = 0xea60L

.field private static final INIT_SIZE:I = 0x10

.field private static final ONE_SECOND_MILLS:I = 0x3e8

.field private static final POST_MSG_DELAY_TIME:J = 0x3a98L

.field private static final TAG:Ljava/lang/String; = "BD.BDService"

.field private static hiWiTrigger:Lcom/huawei/bd/trigger/HiWiTrigger;

.field private static isSwitchOffStatus:Z

.field private static opInterfaceObject:Ljava/lang/Object;


# instance fields
.field private final USER_EXPERIENCE_INVOLVED:Ljava/lang/String;

.field private accumulativeActionReqs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/bd/events/ReportParamBean;",
            ">;"
        }
    .end annotation
.end field

.field private appActionReqs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/bd/events/ReportParamBean;",
            ">;"
        }
    .end annotation
.end field

.field private baseEventEncrypt:Ljava/lang/String;

.field private bigDataBinder:Lcom/huawei/bd/BDService$BDBinder;

.field private bigDataRecordDebug:Ljava/lang/String;

.field private bigDataShareDebug:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private filter:Lcom/huawei/filter/FilterInterface;

.field private flowController:Lcom/huawei/bd/FlowController;

.field private handler:Landroid/os/Handler;

.field private isLazyLoadFinished:Z

.field private observer:Lcom/huawei/bd/BDService$ConfigUpdateObserver;

.field private priorityManager:Lcom/huawei/bd/priority/PriorityManager;

.field private scheduleReceiver:Landroid/content/BroadcastReceiver;

.field private screenOnTime:J

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/bd/BDService;->isSwitchOffStatus:Z

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/bd/BDService;->opInterfaceObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/huawei/bd/BDService;->observer:Lcom/huawei/bd/BDService$ConfigUpdateObserver;

    .line 78
    iput-object v0, p0, Lcom/huawei/bd/BDService;->bigDataShareDebug:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/huawei/bd/BDService;->bigDataRecordDebug:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/huawei/bd/BDService;->baseEventEncrypt:Ljava/lang/String;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/huawei/bd/BDService;->handler:Landroid/os/Handler;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/bd/BDService;->isLazyLoadFinished:Z

    .line 106
    const-string v0, "user_experience_involved"

    iput-object v0, p0, Lcom/huawei/bd/BDService;->USER_EXPERIENCE_INVOLVED:Ljava/lang/String;

    .line 111
    new-instance v0, Lcom/huawei/bd/BDService$1;

    invoke-direct {v0, p0}, Lcom/huawei/bd/BDService$1;-><init>(Lcom/huawei/bd/BDService;)V

    iput-object v0, p0, Lcom/huawei/bd/BDService;->scheduleReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/bd/BDService;)J
    .locals 2
    .param p0, "x0"    # Lcom/huawei/bd/BDService;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/huawei/bd/BDService;->screenOnTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/huawei/bd/BDService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/BDService;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/huawei/bd/BDService;->screenOnTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/huawei/bd/BDService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/BDService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/huawei/bd/BDService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/huawei/bd/BDService;->getOpInterfaceObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/bd/BDService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/BDService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/huawei/bd/BDService;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/bd/BDService;)Lcom/huawei/bd/FlowController;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/BDService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/huawei/bd/BDService;->flowController:Lcom/huawei/bd/FlowController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/bd/BDService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/BDService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/huawei/bd/BDService;->isLazyLoadFinished:Z

    return v0
.end method

.method static synthetic access$500(Lcom/huawei/bd/BDService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/BDService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/huawei/bd/BDService;->appActionReqs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/huawei/bd/BDService;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/BDService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/huawei/bd/BDService;->appActionReqs:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/huawei/bd/BDService;)Lcom/huawei/filter/FilterInterface;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/BDService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/huawei/bd/BDService;->filter:Lcom/huawei/filter/FilterInterface;

    return-object v0
.end method

.method static synthetic access$800(Lcom/huawei/bd/BDService;)Lcom/huawei/bd/priority/PriorityManager;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/BDService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/huawei/bd/BDService;->priorityManager:Lcom/huawei/bd/priority/PriorityManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/huawei/bd/BDService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/bd/BDService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/huawei/bd/BDService;->accumulativeActionReqs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/huawei/bd/BDService;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/BDService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/huawei/bd/BDService;->accumulativeActionReqs:Ljava/util/List;

    return-object p1
.end method

.method private delayInit()V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/huawei/bd/BDService;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/bd/BDService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 174
    iget-object v0, p0, Lcom/huawei/bd/BDService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/huawei/bd/BDService$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/huawei/bd/BDService$$Lambda$0;-><init>(Lcom/huawei/bd/BDService;)V

    .line 180
    invoke-direct {p0}, Lcom/huawei/bd/BDService;->getRestartPunishTime()J

    move-result-wide v2

    .line 174
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    return-void
.end method

.method private delayInitialize()V
    .locals 4

    .prologue
    .line 300
    const-wide/16 v0, 0x3e8

    .line 301
    .local v0, "delayLoadTimeMillis":J
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->isCommercialVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    const-wide/32 v0, 0x927c0

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/huawei/bd/BDService;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/huawei/bd/BDService$$Lambda$1;

    invoke-direct {v3, p0}, Lcom/huawei/bd/BDService$$Lambda$1;-><init>(Lcom/huawei/bd/BDService;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 328
    return-void
.end method

.method private declared-synchronized getBigDataBinder()Lcom/huawei/bd/BDService$BDBinder;
    .locals 3

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/bd/BDService;->bigDataBinder:Lcom/huawei/bd/BDService$BDBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 406
    :try_start_1
    new-instance v1, Lcom/huawei/bd/BDService$BDBinder;

    invoke-direct {v1, p0}, Lcom/huawei/bd/BDService$BDBinder;-><init>(Lcom/huawei/bd/BDService;)V

    iput-object v1, p0, Lcom/huawei/bd/BDService;->bigDataBinder:Lcom/huawei/bd/BDService$BDBinder;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/huawei/bd/BDService;->bigDataBinder:Lcom/huawei/bd/BDService$BDBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    :try_start_3
    const-string v1, "BD.BDService"

    const-string v2, "BDBinder NoClassDefFoundError"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 404
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static declared-synchronized getOpInterfaceObject()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 222
    const-class v3, Lcom/huawei/bd/BDService;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/huawei/bd/BDService;->opInterfaceObject:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 223
    sget-object v2, Lcom/huawei/bd/BDService;->opInterfaceObject:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .local v1, "implement":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    monitor-exit v3

    return-object v2

    .line 226
    .end local v1    # "implement":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    const-string v2, "com.huawei.opcollect.OpInterfaceImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 227
    .restart local v1    # "implement":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/huawei/bd/BDService;->opInterfaceObject:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :goto_1
    :try_start_2
    sget-object v2, Lcom/huawei/bd/BDService;->opInterfaceObject:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 237
    const-string v2, "BD.BDService"

    const-string v4, ": successes to get OP object...."

    invoke-static {v2, v4}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v2, Lcom/huawei/bd/BDService;->opInterfaceObject:Ljava/lang/Object;

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "BD.BDService"

    const-string v4, ": ClassNotFoundException exception getOpInterfaceObject"

    invoke-static {v2, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 222
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 230
    :catch_1
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/InstantiationException;
    :try_start_3
    const-string v2, "BD.BDService"

    const-string v4, ": InstantiationException exception getOpInterfaceObject"

    invoke-static {v2, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 232
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "BD.BDService"

    const-string v4, ": IllegalAccessException exception getOpInterfaceObject"

    invoke-static {v2, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 240
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    const-string v2, "BD.BDService"

    const-string v4, ": failes to get OP object"

    invoke-static {v2, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 241
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPunishByRestartTimes(I)J
    .locals 3
    .param p1, "restartTimes"    # I

    .prologue
    .line 209
    const/4 v2, 0x2

    if-gt p1, v2, :cond_0

    .line 210
    const-wide/16 v0, 0x0

    .line 218
    .local v0, "punishTime":J
    :goto_0
    return-wide v0

    .line 211
    .end local v0    # "punishTime":J
    :cond_0
    const/4 v2, 0x5

    if-gt p1, v2, :cond_1

    .line 212
    const-wide/16 v0, 0x2710

    .restart local v0    # "punishTime":J
    goto :goto_0

    .line 213
    .end local v0    # "punishTime":J
    :cond_1
    const/16 v2, 0xa

    if-gt p1, v2, :cond_2

    .line 214
    const-wide/32 v0, 0xea60

    .restart local v0    # "punishTime":J
    goto :goto_0

    .line 216
    .end local v0    # "punishTime":J
    :cond_2
    const-wide/32 v0, 0x1b7740

    .restart local v0    # "punishTime":J
    goto :goto_0
.end method

.method private getRestartPunishTime()J
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 186
    iget-object v4, p0, Lcom/huawei/bd/BDService;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "RestartTimes"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 187
    .local v1, "restartTimes":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 188
    iget-object v4, p0, Lcom/huawei/bd/BDService;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "RestartTimes"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    const-string v4, "BD.BDService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "boot time within 60sec, punish 0sec "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-wide/16 v2, 0x0

    .line 204
    :goto_0
    return-wide v2

    .line 192
    :cond_0
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->isBetaVersion()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    iget-object v4, p0, Lcom/huawei/bd/BDService;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "IsRestartPunishMode"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 197
    .local v0, "isRestartPunishMode":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 198
    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4}, Lcom/huawei/bd/BDService;->getPunishByRestartTimes(I)J

    move-result-wide v2

    .line 202
    .local v2, "restartPunishTime":J
    :goto_2
    const-string v4, "BD.BDService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restartTimes is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",punish time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v4, p0, Lcom/huawei/bd/BDService;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "RestartTimes"

    add-int/lit8 v6, v1, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 195
    .end local v0    # "isRestartPunishMode":Z
    .end local v2    # "restartPunishTime":J
    :cond_1
    iget-object v4, p0, Lcom/huawei/bd/BDService;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "IsRestartPunishMode"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .restart local v0    # "isRestartPunishMode":Z
    goto :goto_1

    .line 200
    :cond_2
    const-wide/16 v2, 0x0

    .restart local v2    # "restartPunishTime":J
    goto :goto_2
.end method

.method private initialize()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 246
    const-string v5, "BD.BDService"

    const-string v6, "initialize"

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance v5, Lcom/huawei/bd/trigger/HiWiTrigger;

    iget-object v6, p0, Lcom/huawei/bd/BDService;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/huawei/bd/trigger/HiWiTrigger;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/huawei/bd/BDService;->hiWiTrigger:Lcom/huawei/bd/trigger/HiWiTrigger;

    .line 248
    sget-object v5, Lcom/huawei/bd/BDService;->hiWiTrigger:Lcom/huawei/bd/trigger/HiWiTrigger;

    invoke-virtual {v5}, Lcom/huawei/bd/trigger/HiWiTrigger;->initialize()V

    .line 249
    new-instance v5, Lcom/huawei/bd/priority/PriorityManager;

    invoke-direct {v5}, Lcom/huawei/bd/priority/PriorityManager;-><init>()V

    iput-object v5, p0, Lcom/huawei/bd/BDService;->priorityManager:Lcom/huawei/bd/priority/PriorityManager;

    .line 250
    new-instance v5, Lcom/huawei/bd/FlowController;

    iget-object v6, p0, Lcom/huawei/bd/BDService;->priorityManager:Lcom/huawei/bd/priority/PriorityManager;

    invoke-direct {v5, v6}, Lcom/huawei/bd/FlowController;-><init>(Lcom/huawei/bd/priority/PriorityManager;)V

    iput-object v5, p0, Lcom/huawei/bd/BDService;->flowController:Lcom/huawei/bd/FlowController;

    .line 251
    invoke-direct {p0}, Lcom/huawei/bd/BDService;->validateSwitch()V

    .line 252
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/bd/BDService;->context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/huawei/bd/collector/BigDataCollector;->initialize(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v5

    iput-object v5, p0, Lcom/huawei/bd/BDService;->handler:Landroid/os/Handler;

    .line 253
    iget-object v5, p0, Lcom/huawei/bd/BDService;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->doUnzipFile(Landroid/content/Context;)V

    .line 254
    iget-object v5, p0, Lcom/huawei/bd/BDService;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;->getInstance(Landroid/content/Context;)Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;->register()V

    .line 256
    invoke-direct {p0}, Lcom/huawei/bd/BDService;->delayInitialize()V

    .line 258
    invoke-direct {p0}, Lcom/huawei/bd/BDService;->initializeOpenPlatformDataCollect()V

    .line 260
    invoke-direct {p0}, Lcom/huawei/bd/BDService;->getBigDataBinder()Lcom/huawei/bd/BDService$BDBinder;

    move-result-object v5

    iput-object v5, p0, Lcom/huawei/bd/BDService;->bigDataBinder:Lcom/huawei/bd/BDService$BDBinder;

    .line 262
    :try_start_0
    const-string v5, "com.huawei.bd.BDService"

    iget-object v6, p0, Lcom/huawei/bd/BDService;->bigDataBinder:Lcom/huawei/bd/BDService$BDBinder;

    invoke-static {v5, v6}, Lcom/huawei/android/os/ServiceManagerEx;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 263
    const-string v5, "BD.BDService"

    const-string v6, "create and add"

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    iget-object v5, p0, Lcom/huawei/bd/BDService;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;->getInstance(Landroid/content/Context;)Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;

    move-result-object v5

    const-string v6, "user_experience_involved"

    const/4 v7, 0x1

    .line 268
    invoke-virtual {v5, v6, v7}, Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;->isSwitchOff(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/huawei/bd/BDService;->isSwitchOffStatus:Z

    .line 271
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 272
    .local v1, "heartBeatFilter":Landroid/content/IntentFilter;
    const-string v5, "com.huawei.bd.action.heartbeat"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v5, "com.huawei.bd.action.heartbeat_hour"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v5, "com.huawei.bd.action.eventusage"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object v5, p0, Lcom/huawei/bd/BDService;->scheduleReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "com.huawei.permission.BIG_DATA"

    invoke-virtual {p0, v5, v1, v6, v8}, Lcom/huawei/bd/BDService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 279
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 280
    .local v4, "updateConfigFileFilter":Landroid/content/IntentFilter;
    const-string v5, "com.huawei.lcagent.UPDATE_UE_CONFIG"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    new-instance v5, Lcom/huawei/bd/collector/BigDataReceiver;

    invoke-direct {v5}, Lcom/huawei/bd/collector/BigDataReceiver;-><init>()V

    const-string v6, "com.huawei.permission.BIG_DATA"

    invoke-virtual {p0, v5, v4, v6, v8}, Lcom/huawei/bd/BDService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 283
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 284
    .local v3, "sysEventFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v5, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v5, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    new-instance v5, Lcom/huawei/bd/collector/BigDataReceiver;

    invoke-direct {v5}, Lcom/huawei/bd/collector/BigDataReceiver;-><init>()V

    const-string v6, "com.huawei.permission.BIG_DATA"

    invoke-virtual {p0, v5, v3, v6, v8}, Lcom/huawei/bd/BDService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 289
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 290
    .local v2, "packageEventFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const-string v5, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    const-string v5, "package"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 296
    new-instance v5, Lcom/huawei/bd/collector/BigDataReceiver;

    invoke-direct {v5}, Lcom/huawei/bd/collector/BigDataReceiver;-><init>()V

    const-string v6, "com.huawei.permission.BIG_DATA"

    invoke-virtual {p0, v5, v2, v6, v8}, Lcom/huawei/bd/BDService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 297
    return-void

    .line 264
    .end local v1    # "heartBeatFilter":Landroid/content/IntentFilter;
    .end local v2    # "packageEventFilter":Landroid/content/IntentFilter;
    .end local v3    # "sysEventFilter":Landroid/content/IntentFilter;
    .end local v4    # "updateConfigFileFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Lcom/huawei/android/util/NoExtAPIException;
    const-string v5, "BD.BDService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NoExtAPIException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/huawei/android/util/NoExtAPIException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private initializeOpenPlatformDataCollect()V
    .locals 8

    .prologue
    .line 355
    invoke-static {}, Lcom/huawei/bd/BDService;->getOpInterfaceObject()Ljava/lang/Object;

    move-result-object v1

    .line 356
    .local v1, "interfaceObject":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 358
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "initialize"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 359
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/huawei/bd/BDService;->context:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 372
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "BD.BDService"

    const-string v4, "NoSuchMethodException : initializeOpenPlatformDataCollect"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 362
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "BD.BDService"

    const-string v4, "SecurityException : initializeOpenPlatformDataCollect"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "BD.BDService"

    const-string v4, "IllegalAccessException : initializeOpenPlatformDataCollect"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 366
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "BD.BDService"

    const-string v4, "IllegalArgumentException : initializeOpenPlatformDataCollect"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 368
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "BD.BDService"

    const-string v4, "InvocationTargetException : initializeOpenPlatformDataCollect"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isUserExperienceSwitchOff()Z
    .locals 1

    .prologue
    .line 640
    sget-boolean v0, Lcom/huawei/bd/BDService;->isSwitchOffStatus:Z

    return v0
.end method

.method public static updateUserExperienceSwitch(Z)V
    .locals 0
    .param p0, "isSwitchOff"    # Z

    .prologue
    .line 631
    sput-boolean p0, Lcom/huawei/bd/BDService;->isSwitchOffStatus:Z

    .line 632
    return-void
.end method

.method private validateSwitch()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/huawei/bd/BDService;->context:Landroid/content/Context;

    const-string v1, "BDservice_Debug"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataSharedPreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/bd/BDService;->bigDataShareDebug:Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lcom/huawei/bd/BDService;->context:Landroid/content/Context;

    const-string v1, "BDrecord_Debug"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataSharedPreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/bd/BDService;->bigDataRecordDebug:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/huawei/bd/BDService;->context:Landroid/content/Context;

    const-string v1, "BaseEvent_Encrypt"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataSharedPreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/bd/BDService;->baseEventEncrypt:Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/huawei/bd/BDService;->bigDataShareDebug:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/huawei/bd/BDService;->context:Landroid/content/Context;

    const-string v1, "BDservice_Debug"

    .line 337
    invoke-static {}, Lcom/huawei/bd/utils/BigDataSwitchUtil;->isBdServiceDebug()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-static {v0, v1, v2}, Lcom/huawei/bd/utils/BigDataSharedPreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_0
    iget-object v0, p0, Lcom/huawei/bd/BDService;->bigDataRecordDebug:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/huawei/bd/BDService;->context:Landroid/content/Context;

    const-string v1, "BDrecord_Debug"

    invoke-static {}, Lcom/huawei/bd/utils/BigDataSwitchUtil;->isBdRecordDebug()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/bd/utils/BigDataSharedPreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :goto_1
    iget-object v0, p0, Lcom/huawei/bd/BDService;->baseEventEncrypt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/huawei/bd/BDService;->context:Landroid/content/Context;

    const-string v1, "BaseEvent_Encrypt"

    .line 348
    invoke-static {}, Lcom/huawei/bd/utils/BigDataSwitchUtil;->isEncrypt()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-static {v0, v1, v2}, Lcom/huawei/bd/utils/BigDataSharedPreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :goto_2
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/huawei/bd/BDService;->bigDataShareDebug:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/huawei/bd/utils/BigDataSwitchUtil;->setBdServiceDebug(Z)V

    goto :goto_0

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/huawei/bd/BDService;->bigDataRecordDebug:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/huawei/bd/utils/BigDataSwitchUtil;->setBdRecordDebug(Z)V

    goto :goto_1

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/huawei/bd/BDService;->baseEventEncrypt:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/huawei/bd/utils/BigDataSwitchUtil;->setEncrypt(Z)V

    goto :goto_2
.end method


# virtual methods
.method final synthetic lambda$delayInit$0$BDService()V
    .locals 4

    .prologue
    .line 175
    new-instance v0, Lcom/huawei/filter/FilterInterfaceImpl;

    invoke-virtual {p0}, Lcom/huawei/bd/BDService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/filter/FilterInterfaceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/bd/BDService;->filter:Lcom/huawei/filter/FilterInterface;

    .line 176
    invoke-direct {p0}, Lcom/huawei/bd/BDService;->initialize()V

    .line 177
    new-instance v0, Lcom/huawei/bd/BDService$ConfigUpdateObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/huawei/bd/BDService$ConfigUpdateObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/huawei/bd/BDService;->observer:Lcom/huawei/bd/BDService$ConfigUpdateObserver;

    .line 178
    invoke-virtual {p0}, Lcom/huawei/bd/BDService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.huawei.bd.provider.BDProvider/ri"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/huawei/bd/BDService;->observer:Lcom/huawei/bd/BDService$ConfigUpdateObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 180
    return-void
.end method

.method final synthetic lambda$delayInitialize$1$BDService()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 306
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/bd/BDService;->isLazyLoadFinished:Z

    .line 307
    invoke-static {}, Lcom/huawei/bd/collector/Scheduler;->getInstance()Lcom/huawei/bd/collector/Scheduler;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/bd/BDService;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/huawei/bd/collector/Scheduler;->initialize(Landroid/content/Context;)V

    .line 308
    invoke-static {}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->getInstance()Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/bd/BDService;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->initialize(Landroid/content/Context;)V

    .line 311
    iget-object v1, p0, Lcom/huawei/bd/BDService;->appActionReqs:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/huawei/bd/BDService;->appActionReqs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/bd/events/ReportParamBean;

    .line 313
    .local v0, "req":Lcom/huawei/bd/events/ReportParamBean;
    iget-object v2, p0, Lcom/huawei/bd/BDService;->bigDataBinder:Lcom/huawei/bd/BDService$BDBinder;

    invoke-virtual {v0}, Lcom/huawei/bd/events/ReportParamBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/huawei/bd/events/ReportParamBean;->getEventId()I

    move-result v4

    invoke-virtual {v0}, Lcom/huawei/bd/events/ReportParamBean;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 314
    invoke-virtual {v0}, Lcom/huawei/bd/events/ReportParamBean;->getPriority()I

    move-result v6

    .line 313
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/huawei/bd/BDService$BDBinder;->sendAppActionData(Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    .line 316
    .end local v0    # "req":Lcom/huawei/bd/events/ReportParamBean;
    :cond_0
    iget-object v1, p0, Lcom/huawei/bd/BDService;->appActionReqs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 317
    iput-object v7, p0, Lcom/huawei/bd/BDService;->appActionReqs:Ljava/util/List;

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/huawei/bd/BDService;->accumulativeActionReqs:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 321
    iget-object v1, p0, Lcom/huawei/bd/BDService;->accumulativeActionReqs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/bd/events/ReportParamBean;

    .line 322
    .restart local v0    # "req":Lcom/huawei/bd/events/ReportParamBean;
    iget-object v2, p0, Lcom/huawei/bd/BDService;->bigDataBinder:Lcom/huawei/bd/BDService$BDBinder;

    invoke-virtual {v0}, Lcom/huawei/bd/events/ReportParamBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/huawei/bd/events/ReportParamBean;->getEventId()I

    move-result v4

    invoke-virtual {v0}, Lcom/huawei/bd/events/ReportParamBean;->getCount()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/huawei/bd/BDService$BDBinder;->sendAccumulativeData(Ljava/lang/String;II)V

    goto :goto_1

    .line 324
    .end local v0    # "req":Lcom/huawei/bd/events/ReportParamBean;
    :cond_2
    iget-object v1, p0, Lcom/huawei/bd/BDService;->accumulativeActionReqs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 325
    iput-object v7, p0, Lcom/huawei/bd/BDService;->accumulativeActionReqs:Ljava/util/List;

    .line 327
    :cond_3
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 393
    const-string v0, "BD.BDService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Lcom/huawei/bd/BDService;->getBigDataBinder()Lcom/huawei/bd/BDService$BDBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 168
    invoke-virtual {p0}, Lcom/huawei/bd/BDService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/bd/BDService;->context:Landroid/content/Context;

    .line 169
    invoke-direct {p0}, Lcom/huawei/bd/BDService;->delayInit()V

    .line 170
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 383
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 384
    iget-object v0, p0, Lcom/huawei/bd/BDService;->scheduleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/huawei/bd/BDService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 385
    invoke-static {}, Lcom/huawei/bd/collector/Scheduler;->getInstance()Lcom/huawei/bd/collector/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/bd/collector/Scheduler;->onDestory()V

    .line 386
    iget-object v0, p0, Lcom/huawei/bd/BDService;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/bd/db/BigDataSqLiteHelper;->getInstance(Landroid/content/Context;)Lcom/huawei/bd/db/BigDataSqLiteHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/bd/db/BigDataSqLiteHelper;->close()V

    .line 387
    invoke-virtual {p0}, Lcom/huawei/bd/BDService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/bd/BDService;->observer:Lcom/huawei/bd/BDService$ConfigUpdateObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 388
    const-string v0, "BD.BDService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 376
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 399
    const-string v0, "BD.BDService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
