.class public Lcom/huawei/bd/bean/AreaConfigGenerator;
.super Ljava/lang/Object;
.source "AreaConfigGenerator.java"


# static fields
.field private static final LIST_DEFAULT_VALUE:I = 0x10

.field private static final TAG:Ljava/lang/String;

.field private static areaConfigGenerator:Lcom/huawei/bd/bean/AreaConfigGenerator;


# instance fields
.field private areaInfosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/bd/bean/AreaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/huawei/bd/bean/AreaConfigGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/bd/bean/AreaConfigGenerator;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/bd/bean/AreaConfigGenerator;
    .locals 2

    .prologue
    .line 49
    const-class v1, Lcom/huawei/bd/bean/AreaConfigGenerator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/bd/bean/AreaConfigGenerator;->areaConfigGenerator:Lcom/huawei/bd/bean/AreaConfigGenerator;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/huawei/bd/bean/AreaConfigGenerator;

    invoke-direct {v0}, Lcom/huawei/bd/bean/AreaConfigGenerator;-><init>()V

    sput-object v0, Lcom/huawei/bd/bean/AreaConfigGenerator;->areaConfigGenerator:Lcom/huawei/bd/bean/AreaConfigGenerator;

    .line 52
    :cond_0
    sget-object v0, Lcom/huawei/bd/bean/AreaConfigGenerator;->areaConfigGenerator:Lcom/huawei/bd/bean/AreaConfigGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setAreaInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/huawei/bd/bean/AreaInfo;
    .locals 3
    .param p1, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v2, 0x0

    .line 121
    new-instance v0, Lcom/huawei/bd/bean/AreaInfo;

    invoke-direct {v0}, Lcom/huawei/bd/bean/AreaInfo;-><init>()V

    .line 122
    .local v0, "areaInfo":Lcom/huawei/bd/bean/AreaInfo;
    const-string v1, "name"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/bd/bean/AreaInfo;->setName(Ljava/lang/String;)V

    .line 123
    const-string v1, "locale"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/bd/bean/AreaInfo;->setLocale(Ljava/lang/String;)V

    .line 124
    const-string v1, "code"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/bd/bean/AreaInfo;->setCode(Ljava/lang/String;)V

    .line 125
    const-string v1, "mcc"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/bd/bean/AreaInfo;->setMcc(Ljava/lang/String;)V

    .line 126
    const-string v1, "continent"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/bd/bean/AreaInfo;->setContinent(Ljava/lang/String;)V

    .line 127
    const-string v1, "isoLang"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/bd/bean/AreaInfo;->setIsoLang(Ljava/lang/String;)V

    .line 128
    const-string v1, "isoCountry"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/bd/bean/AreaInfo;->setIsoCountry(Ljava/lang/String;)V

    .line 129
    const-string v1, "cfgServerDomain"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/bd/bean/AreaInfo;->setCfgServerDomain(Ljava/lang/String;)V

    .line 130
    return-object v0
.end method


# virtual methods
.method public getAreaInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/bd/bean/AreaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v1, p0, Lcom/huawei/bd/bean/AreaConfigGenerator;->areaInfosList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 62
    new-instance v0, Ljava/io/File;

    const-string v1, "area_config.xml"

    invoke-static {v1}, Lcom/huawei/bd/utils/CommonsUtils;->getConfigXmlByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/huawei/bd/bean/AreaConfigGenerator;->getAreaInfos(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/bd/bean/AreaConfigGenerator;->areaInfosList:Ljava/util/List;

    .line 65
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/huawei/bd/bean/AreaConfigGenerator;->areaInfosList:Ljava/util/List;

    return-object v1
.end method

.method public getAreaInfos(Ljava/io/File;)Ljava/util/List;
    .locals 13
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/bd/bean/AreaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 76
    new-instance v5, Ljava/util/ArrayList;

    const/16 v11, 0x10

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/bd/bean/AreaInfo;>;"
    const/4 v3, 0x0

    .line 78
    .local v3, "input":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 80
    .local v8, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 81
    sget-object v11, Lcom/huawei/bd/bean/AreaConfigGenerator;->TAG:Ljava/lang/String;

    const-string v12, "getAreaInfos file isn\'t exist"

    invoke-static {v11, v12}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-static {v3}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v8}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    move-object v5, v10

    .line 117
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/bd/bean/AreaInfo;>;"
    :goto_0
    return-object v5

    .line 84
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/bd/bean/AreaInfo;>;"
    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .end local v3    # "input":Ljava/io/FileInputStream;
    .local v4, "input":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v9, Ljava/io/InputStreamReader;

    const-string v11, "UTF-8"

    invoke-direct {v9, v4, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    .end local v8    # "reader":Ljava/io/InputStreamReader;
    .local v9, "reader":Ljava/io/InputStreamReader;
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 87
    .local v7, "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    if-nez v7, :cond_1

    .line 88
    sget-object v11, Lcom/huawei/bd/bean/AreaConfigGenerator;->TAG:Ljava/lang/String;

    const-string v12, "getAreaInfos pullParser == null"

    invoke-static {v11, v12}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 114
    invoke-static {v4}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v9}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/InputStreamReader;
    .restart local v8    # "reader":Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    move-object v5, v10

    .line 89
    goto :goto_0

    .line 91
    .end local v3    # "input":Ljava/io/FileInputStream;
    .end local v8    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    .restart local v9    # "reader":Ljava/io/InputStreamReader;
    :cond_1
    :try_start_4
    invoke-interface {v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 92
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 93
    .local v2, "eventType":I
    :goto_1
    const/4 v10, 0x1

    if-eq v2, v10, :cond_3

    .line 94
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, "nodeName":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 107
    :cond_2
    :goto_2
    :pswitch_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 108
    goto :goto_1

    .line 99
    :pswitch_1
    const-string v10, "Region"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 100
    invoke-direct {p0, v7}, Lcom/huawei/bd/bean/AreaConfigGenerator;->setAreaInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/huawei/bd/bean/AreaInfo;

    move-result-object v0

    .line 101
    .local v0, "areaInfo":Lcom/huawei/bd/bean/AreaInfo;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 109
    .end local v0    # "areaInfo":Lcom/huawei/bd/bean/AreaInfo;
    .end local v2    # "eventType":I
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v7    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/InputStreamReader;
    .restart local v8    # "reader":Ljava/io/InputStreamReader;
    move-object v3, v4

    .line 110
    .end local v4    # "input":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    sget-object v10, Lcom/huawei/bd/bean/AreaConfigGenerator;->TAG:Ljava/lang/String;

    const-string v11, "getAreaInfos IOException"

    invoke-static {v10, v11}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 114
    invoke-static {v3}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v8}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    goto :goto_0

    .line 114
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "input":Ljava/io/FileInputStream;
    .end local v8    # "reader":Ljava/io/InputStreamReader;
    .restart local v2    # "eventType":I
    .restart local v4    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "reader":Ljava/io/InputStreamReader;
    :cond_3
    invoke-static {v4}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v9}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/InputStreamReader;
    .restart local v8    # "reader":Ljava/io/InputStreamReader;
    move-object v3, v4

    .line 116
    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    goto :goto_0

    .line 111
    .end local v2    # "eventType":I
    .end local v7    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v1

    .line 112
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_6
    sget-object v10, Lcom/huawei/bd/bean/AreaConfigGenerator;->TAG:Ljava/lang/String;

    const-string v11, "getAreaInfos XmlPullParserException"

    invoke-static {v10, v11}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 114
    invoke-static {v3}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v8}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    goto :goto_0

    .line 114
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v10

    :goto_5
    invoke-static {v3}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v8}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    .line 116
    throw v10

    .line 114
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v3    # "input":Ljava/io/FileInputStream;
    .end local v8    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    .restart local v9    # "reader":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v10

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/InputStreamReader;
    .restart local v8    # "reader":Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    goto :goto_5

    .line 111
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v3    # "input":Ljava/io/FileInputStream;
    .end local v8    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    .restart local v9    # "reader":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v1

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/InputStreamReader;
    .restart local v8    # "reader":Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    goto :goto_4

    .line 109
    :catch_4
    move-exception v1

    goto :goto_3

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    goto :goto_3

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getParasValuesFromXml(Ljava/lang/String;Z)Lcom/huawei/bd/bean/AreaInfo;
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "isCountryCode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 156
    :cond_0
    :goto_0
    return-object v0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/bd/bean/AreaConfigGenerator;->getAreaInfoList()Ljava/util/List;

    move-result-object v1

    .line 145
    .local v1, "areaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/bd/bean/AreaInfo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_3

    :cond_2
    move-object v0, v2

    .line 146
    goto :goto_0

    .line 148
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/bd/bean/AreaInfo;

    .line 149
    .local v0, "areaInfo":Lcom/huawei/bd/bean/AreaInfo;
    if-eqz p2, :cond_5

    invoke-virtual {v0}, Lcom/huawei/bd/bean/AreaInfo;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 152
    :cond_5
    if-nez p2, :cond_4

    invoke-virtual {v0}, Lcom/huawei/bd/bean/AreaInfo;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .end local v0    # "areaInfo":Lcom/huawei/bd/bean/AreaInfo;
    :cond_6
    move-object v0, v2

    .line 156
    goto :goto_0
.end method
