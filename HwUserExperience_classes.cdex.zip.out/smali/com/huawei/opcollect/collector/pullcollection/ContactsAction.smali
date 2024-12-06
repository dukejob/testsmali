.class public Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;
.super Lcom/huawei/opcollect/strategy/Action;
.source "ContactsAction.java"


# static fields
.field private static final CALL_DIAL_TYPE:I = 0x2

.field private static final CALL_RECEIVE_TYPE:I = 0x1

.field private static final CALL_URI:Landroid/net/Uri;

.field private static final CONTACTS_URI:Landroid/net/Uri;

.field private static final DAY_IN_MILLISECOND:J = 0x5265c00L

.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "ContactsAction"

.field private static instance:Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->CONTACTS_URI:Landroid/net/Uri;

    .line 32
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->CALL_URI:Landroid/net/Uri;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->LOCK:Ljava/lang/Object;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->instance:Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/strategy/Action;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    const-class v0, Lcom/huawei/nb/model/collectencrypt/DSContactsInfo;

    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->queryDailyRecordNum(Ljava/lang/Class;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->setDailyRecordNum(I)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;)Lcom/huawei/nb/model/collectencrypt/DSContactsInfo;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->getDSContactsInfo()Lcom/huawei/nb/model/collectencrypt/DSContactsInfo;

    move-result-object v0

    return-object v0
.end method

.method private collectDSContactsInfo()Z
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction$1;

    invoke-direct {v1, p0}, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction$1;-><init>(Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method private static destroyContactsActionInstance()V
    .locals 2

    .prologue
    .line 64
    sget-object v1, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->instance:Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;

    .line 66
    monitor-exit v1

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getContactsNum()I
    .locals 9

    .prologue
    .line 101
    const/4 v7, 0x0

    .line 102
    .local v7, "count":I
    iget-object v0, p0, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    .line 105
    :cond_0
    const/4 v6, 0x0

    .line 107
    .local v6, "contactsCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->CONTACTS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 111
    :goto_1
    if-eqz v6, :cond_1

    .line 112
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 113
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v7

    .line 115
    goto :goto_0

    .line 108
    :catch_0
    move-exception v8

    .line 109
    .local v8, "e":Ljava/lang/RuntimeException;
    const-string v0, "ContactsAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query contacts uri failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getDSContactsInfo()Lcom/huawei/nb/model/collectencrypt/DSContactsInfo;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/huawei/nb/model/collectencrypt/DSContactsInfo;

    invoke-direct {v0}, Lcom/huawei/nb/model/collectencrypt/DSContactsInfo;-><init>()V

    .line 93
    .local v0, "dsContactsInfo":Lcom/huawei/nb/model/collectencrypt/DSContactsInfo;
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->getContactsNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/DSContactsInfo;->setContactNum(Ljava/lang/Integer;)V

    .line 94
    invoke-direct {p0, v0}, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->setCallStatisticPerDay(Lcom/huawei/nb/model/collectencrypt/DSContactsInfo;)V

    .line 95
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/DSContactsInfo;->setMReservedInt(Ljava/lang/Integer;)V

    .line 96
    invoke-static {}, Lcom/huawei/opcollect/utils/OPCollectUtils;->formatCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/DSContactsInfo;->setMReservedText(Ljava/lang/String;)V

    .line 97
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v1, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->instance:Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;

    const-string v2, "DSContactsInfo"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->instance:Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;

    .line 47
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->instance:Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;

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

.method private setCallStatisticPerDay(Lcom/huawei/nb/model/collectencrypt/DSContactsInfo;)V
    .locals 18
    .param p1, "dsContactsInfo"    # Lcom/huawei/nb/model/collectencrypt/DSContactsInfo;

    .prologue
    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 164
    :goto_0
    return-void

    .line 122
    :cond_0
    const/4 v9, 0x0

    .line 123
    .local v9, "dialTime":I
    const/4 v15, 0x0

    .line 124
    .local v15, "receiveTime":I
    const-wide/16 v12, 0x0

    .line 125
    .local v12, "duration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long v10, v2, v4

    .line 126
    .local v10, "dayBeforeNow":J
    const/4 v8, 0x0

    .line 128
    .local v8, "callCursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->CALL_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "date>?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 129
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v7

    const/4 v7, 0x0

    .line 128
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 134
    :goto_1
    if-nez v8, :cond_1

    .line 135
    const-string v2, "ContactsAction"

    const-string v3, "cursor is null."

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :catch_0
    move-exception v14

    .line 131
    .local v14, "e":Ljava/lang/RuntimeException;
    const-string v2, "ContactsAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query call uri failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 139
    .end local v14    # "e":Ljava/lang/RuntimeException;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_2

    .line 140
    const-string v2, "ContactsAction"

    const-string v3, "cursor size <= 0"

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 145
    :cond_2
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    const-string v2, "type"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 147
    .local v16, "type":I
    packed-switch v16, :pswitch_data_0

    .line 157
    :goto_3
    const-string v2, "duration"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    add-long/2addr v12, v2

    .line 158
    goto :goto_2

    .line 149
    :pswitch_0
    add-int/lit8 v15, v15, 0x1

    .line 150
    goto :goto_3

    .line 152
    :pswitch_1
    add-int/lit8 v9, v9, 0x1

    .line 153
    goto :goto_3

    .line 160
    .end local v16    # "type":I
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 161
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/huawei/nb/model/collectencrypt/DSContactsInfo;->setCallDialNum(Ljava/lang/Integer;)V

    .line 162
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/huawei/nb/model/collectencrypt/DSContactsInfo;->setCallRecvNum(Ljava/lang/Integer;)V

    .line 163
    long-to-int v2, v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/huawei/nb/model/collectencrypt/DSContactsInfo;->setCallDurationTime(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public destroy()Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/Action;->destroy()Z

    .line 59
    invoke-static {}, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->destroyContactsActionInstance()V

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method protected execute()Z
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/ContactsAction;->collectDSContactsInfo()Z

    move-result v0

    return v0
.end method
