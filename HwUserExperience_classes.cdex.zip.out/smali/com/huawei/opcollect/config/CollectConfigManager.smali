.class public Lcom/huawei/opcollect/config/CollectConfigManager;
.super Ljava/lang/Object;
.source "CollectConfigManager.java"


# static fields
.field private static final ITEM_MODULE_TAG:Ljava/lang/String; = "HwUserExperience"

.field private static final ITEM_PARAM_NAME:Ljava/lang/String; = "name"

.field private static final ITEM_PARAM_VALUE:Ljava/lang/String; = "value"

.field private static final LOCK:Ljava/lang/Object;

.field private static final PROP_DEFVALUE_IS_MODULE_OPEN:I = 0x1

.field private static final PROP_NAME_IS_HWUSER_OPEN:Ljava/lang/String; = "IsOpcollectOpen"

.field private static final TAG:Ljava/lang/String; = "CollectConfigManager"

.field private static final XML_ETC_HIVIEW_SYS_CONFIG:Ljava/lang/String; = "/system/etc/hiview/hiview_sysconfig.xml"

.field private static instance:Lcom/huawei/opcollect/config/CollectConfigManager;


# instance fields
.field private sysPropMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/config/CollectConfigManager;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/opcollect/config/CollectConfigManager;->sysPropMap:Ljava/util/Map;

    .line 34
    invoke-direct {p0}, Lcom/huawei/opcollect/config/CollectConfigManager;->loadConfig()V

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/huawei/opcollect/config/CollectConfigManager;
    .locals 2

    .prologue
    .line 43
    sget-object v1, Lcom/huawei/opcollect/config/CollectConfigManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/config/CollectConfigManager;->instance:Lcom/huawei/opcollect/config/CollectConfigManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/huawei/opcollect/config/CollectConfigManager;

    invoke-direct {v0}, Lcom/huawei/opcollect/config/CollectConfigManager;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/config/CollectConfigManager;->instance:Lcom/huawei/opcollect/config/CollectConfigManager;

    .line 47
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/config/CollectConfigManager;->instance:Lcom/huawei/opcollect/config/CollectConfigManager;

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPlusSysProp(Ljava/lang/String;I)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 83
    :try_start_0
    iget-object v2, p0, Lcom/huawei/opcollect/config/CollectConfigManager;->sysPropMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 90
    .end local v1    # "value":Ljava/lang/String;
    .end local p2    # "defValue":I
    :cond_0
    :goto_0
    return p2

    .line 87
    .restart local p2    # "defValue":I
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "CollectConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetSysProp has NumberFormatException , SysPropName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadConfig()V
    .locals 7

    .prologue
    .line 52
    new-instance v5, Lcom/huawei/opcollect/config/XmpParserGenerator;

    const-string v6, "/system/etc/hiview/hiview_sysconfig.xml"

    invoke-direct {v5, v6}, Lcom/huawei/opcollect/config/XmpParserGenerator;-><init>(Ljava/lang/String;)V

    const-string v6, "HwUserExperience"

    invoke-virtual {v5, v6}, Lcom/huawei/opcollect/config/XmpParserGenerator;->getChildItem(Ljava/lang/String;)Lcom/huawei/opcollect/config/XmlItem;

    move-result-object v3

    .line 53
    .local v3, "systemXml":Lcom/huawei/opcollect/config/XmlItem;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/huawei/opcollect/config/XmlItem;->getChildItemList()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_2

    .line 54
    :cond_0
    const-string v5, "CollectConfigManager"

    const-string v6, "read nothing from the hiview system config xml"

    invoke-static {v5, v6}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_1
    return-void

    .line 58
    :cond_2
    invoke-virtual {v3}, Lcom/huawei/opcollect/config/XmlItem;->getChildItemList()Ljava/util/List;

    move-result-object v0

    .line 59
    .local v0, "childItemList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/opcollect/config/XmlItem;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/opcollect/config/XmlItem;

    .line 60
    .local v1, "item":Lcom/huawei/opcollect/config/XmlItem;
    const-string v6, "name"

    invoke-virtual {v1, v6}, Lcom/huawei/opcollect/config/XmlItem;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "name":Ljava/lang/String;
    const-string v6, "value"

    invoke-virtual {v1, v6}, Lcom/huawei/opcollect/config/XmlItem;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "value":Ljava/lang/String;
    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    .line 63
    iget-object v6, p0, Lcom/huawei/opcollect/config/CollectConfigManager;->sysPropMap:Ljava/util/Map;

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public isModuleCanBeStarted()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 74
    const/4 v0, 0x1

    .line 75
    .local v0, "isCanBeStarted":Z
    const-string v2, "IsOpcollectOpen"

    invoke-direct {p0, v2, v1}, Lcom/huawei/opcollect/config/CollectConfigManager;->getPlusSysProp(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 77
    :goto_0
    const-string v1, "CollectConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return v0

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
