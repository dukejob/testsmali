.class final Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;
.super Landroid/os/HandlerThread;
.source "BigDataRecorder.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/bd/recorder/BigDataRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataQueue"
.end annotation


# instance fields
.field private dataBuffer:Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;

.field private insertValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/bd/events/EventUsageInfoEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/huawei/bd/recorder/BigDataRecorder;

.field private updateValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/bd/events/EventUsageInfoEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/huawei/bd/recorder/BigDataRecorder;Ljava/lang/String;)V
    .locals 3
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x10

    .line 170
    iput-object p1, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->this$0:Lcom/huawei/bd/recorder/BigDataRecorder;

    .line 171
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 164
    new-instance v0, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->dataBuffer:Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->insertValues:Ljava/util/List;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->updateValues:Ljava/util/List;

    .line 172
    return-void
.end method

.method private addEventToCache(Ljava/util/List;Lcom/huawei/bd/events/EventUsageInfoEvent;)Z
    .locals 3
    .param p2, "info"    # Lcom/huawei/bd/events/EventUsageInfoEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/bd/events/EventUsageInfoEvent;",
            ">;",
            "Lcom/huawei/bd/events/EventUsageInfoEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/bd/events/EventUsageInfoEvent;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 303
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 304
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/bd/events/EventUsageInfoEvent;

    .line 305
    .local v1, "item":Lcom/huawei/bd/events/EventUsageInfoEvent;
    invoke-virtual {v1}, Lcom/huawei/bd/events/EventUsageInfoEvent;->getHisCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setHisCount(I)V

    .line 306
    invoke-virtual {v1}, Lcom/huawei/bd/events/EventUsageInfoEvent;->getCurrDayCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setCurrDayCount(I)V

    .line 307
    const/4 v2, 0x1

    .line 309
    .end local v1    # "item":Lcom/huawei/bd/events/EventUsageInfoEvent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private insertCacheToDb(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 394
    const/4 v2, 0x0

    .line 395
    .local v2, "valueCount":I
    iget-object v4, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->insertValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [Landroid/content/ContentValues;

    .line 396
    .local v3, "values":[Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->insertValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/bd/events/EventUsageInfoEvent;

    .line 397
    .local v0, "item":Lcom/huawei/bd/events/EventUsageInfoEvent;
    invoke-virtual {v0}, Lcom/huawei/bd/events/EventUsageInfoEvent;->encrypt()Lcom/huawei/bd/events/EventUsageInfoEvent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/bd/events/EventUsageInfoEvent;->format()Landroid/content/ContentValues;

    move-result-object v5

    aput-object v5, v3, v2

    .line 398
    add-int/lit8 v2, v2, 0x1

    .line 399
    goto :goto_0

    .line 400
    .end local v0    # "item":Lcom/huawei/bd/events/EventUsageInfoEvent;
    :cond_0
    invoke-virtual {p1, p2, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    .line 401
    .local v1, "result":I
    if-lez v1, :cond_1

    .line 402
    iget-object v4, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->insertValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 404
    :cond_1
    return-void
.end method

.method private obtainValue(Lcom/huawei/bd/events/EventUsageInfoEvent;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "info"    # Lcom/huawei/bd/events/EventUsageInfoEvent;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 355
    if-eqz p2, :cond_0

    .line 356
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->updateValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 363
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 365
    :cond_1
    return-void

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->insertValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onAppActionEvent(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 225
    new-instance v0, Lcom/huawei/bd/events/AppActionEvent;

    invoke-direct {v0}, Lcom/huawei/bd/events/AppActionEvent;-><init>()V

    .line 226
    .local v0, "appAction":Lcom/huawei/bd/events/AppActionEvent;
    iget-object v3, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->this$0:Lcom/huawei/bd/recorder/BigDataRecorder;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/huawei/bd/recorder/BigDataRecorder;->access$200(Lcom/huawei/bd/recorder/BigDataRecorder;Lcom/huawei/bd/events/BaseEvent;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "appAction":Lcom/huawei/bd/events/AppActionEvent;
    check-cast v0, Lcom/huawei/bd/events/AppActionEvent;

    .line 228
    .restart local v0    # "appAction":Lcom/huawei/bd/events/AppActionEvent;
    const-string v3, "content://com.huawei.bd.provider.BDProvider/aa"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 229
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Lcom/huawei/bd/events/AppActionEvent;->getPriority()I

    move-result v3

    const/16 v4, 0x19

    if-gt v3, v4, :cond_0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_2

    .line 230
    :cond_0
    new-array v1, v6, [Lcom/huawei/bd/events/AppActionEvent;

    .line 231
    .local v1, "eventData":[Lcom/huawei/bd/events/EventFormatInterface;
    invoke-virtual {v0}, Lcom/huawei/bd/events/AppActionEvent;->encrypt()Lcom/huawei/bd/events/AppActionEvent;

    move-result-object v3

    aput-object v3, v1, v5

    .line 232
    iget-object v3, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->this$0:Lcom/huawei/bd/recorder/BigDataRecorder;

    invoke-static {v3, v2, v1}, Lcom/huawei/bd/recorder/BigDataRecorder;->access$100(Lcom/huawei/bd/recorder/BigDataRecorder;Landroid/net/Uri;[Lcom/huawei/bd/events/EventFormatInterface;)V

    .line 246
    .end local v1    # "eventData":[Lcom/huawei/bd/events/EventFormatInterface;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 234
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-static {}, Lcom/huawei/bd/utils/BigDataSwitchUtil;->isBdRecordDebug()Z

    move-result v3

    if-nez v3, :cond_4

    .line 235
    iget-object v3, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->dataBuffer:Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;

    invoke-virtual {v3}, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->isFull()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 236
    iget-object v3, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->this$0:Lcom/huawei/bd/recorder/BigDataRecorder;

    iget-object v4, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->dataBuffer:Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;

    invoke-virtual {v4}, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->flush()[Lcom/huawei/bd/events/EventFormatInterface;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/huawei/bd/recorder/BigDataRecorder;->access$100(Lcom/huawei/bd/recorder/BigDataRecorder;Landroid/net/Uri;[Lcom/huawei/bd/events/EventFormatInterface;)V

    .line 238
    :cond_3
    iget-object v3, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->dataBuffer:Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;

    invoke-virtual {v0}, Lcom/huawei/bd/events/AppActionEvent;->encrypt()Lcom/huawei/bd/events/AppActionEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->push(Lcom/huawei/bd/events/EventFormatInterface;)V

    goto :goto_0

    .line 240
    :cond_4
    new-array v1, v6, [Lcom/huawei/bd/events/AppActionEvent;

    .line 241
    .restart local v1    # "eventData":[Lcom/huawei/bd/events/EventFormatInterface;
    invoke-virtual {v0}, Lcom/huawei/bd/events/AppActionEvent;->encrypt()Lcom/huawei/bd/events/AppActionEvent;

    move-result-object v3

    aput-object v3, v1, v5

    .line 242
    iget-object v3, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->this$0:Lcom/huawei/bd/recorder/BigDataRecorder;

    invoke-static {v3, v2, v1}, Lcom/huawei/bd/recorder/BigDataRecorder;->access$100(Lcom/huawei/bd/recorder/BigDataRecorder;Landroid/net/Uri;[Lcom/huawei/bd/events/EventFormatInterface;)V

    goto :goto_0
.end method

.method private onBatchEvent(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 265
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 266
    .local v2, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/bd/events/BaseEvent;>;"
    if-nez v2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/bd/events/BaseEvent;

    .line 270
    .local v0, "baseEvent":Lcom/huawei/bd/events/BaseEvent;
    invoke-virtual {v0}, Lcom/huawei/bd/events/BaseEvent;->encrypt()Lcom/huawei/bd/events/BaseEvent;

    goto :goto_1

    .line 273
    .end local v0    # "baseEvent":Lcom/huawei/bd/events/BaseEvent;
    :cond_2
    const/4 v1, 0x0

    .line 274
    .local v1, "eventData":[Lcom/huawei/bd/events/EventFormatInterface;
    const/4 v3, 0x0

    .line 275
    .local v3, "uri":Landroid/net/Uri;
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_0

    .line 296
    :goto_2
    :pswitch_0
    if-eqz v1, :cond_0

    .line 297
    iget-object v5, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->this$0:Lcom/huawei/bd/recorder/BigDataRecorder;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/huawei/bd/events/EventFormatInterface;

    invoke-static {v5, v3, v4}, Lcom/huawei/bd/recorder/BigDataRecorder;->access$100(Lcom/huawei/bd/recorder/BigDataRecorder;Landroid/net/Uri;[Lcom/huawei/bd/events/EventFormatInterface;)V

    goto :goto_0

    .line 277
    :pswitch_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Lcom/huawei/bd/events/AppActionEvent;

    .line 278
    const-string v4, "content://com.huawei.bd.provider.BDProvider/aa"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 279
    goto :goto_2

    .line 281
    :pswitch_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Lcom/huawei/bd/events/LocalInfoEvent;

    .line 282
    const-string v4, "content://com.huawei.bd.provider.BDProvider/li"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 283
    goto :goto_2

    .line 285
    :pswitch_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Lcom/huawei/bd/events/RomInfoEvent;

    .line 286
    const-string v4, "content://com.huawei.bd.provider.BDProvider/ri"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 287
    goto :goto_2

    .line 289
    :pswitch_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Lcom/huawei/bd/events/DifferentialPrivacyEvent;

    .line 290
    const-string v4, "content://com.huawei.bd.provider.BDProvider/dpi"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 291
    goto :goto_2

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private onEventUsageInfoEvent(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 313
    new-instance v6, Lcom/huawei/bd/events/AppActionEvent;

    invoke-direct {v6}, Lcom/huawei/bd/events/AppActionEvent;-><init>()V

    .line 314
    .local v6, "appAction":Lcom/huawei/bd/events/AppActionEvent;
    iget-object v5, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->this$0:Lcom/huawei/bd/recorder/BigDataRecorder;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v5, v6, v10}, Lcom/huawei/bd/recorder/BigDataRecorder;->access$200(Lcom/huawei/bd/recorder/BigDataRecorder;Lcom/huawei/bd/events/BaseEvent;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 315
    const/4 v9, 0x0

    .line 316
    .local v9, "isAddedToCache":Z
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "appAction":Lcom/huawei/bd/events/AppActionEvent;
    check-cast v6, Lcom/huawei/bd/events/AppActionEvent;

    .line 317
    .restart local v6    # "appAction":Lcom/huawei/bd/events/AppActionEvent;
    const-string v5, "content://com.huawei.bd.provider.BDProvider/eui"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 318
    .local v1, "uri":Landroid/net/Uri;
    const-string v3, "a = ? and b = ? "

    .line 320
    .local v3, "selection":Ljava/lang/String;
    const/16 v5, 0x9

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "a"

    aput-object v10, v2, v5

    const/4 v5, 0x1

    const-string v10, "b"

    aput-object v10, v2, v5

    const/4 v5, 0x2

    const-string v10, "c"

    aput-object v10, v2, v5

    const/4 v5, 0x3

    const-string v10, "d"

    aput-object v10, v2, v5

    const/4 v5, 0x4

    const-string v10, "e"

    aput-object v10, v2, v5

    const/4 v5, 0x5

    const-string v10, "f"

    aput-object v10, v2, v5

    const/4 v5, 0x6

    const-string v10, "g"

    aput-object v10, v2, v5

    const/4 v5, 0x7

    const-string v10, "h"

    aput-object v10, v2, v5

    const/16 v5, 0x8

    const-string v10, "i"

    aput-object v10, v2, v5

    .line 330
    .local v2, "projection":[Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->this$0:Lcom/huawei/bd/recorder/BigDataRecorder;

    invoke-static {v5}, Lcom/huawei/bd/recorder/BigDataRecorder;->access$500(Lcom/huawei/bd/recorder/BigDataRecorder;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 332
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v8, Lcom/huawei/bd/events/EventUsageInfoEvent;

    invoke-direct {v8}, Lcom/huawei/bd/events/EventUsageInfoEvent;-><init>()V

    .line 333
    .local v8, "info":Lcom/huawei/bd/events/EventUsageInfoEvent;
    invoke-virtual {v6}, Lcom/huawei/bd/events/AppActionEvent;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setPkgName(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v6}, Lcom/huawei/bd/events/AppActionEvent;->getEventId()I

    move-result v5

    invoke-virtual {v8, v5}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setEventId(I)V

    .line 335
    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setHisCount(I)V

    .line 336
    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Lcom/huawei/bd/events/EventUsageInfoEvent;->setCurrDayCount(I)V

    .line 337
    iget-object v5, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->updateValues:Ljava/util/List;

    invoke-direct {p0, v5, v8}, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->addEventToCache(Ljava/util/List;Lcom/huawei/bd/events/EventUsageInfoEvent;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->insertValues:Ljava/util/List;

    invoke-direct {p0, v5, v8}, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->addEventToCache(Ljava/util/List;Lcom/huawei/bd/events/EventUsageInfoEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 338
    :cond_0
    const/4 v9, 0x1

    .line 340
    :cond_1
    if-nez v9, :cond_2

    .line 341
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v8}, Lcom/huawei/bd/events/EventUsageInfoEvent;->getPkgName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v8}, Lcom/huawei/bd/events/EventUsageInfoEvent;->getEventId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    .line 342
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 343
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v8, v7}, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->obtainValue(Lcom/huawei/bd/events/EventUsageInfoEvent;Landroid/database/Cursor;)V

    .line 345
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    iget-object v5, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->updateValues:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v10, 0xa

    if-lt v5, v10, :cond_3

    .line 346
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->updateCacheToDb(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_3
    iget-object v5, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->insertValues:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v10, 0x5

    if-lt v5, v10, :cond_4

    .line 349
    invoke-direct {p0, v0, v1}, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->insertCacheToDb(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 352
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "info":Lcom/huawei/bd/events/EventUsageInfoEvent;
    .end local v9    # "isAddedToCache":Z
    :cond_4
    return-void
.end method

.method private onLocalInfoEvent(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 249
    new-instance v1, Lcom/huawei/bd/events/LocalInfoEvent;

    invoke-direct {v1}, Lcom/huawei/bd/events/LocalInfoEvent;-><init>()V

    .line 250
    .local v1, "info":Lcom/huawei/bd/events/LocalInfoEvent;
    iget-object v3, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->this$0:Lcom/huawei/bd/recorder/BigDataRecorder;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/huawei/bd/recorder/BigDataRecorder;->access$200(Lcom/huawei/bd/recorder/BigDataRecorder;Lcom/huawei/bd/events/BaseEvent;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "info":Lcom/huawei/bd/events/LocalInfoEvent;
    check-cast v1, Lcom/huawei/bd/events/LocalInfoEvent;

    .line 252
    .restart local v1    # "info":Lcom/huawei/bd/events/LocalInfoEvent;
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/huawei/bd/events/LocalInfoEvent;

    .line 253
    .local v0, "eventData":[Lcom/huawei/bd/events/EventFormatInterface;
    const-string v3, "content://com.huawei.bd.provider.BDProvider/li"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 254
    .local v2, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/huawei/bd/events/LocalInfoEvent;->encrypt()Lcom/huawei/bd/events/LocalInfoEvent;

    move-result-object v4

    aput-object v4, v0, v3

    .line 255
    invoke-virtual {v1}, Lcom/huawei/bd/events/LocalInfoEvent;->getInfoId()I

    move-result v3

    const v4, 0x20005

    if-eq v3, v4, :cond_0

    .line 256
    invoke-virtual {v1}, Lcom/huawei/bd/events/LocalInfoEvent;->getInfoId()I

    move-result v3

    const v4, 0x20010

    if-ne v3, v4, :cond_2

    .line 257
    :cond_0
    iget-object v3, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->this$0:Lcom/huawei/bd/recorder/BigDataRecorder;

    invoke-virtual {v1}, Lcom/huawei/bd/events/LocalInfoEvent;->getReserved()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v0, v4}, Lcom/huawei/bd/recorder/BigDataRecorder;->access$400(Lcom/huawei/bd/recorder/BigDataRecorder;Landroid/net/Uri;[Lcom/huawei/bd/events/EventFormatInterface;Ljava/lang/String;)V

    .line 262
    .end local v0    # "eventData":[Lcom/huawei/bd/events/EventFormatInterface;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 259
    .restart local v0    # "eventData":[Lcom/huawei/bd/events/EventFormatInterface;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v3, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->this$0:Lcom/huawei/bd/recorder/BigDataRecorder;

    invoke-static {v3, v2, v0}, Lcom/huawei/bd/recorder/BigDataRecorder;->access$100(Lcom/huawei/bd/recorder/BigDataRecorder;Landroid/net/Uri;[Lcom/huawei/bd/events/EventFormatInterface;)V

    goto :goto_0
.end method

.method private onRomInfoEvent(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 216
    new-instance v0, Lcom/huawei/bd/events/RomInfoEvent;

    invoke-direct {v0}, Lcom/huawei/bd/events/RomInfoEvent;-><init>()V

    .line 217
    .local v0, "romInfo":Lcom/huawei/bd/events/RomInfoEvent;
    iget-object v2, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->this$0:Lcom/huawei/bd/recorder/BigDataRecorder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/huawei/bd/recorder/BigDataRecorder;->access$200(Lcom/huawei/bd/recorder/BigDataRecorder;Lcom/huawei/bd/events/BaseEvent;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "romInfo":Lcom/huawei/bd/events/RomInfoEvent;
    check-cast v0, Lcom/huawei/bd/events/RomInfoEvent;

    .line 219
    .restart local v0    # "romInfo":Lcom/huawei/bd/events/RomInfoEvent;
    const-string v2, "content://com.huawei.bd.provider.BDProvider/ri"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 220
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->this$0:Lcom/huawei/bd/recorder/BigDataRecorder;

    invoke-virtual {v0}, Lcom/huawei/bd/events/RomInfoEvent;->encrypt()Lcom/huawei/bd/events/RomInfoEvent;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/huawei/bd/recorder/BigDataRecorder;->access$300(Lcom/huawei/bd/recorder/BigDataRecorder;Landroid/net/Uri;Lcom/huawei/bd/events/EventFormatInterface;)V

    .line 222
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private saveEventUsageInfoEvent()V
    .locals 6

    .prologue
    .line 407
    const-string v4, "content://com.huawei.bd.provider.BDProvider/eui"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 408
    .local v3, "uri":Landroid/net/Uri;
    const-string v2, "a = ? and b = ? "

    .line 410
    .local v2, "selection":Ljava/lang/String;
    const/16 v4, 0x9

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "a"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "b"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "c"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "d"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "e"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "f"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "g"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "h"

    aput-object v5, v0, v4

    const/16 v4, 0x8

    const-string v5, "i"

    aput-object v5, v0, v4

    .line 420
    .local v0, "projection":[Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->this$0:Lcom/huawei/bd/recorder/BigDataRecorder;

    invoke-static {v4}, Lcom/huawei/bd/recorder/BigDataRecorder;->access$500(Lcom/huawei/bd/recorder/BigDataRecorder;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 422
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->updateValues:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->updateValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 423
    invoke-direct {p0, v1, v3, v0, v2}, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->updateCacheToDb(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_0
    iget-object v4, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->insertValues:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->insertValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 426
    invoke-direct {p0, v1, v3}, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->insertCacheToDb(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 428
    :cond_1
    invoke-static {}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->getInstance()Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->startUpdateTask()V

    .line 429
    return-void
.end method

.method private updateCacheToDb(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;

    .prologue
    .line 368
    new-instance v10, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 369
    .local v10, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v1, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->updateValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/bd/events/EventUsageInfoEvent;

    .line 370
    .local v9, "item":Lcom/huawei/bd/events/EventUsageInfoEvent;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v9}, Lcom/huawei/bd/events/EventUsageInfoEvent;->getPkgName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-virtual {v9}, Lcom/huawei/bd/events/EventUsageInfoEvent;->getEventId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 371
    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 372
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-virtual {v9, v7}, Lcom/huawei/bd/events/EventUsageInfoEvent;->updateByCursor(Landroid/database/Cursor;)V

    .line 373
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 374
    invoke-virtual {v9}, Lcom/huawei/bd/events/EventUsageInfoEvent;->encrypt()Lcom/huawei/bd/events/EventUsageInfoEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/bd/events/EventUsageInfoEvent;->format()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 375
    move-object/from16 v0, p4

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 376
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 373
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    if-eqz v7, :cond_0

    .line 378
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 382
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "item":Lcom/huawei/bd/events/EventUsageInfoEvent;
    :cond_1
    :try_start_0
    const-string v1, "com.huawei.bd.provider.BDProvider"

    invoke-virtual {p1, v1, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v11

    .line 383
    .local v11, "results":[Landroid/content/ContentProviderResult;
    if-eqz v11, :cond_2

    array-length v1, v11

    if-eqz v1, :cond_2

    .line 384
    iget-object v1, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->updateValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 391
    .end local v11    # "results":[Landroid/content/ContentProviderResult;
    :cond_2
    :goto_1
    return-void

    .line 386
    :catch_0
    move-exception v8

    .line 387
    .local v8, "e":Landroid/os/RemoteException;
    const-string v1, "BD.BigDataRecorder"

    const-string v2, "updateCacheToDb fail"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 388
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 389
    .local v8, "e":Landroid/content/OperationApplicationException;
    const-string v1, "BD.BigDataRecorder"

    const-string v2, "updateCacheToDb fail"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 177
    iget-object v1, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->this$0:Lcom/huawei/bd/recorder/BigDataRecorder;

    invoke-static {v1}, Lcom/huawei/bd/recorder/BigDataRecorder;->access$000(Lcom/huawei/bd/recorder/BigDataRecorder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    :goto_0
    return v3

    .line 180
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 185
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->onAppActionEvent(Landroid/os/Message;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->onEventUsageInfoEvent(Landroid/os/Message;)V

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->onRomInfoEvent(Landroid/os/Message;)V

    goto :goto_0

    .line 189
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->onLocalInfoEvent(Landroid/os/Message;)V

    goto :goto_0

    .line 192
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->onBatchEvent(Landroid/os/Message;)V

    goto :goto_0

    .line 195
    :pswitch_5
    const-string v1, "content://com.huawei.bd.provider.BDProvider/aa"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 196
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->this$0:Lcom/huawei/bd/recorder/BigDataRecorder;

    iget-object v2, p0, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->dataBuffer:Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;

    invoke-virtual {v2}, Lcom/huawei/bd/recorder/BigDataRecorder$DataBuffer;->flush()[Lcom/huawei/bd/events/EventFormatInterface;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/huawei/bd/recorder/BigDataRecorder;->access$100(Lcom/huawei/bd/recorder/BigDataRecorder;Landroid/net/Uri;[Lcom/huawei/bd/events/EventFormatInterface;)V

    .line 197
    monitor-enter p1

    .line 198
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 199
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 202
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_6
    invoke-direct {p0}, Lcom/huawei/bd/recorder/BigDataRecorder$DataQueue;->saveEventUsageInfoEvent()V

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method protected onLooperPrepared()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 213
    return-void
.end method
