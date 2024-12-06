.class public Lcom/huawei/filter/PolicyGenerator;
.super Ljava/lang/Object;
.source "PolicyGenerator.java"


# static fields
.field private static final DIFF_CONTENT:Ljava/lang/String; = "diffContent"

.field private static final EVENT:Ljava/lang/String; = "Event"

.field private static final EVENT_ID:Ljava/lang/String; = "id"

.field private static final INDEX_O:I = 0x0

.field private static final INDEX_ONE:I = 0x1

.field private static final INDEX_TWO:I = 0x2

.field private static final INIT_SIZE:I = 0x10

.field private static final ITEM_NUM:I = 0x3

.field private static final PACKAGE:Ljava/lang/String; = "Package"

.field private static final REGISTER_FILE:Ljava/lang/String;

.field private static final RELOAD_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "BD.PolicyGenerator"

.field private static final THRESHOLD:Ljava/lang/String; = "threshold"

.field private static final THRESHOLD_MAX_VALUE:I = 0x2710

.field private static policyGenerator:Lcom/huawei/filter/PolicyGenerator;


# instance fields
.field private custRegisteredMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/filter/RegisteredEventInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/filter/PolicyGenerator;->policyGenerator:Lcom/huawei/filter/PolicyGenerator;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/filter/PolicyGenerator;->RELOAD_LOCK:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hiview"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ue_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ue_event_list.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/filter/PolicyGenerator;->REGISTER_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addEventIdInfo(Lorg/xmlpull/v1/XmlPullParser;ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "thresholdTemp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/filter/RegisteredEventInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p3, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/filter/RegisteredEventInfo;>;"
    new-instance v0, Lcom/huawei/filter/RegisteredEventInfo;

    invoke-direct {v0}, Lcom/huawei/filter/RegisteredEventInfo;-><init>()V

    .line 121
    .local v0, "eventIdInfo":Lcom/huawei/filter/RegisteredEventInfo;
    invoke-direct {p0, p1, v0}, Lcom/huawei/filter/PolicyGenerator;->parseXmlRegisterEvent(Lorg/xmlpull/v1/XmlPullParser;Lcom/huawei/filter/RegisteredEventInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/filter/RegisteredEventInfo;->getThreshold()I

    move-result v1

    if-nez v1, :cond_1

    .line 125
    invoke-virtual {v0, p2}, Lcom/huawei/filter/RegisteredEventInfo;->setThreshold(I)V

    .line 127
    :cond_1
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private closeStream(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 195
    if-eqz p1, :cond_0

    .line 197
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BD.PolicyGenerator"

    const-string v2, "close stream fail"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/filter/PolicyGenerator;
    .locals 2

    .prologue
    .line 73
    const-class v1, Lcom/huawei/filter/PolicyGenerator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/filter/PolicyGenerator;->policyGenerator:Lcom/huawei/filter/PolicyGenerator;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/huawei/filter/PolicyGenerator;

    invoke-direct {v0}, Lcom/huawei/filter/PolicyGenerator;-><init>()V

    sput-object v0, Lcom/huawei/filter/PolicyGenerator;->policyGenerator:Lcom/huawei/filter/PolicyGenerator;

    .line 76
    :cond_0
    sget-object v0, Lcom/huawei/filter/PolicyGenerator;->policyGenerator:Lcom/huawei/filter/PolicyGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRegisterFile()Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/huawei/filter/PolicyGenerator;->REGISTER_FILE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "ueDir":Ljava/lang/String;
    return-object v0
.end method

.method private getThresholdTemp(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 4
    .param p1, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 131
    const/16 v1, 0x2710

    .line 133
    .local v1, "thresholdTemp":I
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    .line 134
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 135
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 140
    :cond_0
    :goto_0
    return v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "BD.PolicyGenerator"

    const-string v3, " get threshold fail"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseXmlRegisterEvent(Lorg/xmlpull/v1/XmlPullParser;Lcom/huawei/filter/RegisteredEventInfo;)Z
    .locals 7
    .param p1, "paramXmlPullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "registeredEventInfo"    # Lcom/huawei/filter/RegisteredEventInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 100
    .local v0, "count":I
    invoke-virtual {p2, v3}, Lcom/huawei/filter/RegisteredEventInfo;->setThreshold(I)V

    .line 101
    invoke-virtual {p2, v4}, Lcom/huawei/filter/RegisteredEventInfo;->setDiffContent(I)V

    .line 102
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 104
    :try_start_0
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/huawei/filter/RegisteredEventInfo;->setEventInfoId(I)V

    .line 102
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_1
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "threshold"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/huawei/filter/RegisteredEventInfo;->setThreshold(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v4, "BD.PolicyGenerator"

    const-string v5, "invalid eventid or threshold or diffcontent."

    invoke-static {v4, v5}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_2
    return v3

    .line 108
    :cond_2
    :try_start_1
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "diffContent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/huawei/filter/RegisteredEventInfo;->setDiffContent(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    move v3, v4

    .line 116
    goto :goto_2
.end method

.method private parseXmlRegisteredList(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .param p1, "xmlPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/filter/RegisteredEventInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x10

    .line 144
    const/4 v4, 0x0

    .line 145
    .local v4, "inputStream":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 146
    .local v8, "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 147
    .local v2, "eventInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/huawei/filter/RegisteredEventInfo;>;>;"
    const/4 v7, 0x0

    .line 148
    .local v7, "packageNameTemp":Ljava/lang/String;
    const/16 v9, 0x2710

    .line 150
    .local v9, "thresholdTemp":I
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .local v5, "inputStream":Ljava/io/InputStream;
    if-eqz v8, :cond_0

    .line 152
    :try_start_1
    const-string v10, "UTF-8"

    invoke-interface {v8, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 154
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v10, 0x10

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    .local v1, "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/filter/RegisteredEventInfo;>;"
    if-nez v8, :cond_1

    .line 189
    invoke-direct {p0, v5}, Lcom/huawei/filter/PolicyGenerator;->closeStream(Ljava/io/InputStream;)V

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    move-object v2, v11

    .line 191
    .end local v1    # "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/filter/RegisteredEventInfo;>;"
    .end local v2    # "eventInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/huawei/filter/RegisteredEventInfo;>;>;"
    :goto_0
    return-object v2

    .line 158
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/filter/RegisteredEventInfo;>;"
    .restart local v2    # "eventInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/huawei/filter/RegisteredEventInfo;>;>;"
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :cond_1
    :try_start_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 159
    .local v3, "eventType":I
    :goto_1
    const/4 v10, 0x1

    if-eq v3, v10, :cond_4

    .line 160
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, "nodeName":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 181
    :cond_2
    :goto_2
    :pswitch_0
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 182
    goto :goto_1

    .line 165
    :pswitch_1
    const-string v10, "Package"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 166
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 167
    invoke-direct {p0, v8}, Lcom/huawei/filter/PolicyGenerator;->getThresholdTemp(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v9

    goto :goto_2

    .line 168
    :cond_3
    const-string v10, "Event"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 169
    invoke-direct {p0, v8, v9, v1}, Lcom/huawei/filter/PolicyGenerator;->addEventIdInfo(Lorg/xmlpull/v1/XmlPullParser;ILjava/util/ArrayList;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 183
    .end local v1    # "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/filter/RegisteredEventInfo;>;"
    .end local v3    # "eventType":I
    .end local v6    # "nodeName":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 184
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :goto_3
    :try_start_3
    const-string v10, "BD.PolicyGenerator"

    const-string v12, "parse Xml fail"

    invoke-static {v10, v12}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    invoke-direct {p0, v4}, Lcom/huawei/filter/PolicyGenerator;->closeStream(Ljava/io/InputStream;)V

    move-object v2, v11

    .line 185
    goto :goto_0

    .line 173
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/filter/RegisteredEventInfo;>;"
    .restart local v3    # "eventType":I
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "nodeName":Ljava/lang/String;
    :pswitch_2
    :try_start_4
    const-string v10, "Package"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 174
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v2, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 186
    .end local v1    # "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/filter/RegisteredEventInfo;>;"
    .end local v3    # "eventType":I
    .end local v6    # "nodeName":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v4, v5

    .line 187
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :goto_4
    :try_start_5
    const-string v10, "BD.PolicyGenerator"

    const-string v11, "parse Xml fail"

    invoke-static {v10, v11}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 189
    invoke-direct {p0, v4}, Lcom/huawei/filter/PolicyGenerator;->closeStream(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/filter/RegisteredEventInfo;>;"
    .restart local v3    # "eventType":I
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :cond_4
    invoke-direct {p0, v5}, Lcom/huawei/filter/PolicyGenerator;->closeStream(Ljava/io/InputStream;)V

    move-object v4, v5

    .line 190
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 189
    .end local v1    # "eventInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/filter/RegisteredEventInfo;>;"
    .end local v3    # "eventType":I
    :catchall_0
    move-exception v10

    :goto_5
    invoke-direct {p0, v4}, Lcom/huawei/filter/PolicyGenerator;->closeStream(Ljava/io/InputStream;)V

    .line 190
    throw v10

    .line 189
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_5

    .line 186
    :catch_2
    move-exception v0

    goto :goto_4

    .line 183
    :catch_3
    move-exception v0

    goto :goto_3

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getPackageInfoMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/filter/RegisteredEventInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 85
    sget-object v1, Lcom/huawei/filter/PolicyGenerator;->RELOAD_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/huawei/filter/PolicyGenerator;->custRegisteredMap:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/huawei/filter/PolicyGenerator;->getRegisterFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/bd/utils/BigDataUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/huawei/filter/PolicyGenerator;->loadCustRegisterMap()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/huawei/filter/PolicyGenerator;->custRegisteredMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/huawei/filter/PolicyGenerator;->custRegisteredMap:Ljava/util/Map;

    monitor-exit v1

    .line 93
    :goto_0
    return-object v0

    .line 92
    :cond_1
    const-string v0, "TAG"

    const-string v2, "Can\'t Parse ue_event_list.xml"

    invoke-static {v0, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadCustRegisterMap()V
    .locals 8

    .prologue
    .line 208
    sget-object v4, Lcom/huawei/filter/PolicyGenerator;->RELOAD_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 209
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 210
    .local v2, "startTime":J
    invoke-direct {p0}, Lcom/huawei/filter/PolicyGenerator;->getRegisterFile()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "registerFile":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/huawei/bd/utils/BigDataUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    :cond_0
    invoke-direct {p0, v0}, Lcom/huawei/filter/PolicyGenerator;->parseXmlRegisteredList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/filter/PolicyGenerator;->custRegisteredMap:Ljava/util/Map;

    .line 214
    :cond_1
    const-string v1, "BD.PolicyGenerator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadCustRegisterMap cost:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    monitor-exit v4

    .line 216
    return-void

    .line 215
    .end local v0    # "registerFile":Ljava/lang/String;
    .end local v2    # "startTime":J
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
