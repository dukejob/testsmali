.class public Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;
.super Lcom/huawei/opcollect/strategy/Action;
.source "MediaAppAction.java"


# static fields
.field private static final AUDIO_URI:Landroid/net/Uri;

.field private static final COLUMN_FIRST:I = 0x0

.field private static final EIGHTY_SONGS:Ljava/lang/String; = "eighty_songs"

.field private static final FRONT_PHOTO_NUM_URI:Landroid/net/Uri;

.field private static final IMAGE_URI:Landroid/net/Uri;

.field private static final LOCK:Ljava/lang/Object;

.field private static final NEW_CENTURY_SONGS:Ljava/lang/String; = "new_century_songs"

.field private static final NINETY_SONGS:Ljava/lang/String; = "ninety_songs"

.field private static final PHOTO_TAG_INFO_URI:Landroid/net/Uri;

.field private static final SEVENTY_SONGS:Ljava/lang/String; = "seventy_songs"

.field private static final TAG:Ljava/lang/String; = "MediaAppAction"

.field private static final TOP_CAMERA_MODE_URI:Landroid/net/Uri;

.field private static final TOURISM_PHOTO_NUM_URI:Landroid/net/Uri;

.field private static final VIDEO_URI:Landroid/net/Uri;

.field private static instance:Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "content://com.huawei.gallery.provider/open_api/user_profile/get_tourism_photo_num"

    .line 35
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->TOURISM_PHOTO_NUM_URI:Landroid/net/Uri;

    .line 36
    const-string v0, "content://com.huawei.gallery.provider/open_api/user_profile/get_front_photo_num"

    .line 37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->FRONT_PHOTO_NUM_URI:Landroid/net/Uri;

    .line 38
    const-string v0, "content://com.huawei.gallery.provider/open_api/user_profile/get_photo_tag_info"

    .line 39
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->PHOTO_TAG_INFO_URI:Landroid/net/Uri;

    .line 40
    const-string v0, "content://com.huawei.gallery.provider/open_api/user_profile/get_top_camera_mode"

    .line 41
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->TOP_CAMERA_MODE_URI:Landroid/net/Uri;

    .line 42
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->AUDIO_URI:Landroid/net/Uri;

    .line 43
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->VIDEO_URI:Landroid/net/Uri;

    .line 44
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->IMAGE_URI:Landroid/net/Uri;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->LOCK:Ljava/lang/Object;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->instance:Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/huawei/opcollect/strategy/Action;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    const-class v0, Lcom/huawei/nb/model/collectencrypt/RawMediaAppStastic;

    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->queryDailyRecordNum(Ljava/lang/Class;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->setDailyRecordNum(I)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;)Lcom/huawei/nb/model/collectencrypt/RawMediaAppStastic;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->getRawMediaAppStatics()Lcom/huawei/nb/model/collectencrypt/RawMediaAppStastic;

    move-result-object v0

    return-object v0
.end method

.method private analyseAudioYearList()Ljava/lang/String;
    .locals 29

    .prologue
    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 294
    const-string v2, "MediaAppAction"

    const-string v3, "context is null"

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v2, ""

    .line 354
    :goto_0
    return-object v2

    .line 297
    :cond_0
    new-instance v28, Lorg/json/JSONObject;

    invoke-direct/range {v28 .. v28}, Lorg/json/JSONObject;-><init>()V

    .line 298
    .local v28, "object":Lorg/json/JSONObject;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "year"

    aput-object v3, v4, v2

    .line 299
    .local v4, "audioProjection":[Ljava/lang/String;
    const-string v5, "year <= 1979"

    .line 300
    .local v5, "whereSeventy":Ljava/lang/String;
    const-string v9, "year <= 1989"

    .line 301
    .local v9, "whereEighty":Ljava/lang/String;
    const-string v13, "year <= 1999"

    .line 302
    .local v13, "whereNinety":Ljava/lang/String;
    const-string v17, "year > 1999"

    .line 303
    .local v17, "whereNewCentury":Ljava/lang/String;
    const/16 v26, 0x0

    .line 304
    .local v26, "countSeventy":I
    const/16 v24, 0x0

    .line 305
    .local v24, "countEighty":I
    const/16 v25, 0x0

    .line 306
    .local v25, "countNinety":I
    const/16 v23, 0x0

    .line 307
    .local v23, "audioCursorSeventy":Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 308
    .local v20, "audioCursorEighty":Landroid/database/Cursor;
    const/16 v22, 0x0

    .line 309
    .local v22, "audioCursorNinety":Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 311
    .local v21, "audioCursorNewCentury":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->AUDIO_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 313
    if-eqz v23, :cond_1

    .line 314
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v26

    .line 315
    const-string v2, "seventy_songs"

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 317
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->AUDIO_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v4

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 319
    if-eqz v20, :cond_2

    .line 320
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    sub-int v24, v2, v26

    .line 321
    const-string v2, "eighty_songs"

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 323
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->AUDIO_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v12, v4

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 325
    if-eqz v22, :cond_3

    .line 326
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    sub-int v2, v2, v24

    sub-int v25, v2, v26

    .line 327
    const-string v2, "ninety_songs"

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 329
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->AUDIO_URI:Landroid/net/Uri;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 331
    if-eqz v21, :cond_4

    .line 332
    const-string v2, "new_century_songs"

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :cond_4
    if-eqz v23, :cond_5

    .line 340
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_5
    if-eqz v20, :cond_6

    .line 343
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_6
    if-eqz v22, :cond_7

    .line 346
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 348
    :cond_7
    if-eqz v21, :cond_8

    .line 349
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 353
    :cond_8
    :goto_1
    const-string v2, "MediaAppAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Years of music:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 334
    :catch_0
    move-exception v27

    .line 335
    .local v27, "e":Lorg/json/JSONException;
    :try_start_1
    const-string v2, "MediaAppAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "json exception: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    if-eqz v23, :cond_9

    .line 340
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_9
    if-eqz v20, :cond_a

    .line 343
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_a
    if-eqz v22, :cond_b

    .line 346
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 348
    :cond_b
    if-eqz v21, :cond_8

    .line 349
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 336
    .end local v27    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v27

    .line 337
    .local v27, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "MediaAppAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runtime exception: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    if-eqz v23, :cond_c

    .line 340
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_c
    if-eqz v20, :cond_d

    .line 343
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_d
    if-eqz v22, :cond_e

    .line 346
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 348
    :cond_e
    if-eqz v21, :cond_8

    .line 349
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 339
    .end local v27    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    if-eqz v23, :cond_f

    .line 340
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_f
    if-eqz v20, :cond_10

    .line 343
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_10
    if-eqz v22, :cond_11

    .line 346
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 348
    :cond_11
    if-eqz v21, :cond_12

    .line 349
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_12
    throw v2
.end method

.method private collectRawMediaAppStatics()V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction$1;

    invoke-direct {v1, p0}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction$1;-><init>(Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 119
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 120
    return-void
.end method

.method private static destroyMediaAppActionInstance()V
    .locals 2

    .prologue
    .line 95
    sget-object v1, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->instance:Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;

    .line 97
    monitor-exit v1

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getAudioNum()I
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 221
    iget-object v0, p0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v7

    .line 224
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    .line 225
    .local v2, "audioProjection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 227
    .local v6, "audioCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->AUDIO_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 231
    :goto_1
    const/4 v7, 0x0

    .line 232
    .local v7, "count":I
    if-eqz v6, :cond_0

    .line 233
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 228
    .end local v7    # "count":I
    :catch_0
    move-exception v8

    .line 229
    .local v8, "e":Ljava/lang/RuntimeException;
    const-string v0, "MediaAppAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query audio uri failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getFrontPhotoNum()I
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->FRONT_PHOTO_NUM_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->getPhotoNum(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method private getImageNum()I
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 260
    iget-object v0, p0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v6

    .line 263
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    .line 264
    .local v2, "imageProjection":[Ljava/lang/String;
    const-string v3, "_data LIKE \'%DCIM/Camera%\'"

    .line 265
    .local v3, "where":Ljava/lang/String;
    const/4 v8, 0x0

    .line 267
    .local v8, "imageCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->IMAGE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 271
    :goto_1
    const/4 v6, 0x0

    .line 272
    .local v6, "count":I
    if-eqz v8, :cond_0

    .line 273
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 274
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 268
    .end local v6    # "count":I
    :catch_0
    move-exception v7

    .line 269
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v0, "MediaAppAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query image uri failed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-object v1, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->instance:Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;

    const-string v2, "RawMediaAppStastic"

    invoke-direct {v0, p0, v2}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->instance:Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;

    .line 64
    :cond_0
    sget-object v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->instance:Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPhotoNum(Landroid/net/Uri;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 148
    const/4 v2, 0x0

    .line 149
    .local v2, "num":I
    invoke-direct {p0, p1}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->queryDataFromGallery2(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 150
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->isNullOrEmptyCursor(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    .line 166
    .end local v2    # "num":I
    .local v3, "num":I
    :goto_0
    return v3

    .line 153
    .end local v3    # "num":I
    .restart local v2    # "num":I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    .line 154
    const-string v4, "MediaAppAction"

    const-string v5, "moveToFirst failed"

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 155
    .end local v2    # "num":I
    .restart local v3    # "num":I
    goto :goto_0

    .line 158
    .end local v3    # "num":I
    .restart local v2    # "num":I
    :cond_1
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 164
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_1
    move v3, v2

    .line 166
    .end local v2    # "num":I
    .restart local v3    # "num":I
    goto :goto_0

    .line 159
    .end local v3    # "num":I
    .restart local v2    # "num":I
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    const-string v4, "MediaAppAction"

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 161
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 162
    .local v1, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_2
    const-string v4, "MediaAppAction"

    invoke-virtual {v1}, Landroid/database/CursorIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v1    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 165
    throw v4
.end method

.method private getPhotoTagInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 170
    const-string v3, ""

    .line 171
    .local v3, "str":Ljava/lang/String;
    sget-object v4, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->PHOTO_TAG_INFO_URI:Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->queryDataFromGallery2(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 172
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->isNullOrEmptyCursor(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 196
    :goto_0
    return-object v4

    .line 175
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    .line 177
    const-string v4, "MediaAppAction"

    const-string v5, "moveToFirst failed"

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 178
    goto :goto_0

    .line 182
    :cond_1
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 189
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 192
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 196
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_1
    const-string v4, "MediaAppAction"

    invoke-virtual {v1}, Landroid/database/CursorIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v1    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 190
    throw v4
.end method

.method private getRawMediaAppStatics()Lcom/huawei/nb/model/collectencrypt/RawMediaAppStastic;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcom/huawei/nb/model/collectencrypt/RawMediaAppStastic;

    invoke-direct {v0}, Lcom/huawei/nb/model/collectencrypt/RawMediaAppStastic;-><init>()V

    .line 124
    .local v0, "rawMediaAppStastic":Lcom/huawei/nb/model/collectencrypt/RawMediaAppStastic;
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->getTourismPhotoNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawMediaAppStastic;->setMTourismPhotoNum(Ljava/lang/Integer;)V

    .line 125
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->getFrontPhotoNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawMediaAppStastic;->setMFrontPhotoNum(Ljava/lang/Integer;)V

    .line 126
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->getPhotoTagInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawMediaAppStastic;->setMPhotoTagInfo(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->getTopCameraMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawMediaAppStastic;->setMTopCameraMode(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->mContext:Landroid/content/Context;

    const-string v2, "2.11.2"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectUtils;->checkODMFApiVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->getAudioNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawMediaAppStastic;->setMMusicNum(Ljava/lang/Integer;)V

    .line 130
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->getVideoNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawMediaAppStastic;->setMVideoNum(Ljava/lang/Integer;)V

    .line 131
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->getImageNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawMediaAppStastic;->setMPhotoNum(Ljava/lang/Integer;)V

    .line 133
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawMediaAppStastic;->setMTimeStamp(Ljava/util/Date;)V

    .line 134
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->analyseAudioYearList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawMediaAppStastic;->setMMusicYear(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/huawei/opcollect/utils/OPCollectUtils;->formatCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/nb/model/collectencrypt/RawMediaAppStastic;->setMReservedText(Ljava/lang/String;)V

    .line 136
    return-object v0
.end method

.method private getTopCameraMode()Ljava/lang/String;
    .locals 7

    .prologue
    .line 200
    const-string v2, ""

    .line 201
    .local v2, "str":Ljava/lang/String;
    sget-object v4, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->TOP_CAMERA_MODE_URI:Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->queryDataFromGallery2(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 202
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->isNullOrEmptyCursor(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 217
    .end local v2    # "str":Ljava/lang/String;
    .local v3, "str":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 205
    .end local v3    # "str":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    .line 206
    const-string v4, "MediaAppAction"

    const-string v5, "moveToFirst failed"

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 207
    .end local v2    # "str":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_0

    .line 210
    .end local v3    # "str":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 211
    const-string v4, "MediaAppAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTopCameraMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_1
    move-object v3, v2

    .line 217
    .end local v2    # "str":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_0

    .line 212
    .end local v3    # "str":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_1
    const-string v4, "MediaAppAction"

    invoke-virtual {v1}, Landroid/database/CursorIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v1    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 216
    throw v4
.end method

.method private getTourismPhotoNum()I
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->TOURISM_PHOTO_NUM_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->getPhotoNum(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method private getVideoNum()I
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 240
    iget-object v0, p0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v6

    .line 243
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    .line 244
    .local v2, "videoProjection":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 246
    .local v8, "videoCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->VIDEO_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 251
    :goto_1
    const/4 v6, 0x0

    .line 252
    .local v6, "count":I
    if-eqz v8, :cond_0

    .line 253
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 254
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 248
    .end local v6    # "count":I
    :catch_0
    move-exception v7

    .line 249
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v0, "MediaAppAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query video uri failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static isNullOrEmptyCursor(Landroid/database/Cursor;)Z
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x1

    .line 69
    if-nez p0, :cond_0

    .line 70
    const-string v1, "MediaAppAction"

    const-string v2, "cursor is null"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    return v0

    .line 73
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 74
    const-string v1, "MediaAppAction"

    const-string v2, "cursor size <= 0"

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryDataFromGallery2(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 280
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-object v6

    .line 283
    :cond_1
    const/4 v6, 0x0

    .line 285
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 286
    :catch_0
    move-exception v7

    .line 287
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v0, "MediaAppAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryDataFromGallery2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()Z
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/Action;->destroy()Z

    .line 90
    invoke-static {}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->destroyMediaAppActionInstance()V

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method protected execute()Z
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/huawei/opcollect/collector/pullcollection/MediaAppAction;->collectRawMediaAppStatics()V

    .line 108
    const/4 v0, 0x1

    return v0
.end method
