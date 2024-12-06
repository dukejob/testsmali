.class public Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;
.super Ljava/lang/Object;
.source "AwarenessParseHelper.java"


# static fields
.field private static final MAPKEY:Ljava/lang/String; = "MAPFENCE"

.field private static final TAG:Ljava/lang/String; = "AwarenessParseHelper"

.field private static fenceHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huawei/hiai/awareness/service/AwarenessFence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->fenceHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assembleAwareness(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .locals 11
    .param p0, "logicStr"    # Ljava/lang/String;
    .param p1, "countStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/huawei/hiai/awareness/service/AwarenessFence;"
        }
    .end annotation

    .prologue
    .local p2, "fenceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 358
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-object v4

    .line 360
    :cond_1
    const/4 v3, -0x1

    .line 361
    .local v3, "logic":I
    const/4 v1, -0x1

    .line 363
    .local v1, "count":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 364
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 368
    :goto_1
    if-eq v3, v7, :cond_0

    if-eq v1, v7, :cond_0

    .line 371
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-gt v1, v5, :cond_0

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "awarenessFenceList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/hiai/awareness/service/AwarenessFence;>;"
    if-ne v3, v8, :cond_2

    .line 375
    invoke-static {v1, p2}, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->getListAwareness(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 376
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 379
    new-instance v4, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    invoke-direct {v4, v8, v0}, Lcom/huawei/hiai/awareness/service/AwarenessFence;-><init>(ILjava/util/List;)V

    goto :goto_0

    .line 365
    .end local v0    # "awarenessFenceList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/hiai/awareness/service/AwarenessFence;>;"
    :catch_0
    move-exception v2

    .line 366
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v5, "AwarenessParseHelper"

    const-string v6, "assembleAwareness NumberFormatException"

    invoke-static {v5, v6}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 382
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "awarenessFenceList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/hiai/awareness/service/AwarenessFence;>;"
    :cond_2
    if-ne v3, v10, :cond_3

    .line 383
    invoke-static {v1, p2}, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->getListAwareness(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 384
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 387
    new-instance v4, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    invoke-direct {v4, v10, v0}, Lcom/huawei/hiai/awareness/service/AwarenessFence;-><init>(ILjava/util/List;)V

    goto :goto_0

    .line 389
    :cond_3
    if-ne v3, v9, :cond_0

    .line 390
    invoke-static {v1, p2}, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->getListAwareness(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 391
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 394
    new-instance v4, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    invoke-direct {v4, v9, v0}, Lcom/huawei/hiai/awareness/service/AwarenessFence;-><init>(ILjava/util/List;)V

    goto :goto_0
.end method

.method private static getAwarenessFence(Ljava/lang/String;)Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .locals 15
    .param p0, "oneFenceStr"    # Ljava/lang/String;

    .prologue
    .line 468
    if-eqz p0, :cond_2

    const-string v13, ":"

    invoke-virtual {p0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, ","

    invoke-virtual {p0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 469
    const-string v13, ","

    invoke-virtual {p0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, "activity":[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v2, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 471
    .local v12, "type":I
    const/4 v13, 0x1

    aget-object v13, v2, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 472
    .local v8, "status":I
    const/4 v0, 0x0

    .line 473
    .local v0, "action":I
    const-string v7, ""

    .line 475
    .local v7, "secondAction":Ljava/lang/String;
    const/4 v13, 0x2

    :try_start_0
    aget-object v13, v2, v13

    if-eqz v13, :cond_1

    const/4 v13, 0x2

    aget-object v13, v2, v13

    const-string v14, "~"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 476
    const/4 v13, 0x2

    aget-object v13, v2, v13

    const-string v14, "~"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, "actionGroup":[Ljava/lang/String;
    array-length v13, v1

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 478
    const/4 v13, 0x0

    aget-object v13, v1, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 479
    const/4 v13, 0x1

    aget-object v7, v1, v13

    .line 484
    .end local v1    # "actionGroup":[Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v13, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    invoke-direct {v13, v12, v8, v0, v7}, Lcom/huawei/hiai/awareness/service/AwarenessFence;-><init>(IIILjava/lang/String;)V

    .line 567
    .end local v0    # "action":I
    .end local v2    # "activity":[Ljava/lang/String;
    .end local v7    # "secondAction":Ljava/lang/String;
    .end local v8    # "status":I
    .end local v12    # "type":I
    :goto_1
    return-object v13

    .line 481
    .restart local v0    # "action":I
    .restart local v2    # "activity":[Ljava/lang/String;
    .restart local v7    # "secondAction":Ljava/lang/String;
    .restart local v8    # "status":I
    .restart local v12    # "type":I
    :cond_1
    const/4 v13, 0x2

    aget-object v13, v2, v13

    if-eqz v13, :cond_0

    const/4 v13, 0x2

    aget-object v13, v2, v13

    const-string v14, "~"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 482
    const/4 v13, 0x2

    aget-object v13, v2, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 486
    :catch_0
    move-exception v3

    .line 487
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v13, "AwarenessParseHelper"

    const-string v14, " getAwarenessFence NumberFormatException 1 "

    invoke-static {v13, v14}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .end local v0    # "action":I
    .end local v2    # "activity":[Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "secondAction":Ljava/lang/String;
    .end local v8    # "status":I
    .end local v12    # "type":I
    :cond_2
    if-eqz p0, :cond_3

    const-string v13, ";"

    invoke-virtual {p0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 493
    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 495
    :cond_4
    const-string v13, ";"

    invoke-virtual {p0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 497
    .local v10, "tmpStrGroup":[Ljava/lang/String;
    array-length v13, v10

    const/4 v14, 0x1

    if-le v13, v14, :cond_c

    .line 498
    const/4 v13, 0x0

    aget-object v9, v10, v13

    .line 499
    .local v9, "tmpStr":Ljava/lang/String;
    const-string v13, ":"

    invoke-virtual {v9, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 500
    const-string v13, ":"

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 501
    .local v11, "topStr":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 503
    .local v6, "logic":I
    array-length v13, v11

    const/4 v14, 0x2

    if-ne v13, v14, :cond_5

    .line 505
    const/4 v13, 0x0

    :try_start_1
    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 512
    :cond_5
    :goto_2
    const/4 v13, 0x3

    if-eq v6, v13, :cond_6

    const/4 v13, 0x2

    if-eq v6, v13, :cond_6

    const/4 v13, 0x4

    if-ne v6, v13, :cond_a

    .line 513
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v4, "fenceList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/hiai/awareness/service/AwarenessFence;>;"
    const/4 v12, 0x0

    .line 515
    .restart local v12    # "type":I
    const/4 v8, 0x0

    .line 516
    .restart local v8    # "status":I
    const/4 v0, 0x0

    .line 517
    .restart local v0    # "action":I
    const-string v7, ""

    .line 518
    .restart local v7    # "secondAction":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    array-length v13, v10

    add-int/lit8 v13, v13, -0x1

    if-ge v5, v13, :cond_9

    .line 519
    add-int/lit8 v13, v5, 0x1

    aget-object v13, v10, v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 521
    .restart local v2    # "activity":[Ljava/lang/String;
    const/4 v13, 0x0

    :try_start_2
    aget-object v13, v2, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 522
    const/4 v13, 0x1

    aget-object v13, v2, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 525
    const/4 v13, 0x2

    aget-object v13, v2, v13

    if-eqz v13, :cond_8

    const/4 v13, 0x2

    aget-object v13, v2, v13

    const-string v14, "~"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 526
    const/4 v13, 0x2

    aget-object v13, v2, v13

    const-string v14, "~"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 527
    .restart local v1    # "actionGroup":[Ljava/lang/String;
    array-length v13, v1

    const/4 v14, 0x2

    if-ne v13, v14, :cond_7

    .line 528
    const/4 v13, 0x0

    aget-object v13, v1, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 529
    const/4 v13, 0x1

    aget-object v7, v1, v13

    .line 534
    .end local v1    # "actionGroup":[Ljava/lang/String;
    :cond_7
    :goto_4
    new-instance v13, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    invoke-direct {v13, v12, v8, v0, v7}, Lcom/huawei/hiai/awareness/service/AwarenessFence;-><init>(IIILjava/lang/String;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 518
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 507
    .end local v0    # "action":I
    .end local v2    # "activity":[Ljava/lang/String;
    .end local v4    # "fenceList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/hiai/awareness/service/AwarenessFence;>;"
    .end local v5    # "i":I
    .end local v7    # "secondAction":Ljava/lang/String;
    .end local v8    # "status":I
    .end local v12    # "type":I
    :catch_1
    move-exception v3

    .line 508
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string v13, "AwarenessParseHelper"

    const-string v14, " getAwarenessFence NumberFormatException 2 "

    invoke-static {v13, v14}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 531
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "action":I
    .restart local v2    # "activity":[Ljava/lang/String;
    .restart local v4    # "fenceList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/hiai/awareness/service/AwarenessFence;>;"
    .restart local v5    # "i":I
    .restart local v7    # "secondAction":Ljava/lang/String;
    .restart local v8    # "status":I
    .restart local v12    # "type":I
    :cond_8
    const/4 v13, 0x2

    :try_start_3
    aget-object v13, v2, v13

    if-eqz v13, :cond_7

    const/4 v13, 0x2

    aget-object v13, v2, v13

    const-string v14, "~"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 532
    const/4 v13, 0x2

    aget-object v13, v2, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    goto :goto_4

    .line 535
    :catch_2
    move-exception v3

    .line 536
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string v13, "AwarenessParseHelper"

    const-string v14, " getAwarenessFence NumberFormatException 3 "

    invoke-static {v13, v14}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 541
    .end local v2    # "activity":[Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    new-instance v13, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    invoke-direct {v13, v6, v4}, Lcom/huawei/hiai/awareness/service/AwarenessFence;-><init>(ILjava/util/List;)V

    goto/16 :goto_1

    .line 542
    .end local v0    # "action":I
    .end local v4    # "fenceList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/hiai/awareness/service/AwarenessFence;>;"
    .end local v5    # "i":I
    .end local v7    # "secondAction":Ljava/lang/String;
    .end local v8    # "status":I
    .end local v12    # "type":I
    :cond_a
    const/4 v13, 0x1

    if-ne v6, v13, :cond_c

    .line 543
    const/4 v13, 0x1

    aget-object v13, v10, v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 544
    .restart local v2    # "activity":[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v2, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 545
    .restart local v12    # "type":I
    const/4 v13, 0x1

    aget-object v13, v2, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 546
    .restart local v8    # "status":I
    const/4 v0, 0x0

    .line 547
    .restart local v0    # "action":I
    const-string v7, ""

    .line 550
    .restart local v7    # "secondAction":Ljava/lang/String;
    const/4 v13, 0x2

    :try_start_4
    aget-object v13, v2, v13

    if-eqz v13, :cond_d

    const/4 v13, 0x2

    aget-object v13, v2, v13

    const-string v14, "~"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 551
    const/4 v13, 0x2

    aget-object v13, v2, v13

    const-string v14, "~"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 552
    .restart local v1    # "actionGroup":[Ljava/lang/String;
    array-length v13, v1

    const/4 v14, 0x2

    if-ne v13, v14, :cond_b

    .line 553
    const/4 v13, 0x0

    aget-object v13, v1, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 554
    const/4 v13, 0x1

    aget-object v7, v1, v13

    .line 559
    .end local v1    # "actionGroup":[Ljava/lang/String;
    :cond_b
    :goto_6
    new-instance v13, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    invoke-direct {v13, v12, v8, v0, v7}, Lcom/huawei/hiai/awareness/service/AwarenessFence;-><init>(IIILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 561
    :catch_3
    move-exception v3

    .line 562
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string v13, "AwarenessParseHelper"

    const-string v14, " getAwarenessFence NumberFormatException 4 "

    invoke-static {v13, v14}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    .end local v0    # "action":I
    .end local v2    # "activity":[Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "logic":I
    .end local v7    # "secondAction":Ljava/lang/String;
    .end local v8    # "status":I
    .end local v9    # "tmpStr":Ljava/lang/String;
    .end local v11    # "topStr":[Ljava/lang/String;
    .end local v12    # "type":I
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 556
    .restart local v0    # "action":I
    .restart local v2    # "activity":[Ljava/lang/String;
    .restart local v6    # "logic":I
    .restart local v7    # "secondAction":Ljava/lang/String;
    .restart local v8    # "status":I
    .restart local v9    # "tmpStr":Ljava/lang/String;
    .restart local v11    # "topStr":[Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_d
    const/4 v13, 0x2

    :try_start_5
    aget-object v13, v2, v13

    if-eqz v13, :cond_b

    const/4 v13, 0x2

    aget-object v13, v2, v13

    const-string v14, "~"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 557
    const/4 v13, 0x2

    aget-object v13, v2, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v0

    goto :goto_6
.end method

.method private static getAwarenessOneMoreFence(IILjava/lang/String;)Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .locals 6
    .param p0, "logic"    # I
    .param p1, "count"    # I
    .param p2, "oneMoreString"    # Ljava/lang/String;

    .prologue
    .line 438
    const-string v5, ";"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "oneStringFence":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 440
    .local v0, "awarenessFence":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v1, "awarenessFences":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/hiai/awareness/service/AwarenessFence;>;"
    array-length v4, v3

    .line 442
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 444
    aget-object v5, v3, v2

    invoke-static {v5}, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->getAwarenessFence(Ljava/lang/String;)Lcom/huawei/hiai/awareness/service/AwarenessFence;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_0

    .line 447
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 453
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, p1, :cond_3

    const/4 v5, 0x3

    if-eq p0, v5, :cond_2

    const/4 v5, 0x2

    if-eq p0, v5, :cond_2

    const/4 v5, 0x4

    if-ne p0, v5, :cond_3

    .line 455
    :cond_2
    new-instance v5, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    invoke-direct {v5, p0, v1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;-><init>(ILjava/util/List;)V

    .line 457
    :goto_1
    return-object v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static getFenceString(Ljava/util/HashMap;Ljava/lang/StringBuffer;Z)V
    .locals 13
    .param p1, "content"    # Ljava/lang/StringBuffer;
    .param p2, "isNeedStr"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/StringBuffer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p0, "listHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v12, 0x1

    .line 169
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 256
    :cond_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 172
    .local v4, "integerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 173
    .local v3, "integerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 174
    .local v2, "integer":Ljava/lang/Integer;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 175
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "integer":Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 178
    .restart local v2    # "integer":Ljava/lang/Integer;
    :cond_2
    const/4 v7, 0x0

    .line 179
    .local v7, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_4

    .line 181
    const/4 v8, 0x0

    .line 182
    .local v8, "tmpHashmap":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 183
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "tmpHashmap":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    check-cast v8, Ljava/util/Map$Entry;

    .line 186
    .restart local v8    # "tmpHashmap":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 188
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v7, Ljava/util/List;

    .line 198
    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v8    # "tmpHashmap":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v7    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    if-eqz v7, :cond_0

    .line 199
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 200
    .local v6, "size":I
    const/4 v9, 0x0

    .line 201
    .local v9, "tmpStr":Ljava/lang/String;
    if-eqz p2, :cond_5

    .line 202
    const-string v10, "!"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    :cond_5
    if-lez v6, :cond_0

    .line 206
    const/4 v10, 0x0

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "tmpStr":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 207
    .restart local v9    # "tmpStr":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 209
    .local v5, "needMergeCount":I
    add-int/lit8 v10, v6, -0x1

    if-le v5, v10, :cond_9

    .line 210
    if-ne v6, v12, :cond_7

    .line 212
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "R"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    :goto_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_0

    .line 219
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "tmpStr":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 220
    .restart local v9    # "tmpStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 221
    if-ne v1, v12, :cond_8

    .line 223
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 214
    .end local v1    # "i":I
    :cond_7
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "R"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 225
    .restart local v1    # "i":I
    :cond_8
    const-string v10, "!"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 239
    .end local v1    # "i":I
    :cond_9
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v6, :cond_0

    .line 242
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "tmpStr":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 243
    .restart local v9    # "tmpStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 244
    if-nez v1, :cond_b

    .line 246
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    :cond_a
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 248
    :cond_b
    const-string v10, ";"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method private static getListAwareness(ILjava/util/List;)Ljava/util/List;
    .locals 8
    .param p0, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hiai/awareness/service/AwarenessFence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "fenceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 410
    .local v4, "tmpStrfence":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v0, "awarenessFences":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/hiai/awareness/service/AwarenessFence;>;"
    const/4 v2, 0x0

    .line 412
    .local v2, "removeSize":I
    const/4 v3, 0x0

    .line 413
    .local v3, "tmpAwareness":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_2

    .line 414
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "tmpStrfence":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 415
    .restart local v4    # "tmpStrfence":Ljava/lang/String;
    const-string v5, "MAPFENCE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->fenceHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 416
    sget-object v5, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->fenceHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    const-string v5, "AwarenessParseHelper"

    const-string v6, "   fenceHashMap.remove  "

    invoke-static {v5, v6}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    sget-object v5, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->fenceHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 421
    invoke-static {v4}, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->getAwarenessFence(Ljava/lang/String;)Lcom/huawei/hiai/awareness/service/AwarenessFence;

    move-result-object v3

    .line 422
    if-eqz v3, :cond_0

    .line 423
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 428
    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    .line 429
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 431
    :cond_3
    const-string v5, "AwarenessParseHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " removeSize : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-object v0
.end method

.method private static initStoreFenceStr(Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "storeFenceStr":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 145
    .local v3, "stringBuffer":Ljava/lang/StringBuffer;
    if-eqz p0, :cond_2

    .line 146
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 147
    .local v2, "size":I
    const/4 v1, 0x0

    .line 148
    .local v1, "listHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 149
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    check-cast v1, Ljava/util/HashMap;

    .line 151
    .restart local v1    # "listHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 153
    if-nez v0, :cond_1

    .line 154
    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->getFenceString(Ljava/util/HashMap;Ljava/lang/StringBuffer;Z)V

    .line 148
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->getFenceString(Ljava/util/HashMap;Ljava/lang/StringBuffer;Z)V

    goto :goto_1

    .line 163
    .end local v0    # "i":I
    .end local v1    # "listHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v2    # "size":I
    :cond_2
    const-string v4, "AwarenessParseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " stringBuffer :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-object v3
.end method

.method public static parseAwareness2String(Lcom/huawei/hiai/awareness/service/AwarenessFence;)Ljava/lang/String;
    .locals 3
    .param p0, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;

    .prologue
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, "storeFenceStr":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->parseAwarenessFence(Lcom/huawei/hiai/awareness/service/AwarenessFence;Ljava/util/List;Ljava/util/HashMap;)V

    .line 51
    invoke-static {v0}, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->initStoreFenceStr(Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 52
    .local v1, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static parseAwarenessFence(Lcom/huawei/hiai/awareness/service/AwarenessFence;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 14
    .param p0, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hiai/awareness/service/AwarenessFence;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "storeFenceStr":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .local p2, "tmpkeyFences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-nez p0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getLogic()I

    move-result v6

    .line 68
    .local v6, "logic":I
    const/4 v12, 0x1

    if-ne v6, v12, :cond_6

    .line 69
    if-eqz p2, :cond_5

    .line 73
    move-object/from16 v11, p2

    .line 74
    .local v11, "tmpStrList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 75
    .local v4, "integerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 76
    .local v3, "integerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 77
    .local v2, "integer":Ljava/lang/Integer;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 78
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "integer":Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 81
    .restart local v2    # "integer":Ljava/lang/Integer;
    :cond_2
    if-eqz v2, :cond_0

    .line 85
    const/4 v9, 0x0

    .line 86
    .local v9, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 87
    .local v10, "tmpHashmap":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "tmpHashmap":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    check-cast v10, Ljava/util/Map$Entry;

    .line 91
    .restart local v10    # "tmpHashmap":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 93
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v9, Ljava/util/List;

    .line 99
    .restart local v9    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    if-eqz v9, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getCheckKey()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v2    # "integer":Ljava/lang/Integer;
    .end local v3    # "integerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v4    # "integerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v9    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "tmpHashmap":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v11    # "tmpStrList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_5
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v5, "keyFences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v8, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, "1"

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {p0}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getCheckKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    .end local v5    # "keyFences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v8    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    const/4 v12, 0x2

    if-eq v6, v12, :cond_7

    const/4 v12, 0x3

    if-eq v6, v12, :cond_7

    const/4 v12, 0x4

    if-ne v6, v12, :cond_0

    .line 121
    :cond_7
    invoke-virtual {p0}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getListFences()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getListFences()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    .line 124
    .local v7, "size":I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 125
    .restart local v5    # "keyFences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .restart local v8    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v7, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getListFences()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    invoke-static {v12, p1, v5}, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->parseAwarenessFence(Lcom/huawei/hiai/awareness/service/AwarenessFence;Ljava/util/List;Ljava/util/HashMap;)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static parseAwarenessKey(Lcom/huawei/hiai/awareness/service/AwarenessFence;)Ljava/lang/String;
    .locals 3
    .param p0, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v0, "storeFenceStr":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->parseAwarenessFence(Lcom/huawei/hiai/awareness/service/AwarenessFence;Ljava/util/List;Ljava/util/HashMap;)V

    .line 37
    invoke-static {v0}, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->initStoreFenceStr(Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 38
    .local v1, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static parseString2Awareness(Ljava/lang/String;)Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .locals 19
    .param p0, "storeStr"    # Ljava/lang/String;

    .prologue
    .line 269
    if-nez p0, :cond_1

    .line 270
    const/4 v2, 0x0

    .line 346
    :cond_0
    :goto_0
    return-object v2

    .line 272
    :cond_1
    sget-object v17, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->fenceHashMap:Ljava/util/HashMap;

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    .line 275
    const-string v17, "!"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 276
    const-string v17, ";"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 278
    .local v12, "oneFenceStr":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 279
    const/16 v17, 0x0

    aget-object v17, v12, v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 280
    .local v11, "logicCountStr":[Ljava/lang/String;
    const/4 v10, -0x1

    .line 281
    .local v10, "logic":I
    const/4 v3, -0x1

    .line 282
    .local v3, "count":I
    array-length v0, v11

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 284
    const/16 v17, 0x0

    :try_start_0
    aget-object v17, v11, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 285
    const/16 v17, 0x1

    aget-object v17, v11, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 290
    :cond_2
    :goto_1
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_3

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_3

    .line 292
    invoke-static/range {p0 .. p0}, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->getAwarenessFence(Ljava/lang/String;)Lcom/huawei/hiai/awareness/service/AwarenessFence;

    move-result-object v2

    goto :goto_0

    .line 294
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 297
    .end local v3    # "count":I
    .end local v10    # "logic":I
    .end local v11    # "logicCountStr":[Ljava/lang/String;
    :cond_4
    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    .line 298
    const/16 v17, 0x0

    aget-object v17, v12, v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 299
    .restart local v11    # "logicCountStr":[Ljava/lang/String;
    const/4 v10, -0x1

    .line 300
    .restart local v10    # "logic":I
    const/4 v3, -0x1

    .line 301
    .restart local v3    # "count":I
    array-length v0, v11

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 303
    const/16 v17, 0x0

    :try_start_1
    aget-object v17, v11, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 304
    const/16 v17, 0x1

    aget-object v17, v11, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 309
    :cond_5
    :goto_2
    const/16 v17, 0x0

    aget-object v17, v12, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 310
    .local v8, "leaveStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_6

    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v3, v0, :cond_6

    .line 312
    invoke-static {v10, v3, v8}, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->getAwarenessOneMoreFence(IILjava/lang/String;)Lcom/huawei/hiai/awareness/service/AwarenessFence;

    move-result-object v2

    goto/16 :goto_0

    .line 314
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 319
    .end local v3    # "count":I
    .end local v8    # "leaveStr":Ljava/lang/String;
    .end local v10    # "logic":I
    .end local v11    # "logicCountStr":[Ljava/lang/String;
    .end local v12    # "oneFenceStr":[Ljava/lang/String;
    :cond_7
    const-string v17, "!"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 320
    .local v14, "spliteStr":[Ljava/lang/String;
    array-length v9, v14

    .line 321
    .local v9, "length":I
    new-instance v15, Ljava/util/Stack;

    invoke-direct {v15}, Ljava/util/Stack;-><init>()V

    .line 322
    .local v15, "stringStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v5, "fenceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 324
    .local v16, "tmpStr":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v9, :cond_8

    .line 325
    aget-object v17, v14, v6

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 327
    :cond_8
    const/4 v2, 0x0

    .line 328
    .local v2, "awarenessFence":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    :cond_9
    :goto_4
    invoke-virtual {v15}, Ljava/util/Stack;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    .line 329
    invoke-virtual {v15}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "tmpStr":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 330
    .restart local v16    # "tmpStr":Ljava/lang/String;
    const-string v17, "R"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 331
    const-string v17, "R"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 332
    .local v13, "spilitRstr":[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v10, v13, v17

    .line 333
    .local v10, "logic":Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v4, v13, v17

    .line 334
    .local v4, "countStr":Ljava/lang/String;
    invoke-static {v10, v4, v5}, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->assembleAwareness(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/huawei/hiai/awareness/service/AwarenessFence;

    move-result-object v2

    .line 335
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MAPFENCE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 336
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/util/Stack;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_9

    .line 337
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v5, v0, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 338
    sget-object v17, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->fenceHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 343
    .end local v4    # "countStr":Ljava/lang/String;
    .end local v7    # "key":Ljava/lang/String;
    .end local v10    # "logic":Ljava/lang/String;
    .end local v13    # "spilitRstr":[Ljava/lang/String;
    :cond_a
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v5, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 305
    .end local v2    # "awarenessFence":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v5    # "fenceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "i":I
    .end local v9    # "length":I
    .end local v14    # "spliteStr":[Ljava/lang/String;
    .end local v15    # "stringStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .end local v16    # "tmpStr":Ljava/lang/String;
    .restart local v3    # "count":I
    .local v10, "logic":I
    .restart local v11    # "logicCountStr":[Ljava/lang/String;
    .restart local v12    # "oneFenceStr":[Ljava/lang/String;
    :catch_0
    move-exception v17

    goto/16 :goto_2

    .line 286
    :catch_1
    move-exception v17

    goto/16 :goto_1
.end method

.method public static parseTimeLong2SecondAction(J)Ljava/lang/String;
    .locals 10
    .param p0, "time"    # J

    .prologue
    .line 578
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 579
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 580
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 581
    .local v6, "year":I
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v4, v7, 0x1

    .line 582
    .local v4, "month":I
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 583
    .local v1, "day":I
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 584
    .local v2, "hour24":I
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 586
    .local v3, "minute":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "D"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "H"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 587
    .local v5, "secondAction":Ljava/lang/String;
    const-string v7, "AwarenessParseHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "secondAction : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-object v5
.end method
