.class public Lcom/huawei/bd/db/BigDataInnerProvider;
.super Landroid/content/ContentProvider;
.source "BigDataInnerProvider.java"


# static fields
.field private static final APP_ACTIVE_INFO_URI_INDICATOR:I = 0x6

.field private static final TAG:Ljava/lang/String; = "BD.BigDataInnerProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private bigDataHelper:Lcom/huawei/bd/db/BigDataSqLiteHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/huawei/bd/db/BigDataInnerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 44
    sget-object v0, Lcom/huawei/bd/db/BigDataInnerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.huawei.bd.provider.BigDataInnerProvider"

    const-string v2, "ai"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getTableName(I)Ljava/lang/String;
    .locals 1
    .param p1, "uriIndicator"    # I

    .prologue
    .line 157
    packed-switch p1, :pswitch_data_0

    .line 161
    const-string v0, ""

    :goto_0
    return-object v0

    .line 159
    :pswitch_0
    const-string v0, "ai"

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private isSuspectedSqlInjection(Ljava/lang/String;)Z
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 253
    const-string v3, "[-|;|/|\\[|\\]|}|{|%|@|*|!|\']"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 254
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 255
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    const-string v2, "BD.BigDataInnerProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Suspecetd sql injection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v2, 0x1

    .line 259
    :cond_0
    return v2
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x0

    .line 225
    iget-object v6, p0, Lcom/huawei/bd/db/BigDataInnerProvider;->bigDataHelper:Lcom/huawei/bd/db/BigDataSqLiteHelper;

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    array-length v6, p2

    if-gtz v6, :cond_1

    .line 226
    :cond_0
    const-string v6, "BD.BigDataInnerProvider"

    const-string v7, "[bulkInsert] invalid parameter"

    invoke-static {v6, v7}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    .line 249
    :goto_0
    return v0

    .line 230
    :cond_1
    iget-object v6, p0, Lcom/huawei/bd/db/BigDataInnerProvider;->bigDataHelper:Lcom/huawei/bd/db/BigDataSqLiteHelper;

    invoke-virtual {v6}, Lcom/huawei/bd/db/BigDataSqLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 231
    .local v2, "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_2

    .line 232
    const-string v6, "BD.BigDataInnerProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[bulkInsert] Fail to getWritableDatabase, uri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    .line 233
    goto :goto_0

    .line 236
    :cond_2
    const/4 v0, 0x0

    .line 237
    .local v0, "insertCount":I
    sget-object v6, Lcom/huawei/bd/db/BigDataInnerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 238
    .local v1, "matchCode":I
    invoke-direct {p0, v1}, Lcom/huawei/bd/db/BigDataInnerProvider;->getTableName(I)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "tableName":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 242
    array-length v6, p2

    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v4, p2, v5

    .line 243
    .local v4, "value":Landroid/content/ContentValues;
    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    .line 244
    add-int/lit8 v0, v0, 0x1

    .line 242
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 247
    .end local v4    # "value":Landroid/content/ContentValues;
    :cond_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 248
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 220
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 167
    if-eqz p2, :cond_0

    .line 168
    invoke-direct {p0, p2}, Lcom/huawei/bd/db/BigDataInnerProvider;->isSuspectedSqlInjection(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    :goto_0
    return v0

    .line 174
    :cond_0
    sget-object v4, Lcom/huawei/bd/db/BigDataInnerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/huawei/bd/db/BigDataInnerProvider;->getTableName(I)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "tableName":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    const-string v4, "BD.BigDataInnerProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[delete] Unkown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, 0x0

    .line 182
    .local v0, "count":I
    :try_start_0
    iget-object v4, p0, Lcom/huawei/bd/db/BigDataInnerProvider;->bigDataHelper:Lcom/huawei/bd/db/BigDataSqLiteHelper;

    invoke-virtual {v4}, Lcom/huawei/bd/db/BigDataSqLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 183
    .local v2, "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 184
    .end local v2    # "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Landroid/database/SQLException;
    const-string v4, "BD.BigDataInnerProvider"

    const-string v5, "[delete] failed"

    invoke-static {v4, v5}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 116
    const/4 v6, 0x0

    .line 117
    .local v6, "tableName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 119
    .local v0, "columnHack":Ljava/lang/String;
    sget-object v8, Lcom/huawei/bd/db/BigDataInnerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 124
    const-string v8, "BD.BigDataInnerProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[insert] Unkown URI "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    return-object v2

    .line 121
    :pswitch_0
    const-string v6, "ai"

    .line 131
    if-eqz p2, :cond_0

    .line 132
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 138
    .local v7, "values":Landroid/content/ContentValues;
    :goto_1
    iget-object v8, p0, Lcom/huawei/bd/db/BigDataInnerProvider;->bigDataHelper:Lcom/huawei/bd/db/BigDataSqLiteHelper;

    invoke-virtual {v8}, Lcom/huawei/bd/db/BigDataSqLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 140
    .local v3, "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v3, v6, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 142
    .local v4, "rowId":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_1

    .line 144
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 145
    .local v2, "noteUri":Landroid/net/Uri;
    goto :goto_0

    .line 135
    .end local v2    # "noteUri":Landroid/net/Uri;
    .end local v3    # "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "rowId":J
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .restart local v7    # "values":Landroid/content/ContentValues;
    goto :goto_1

    .line 147
    .restart local v3    # "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "rowId":J
    :cond_1
    :try_start_1
    const-string v8, "BD.BigDataInnerProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[insert] failed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 150
    .end local v4    # "rowId":J
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Landroid/database/SQLException;
    const-string v8, "BD.BigDataInnerProvider"

    const-string v9, "[insert] failed"

    invoke-static {v8, v9}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    .line 49
    const-string v3, "BD.BigDataInnerProvider"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/huawei/bd/db/BigDataInnerProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/bd/utils/BigDataUtils;->isLowRam(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->isEmuiVersionOverQ()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    const-string v3, "BD.BigDataInnerProvider"

    const-string v4, "low memory, return"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v3, 0x0

    .line 68
    :goto_0
    return v3

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/bd/db/BigDataInnerProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/bd/db/BigDataSqLiteHelper;->getInstance(Landroid/content/Context;)Lcom/huawei/bd/db/BigDataSqLiteHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/bd/db/BigDataInnerProvider;->bigDataHelper:Lcom/huawei/bd/db/BigDataSqLiteHelper;

    .line 55
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 56
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.huawei.bd"

    const-string v4, "com.huawei.bd.BDService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0}, Lcom/huawei/bd/db/BigDataInnerProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 59
    const-string v3, "BD.BigDataInnerProvider"

    const-string v4, "startService"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v3, "BD.BigDataInnerProvider"

    const-string v4, "start BDService failed: SecurityException"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 64
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v3, "BD.BigDataInnerProvider"

    const-string v4, "start BDService failed: IllegalStateException"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 73
    if-eqz p2, :cond_1

    .line 74
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v2, p2

    if-ge v10, v2, :cond_1

    .line 75
    aget-object v2, p2, v10

    invoke-direct {p0, v2}, Lcom/huawei/bd/db/BigDataInnerProvider;->isSuspectedSqlInjection(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const/4 v8, 0x0

    .line 105
    .end local v10    # "i":I
    :goto_1
    return-object v8

    .line 74
    .restart local v10    # "i":I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 81
    .end local v10    # "i":I
    :cond_1
    if-eqz p3, :cond_2

    .line 82
    invoke-direct {p0, p3}, Lcom/huawei/bd/db/BigDataInnerProvider;->isSuspectedSqlInjection(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    const/4 v8, 0x0

    goto :goto_1

    .line 87
    :cond_2
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 88
    .local v0, "sqLiteQueryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/huawei/bd/db/BigDataInnerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 93
    const-string v2, "BD.BigDataInnerProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[query] Unkown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v8, 0x0

    goto :goto_1

    .line 90
    :pswitch_0
    const-string v2, "ai"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 97
    const/4 v8, 0x0

    .line 99
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/huawei/bd/db/BigDataInnerProvider;->bigDataHelper:Lcom/huawei/bd/db/BigDataSqLiteHelper;

    invoke-virtual {v2}, Lcom/huawei/bd/db/BigDataSqLiteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 100
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_1

    .line 101
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v9

    .line 102
    .local v9, "e":Landroid/database/SQLException;
    const-string v2, "BD.BigDataInnerProvider"

    const-string v3, "[query] failed"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 193
    if-eqz p3, :cond_0

    .line 194
    invoke-direct {p0, p3}, Lcom/huawei/bd/db/BigDataInnerProvider;->isSuspectedSqlInjection(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 215
    :goto_0
    return v0

    .line 199
    :cond_0
    sget-object v4, Lcom/huawei/bd/db/BigDataInnerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/huawei/bd/db/BigDataInnerProvider;->getTableName(I)Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "tableName":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 201
    const-string v4, "BD.BigDataInnerProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[update] Unkown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    const/4 v0, 0x0

    .line 208
    .local v0, "count":I
    :try_start_0
    iget-object v4, p0, Lcom/huawei/bd/db/BigDataInnerProvider;->bigDataHelper:Lcom/huawei/bd/db/BigDataSqLiteHelper;

    invoke-virtual {v4}, Lcom/huawei/bd/db/BigDataSqLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 210
    .local v2, "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 211
    .end local v2    # "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Landroid/database/SQLException;
    const-string v4, "BD.BigDataInnerProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[update] failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
