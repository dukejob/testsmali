.class public Lcom/huawei/bd/db/BDProvider;
.super Landroid/content/ContentProvider;
.source "BDProvider.java"


# static fields
.field private static final APP_ACTION_URI_INDICATOR:I = 0x1

.field private static final DIFFERENTIAL_PRIVACY_INFO_URI_INDICATOR:I = 0x5

.field private static final EVENT_USAGE_INFO_URI_INDICATOR:I = 0x4

.field private static final LOCAL_INFO_URI_INDICATOR:I = 0x2

.field private static final ROM_INFO_URI_INDICATOR:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BD.BDProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private bigDataHelper:Lcom/huawei/bd/db/BigDataSqLiteHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 55
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/huawei/bd/db/BDProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 56
    sget-object v0, Lcom/huawei/bd/db/BDProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.huawei.bd.provider.BDProvider"

    const-string v2, "aa"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lcom/huawei/bd/db/BDProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.huawei.bd.provider.BDProvider"

    const-string v2, "li"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lcom/huawei/bd/db/BDProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.huawei.bd.provider.BDProvider"

    const-string v2, "ri"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/huawei/bd/db/BDProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.huawei.bd.provider.BDProvider"

    const-string v2, "eui"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/huawei/bd/db/BDProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.huawei.bd.provider.BDProvider"

    const-string v2, "dpi"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getTableName(I)Ljava/lang/String;
    .locals 1
    .param p1, "uriIndicator"    # I

    .prologue
    .line 206
    packed-switch p1, :pswitch_data_0

    .line 218
    const-string v0, ""

    :goto_0
    return-object v0

    .line 208
    :pswitch_0
    const-string v0, "aa"

    goto :goto_0

    .line 210
    :pswitch_1
    const-string v0, "li"

    goto :goto_0

    .line 212
    :pswitch_2
    const-string v0, "ri"

    goto :goto_0

    .line 214
    :pswitch_3
    const-string v0, "eui"

    goto :goto_0

    .line 216
    :pswitch_4
    const-string v0, "dpi"

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isSuspectedSqLiteInjection(Ljava/lang/String;)Z
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 342
    const-string v3, "[-|;|/|\\[|\\]|}|{|%|@|*|!|\']"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 343
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 344
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 345
    const-string v2, "BD.BDProvider"

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

    .line 346
    const/4 v2, 0x1

    .line 348
    :cond_0
    return v2
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 320
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v3, 0x0

    new-array v0, v3, [Landroid/content/ContentProviderResult;

    .line 321
    .local v0, "results":[Landroid/content/ContentProviderResult;
    iget-object v3, p0, Lcom/huawei/bd/db/BDProvider;->bigDataHelper:Lcom/huawei/bd/db/BigDataSqLiteHelper;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 322
    :cond_0
    const-string v3, "BD.BDProvider"

    const-string v4, "[bulkInsert] invalid parameter"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 335
    .end local v0    # "results":[Landroid/content/ContentProviderResult;
    .local v1, "results":[Landroid/content/ContentProviderResult;
    :goto_0
    return-object v1

    .line 326
    .end local v1    # "results":[Landroid/content/ContentProviderResult;
    .restart local v0    # "results":[Landroid/content/ContentProviderResult;
    :cond_1
    iget-object v3, p0, Lcom/huawei/bd/db/BDProvider;->bigDataHelper:Lcom/huawei/bd/db/BigDataSqLiteHelper;

    invoke-virtual {v3}, Lcom/huawei/bd/db/BigDataSqLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 327
    .local v2, "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_2

    move-object v1, v0

    .line 328
    .end local v0    # "results":[Landroid/content/ContentProviderResult;
    .restart local v1    # "results":[Landroid/content/ContentProviderResult;
    goto :goto_0

    .line 331
    .end local v1    # "results":[Landroid/content/ContentProviderResult;
    .restart local v0    # "results":[Landroid/content/ContentProviderResult;
    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 333
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 334
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v1, v0

    .line 335
    .end local v0    # "results":[Landroid/content/ContentProviderResult;
    .restart local v1    # "results":[Landroid/content/ContentProviderResult;
    goto :goto_0

    .line 337
    .end local v1    # "results":[Landroid/content/ContentProviderResult;
    .restart local v0    # "results":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 338
    throw v3
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x0

    .line 282
    iget-object v6, p0, Lcom/huawei/bd/db/BDProvider;->bigDataHelper:Lcom/huawei/bd/db/BigDataSqLiteHelper;

    if-nez v6, :cond_0

    .line 283
    const-string v6, "BD.BDProvider"

    const-string v7, "[bulkInsert] invalid parameter"

    invoke-static {v6, v7}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    .line 314
    :goto_0
    return v0

    .line 286
    :cond_0
    if-nez p2, :cond_1

    .line 287
    const-string v6, "BD.BDProvider"

    const-string v7, "[bulkInsert] invalid parameter"

    invoke-static {v6, v7}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    .line 288
    goto :goto_0

    .line 290
    :cond_1
    array-length v6, p2

    if-gtz v6, :cond_2

    .line 291
    const-string v6, "BD.BDProvider"

    const-string v7, "[bulkInsert] invalid parameter"

    invoke-static {v6, v7}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    .line 292
    goto :goto_0

    .line 295
    :cond_2
    iget-object v6, p0, Lcom/huawei/bd/db/BDProvider;->bigDataHelper:Lcom/huawei/bd/db/BigDataSqLiteHelper;

    invoke-virtual {v6}, Lcom/huawei/bd/db/BigDataSqLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 296
    .local v2, "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_3

    .line 297
    const-string v6, "BD.BDProvider"

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

    .line 298
    goto :goto_0

    .line 301
    :cond_3
    const/4 v0, 0x0

    .line 302
    .local v0, "insertCount":I
    sget-object v6, Lcom/huawei/bd/db/BDProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 303
    .local v1, "matchCode":I
    invoke-direct {p0, v1}, Lcom/huawei/bd/db/BDProvider;->getTableName(I)Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, "tableName":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 307
    array-length v6, p2

    :goto_1
    if-ge v5, v6, :cond_5

    aget-object v4, p2, v5

    .line 308
    .local v4, "value":Landroid/content/ContentValues;
    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    .line 309
    add-int/lit8 v0, v0, 0x1

    .line 307
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 312
    .end local v4    # "value":Landroid/content/ContentValues;
    :cond_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 313
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 277
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

    .line 224
    if-eqz p2, :cond_0

    .line 225
    invoke-direct {p0, p2}, Lcom/huawei/bd/db/BDProvider;->isSuspectedSqLiteInjection(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    :goto_0
    return v0

    .line 231
    :cond_0
    sget-object v4, Lcom/huawei/bd/db/BDProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/huawei/bd/db/BDProvider;->getTableName(I)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "tableName":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    const-string v4, "BD.BDProvider"

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

    .line 237
    :cond_1
    const/4 v0, 0x0

    .line 239
    .local v0, "count":I
    :try_start_0
    iget-object v4, p0, Lcom/huawei/bd/db/BDProvider;->bigDataHelper:Lcom/huawei/bd/db/BigDataSqLiteHelper;

    invoke-virtual {v4}, Lcom/huawei/bd/db/BigDataSqLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 240
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 241
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e":Landroid/database/SQLException;
    const-string v4, "BD.BDProvider"

    const-string v5, "[delete] failed"

    invoke-static {v4, v5}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 146
    const/4 v6, 0x0

    .line 147
    .local v6, "tableName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 149
    .local v0, "columnHack":Ljava/lang/String;
    sget-object v8, Lcom/huawei/bd/db/BDProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 169
    const-string v8, "BD.BDProvider"

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

    .line 201
    :goto_0
    return-object v2

    .line 151
    :pswitch_0
    const-string v6, "aa"

    .line 152
    const-string v0, "d"

    .line 177
    :goto_1
    if-eqz p2, :cond_0

    .line 178
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 185
    .local v7, "values":Landroid/content/ContentValues;
    :goto_2
    iget-object v8, p0, Lcom/huawei/bd/db/BDProvider;->bigDataHelper:Lcom/huawei/bd/db/BigDataSqLiteHelper;

    invoke-virtual {v8}, Lcom/huawei/bd/db/BigDataSqLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 188
    .local v3, "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v3, v6, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 190
    .local v4, "rowId":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_1

    .line 193
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 194
    .local v2, "noteUri":Landroid/net/Uri;
    goto :goto_0

    .line 155
    .end local v2    # "noteUri":Landroid/net/Uri;
    .end local v3    # "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "rowId":J
    .end local v7    # "values":Landroid/content/ContentValues;
    :pswitch_1
    const-string v6, "li"

    .line 156
    const-string v0, "c"

    .line 157
    goto :goto_1

    .line 159
    :pswitch_2
    const-string v6, "ri"

    .line 160
    const-string v0, "a"

    .line 161
    goto :goto_1

    .line 163
    :pswitch_3
    const-string v6, "eui"

    .line 164
    goto :goto_1

    .line 166
    :pswitch_4
    const-string v6, "dpi"

    .line 167
    goto :goto_1

    .line 181
    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .restart local v7    # "values":Landroid/content/ContentValues;
    goto :goto_2

    .line 196
    .restart local v3    # "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "rowId":J
    :cond_1
    :try_start_1
    const-string v8, "BD.BDProvider"

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

    .line 199
    .end local v4    # "rowId":J
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Landroid/database/SQLException;
    const-string v8, "BD.BDProvider"

    const-string v9, "[insert] failed"

    invoke-static {v8, v9}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    .line 66
    const-string v3, "BD.BDProvider"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/huawei/bd/db/BDProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/bd/utils/BigDataUtils;->isLowRam(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->isEmuiVersionOverQ()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    const-string v3, "BD.BDProvider"

    const-string v4, "low memory, return"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v3, 0x0

    .line 85
    :goto_0
    return v3

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/bd/db/BDProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/bd/db/BigDataSqLiteHelper;->getInstance(Landroid/content/Context;)Lcom/huawei/bd/db/BigDataSqLiteHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/bd/db/BDProvider;->bigDataHelper:Lcom/huawei/bd/db/BigDataSqLiteHelper;

    .line 72
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 73
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.huawei.bd"

    const-string v4, "com.huawei.bd.BDService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0}, Lcom/huawei/bd/db/BDProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 76
    const-string v3, "BD.BDProvider"

    const-string v4, "startService"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v3, "BD.BDProvider"

    const-string v4, "start BDService failed: SecurityException"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 81
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v3, "BD.BDProvider"

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
    .line 90
    if-eqz p2, :cond_1

    .line 91
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v2, p2

    if-ge v10, v2, :cond_1

    .line 92
    aget-object v2, p2, v10

    invoke-direct {p0, v2}, Lcom/huawei/bd/db/BDProvider;->isSuspectedSqLiteInjection(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const/4 v8, 0x0

    .line 135
    .end local v10    # "i":I
    :goto_1
    return-object v8

    .line 91
    .restart local v10    # "i":I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 98
    .end local v10    # "i":I
    :cond_1
    if-eqz p3, :cond_2

    .line 99
    invoke-direct {p0, p3}, Lcom/huawei/bd/db/BDProvider;->isSuspectedSqLiteInjection(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    const/4 v8, 0x0

    goto :goto_1

    .line 104
    :cond_2
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 105
    .local v0, "sqLiteQueryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/huawei/bd/db/BDProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 122
    const-string v2, "BD.BDProvider"

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

    .line 123
    const/4 v8, 0x0

    goto :goto_1

    .line 107
    :pswitch_0
    const-string v2, "aa"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 126
    :goto_2
    const/4 v8, 0x0

    .line 128
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/huawei/bd/db/BDProvider;->bigDataHelper:Lcom/huawei/bd/db/BigDataSqLiteHelper;

    invoke-virtual {v2}, Lcom/huawei/bd/db/BigDataSqLiteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 129
    .local v1, "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    .line 130
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_1

    .line 110
    .end local v1    # "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :pswitch_1
    const-string v2, "li"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_2

    .line 113
    :pswitch_2
    const-string v2, "ri"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_2

    .line 116
    :pswitch_3
    const-string v2, "eui"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_2

    .line 119
    :pswitch_4
    const-string v2, "dpi"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_2

    .line 131
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 132
    .local v9, "e":Landroid/database/SQLException;
    const-string v2, "BD.BDProvider"

    const-string v3, "[query] failed"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
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

    .line 250
    if-eqz p3, :cond_0

    .line 251
    invoke-direct {p0, p3}, Lcom/huawei/bd/db/BDProvider;->isSuspectedSqLiteInjection(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    :goto_0
    return v0

    .line 256
    :cond_0
    sget-object v4, Lcom/huawei/bd/db/BDProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/huawei/bd/db/BDProvider;->getTableName(I)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "tableName":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    const-string v4, "BD.BDProvider"

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

    .line 262
    :cond_1
    const/4 v0, 0x0

    .line 265
    .local v0, "count":I
    :try_start_0
    iget-object v4, p0, Lcom/huawei/bd/db/BDProvider;->bigDataHelper:Lcom/huawei/bd/db/BigDataSqLiteHelper;

    invoke-virtual {v4}, Lcom/huawei/bd/db/BigDataSqLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 267
    .local v2, "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 268
    .end local v2    # "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Landroid/database/SQLException;
    const-string v4, "BD.BDProvider"

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
