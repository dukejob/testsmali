.class public Lcom/huawei/bd/utils/CommonsUtils;
.super Ljava/lang/Object;
.source "CommonsUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonsUtils"

.field private static final XML_SYSTEM_ETC_HIVIEW_DIR:Ljava/lang/String; = "/system/etc/hiview/"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getCanonicalPath(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    const-string v2, "CommonsUtils"

    const-string v3, "file is not exist"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-object v1

    .line 114
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "CommonsUtils"

    const-string v3, "IOException occur"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getConfigXmlByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "xmlName"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/system/hiview/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "systemXmlPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "file":Ljava/io/File;
    const-string v2, "CommonsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is exists :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v1    # "systemXmlPath":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .restart local v1    # "systemXmlPath":Ljava/lang/String;
    :cond_0
    const-string v1, "/system/etc/hiview/"

    goto :goto_0
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    const-string v0, "ro.config.hw_optb"

    const-string v1, "-1"

    invoke-static {v0, v1}, Lcom/huawei/android/os/SystemPropertiesEx;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    const-string v0, "ro.product.CustCVersion"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/huawei/android/os/SystemPropertiesEx;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIsoCountry()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    invoke-static {}, Lcom/huawei/bd/utils/CommonsUtils;->isCountryCode()Z

    move-result v2

    .line 46
    .local v2, "isCountry":Z
    invoke-static {}, Lcom/huawei/bd/utils/CommonsUtils;->getRealCode()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "code":Ljava/lang/String;
    invoke-static {}, Lcom/huawei/bd/bean/AreaConfigGenerator;->getInstance()Lcom/huawei/bd/bean/AreaConfigGenerator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/huawei/bd/bean/AreaConfigGenerator;->getParasValuesFromXml(Ljava/lang/String;Z)Lcom/huawei/bd/bean/AreaInfo;

    move-result-object v0

    .line 48
    .local v0, "areaInfo":Lcom/huawei/bd/bean/AreaInfo;
    if-nez v0, :cond_0

    const-string v3, ""

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {v0}, Lcom/huawei/bd/bean/AreaInfo;->getIsoCountry()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getRealCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    const-string v0, "-1"

    .line 71
    .local v0, "countryCode":Ljava/lang/String;
    invoke-static {}, Lcom/huawei/bd/utils/CommonsUtils;->isCountryCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {}, Lcom/huawei/bd/utils/CommonsUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 74
    :cond_0
    invoke-static {}, Lcom/huawei/bd/utils/CommonsUtils;->getCustVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isCountryCode()Z
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/huawei/bd/utils/CommonsUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "countryCode":Ljava/lang/String;
    const-string v1, "999"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    :cond_0
    const/4 v1, 0x0

    .line 61
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
