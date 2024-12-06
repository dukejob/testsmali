.class public Lcom/huawei/opcollect/strategy/OdmfActionManager;
.super Ljava/lang/Object;
.source "OdmfActionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/opcollect/strategy/OdmfActionManager$TimeBroadcastReceiver;,
        Lcom/huawei/opcollect/strategy/OdmfActionManager$PolicyModelObserver;,
        Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;,
        Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;
    }
.end annotation


# static fields
.field private static final ACTION_HALFHOUR_TIMETICK:Ljava/lang/String; = "com.huawei.opcollect.action.halfhour_timetick"

.field private static final APP_FG_TABLE_SAVE_DAY_IN_DATABASE:I = 0x1

.field private static final BIGDATA_PERMISSION:Ljava/lang/String; = "com.huawei.permission.BIG_DATA"

.field private static final BOOTCOMPLETED_DELAY:J = 0x1d4c0L

.field private static final DATABASE_NAME:Ljava/lang/String; = "dsCollectEncrypt"

.field private static final EVENT_TYPE:I = 0x2

.field private static final LOCK:Ljava/lang/Object;

.field private static final ODMF_API_VERSION_2_7_0:Ljava/lang/String; = "2.7.0"

.field private static final SP_DATALIFECYCLE:Ljava/lang/String; = "DataLifeCycle"

.field private static final STATE_INITED:I = 0x1

.field private static final STATE_POLICY_INITED:I = 0x2

.field private static final STATE_UNINITED:I = 0x0

.field private static final TABLE_PACKAGE_NAME:Ljava/lang/String; = "com.huawei.nb.model.collectencrypt."

.field private static final TABLE_SAVE_DAY_IN_DATABASE:I = 0x7

.field private static final TABLE_SAVE_MODE_IN_DATABASE:I = 0x5

.field private static final TABLE_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OdmfActionManager"

.field private static final TIMETICK_DELAY:J = 0xea60L

.field private static final TIME_STAMP_FIELD_NAME:Ljava/lang/String; = "mTimeStamp"

.field private static instance:Lcom/huawei/opcollect/strategy/OdmfActionManager;

.field private static mBooting:Z

.field private static mNxtTimer:Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;

.field private static mPolicyModelObserver:Lcom/huawei/nb/notification/ModelObserver;

.field private static mState:Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;

.field private static mTimeReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mCalToday:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mEventObserverRegistered:Z

.field private mFieldObserverRegistered:Z

.field private mPullActionList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/huawei/opcollect/strategy/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mPushActionList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/huawei/opcollect/strategy/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchObserverRegistered:Z

.field private mTableObserverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->instance:Lcom/huawei/opcollect/strategy/OdmfActionManager;

    .line 85
    new-instance v0, Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;

    invoke-direct {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mState:Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;

    .line 86
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mBooting:Z

    .line 87
    new-instance v0, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;

    invoke-direct {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mNxtTimer:Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;

    .line 88
    new-instance v0, Lcom/huawei/opcollect/strategy/OdmfActionManager$TimeBroadcastReceiver;

    invoke-direct {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager$TimeBroadcastReceiver;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    new-instance v0, Lcom/huawei/opcollect/strategy/OdmfActionManager$PolicyModelObserver;

    invoke-direct {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager$PolicyModelObserver;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPolicyModelObserver:Lcom/huawei/nb/notification/ModelObserver;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object v1, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mContext:Landroid/content/Context;

    .line 92
    iput-boolean v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mSwitchObserverRegistered:Z

    .line 93
    iput-boolean v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mTableObserverRegistered:Z

    .line 94
    iput-boolean v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mEventObserverRegistered:Z

    .line 95
    iput-boolean v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mFieldObserverRegistered:Z

    .line 96
    iput-object v1, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mCalToday:Ljava/util/Calendar;

    .line 97
    iput-object v1, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    .line 98
    iput-object v1, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    .line 101
    return-void
.end method

.method static synthetic access$100(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->postTimeTick(J)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;J)V
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->scheduleAlarms(Landroid/content/Context;J)V

    return-void
.end method

.method private calculateRemovePullAction(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 783
    .local p1, "actionSwitchMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "pullAction2Remove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "action2Exist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 785
    :try_start_0
    iget-object v3, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 786
    iget-object v3, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 787
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 788
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 789
    .local v2, "str":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 790
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 802
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 792
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "str":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 795
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 796
    .restart local v2    # "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/strategy/Action;

    .line 797
    .local v0, "action":Lcom/huawei/opcollect/strategy/Action;
    if-eqz v0, :cond_2

    .line 798
    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/Action;->destroy()Z

    goto :goto_1

    .line 802
    .end local v0    # "action":Lcom/huawei/opcollect/strategy/Action;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "str":Ljava/lang/String;
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 803
    return-void
.end method

.method private calculateRemovePushAction(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 807
    .local p1, "actionSwitchMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "pushAction2Remove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "action2Exist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 809
    :try_start_0
    iget-object v3, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 810
    iget-object v3, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 811
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 812
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 813
    .local v2, "str":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 814
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 826
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 816
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "str":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 819
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 820
    .restart local v2    # "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/strategy/Action;

    .line 821
    .local v0, "action":Lcom/huawei/opcollect/strategy/Action;
    if-eqz v0, :cond_2

    .line 822
    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/Action;->destroy()Z

    goto :goto_1

    .line 826
    .end local v0    # "action":Lcom/huawei/opcollect/strategy/Action;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "str":Ljava/lang/String;
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    return-void
.end method

.method private clearEventPolicy()V
    .locals 7

    .prologue
    .line 489
    sget-object v4, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 490
    :try_start_0
    iget-object v3, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 491
    :cond_0
    monitor-exit v4

    .line 511
    :cond_1
    :goto_0
    return-void

    .line 493
    :cond_2
    iget-object v3, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/opcollect/strategy/Action;>;>;"
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 494
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 495
    .local v2, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/opcollect/strategy/Action;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 496
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/opcollect/strategy/Action;

    invoke-virtual {v3}, Lcom/huawei/opcollect/strategy/Action;->destroy()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v3, "OdmfActionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove IllegalState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 507
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/opcollect/strategy/Action;>;>;"
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/opcollect/strategy/Action;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 501
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/opcollect/strategy/Action;>;>;"
    .restart local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/opcollect/strategy/Action;>;"
    :catch_1
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_3
    const-string v3, "OdmfActionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove Unsupported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 506
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/opcollect/strategy/Action;>;"
    :cond_4
    iget-object v3, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 507
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 508
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->isPolicyNeedLocation()Z

    move-result v3

    if-nez v3, :cond_1

    .line 509
    iget-object v3, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/opcollect/location/SystemLocation;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/location/SystemLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/opcollect/location/SystemLocation;->disable()V

    goto :goto_0
.end method

.method private clearTableCollectPolicy()V
    .locals 7

    .prologue
    .line 463
    sget-object v4, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 464
    :try_start_0
    iget-object v3, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 465
    :cond_0
    monitor-exit v4

    .line 486
    :cond_1
    :goto_0
    return-void

    .line 468
    :cond_2
    iget-object v3, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/opcollect/strategy/Action;>;>;"
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 469
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 470
    .local v2, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/opcollect/strategy/Action;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 471
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/opcollect/strategy/Action;

    invoke-virtual {v3}, Lcom/huawei/opcollect/strategy/Action;->destroy()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v3, "OdmfActionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove IllegalState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 482
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/opcollect/strategy/Action;>;>;"
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/opcollect/strategy/Action;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 476
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/opcollect/strategy/Action;>;>;"
    .restart local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/opcollect/strategy/Action;>;"
    :catch_1
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_3
    const-string v3, "OdmfActionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove Unsupported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 481
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/opcollect/strategy/Action;>;"
    :cond_4
    iget-object v3, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 482
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 483
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->isPolicyNeedLocation()Z

    move-result v3

    if-nez v3, :cond_1

    .line 484
    iget-object v3, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/opcollect/location/SystemLocation;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/location/SystemLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/opcollect/location/SystemLocation;->disable()V

    goto :goto_0
.end method

.method private dataLifeCycleControl()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    .line 273
    const-string v7, "OdmfActionManager"

    const-string v9, "dataLifeCycleControl initialize"

    invoke-static {v7, v9}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getOdmfHelper()Lcom/huawei/opcollect/odmf/OdmfHelper;

    move-result-object v3

    .line 275
    .local v3, "odmfHelper":Lcom/huawei/opcollect/odmf/OdmfHelper;
    if-nez v3, :cond_1

    .line 276
    const-string v7, "OdmfActionManager"

    const-string v8, "dataLifeCycleControl odmfHelper is null."

    invoke-static {v7, v8}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    return-void

    .line 279
    :cond_1
    const-class v7, Lcom/huawei/nb/model/meta/DataLifeCycle;

    invoke-static {v7}, Lcom/huawei/nb/query/Query;->select(Ljava/lang/Class;)Lcom/huawei/nb/query/Query;

    move-result-object v7

    const-string v9, "mDBName"

    const-string v10, "dsCollectEncrypt"

    invoke-virtual {v7, v9, v10}, Lcom/huawei/nb/query/Query;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/nb/query/Query;

    move-result-object v4

    .line 280
    .local v4, "query":Lcom/huawei/nb/query/Query;
    invoke-virtual {v3, v4}, Lcom/huawei/opcollect/odmf/OdmfHelper;->queryManageObject(Lcom/huawei/nb/query/Query;)Ljava/util/List;

    move-result-object v1

    .line 281
    .local v1, "dataLifeCycleList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v6, "tableNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 283
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/odmf/core/AManagedObject;

    .line 284
    .local v2, "object":Lcom/huawei/odmf/core/AManagedObject;
    check-cast v2, Lcom/huawei/nb/model/meta/DataLifeCycle;

    .end local v2    # "object":Lcom/huawei/odmf/core/AManagedObject;
    invoke-virtual {v2}, Lcom/huawei/nb/model/meta/DataLifeCycle;->getMTableName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 288
    :cond_2
    invoke-static {}, Lcom/huawei/opcollect/strategy/ActionTableName;->values()[Lcom/huawei/opcollect/strategy/ActionTableName;

    move-result-object v9

    array-length v10, v9

    move v7, v8

    :goto_1
    if-ge v7, v10, :cond_0

    aget-object v5, v9, v7

    .line 290
    .local v5, "tableName":Lcom/huawei/opcollect/strategy/ActionTableName;
    invoke-virtual {v5}, Lcom/huawei/opcollect/strategy/ActionTableName;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 291
    const-string v11, "OdmfActionManager"

    const-string v12, "dataLifeCycleControl, the DataLifeCycle is exist"

    invoke-static {v11, v12}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 295
    :cond_4
    new-instance v0, Lcom/huawei/nb/model/meta/DataLifeCycle;

    invoke-direct {v0}, Lcom/huawei/nb/model/meta/DataLifeCycle;-><init>()V

    .line 296
    .local v0, "dataLifeCycle":Lcom/huawei/nb/model/meta/DataLifeCycle;
    const-string v11, "dsCollectEncrypt"

    invoke-virtual {v0, v11}, Lcom/huawei/nb/model/meta/DataLifeCycle;->setMDBName(Ljava/lang/String;)V

    .line 297
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "com.huawei.nb.model.collectencrypt."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/huawei/opcollect/strategy/ActionTableName;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/huawei/nb/model/meta/DataLifeCycle;->setMTableName(Ljava/lang/String;)V

    .line 298
    const-string v11, "mTimeStamp"

    invoke-virtual {v0, v11}, Lcom/huawei/nb/model/meta/DataLifeCycle;->setMFieldName(Ljava/lang/String;)V

    .line 299
    const-string v11, "RawFgAPPEvent"

    invoke-virtual {v5}, Lcom/huawei/opcollect/strategy/ActionTableName;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 300
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/huawei/nb/model/meta/DataLifeCycle;->setMCount(Ljava/lang/Integer;)V

    .line 304
    :goto_3
    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/huawei/nb/model/meta/DataLifeCycle;->setMMode(Ljava/lang/Integer;)V

    .line 305
    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/huawei/nb/model/meta/DataLifeCycle;->setMDBRekeyTime(Ljava/lang/Long;)V

    .line 306
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/huawei/nb/model/meta/DataLifeCycle;->setMThreshold(Ljava/lang/Integer;)V

    .line 307
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/huawei/nb/model/meta/DataLifeCycle;->setMUnit(Ljava/lang/Integer;)V

    .line 308
    invoke-virtual {v3, v0}, Lcom/huawei/opcollect/odmf/OdmfHelper;->insertManageObjectWithoutCache(Lcom/huawei/odmf/core/AManagedObject;)Lcom/huawei/odmf/core/AManagedObject;

    move-result-object v11

    if-nez v11, :cond_3

    .line 309
    const-string v11, "OdmfActionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "the DataLifeCycle of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " set failed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 302
    :cond_5
    const/4 v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/huawei/nb/model/meta/DataLifeCycle;->setMCount(Ljava/lang/Integer;)V

    goto :goto_3
.end method

.method private dataLifeCycleControlNewVersion()V
    .locals 11

    .prologue
    const/4 v4, 0x5

    .line 252
    const-string v1, "OdmfActionManager"

    const-string v2, "dataLifeCycleControl initialize"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getOdmfHelper()Lcom/huawei/opcollect/odmf/OdmfHelper;

    move-result-object v0

    .line 254
    .local v0, "odmfHelper":Lcom/huawei/opcollect/odmf/OdmfHelper;
    if-nez v0, :cond_1

    .line 255
    const-string v1, "OdmfActionManager"

    const-string v2, "dataLifeCycleControl odmfHelper is null."

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    return-void

    .line 259
    :cond_1
    invoke-static {}, Lcom/huawei/opcollect/strategy/ActionTableName;->values()[Lcom/huawei/opcollect/strategy/ActionTableName;

    move-result-object v9

    array-length v10, v9

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v7, v9, v8

    .line 261
    .local v7, "tableName":Lcom/huawei/opcollect/strategy/ActionTableName;
    sget-object v1, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_FG_APP_EVENT:Lcom/huawei/opcollect/strategy/ActionTableName;

    invoke-virtual {v1}, Lcom/huawei/opcollect/strategy/ActionTableName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/huawei/opcollect/strategy/ActionTableName;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    const-string v1, "dsCollectEncrypt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.huawei.nb.model.collectencrypt."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/huawei/opcollect/strategy/ActionTableName;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mTimeStamp"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/opcollect/odmf/OdmfHelper;->addDataLifeCycleConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v6

    .line 268
    .local v6, "ret":I
    :goto_1
    const-string v1, "OdmfActionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write DataLifeCycle of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_0

    .line 265
    .end local v6    # "ret":I
    :cond_2
    const-string v1, "dsCollectEncrypt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.huawei.nb.model.collectencrypt."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/huawei/opcollect/strategy/ActionTableName;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mTimeStamp"

    const/4 v5, 0x7

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/opcollect/odmf/OdmfHelper;->addDataLifeCycleConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v6

    .restart local v6    # "ret":I
    goto :goto_1
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 964
    sget-object v2, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 965
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OdmfActionManager MachineState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mState:Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;

    invoke-virtual {v3}, Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OdmfActionManager mSwitchObserverRegistered: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->getInstance()Lcom/huawei/opcollect/strategy/OdmfActionManager;

    move-result-object v3

    iget-boolean v3, v3, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mSwitchObserverRegistered:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    sget-object v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mNxtTimer:Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;

    invoke-virtual {v1}, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 969
    const-string v1, ""

    invoke-static {v1, p0}, Lcom/huawei/opcollect/strategy/Action;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 970
    sget-object v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->instance:Lcom/huawei/opcollect/strategy/OdmfActionManager;

    if-nez v1, :cond_0

    .line 971
    const-string v1, "OdmfActionManager instance is null"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    monitor-exit v2

    .line 996
    :goto_0
    return-void

    .line 974
    :cond_0
    sget-object v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->instance:Lcom/huawei/opcollect/strategy/OdmfActionManager;

    iget-object v1, v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----------pull action list("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/huawei/opcollect/strategy/OdmfActionManager;->instance:Lcom/huawei/opcollect/strategy/OdmfActionManager;

    iget-object v3, v3, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")----------"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 976
    sget-object v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->instance:Lcom/huawei/opcollect/strategy/OdmfActionManager;

    iget-object v1, v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/strategy/Action;

    .line 977
    .local v0, "action":Lcom/huawei/opcollect/strategy/Action;
    if-eqz v0, :cond_1

    .line 978
    const/4 v3, 0x4

    invoke-virtual {v0, v3, p0}, Lcom/huawei/opcollect/strategy/Action;->dump(ILjava/io/PrintWriter;)V

    goto :goto_1

    .line 995
    .end local v0    # "action":Lcom/huawei/opcollect/strategy/Action;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 982
    :cond_2
    :try_start_1
    const-string v1, "----------pull action list is null----------"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 985
    :cond_3
    sget-object v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->instance:Lcom/huawei/opcollect/strategy/OdmfActionManager;

    iget-object v1, v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----------push action list("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/huawei/opcollect/strategy/OdmfActionManager;->instance:Lcom/huawei/opcollect/strategy/OdmfActionManager;

    iget-object v3, v3, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")----------"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 987
    sget-object v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->instance:Lcom/huawei/opcollect/strategy/OdmfActionManager;

    iget-object v1, v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/strategy/Action;

    .line 988
    .restart local v0    # "action":Lcom/huawei/opcollect/strategy/Action;
    if-eqz v0, :cond_4

    .line 989
    const/4 v3, 0x4

    invoke-virtual {v0, v3, p0}, Lcom/huawei/opcollect/strategy/Action;->dump(ILjava/io/PrintWriter;)V

    goto :goto_2

    .line 993
    .end local v0    # "action":Lcom/huawei/opcollect/strategy/Action;
    :cond_5
    const-string v1, "----------push action list is null----------"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    :cond_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private findParamObject(Ljava/util/List;Ljava/lang/String;I)Lcom/huawei/odmf/core/AManagedObject;
    .locals 4
    .param p2, "targetName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/odmf/core/AManagedObject;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/huawei/odmf/core/AManagedObject;"
        }
    .end annotation

    .prologue
    .local p1, "srcList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    const/4 v2, 0x0

    .line 830
    if-nez p1, :cond_0

    move-object v0, v2

    .line 850
    :goto_0
    return-object v0

    .line 833
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    move-object v0, v2

    .line 834
    goto :goto_0

    .line 836
    :cond_2
    const/4 v1, 0x1

    if-ne p3, v1, :cond_4

    .line 837
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/odmf/core/AManagedObject;

    .local v0, "amo":Lcom/huawei/odmf/core/AManagedObject;
    move-object v1, v0

    .line 838
    check-cast v1, Lcom/huawei/nb/model/collectencrypt/DicTableCollectPolicy;

    invoke-virtual {v1}, Lcom/huawei/nb/model/collectencrypt/DicTableCollectPolicy;->getMTblName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 842
    .end local v0    # "amo":Lcom/huawei/odmf/core/AManagedObject;
    :cond_4
    const/4 v1, 0x2

    if-ne p3, v1, :cond_6

    .line 843
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/odmf/core/AManagedObject;

    .restart local v0    # "amo":Lcom/huawei/odmf/core/AManagedObject;
    move-object v1, v0

    .line 844
    check-cast v1, Lcom/huawei/nb/model/collectencrypt/DicEventPolicy;

    invoke-virtual {v1}, Lcom/huawei/nb/model/collectencrypt/DicEventPolicy;->getMEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .end local v0    # "amo":Lcom/huawei/odmf/core/AManagedObject;
    :cond_6
    move-object v0, v2

    .line 850
    goto :goto_0
.end method

.method public static getInstance()Lcom/huawei/opcollect/strategy/OdmfActionManager;
    .locals 2

    .prologue
    .line 104
    sget-object v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->instance:Lcom/huawei/opcollect/strategy/OdmfActionManager;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;

    invoke-direct {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->instance:Lcom/huawei/opcollect/strategy/OdmfActionManager;

    .line 108
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->instance:Lcom/huawei/opcollect/strategy/OdmfActionManager;

    monitor-exit v1

    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPolicy()Z
    .locals 2

    .prologue
    .line 358
    sget-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mState:Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;->access$002(Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;I)I

    .line 359
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->initPolicySwitch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0

    .line 362
    :cond_0
    const-wide/32 v0, 0xea60

    invoke-static {v0, v1}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->postTimeTick(J)V

    .line 363
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private grantKvAuthority()V
    .locals 5

    .prologue
    .line 341
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getOdmfHelper()Lcom/huawei/opcollect/odmf/OdmfHelper;

    move-result-object v1

    new-instance v2, Lcom/huawei/nb/kv/KCompositeString;

    const-string v3, "com.huawei.bd"

    invoke-direct {v2, v3}, Lcom/huawei/nb/kv/KCompositeString;-><init>(Ljava/lang/String;)V

    const-string v3, "com.huawei.recsys"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/huawei/opcollect/odmf/OdmfHelper;->grant(Lcom/huawei/nb/kv/KCompositeString;Ljava/lang/String;I)Z

    move-result v0

    .line 343
    .local v0, "ret":Z
    const-string v1, "OdmfActionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "grantKvAuthority ret "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public static handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 882
    const-string v0, "OdmfActionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    sget-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mState:Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;

    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 884
    const-string v0, "OdmfActionManager"

    const-string v1, "is not yet initialized, the msg will be dropped."

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    :goto_0
    return-void

    .line 887
    :cond_0
    iget v0, p0, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 910
    const-string v0, "OdmfActionManager"

    const-string v1, "handleMessage error msg."

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 889
    :pswitch_0
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 891
    sget-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mNxtTimer:Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;

    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->reset()V

    .line 892
    invoke-static {}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->getInstance()Lcom/huawei/opcollect/strategy/OdmfActionManager;

    move-result-object v0

    sget-object v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mNxtTimer:Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;

    invoke-direct {v0, v1}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->isNewDay(Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 893
    invoke-static {}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->getInstance()Lcom/huawei/opcollect/strategy/OdmfActionManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->onNewDay()V

    .line 895
    :cond_1
    invoke-static {}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->getInstance()Lcom/huawei/opcollect/strategy/OdmfActionManager;

    move-result-object v0

    sget-object v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mNxtTimer:Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;

    invoke-direct {v0, v1}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->onTimeTick(Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;)V

    goto :goto_0

    .line 898
    :pswitch_1
    invoke-static {}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->getInstance()Lcom/huawei/opcollect/strategy/OdmfActionManager;

    move-result-object v1

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/nb/notification/ChangeNotification;

    invoke-direct {v1, v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->onPolicyChanged(Lcom/huawei/nb/notification/ChangeNotification;)V

    goto :goto_0

    .line 901
    :pswitch_2
    invoke-static {}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->getInstance()Lcom/huawei/opcollect/strategy/OdmfActionManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->onSwitchChanged()V

    goto :goto_0

    .line 904
    :pswitch_3
    invoke-static {}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->getInstance()Lcom/huawei/opcollect/strategy/OdmfActionManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->odmfConnect()V

    goto :goto_0

    .line 907
    :pswitch_4
    invoke-static {}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->getInstance()Lcom/huawei/opcollect/strategy/OdmfActionManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->odmfDisconnect()V

    goto :goto_0

    .line 887
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private initAlarm()V
    .locals 5

    .prologue
    .line 240
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 241
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v1, "com.huawei.opcollect.action.halfhour_timetick"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.huawei.permission.BIG_DATA"

    .line 246
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getRecvHandler()Landroid/os/Handler;

    move-result-object v4

    .line 245
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mContext:Landroid/content/Context;

    const-wide/32 v2, 0x1b7740

    invoke-static {v1, v2, v3}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->scheduleAlarms(Landroid/content/Context;J)V

    .line 249
    return-void
.end method

.method private initEventPolicy(Ljava/util/List;Z)V
    .locals 2
    .param p2, "isSwitchChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/odmf/core/AManagedObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    const-string v0, "OdmfActionManager"

    const-string v1, "initEventPolicy"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->updateEventList(Ljava/util/List;Z)V

    .line 460
    return-void
.end method

.method private initPolicySwitch()Z
    .locals 15

    .prologue
    .line 693
    const-string v13, "OdmfActionManager"

    const-string v14, "+++entry initPolicySwitch"

    invoke-static {v13, v14}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v13

    invoke-virtual {v13}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getOdmfHelper()Lcom/huawei/opcollect/odmf/OdmfHelper;

    move-result-object v7

    .line 695
    .local v7, "odmfHelper":Lcom/huawei/opcollect/odmf/OdmfHelper;
    if-nez v7, :cond_0

    .line 696
    const-string v13, "OdmfActionManager"

    const-string v14, "initPolicySwitch odmf connect failed."

    invoke-static {v13, v14}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const/4 v13, 0x0

    .line 744
    :goto_0
    return v13

    .line 701
    :cond_0
    const-class v13, Lcom/huawei/nb/model/collectencrypt/CollectSwitch;

    invoke-static {v13}, Lcom/huawei/nb/query/Query;->select(Ljava/lang/Class;)Lcom/huawei/nb/query/Query;

    move-result-object v10

    .line 702
    .local v10, "query":Lcom/huawei/nb/query/Query;
    invoke-virtual {v7, v10}, Lcom/huawei/opcollect/odmf/OdmfHelper;->queryManageObject(Lcom/huawei/nb/query/Query;)Ljava/util/List;

    move-result-object v3

    .line 703
    .local v3, "collectSwitchList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_2

    .line 704
    :cond_1
    const-string v13, "OdmfActionManager"

    const-string v14, "CollectSwitch empty"

    invoke-static {v13, v14}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->clearEventPolicy()V

    .line 706
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->clearTableCollectPolicy()V

    .line 707
    const/4 v13, 0x1

    goto :goto_0

    .line 711
    :cond_2
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 712
    .local v5, "deDuplicateSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/huawei/odmf/core/AManagedObject;

    .line 713
    .local v12, "sub":Lcom/huawei/odmf/core/AManagedObject;
    check-cast v12, Lcom/huawei/nb/model/collectencrypt/CollectSwitch;

    .end local v12    # "sub":Lcom/huawei/odmf/core/AManagedObject;
    invoke-virtual {v12}, Lcom/huawei/nb/model/collectencrypt/CollectSwitch;->getMDataName()Ljava/lang/String;

    move-result-object v4

    .line 714
    .local v4, "dataName":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_3

    .line 717
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 719
    .end local v4    # "dataName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v13

    if-nez v13, :cond_5

    .line 720
    const-string v13, "OdmfActionManager"

    const-string v14, "CollectSwitch deDuplicateSet empty."

    invoke-static {v13, v14}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->clearEventPolicy()V

    .line 722
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->clearTableCollectPolicy()V

    .line 723
    const/4 v13, 0x1

    goto :goto_0

    .line 727
    :cond_5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 728
    .local v2, "actionSwitchMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 729
    .local v6, "key":Ljava/lang/String;
    invoke-static {v6}, Lcom/huawei/opcollect/utils/OPCollectConstant;->getActionNameFromSwitchName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 730
    .local v1, "actionName":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 731
    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 735
    .end local v1    # "actionName":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v0, "action2Exist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v8, "pullAction2Remove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v2, v8, v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->calculateRemovePullAction(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    .line 738
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 739
    .local v9, "pushAction2Remove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v2, v9, v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->calculateRemovePushAction(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    .line 740
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 741
    .local v11, "str":Ljava/lang/String;
    invoke-interface {v2, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 743
    .end local v11    # "str":Ljava/lang/String;
    :cond_8
    invoke-direct {p0, v2, v7}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->initPolicySwitchInner(Ljava/util/Map;Lcom/huawei/opcollect/odmf/OdmfHelper;)V

    .line 744
    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method private initPolicySwitchInner(Ljava/util/Map;Lcom/huawei/opcollect/odmf/OdmfHelper;)V
    .locals 12
    .param p2, "odmfHelper"    # Lcom/huawei/opcollect/odmf/OdmfHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/huawei/opcollect/odmf/OdmfHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "actionSwitchMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, 0x1

    .line 749
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 750
    .local v7, "switch2Add":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 751
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .local v2, "paramTableCollectList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    const-class v9, Lcom/huawei/nb/model/collectencrypt/DicTableCollectPolicy;

    invoke-static {v9}, Lcom/huawei/nb/query/Query;->select(Ljava/lang/Class;)Lcom/huawei/nb/query/Query;

    move-result-object v6

    .line 753
    .local v6, "subTableQuery":Lcom/huawei/nb/query/Query;
    invoke-virtual {p2, v6}, Lcom/huawei/opcollect/odmf/OdmfHelper;->queryManageObject(Lcom/huawei/nb/query/Query;)Ljava/util/List;

    move-result-object v5

    .line 754
    .local v5, "subTableParamList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 755
    .local v0, "amoName":Ljava/lang/String;
    invoke-direct {p0, v5, v0, v11}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->findParamObject(Ljava/util/List;Ljava/lang/String;I)Lcom/huawei/odmf/core/AManagedObject;

    move-result-object v8

    .line 756
    .local v8, "targetObject":Lcom/huawei/odmf/core/AManagedObject;
    if-eqz v8, :cond_0

    .line 759
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 761
    .end local v0    # "amoName":Ljava/lang/String;
    .end local v8    # "targetObject":Lcom/huawei/odmf/core/AManagedObject;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 762
    invoke-direct {p0, v2, v11}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->initTableCollectPolicy(Ljava/util/List;Z)V

    .line 765
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 766
    .local v1, "paramEventCollectList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    const-class v9, Lcom/huawei/nb/model/collectencrypt/DicEventPolicy;

    invoke-static {v9}, Lcom/huawei/nb/query/Query;->select(Ljava/lang/Class;)Lcom/huawei/nb/query/Query;

    move-result-object v4

    .line 767
    .local v4, "subEventQuery":Lcom/huawei/nb/query/Query;
    invoke-virtual {p2, v4}, Lcom/huawei/opcollect/odmf/OdmfHelper;->queryManageObject(Lcom/huawei/nb/query/Query;)Ljava/util/List;

    move-result-object v3

    .line 768
    .local v3, "subEventParamList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 769
    .restart local v0    # "amoName":Ljava/lang/String;
    const/4 v10, 0x2

    invoke-direct {p0, v3, v0, v10}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->findParamObject(Ljava/util/List;Ljava/lang/String;I)Lcom/huawei/odmf/core/AManagedObject;

    move-result-object v8

    .line 770
    .restart local v8    # "targetObject":Lcom/huawei/odmf/core/AManagedObject;
    if-eqz v8, :cond_3

    .line 773
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 775
    .end local v0    # "amoName":Ljava/lang/String;
    .end local v8    # "targetObject":Lcom/huawei/odmf/core/AManagedObject;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 776
    invoke-direct {p0, v1, v11}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->initEventPolicy(Ljava/util/List;Z)V

    .line 779
    .end local v1    # "paramEventCollectList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    .end local v2    # "paramTableCollectList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    .end local v3    # "subEventParamList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    .end local v4    # "subEventQuery":Lcom/huawei/nb/query/Query;
    .end local v5    # "subTableParamList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    .end local v6    # "subTableQuery":Lcom/huawei/nb/query/Query;
    :cond_5
    return-void
.end method

.method private initTableCollectPolicy(Ljava/util/List;Z)V
    .locals 2
    .param p2, "isSwitchChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/odmf/core/AManagedObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    const-string v0, "OdmfActionManager"

    const-string v1, "initTableCollectPolicy"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->updateTableCollectList(Ljava/util/List;Z)V

    .line 413
    return-void
.end method

.method private isNewDay(Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;)Z
    .locals 7
    .param p1, "nxtTimer"    # Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 854
    sget-object v3, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 855
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 856
    .local v0, "calNow":Ljava/util/Calendar;
    iget-object v4, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mCalToday:Ljava/util/Calendar;

    if-nez v4, :cond_0

    .line 857
    iput-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mCalToday:Ljava/util/Calendar;

    .line 858
    invoke-static {v0}, Lcom/huawei/opcollect/utils/OPCollectUtils;->getTimeSpanToNextDay(Ljava/util/Calendar;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->update(J)V

    .line 859
    monitor-exit v3

    .line 873
    :goto_0
    return v1

    .line 862
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mCalToday:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x2

    .line 863
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mCalToday:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x5

    .line 864
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mCalToday:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 865
    invoke-static {v0}, Lcom/huawei/opcollect/utils/OPCollectUtils;->getTimeSpanToNextDay(Ljava/util/Calendar;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->update(J)V

    .line 866
    monitor-exit v3

    goto :goto_0

    .line 872
    .end local v0    # "calNow":Ljava/util/Calendar;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 869
    .restart local v0    # "calNow":Ljava/util/Calendar;
    :cond_1
    :try_start_1
    const-string v1, "OdmfActionManager"

    const-string v4, "isNewDay"

    invoke-static {v1, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iput-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mCalToday:Ljava/util/Calendar;

    .line 871
    invoke-static {v0}, Lcom/huawei/opcollect/utils/OPCollectUtils;->getTimeSpanToNextDay(Ljava/util/Calendar;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->update(J)V

    .line 872
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 873
    goto :goto_0
.end method

.method private isPolicyNeedLocation()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 514
    sget-object v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 515
    :try_start_0
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "RawLocationRecord"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 516
    monitor-exit v1

    .line 523
    :goto_0
    return v0

    .line 518
    :cond_0
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    .line 519
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "CameraAction"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 520
    monitor-exit v1

    goto :goto_0

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private odmfConnect()V
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mState:Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;

    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 331
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mState:Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;

    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;->isPolicyInited()Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->getPolicy()Z

    .line 334
    :cond_1
    sget-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mState:Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;

    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;->isPolicyInited()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->registerObserver()Z

    .line 337
    :cond_2
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->grantKvAuthority()V

    goto :goto_0
.end method

.method private odmfDisconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 348
    sget-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mState:Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;

    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;->isPolicyInited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mState:Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;->access$002(Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;I)I

    .line 351
    :cond_0
    iput-boolean v2, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mTableObserverRegistered:Z

    .line 352
    iput-boolean v2, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mEventObserverRegistered:Z

    .line 353
    iput-boolean v2, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mFieldObserverRegistered:Z

    .line 354
    iput-boolean v2, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mSwitchObserverRegistered:Z

    .line 355
    return-void
.end method

.method private onNewDay()V
    .locals 5

    .prologue
    .line 175
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 176
    .local v1, "calNow":Ljava/util/Calendar;
    sget-object v3, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/strategy/Action;

    .line 179
    .local v0, "action":Lcom/huawei/opcollect/strategy/Action;
    invoke-virtual {v0, v1}, Lcom/huawei/opcollect/strategy/Action;->onNewDay(Ljava/util/Calendar;)V

    goto :goto_0

    .line 188
    .end local v0    # "action":Lcom/huawei/opcollect/strategy/Action;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 183
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/strategy/Action;

    .line 185
    .restart local v0    # "action":Lcom/huawei/opcollect/strategy/Action;
    invoke-virtual {v0, v1}, Lcom/huawei/opcollect/strategy/Action;->onNewDay(Ljava/util/Calendar;)V

    goto :goto_1

    .line 188
    .end local v0    # "action":Lcom/huawei/opcollect/strategy/Action;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    return-void
.end method

.method private onPolicyChanged(Lcom/huawei/nb/notification/ChangeNotification;)V
    .locals 8
    .param p1, "changeNotification"    # Lcom/huawei/nb/notification/ChangeNotification;

    .prologue
    const/4 v7, 0x0

    .line 668
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/nb/notification/ChangeNotification;->getType()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/nb/notification/ChangeNotification;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "policyTblName":Ljava/lang/String;
    const-string v3, "OdmfActionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPolicyChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-virtual {p1}, Lcom/huawei/nb/notification/ChangeNotification;->getUpdatedItems()Ljava/util/List;

    move-result-object v2

    .line 674
    .local v2, "updateList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 675
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/odmf/core/AManagedObject;

    .line 676
    .local v0, "object":Lcom/huawei/odmf/core/AManagedObject;
    const-string v4, "OdmfActionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPolicyChanged updateList size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " object:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 679
    .end local v0    # "object":Lcom/huawei/odmf/core/AManagedObject;
    :cond_2
    const-class v3, Lcom/huawei/nb/model/collectencrypt/DicTableCollectPolicy;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 680
    invoke-direct {p0, v2, v7}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->updateTableCollectPolicy(Ljava/util/List;Z)V

    .line 684
    :cond_3
    :goto_2
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->postTimeTick(J)V

    goto :goto_0

    .line 681
    :cond_4
    const-class v3, Lcom/huawei/nb/model/collectencrypt/DicEventPolicy;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 682
    invoke-direct {p0, v2, v7}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->updateEventPolicy(Ljava/util/List;Z)V

    goto :goto_2
.end method

.method private onSwitchChanged()V
    .locals 2

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->initPolicySwitch()Z

    .line 689
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->postTimeTick(J)V

    .line 690
    return-void
.end method

.method private onTimeTick(Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;)V
    .locals 11
    .param p1, "nxtTimer"    # Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;

    .prologue
    const-wide/16 v8, 0x3e8

    .line 192
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 194
    .local v1, "calNow":Ljava/util/Calendar;
    invoke-static {v1}, Lcom/huawei/opcollect/utils/OPCollectUtils;->getTimeInMsFromMidnight(Ljava/util/Calendar;)J

    move-result-wide v6

    div-long v2, v6, v8

    .line 195
    .local v2, "secondOfDay":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    div-long v4, v6, v8

    .line 196
    .local v4, "rtNow":J
    sget-object v7, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 197
    :try_start_0
    iget-object v6, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    if-eqz v6, :cond_1

    .line 198
    iget-object v6, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/strategy/Action;

    .local v0, "action":Lcom/huawei/opcollect/strategy/Action;
    move-object v6, p1

    .line 199
    invoke-virtual/range {v0 .. v6}, Lcom/huawei/opcollect/strategy/Action;->checkTimerTriggers(Ljava/util/Calendar;JJLcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 200
    const-string v6, "OdmfActionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkTimerTriggers.perform:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/Action;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/Action;->perform()Z

    goto :goto_0

    .line 205
    .end local v0    # "action":Lcom/huawei/opcollect/strategy/Action;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->setBegin(J)V

    .line 207
    iget-wide v6, p1, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->triggerAtMillis:J

    invoke-static {v6, v7}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->postTimeTick(J)V

    .line 208
    const-string v6, "OdmfActionManager"

    invoke-virtual {p1}, Lcom/huawei/opcollect/strategy/OdmfActionManager$NextTimer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method private static postTimeTick(J)V
    .locals 6
    .param p0, "delayMillis"    # J

    .prologue
    .line 916
    move-wide v0, p0

    .line 918
    .local v0, "delay":J
    sget-boolean v2, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mBooting:Z

    if-eqz v2, :cond_0

    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 919
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 920
    const-wide/32 v0, 0xea60

    .line 925
    :cond_0
    :goto_0
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 927
    return-void

    .line 922
    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mBooting:Z

    goto :goto_0
.end method

.method private registerObserver()Z
    .locals 4

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mSwitchObserverRegistered:Z

    if-nez v0, :cond_0

    .line 599
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getOdmfHelper()Lcom/huawei/opcollect/odmf/OdmfHelper;

    move-result-object v0

    const-class v1, Lcom/huawei/nb/model/collectencrypt/CollectSwitch;

    sget-object v2, Lcom/huawei/nb/notification/ObserverType;->OBSERVER_MODEL:Lcom/huawei/nb/notification/ObserverType;

    sget-object v3, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPolicyModelObserver:Lcom/huawei/nb/notification/ModelObserver;

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/opcollect/odmf/OdmfHelper;->subscribeManagedObject(Ljava/lang/Class;Lcom/huawei/nb/notification/ObserverType;Lcom/huawei/nb/notification/ModelObserver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mSwitchObserverRegistered:Z

    .line 601
    const-string v0, "OdmfActionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSwitchObserverRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mSwitchObserverRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mTableObserverRegistered:Z

    if-nez v0, :cond_1

    .line 604
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getOdmfHelper()Lcom/huawei/opcollect/odmf/OdmfHelper;

    move-result-object v0

    const-class v1, Lcom/huawei/nb/model/collectencrypt/DicTableCollectPolicy;

    sget-object v2, Lcom/huawei/nb/notification/ObserverType;->OBSERVER_MODEL:Lcom/huawei/nb/notification/ObserverType;

    sget-object v3, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPolicyModelObserver:Lcom/huawei/nb/notification/ModelObserver;

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/opcollect/odmf/OdmfHelper;->subscribeManagedObject(Ljava/lang/Class;Lcom/huawei/nb/notification/ObserverType;Lcom/huawei/nb/notification/ModelObserver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mTableObserverRegistered:Z

    .line 606
    const-string v0, "OdmfActionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTableObserverRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mTableObserverRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :cond_1
    iget-boolean v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mFieldObserverRegistered:Z

    if-nez v0, :cond_2

    .line 609
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getOdmfHelper()Lcom/huawei/opcollect/odmf/OdmfHelper;

    move-result-object v0

    const-class v1, Lcom/huawei/nb/model/collectencrypt/DicFieldCollectPolicy;

    sget-object v2, Lcom/huawei/nb/notification/ObserverType;->OBSERVER_MODEL:Lcom/huawei/nb/notification/ObserverType;

    sget-object v3, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPolicyModelObserver:Lcom/huawei/nb/notification/ModelObserver;

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/opcollect/odmf/OdmfHelper;->subscribeManagedObject(Ljava/lang/Class;Lcom/huawei/nb/notification/ObserverType;Lcom/huawei/nb/notification/ModelObserver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mFieldObserverRegistered:Z

    .line 611
    const-string v0, "OdmfActionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFieldObserverRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mFieldObserverRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_2
    iget-boolean v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mEventObserverRegistered:Z

    if-nez v0, :cond_3

    .line 614
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getOdmfHelper()Lcom/huawei/opcollect/odmf/OdmfHelper;

    move-result-object v0

    const-class v1, Lcom/huawei/nb/model/collectencrypt/DicEventPolicy;

    sget-object v2, Lcom/huawei/nb/notification/ObserverType;->OBSERVER_MODEL:Lcom/huawei/nb/notification/ObserverType;

    sget-object v3, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPolicyModelObserver:Lcom/huawei/nb/notification/ModelObserver;

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/opcollect/odmf/OdmfHelper;->subscribeManagedObject(Ljava/lang/Class;Lcom/huawei/nb/notification/ObserverType;Lcom/huawei/nb/notification/ModelObserver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mEventObserverRegistered:Z

    .line 616
    const-string v0, "OdmfActionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEventObserverRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mEventObserverRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_3
    iget-boolean v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mSwitchObserverRegistered:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mTableObserverRegistered:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mFieldObserverRegistered:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mEventObserverRegistered:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static scheduleAlarms(Landroid/content/Context;J)V
    .locals 7
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "triggerDelayed"    # J

    .prologue
    const/4 v4, 0x0

    .line 930
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 931
    .local v1, "mgr":Landroid/app/AlarmManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.huawei.opcollect.action.halfhour_timetick"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 932
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 933
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 934
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 935
    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, p1

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 937
    const-string v3, "OdmfActionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheduleAlarms:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    return-void
.end method

.method private unregisterObserver()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 624
    iget-boolean v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mTableObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 625
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getOdmfHelper()Lcom/huawei/opcollect/odmf/OdmfHelper;

    move-result-object v0

    const-class v1, Lcom/huawei/nb/model/collectencrypt/DicTableCollectPolicy;

    sget-object v2, Lcom/huawei/nb/notification/ObserverType;->OBSERVER_MODEL:Lcom/huawei/nb/notification/ObserverType;

    sget-object v3, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPolicyModelObserver:Lcom/huawei/nb/notification/ModelObserver;

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/opcollect/odmf/OdmfHelper;->unSubscribeManagedObject(Ljava/lang/Class;Lcom/huawei/nb/notification/ObserverType;Lcom/huawei/nb/notification/ModelObserver;)Z

    .line 627
    iput-boolean v4, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mTableObserverRegistered:Z

    .line 629
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mFieldObserverRegistered:Z

    if-eqz v0, :cond_1

    .line 630
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getOdmfHelper()Lcom/huawei/opcollect/odmf/OdmfHelper;

    move-result-object v0

    const-class v1, Lcom/huawei/nb/model/collectencrypt/DicFieldCollectPolicy;

    sget-object v2, Lcom/huawei/nb/notification/ObserverType;->OBSERVER_MODEL:Lcom/huawei/nb/notification/ObserverType;

    sget-object v3, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPolicyModelObserver:Lcom/huawei/nb/notification/ModelObserver;

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/opcollect/odmf/OdmfHelper;->unSubscribeManagedObject(Ljava/lang/Class;Lcom/huawei/nb/notification/ObserverType;Lcom/huawei/nb/notification/ModelObserver;)Z

    .line 632
    iput-boolean v4, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mFieldObserverRegistered:Z

    .line 634
    :cond_1
    iget-boolean v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mEventObserverRegistered:Z

    if-eqz v0, :cond_2

    .line 635
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getOdmfHelper()Lcom/huawei/opcollect/odmf/OdmfHelper;

    move-result-object v0

    const-class v1, Lcom/huawei/nb/model/collectencrypt/DicEventPolicy;

    sget-object v2, Lcom/huawei/nb/notification/ObserverType;->OBSERVER_MODEL:Lcom/huawei/nb/notification/ObserverType;

    sget-object v3, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPolicyModelObserver:Lcom/huawei/nb/notification/ModelObserver;

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/opcollect/odmf/OdmfHelper;->unSubscribeManagedObject(Ljava/lang/Class;Lcom/huawei/nb/notification/ObserverType;Lcom/huawei/nb/notification/ModelObserver;)Z

    .line 637
    iput-boolean v4, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mEventObserverRegistered:Z

    .line 639
    :cond_2
    iget-boolean v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mSwitchObserverRegistered:Z

    if-eqz v0, :cond_3

    .line 640
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getOdmfHelper()Lcom/huawei/opcollect/odmf/OdmfHelper;

    move-result-object v0

    const-class v1, Lcom/huawei/nb/model/collectencrypt/CollectSwitch;

    sget-object v2, Lcom/huawei/nb/notification/ObserverType;->OBSERVER_MODEL:Lcom/huawei/nb/notification/ObserverType;

    sget-object v3, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPolicyModelObserver:Lcom/huawei/nb/notification/ModelObserver;

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/opcollect/odmf/OdmfHelper;->unSubscribeManagedObject(Ljava/lang/Class;Lcom/huawei/nb/notification/ObserverType;Lcom/huawei/nb/notification/ModelObserver;)Z

    .line 642
    iput-boolean v4, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mSwitchObserverRegistered:Z

    .line 644
    :cond_3
    const-string v0, "OdmfActionManager"

    const-string v1, "unregisterObserver"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const/4 v0, 0x1

    return v0
.end method

.method private updateEventList(Ljava/util/List;Z)V
    .locals 10
    .param p2, "isSwitchChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/odmf/core/AManagedObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 450
    :cond_0
    return-void

    .line 420
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/odmf/core/AManagedObject;

    .local v2, "ao":Lcom/huawei/odmf/core/AManagedObject;
    move-object v3, v2

    .line 421
    check-cast v3, Lcom/huawei/nb/model/collectencrypt/DicEventPolicy;

    .line 422
    .local v3, "ep":Lcom/huawei/nb/model/collectencrypt/DicEventPolicy;
    iget-object v6, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/huawei/nb/model/collectencrypt/DicEventPolicy;->getMEventName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/opcollect/strategy/ActionFactory;->getSysEventAction(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/opcollect/strategy/Action;

    move-result-object v0

    .line 423
    .local v0, "action":Lcom/huawei/opcollect/strategy/Action;
    if-eqz v0, :cond_2

    .line 426
    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/Action;->getName()Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "actionName":Ljava/lang/String;
    sget-object v6, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 428
    if-nez p2, :cond_4

    :try_start_0
    iget-object v7, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 429
    :cond_3
    const-string v7, "OdmfActionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ignore "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " policy change."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/Action;->destroy()Z

    .line 431
    monitor-exit v6

    goto :goto_0

    .line 433
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_4
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/Action;->enable()V

    .line 435
    invoke-virtual {v3}, Lcom/huawei/nb/model/collectencrypt/DicEventPolicy;->getMMaxRecordOneday()Ljava/lang/Integer;

    move-result-object v4

    .line 436
    .local v4, "intVal":Ljava/lang/Integer;
    if-eqz v4, :cond_5

    .line 437
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/huawei/opcollect/strategy/Action;->setMaxRecordOneday(I)V

    .line 439
    :cond_5
    invoke-virtual {v3}, Lcom/huawei/nb/model/collectencrypt/DicEventPolicy;->getMColdDownTime()Ljava/lang/Integer;

    move-result-object v4

    .line 440
    if-eqz v4, :cond_6

    .line 441
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/huawei/opcollect/strategy/Action;->setIntervalMin(I)V

    .line 443
    :cond_6
    sget-object v6, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 444
    :try_start_2
    iget-object v7, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    if-nez v7, :cond_7

    .line 445
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    .line 447
    :cond_7
    iget-object v7, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/Action;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    monitor-exit v6

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5
.end method

.method private updateEventPolicy(Ljava/util/List;Z)V
    .locals 2
    .param p2, "isSwitchChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/odmf/core/AManagedObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    const-string v0, "OdmfActionManager"

    const-string v1, "updateEventPolicy"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->updateEventList(Ljava/util/List;Z)V

    .line 455
    return-void
.end method

.method private updateTableCollectList(Ljava/util/List;Z)V
    .locals 10
    .param p2, "isSwitchChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/odmf/core/AManagedObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 403
    :cond_0
    return-void

    .line 371
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/odmf/core/AManagedObject;

    .local v2, "ao":Lcom/huawei/odmf/core/AManagedObject;
    move-object v4, v2

    .line 372
    check-cast v4, Lcom/huawei/nb/model/collectencrypt/DicTableCollectPolicy;

    .line 373
    .local v4, "tcp":Lcom/huawei/nb/model/collectencrypt/DicTableCollectPolicy;
    iget-object v6, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/huawei/nb/model/collectencrypt/DicTableCollectPolicy;->getMTblName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/opcollect/strategy/ActionFactory;->getSysInfoAction(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/opcollect/strategy/Action;

    move-result-object v0

    .line 374
    .local v0, "action":Lcom/huawei/opcollect/strategy/Action;
    if-eqz v0, :cond_2

    .line 377
    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/Action;->getName()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "actionName":Ljava/lang/String;
    sget-object v6, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 379
    if-nez p2, :cond_4

    :try_start_0
    iget-object v7, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 380
    :cond_3
    const-string v7, "OdmfActionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ignore "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " policy change."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/Action;->destroy()Z

    .line 382
    monitor-exit v6

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_4
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/Action;->enable()V

    .line 386
    invoke-virtual {v4}, Lcom/huawei/nb/model/collectencrypt/DicTableCollectPolicy;->getMTriggerPolicy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/huawei/opcollect/strategy/Action;->setCollectPolicy(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v4}, Lcom/huawei/nb/model/collectencrypt/DicTableCollectPolicy;->getMMaxRecordOneday()Ljava/lang/Integer;

    move-result-object v3

    .line 389
    .local v3, "intVal":Ljava/lang/Integer;
    if-eqz v3, :cond_5

    .line 390
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/huawei/opcollect/strategy/Action;->setMaxRecordOneday(I)V

    .line 392
    :cond_5
    invoke-virtual {v4}, Lcom/huawei/nb/model/collectencrypt/DicTableCollectPolicy;->getMColdDownTime()Ljava/lang/Integer;

    move-result-object v3

    .line 393
    if-eqz v3, :cond_6

    .line 394
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/huawei/opcollect/strategy/Action;->setIntervalMin(I)V

    .line 396
    :cond_6
    sget-object v6, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 397
    :try_start_2
    iget-object v7, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    if-nez v7, :cond_7

    .line 398
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    .line 400
    :cond_7
    iget-object v7, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    monitor-exit v6

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5
.end method

.method private updateTableCollectPolicy(Ljava/util/List;Z)V
    .locals 2
    .param p2, "isSwitchChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/odmf/core/AManagedObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/odmf/core/AManagedObject;>;"
    const-string v0, "OdmfActionManager"

    const-string v1, "updateTableCollectPolicy"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->updateTableCollectList(Ljava/util/List;Z)V

    .line 408
    return-void
.end method


# virtual methods
.method public checkIfActionEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 547
    sget-object v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPushActionList:Ljava/util/Map;

    .line 549
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    .line 548
    return v0

    .line 549
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkIfDisableARService()V
    .locals 3

    .prologue
    .line 590
    sget-object v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v2, "RawARStatus"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->enableAREvent(I)V

    .line 594
    :cond_0
    monitor-exit v1

    .line 595
    return-void

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkIfDisableLocation()V
    .locals 3

    .prologue
    .line 568
    sget-object v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v2, "RawLocationRecord"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/location/SystemLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/location/SystemLocation;->disable()V

    .line 572
    :cond_0
    monitor-exit v1

    .line 573
    return-void

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkIfEnableARService()V
    .locals 3

    .prologue
    .line 579
    sget-object v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v2, "RawARStatus"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;->enableAREvent(I)V

    .line 583
    :cond_0
    monitor-exit v1

    .line 584
    return-void

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkIfEnableLocation()V
    .locals 3

    .prologue
    .line 557
    sget-object v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 558
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v2, "RawLocationRecord"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/location/SystemLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/location/SystemLocation;->enable()V

    .line 561
    :cond_0
    monitor-exit v1

    .line 562
    return-void

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    sget-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mState:Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;

    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string v0, "OdmfActionManager"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_0
    iput-object p1, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mContext:Landroid/content/Context;

    .line 223
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mCalToday:Ljava/util/Calendar;

    .line 224
    sget-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mState:Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;->access$002(Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;I)I

    .line 225
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->getPolicy()Z

    .line 227
    sget-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mState:Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;

    invoke-virtual {v0}, Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;->isPolicyInited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->registerObserver()Z

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mContext:Landroid/content/Context;

    const-string v1, "2.7.0"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectUtils;->checkODMFApiVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->dataLifeCycleControlNewVersion()V

    .line 235
    :goto_1
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->initAlarm()V

    .line 236
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->grantKvAuthority()V

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 233
    :cond_2
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->dataLifeCycleControl()V

    goto :goto_1
.end method

.method public removeLocationListener(Ljava/lang/String;Lcom/huawei/opcollect/location/ILocationListener;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/huawei/opcollect/location/ILocationListener;

    .prologue
    .line 533
    sget-object v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mPullActionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v2, "RawLocationRecord"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;->removeLocationListener(Ljava/lang/String;Lcom/huawei/opcollect/location/ILocationListener;)V

    .line 537
    :cond_0
    monitor-exit v1

    .line 538
    return-void

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public uninitialize()V
    .locals 2

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->clearEventPolicy()V

    .line 319
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->clearTableCollectPolicy()V

    .line 320
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/OdmfActionManager;->unregisterObserver()Z

    .line 321
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/opcollect/location/SystemLocation;->getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/location/SystemLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/location/SystemLocation;->destroy()V

    .line 322
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 323
    invoke-static {}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getInstance()Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/opcollect/odmf/OdmfCollectScheduler;->getCtrlHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    sget-object v0, Lcom/huawei/opcollect/strategy/OdmfActionManager;->mState:Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;->access$002(Lcom/huawei/opcollect/strategy/OdmfActionManager$StateMachine;I)I

    .line 325
    return-void
.end method
