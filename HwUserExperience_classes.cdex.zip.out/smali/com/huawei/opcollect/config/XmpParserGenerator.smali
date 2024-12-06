.class public final Lcom/huawei/opcollect/config/XmpParserGenerator;
.super Ljava/lang/Object;
.source "XmpParserGenerator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XmpParserGenerator"


# instance fields
.field private xmlItem:Lcom/huawei/opcollect/config/XmlItem;

.field private xmlPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "xmlPath"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/huawei/opcollect/config/XmpParserGenerator;->xmlPath:Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Lcom/huawei/opcollect/config/XmpParserGenerator;->loadXml()V

    .line 39
    return-void
.end method

.method private loadXml()V
    .locals 6

    .prologue
    .line 87
    iget-object v4, p0, Lcom/huawei/opcollect/config/XmpParserGenerator;->xmlPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/huawei/opcollect/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    const-string v4, "XmpParserGenerator"

    const-string v5, "xml file path is null or empty"

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 91
    :cond_0
    const/4 v1, 0x0

    .line 92
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 94
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/huawei/opcollect/config/XmpParserGenerator;->xmlPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_1
    const-string v4, "UTF-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, v3}, Lcom/huawei/opcollect/config/XmpParserGenerator;->parserXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/huawei/opcollect/config/XmlItem;

    move-result-object v4

    iput-object v4, p0, Lcom/huawei/opcollect/config/XmpParserGenerator;->xmlItem:Lcom/huawei/opcollect/config/XmlItem;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    invoke-virtual {p0, v2}, Lcom/huawei/opcollect/config/XmpParserGenerator;->closeQuitely(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 101
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 97
    :catch_0
    move-exception v4

    :goto_1
    move-object v0, v4

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-string v4, "XmpParserGenerator"

    const-string v5, "failed to load and parse the xml"

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    invoke-virtual {p0, v1}, Lcom/huawei/opcollect/config/XmpParserGenerator;->closeQuitely(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_3
    invoke-virtual {p0, v1}, Lcom/huawei/opcollect/config/XmpParserGenerator;->closeQuitely(Ljava/io/Closeable;)V

    .line 101
    throw v4

    .line 97
    :catch_1
    move-exception v4

    :goto_4
    move-object v0, v4

    goto :goto_2

    .line 100
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 97
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_1

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v4

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_4
.end method

.method private parserXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/huawei/opcollect/config/XmlItem;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 123
    const/4 v1, 0x0

    .line 125
    .local v1, "tempXmlItem":Lcom/huawei/opcollect/config/XmlItem;
    if-nez p1, :cond_1

    .line 126
    const-string v3, "XmpParserGenerator"

    const-string v4, "praser is null"

    invoke-static {v3, v4}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    :goto_0
    return-object v2

    .line 129
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 130
    .local v0, "eventType":I
    :goto_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 131
    packed-switch v0, :pswitch_data_0

    .line 150
    :cond_2
    :goto_2
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_1

    .line 135
    :pswitch_1
    invoke-direct {p0, p1, v1}, Lcom/huawei/opcollect/config/XmpParserGenerator;->parserXmlTagStart(Lorg/xmlpull/v1/XmlPullParser;Lcom/huawei/opcollect/config/XmlItem;)Lcom/huawei/opcollect/config/XmlItem;

    move-result-object v1

    .line 136
    goto :goto_2

    .line 138
    :pswitch_2
    if-eqz v1, :cond_2

    .line 139
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huawei/opcollect/config/XmlItem;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 143
    :pswitch_3
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/huawei/opcollect/config/XmlItem;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v1

    .line 144
    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private parserXmlTagStart(Lorg/xmlpull/v1/XmlPullParser;Lcom/huawei/opcollect/config/XmlItem;)Lcom/huawei/opcollect/config/XmlItem;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tempXmlItem"    # Lcom/huawei/opcollect/config/XmlItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    move-object v1, p2

    .line 107
    .local v1, "currentXmlItem":Lcom/huawei/opcollect/config/XmlItem;
    if-nez p2, :cond_0

    .line 108
    new-instance v1, Lcom/huawei/opcollect/config/XmlItem;

    .end local v1    # "currentXmlItem":Lcom/huawei/opcollect/config/XmlItem;
    invoke-direct {v1}, Lcom/huawei/opcollect/config/XmlItem;-><init>()V

    .line 109
    .restart local v1    # "currentXmlItem":Lcom/huawei/opcollect/config/XmlItem;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huawei/opcollect/config/XmlItem;->setTagName(Ljava/lang/String;)V

    .line 110
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 111
    .local v0, "attributeCount":I
    if-lez v0, :cond_1

    .line 112
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 113
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/huawei/opcollect/config/XmlItem;->setProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "attributeCount":I
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/opcollect/config/XmpParserGenerator;->parserXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/huawei/opcollect/config/XmlItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huawei/opcollect/config/XmlItem;->setChildItem(Lcom/huawei/opcollect/config/XmlItem;)V

    .line 119
    :cond_1
    return-object v1
.end method


# virtual methods
.method public closeQuitely(Ljava/io/Closeable;)V
    .locals 3
    .param p1, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 76
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "XmpParserGenerator"

    const-string v2, "exception occurred when close the inputStream"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getChildItem(Ljava/lang/String;)Lcom/huawei/opcollect/config/XmlItem;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v2, p0, Lcom/huawei/opcollect/config/XmpParserGenerator;->xmlItem:Lcom/huawei/opcollect/config/XmlItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/opcollect/config/XmpParserGenerator;->xmlItem:Lcom/huawei/opcollect/config/XmlItem;

    invoke-virtual {v2}, Lcom/huawei/opcollect/config/XmlItem;->getChildItemList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 65
    :goto_0
    return-object v0

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/huawei/opcollect/config/XmpParserGenerator;->xmlItem:Lcom/huawei/opcollect/config/XmlItem;

    invoke-virtual {v2}, Lcom/huawei/opcollect/config/XmlItem;->getChildItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/config/XmlItem;

    .line 61
    .local v0, "item":Lcom/huawei/opcollect/config/XmlItem;
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/huawei/opcollect/config/XmlItem;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v0    # "item":Lcom/huawei/opcollect/config/XmlItem;
    :cond_3
    move-object v0, v1

    .line 65
    goto :goto_0
.end method

.method public getXmlItem()Lcom/huawei/opcollect/config/XmlItem;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/huawei/opcollect/config/XmpParserGenerator;->xmlItem:Lcom/huawei/opcollect/config/XmlItem;

    return-object v0
.end method
