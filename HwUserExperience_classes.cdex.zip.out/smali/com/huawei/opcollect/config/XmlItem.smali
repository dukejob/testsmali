.class public Lcom/huawei/opcollect/config/XmlItem;
.super Ljava/lang/Object;
.source "XmlItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XmlItem"


# instance fields
.field private childXmlItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/opcollect/config/XmlItem;",
            ">;"
        }
    .end annotation
.end field

.field private itemText:Ljava/lang/String;

.field private propList:Ljava/util/Map;
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

.field private tagName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/huawei/opcollect/config/XmlItem;->tagName:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/huawei/opcollect/config/XmlItem;->itemText:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/huawei/opcollect/config/XmlItem;->propList:Ljava/util/Map;

    .line 26
    iput-object v0, p0, Lcom/huawei/opcollect/config/XmlItem;->childXmlItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChildItem(Ljava/lang/String;)Lcom/huawei/opcollect/config/XmlItem;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v2, p0, Lcom/huawei/opcollect/config/XmlItem;->childXmlItems:Ljava/util/List;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v1

    .line 125
    :goto_0
    return-object v0

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/huawei/opcollect/config/XmlItem;->childXmlItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/config/XmlItem;

    .line 121
    .local v0, "xmlItem":Lcom/huawei/opcollect/config/XmlItem;
    invoke-virtual {v0}, Lcom/huawei/opcollect/config/XmlItem;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v0    # "xmlItem":Lcom/huawei/opcollect/config/XmlItem;
    :cond_3
    move-object v0, v1

    .line 125
    goto :goto_0
.end method

.method public getChildItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/opcollect/config/XmlItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/huawei/opcollect/config/XmlItem;->childXmlItems:Ljava/util/List;

    return-object v0
.end method

.method public getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/huawei/opcollect/config/XmlItem;->propList:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/opcollect/config/XmlItem;->propList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/huawei/opcollect/config/XmlItem;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/opcollect/config/XmlItem;->itemText:Ljava/lang/String;

    return-object v0
.end method

.method public setChildItem(Lcom/huawei/opcollect/config/XmlItem;)V
    .locals 2
    .param p1, "item"    # Lcom/huawei/opcollect/config/XmlItem;

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    const-string v0, "XmlItem"

    const-string v1, "childItem is null"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/huawei/opcollect/config/XmlItem;->childXmlItems:Ljava/util/List;

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/opcollect/config/XmlItem;->childXmlItems:Ljava/util/List;

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/huawei/opcollect/config/XmlItem;->childXmlItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 72
    :cond_0
    const-string v0, "XmlItem"

    const-string v1, "setProp,key or value is null"

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/huawei/opcollect/config/XmlItem;->propList:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/opcollect/config/XmlItem;->propList:Ljava/util/Map;

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/huawei/opcollect/config/XmlItem;->propList:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/huawei/opcollect/config/XmlItem;->tagName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/huawei/opcollect/config/XmlItem;->itemText:Ljava/lang/String;

    .line 53
    return-void
.end method
