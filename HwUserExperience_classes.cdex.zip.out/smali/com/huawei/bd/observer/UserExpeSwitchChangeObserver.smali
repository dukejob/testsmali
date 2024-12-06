.class public final Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;
.super Landroid/database/ContentObserver;
.source "UserExpeSwitchChangeObserver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserExpeSwitchChangeObserver"

.field private static final USER_EXPERIENCE_INVOLVED:Ljava/lang/String; = "user_experience_involved"

.field private static instance:Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 35
    iput-object p1, p0, Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;->context:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;
    .locals 2
    .param p0, "serviceContext"    # Landroid/content/Context;

    .prologue
    .line 45
    const-class v1, Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;->instance:Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;

    invoke-direct {v0, p0}, Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;->instance:Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;

    .line 48
    :cond_0
    sget-object v0, Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;->instance:Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    .local v0, "resolver":Landroid/content/ContentResolver;
    goto :goto_0
.end method

.method public isSwitchOff(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 89
    const-string v1, "SettingsResolverUtil"

    const-string v2, "failed to get the ue switch settings value"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    move p2, v1

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 4
    .param p1, "isChange"    # Z

    .prologue
    .line 67
    const-string v1, "user_experience_involved"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;->isSwitchOff(Ljava/lang/String;Z)Z

    move-result v0

    .line 68
    .local v0, "isSwitchOff":Z
    const-string v1, "UserExpeSwitchChangeObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the switch status is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {v0}, Lcom/huawei/bd/BDService;->updateUserExperienceSwitch(Z)V

    .line 70
    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/bd/collector/BigDataCollector;->recordExperienceState()V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v1, "UserExpeSwitchChangeObserver"

    const-string v2, "switch open, record rom info"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/huawei/bd/collector/BigDataCollector;->getInstance()Lcom/huawei/bd/collector/BigDataCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/bd/collector/BigDataCollector;->recordRomInfo()V

    goto :goto_0
.end method

.method public register()V
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/huawei/bd/observer/UserExpeSwitchChangeObserver;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "user_experience_involved"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 57
    .local v1, "switchUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 58
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 62
    :goto_0
    const-string v2, "UserExpeSwitchChangeObserver"

    const-string v3, "register system switch change observer successfully"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void

    .line 60
    :cond_0
    const-string v2, "UserExpeSwitchChangeObserver"

    const-string v3, "Can\'t register Content Observer"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
