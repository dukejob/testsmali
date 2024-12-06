.class public Lcom/huawei/filter/FilterInterfaceImpl;
.super Ljava/lang/Object;
.source "FilterInterfaceImpl.java"

# interfaces
.implements Lcom/huawei/filter/FilterInterface;


# static fields
.field private static final COMPARED_SIGNATURES_CODE:[I

.field private static final EVENT_UP_TIME:I = 0x12c

.field private static final INIT_SIZE:I = 0x10

.field private static final MIX_INSTANT_COUNT:I = 0xa

.field private static final PRIVACY_HIGH_LEVEL:Ljava/lang/String; = "high"

.field private static final SEPARATION:Ljava/lang/String; = "|"

.field private static final TAG:Ljava/lang/String; = "BD.FilterInterfaceImpl"

.field private static final TIME_DIFF:J = 0x5265c00L


# instance fields
.field grantedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private instantCount:I

.field private lastContent:Ljava/lang/String;

.field private lastEventId:I

.field private lastEventUpTime:J

.field private lastPkgName:Ljava/lang/String;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/filter/FilterInterfaceImpl;->COMPARED_SIGNATURES_CODE:[I

    return-void

    :array_0
    .array-data 4
        -0x7e6784df
        -0x7d65bdd3
        -0x77a5e7c3
        -0x6c5a775a
        -0x6b01b272
        -0x561948cf
        -0x500b1ad8
        -0x4b521f13
        -0x46aab3f2
        -0x4501c514
        -0x350cbb8b    # -7971386.5f
        -0x2e1c9da4
        -0x2db019ac
        -0x1d8e97c4
        -0x1a35e92c
        -0x16341d66
        0x5f01b922
        0x67f4f573
        0x1d0a573d
        0x3b33d061
        0x3b0623ab
        0x4556ac13
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/filter/FilterInterfaceImpl;->grantedPackages:Ljava/util/ArrayList;

    .line 93
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/filter/FilterInterfaceImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/filter/FilterInterfaceImpl;->packageManager:Landroid/content/pm/PackageManager;

    .line 95
    return-void
.end method

.method private isDisableDiffContent(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "eventId"    # I
    .param p3, "diffContent"    # I

    .prologue
    .line 157
    if-nez p3, :cond_0

    .line 158
    const-string v0, "BD.FilterInterfaceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " diffContent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allow."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLegalPackagesAndId(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "eventId"    # I

    .prologue
    const/4 v6, 0x0

    .line 124
    invoke-static {}, Lcom/huawei/filter/PolicyGenerator;->getInstance()Lcom/huawei/filter/PolicyGenerator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/filter/PolicyGenerator;->getPackageInfoMap()Ljava/util/Map;

    move-result-object v5

    .line 125
    .local v5, "registeredMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/huawei/filter/RegisteredEventInfo;>;>;"
    if-nez v5, :cond_1

    .line 126
    const-string v7, "BD.FilterInterfaceImpl"

    const-string v8, "registeredMap null"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    :goto_0
    return v6

    .line 129
    :cond_1
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 130
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/huawei/filter/RegisteredEventInfo;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 131
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 133
    .local v1, "eventIdList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/filter/RegisteredEventInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 134
    .local v4, "listSize":I
    if-nez v4, :cond_3

    .line 135
    const-string v7, "BD.FilterInterfaceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not have event id list."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/filter/RegisteredEventInfo;

    .line 139
    .local v2, "eventInfo":Lcom/huawei/filter/RegisteredEventInfo;
    invoke-virtual {v2}, Lcom/huawei/filter/RegisteredEventInfo;->getEventInfoId()I

    move-result v9

    if-ne v9, p2, :cond_4

    .line 140
    invoke-virtual {v2}, Lcom/huawei/filter/RegisteredEventInfo;->getThreshold()I

    move-result v7

    invoke-direct {p0, p1, p2, v7}, Lcom/huawei/filter/FilterInterfaceImpl;->isOverThreshold(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 143
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->isNormalCountry()Z

    move-result v7

    if-nez v7, :cond_5

    .line 144
    invoke-virtual {v2}, Lcom/huawei/filter/RegisteredEventInfo;->getDiffContent()I

    move-result v7

    invoke-direct {p0, p1, p2, v7}, Lcom/huawei/filter/FilterInterfaceImpl;->isDisableDiffContent(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 147
    :cond_5
    const/4 v6, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/huawei/filter/RegisteredEventInfo;>;>;"
    .end local v1    # "eventIdList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/filter/RegisteredEventInfo;>;"
    .end local v2    # "eventInfo":Lcom/huawei/filter/RegisteredEventInfo;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "listSize":I
    :cond_6
    const-string v7, "BD.FilterInterfaceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private isOverThreshold(Ljava/lang/String;II)Z
    .locals 17
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "eventId"    # I
    .param p3, "threshold"    # I

    .prologue
    .line 165
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/filter/FilterInterfaceImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v15, 0x0

    invoke-interface {v14, v7, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 167
    .local v11, "value":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 168
    .local v2, "currentTime":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/filter/FilterInterfaceImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 169
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v11, :cond_3

    .line 171
    :try_start_0
    const-string v14, "\\|"

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 172
    .local v10, "stringArray":[Ljava/lang/String;
    array-length v14, v10

    if-lez v14, :cond_2

    .line 173
    const/4 v14, 0x0

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 174
    .local v6, "eventCounts":I
    const/4 v14, 0x1

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 175
    .local v8, "lastTime":J
    sub-long v12, v2, v8

    .line 176
    .local v12, "timeDiff":J
    move/from16 v0, p3

    if-ge v6, v0, :cond_0

    .line 177
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v15, v6, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v7, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 178
    const/4 v14, 0x0

    .line 197
    .end local v6    # "eventCounts":I
    .end local v8    # "lastTime":J
    .end local v10    # "stringArray":[Ljava/lang/String;
    .end local v12    # "timeDiff":J
    :goto_0
    return v14

    .line 180
    .restart local v6    # "eventCounts":I
    .restart local v8    # "lastTime":J
    .restart local v10    # "stringArray":[Ljava/lang/String;
    .restart local v12    # "timeDiff":J
    :cond_0
    const-wide/32 v14, 0x5265c00

    cmp-long v14, v12, v14

    if-lez v14, :cond_1

    .line 181
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "1|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v7, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    const/4 v14, 0x0

    goto :goto_0

    .line 184
    :cond_1
    const-string v14, "BD.FilterInterfaceImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " eventCounts= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " over threshold"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    const/4 v14, 0x1

    goto :goto_0

    .line 190
    .end local v6    # "eventCounts":I
    .end local v8    # "lastTime":J
    .end local v12    # "timeDiff":J
    :cond_2
    const/4 v14, 0x1

    goto :goto_0

    .line 192
    .end local v10    # "stringArray":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 193
    .local v4, "e":Ljava/lang/NumberFormatException;
    const/4 v14, 0x0

    goto :goto_0

    .line 196
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "1|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v7, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    const/4 v14, 0x0

    goto :goto_0
.end method

.method private isPermissionGranted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 228
    iget-object v1, p0, Lcom/huawei/filter/FilterInterfaceImpl;->grantedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    :goto_0
    return v0

    .line 231
    :cond_0
    invoke-virtual {p0, p1}, Lcom/huawei/filter/FilterInterfaceImpl;->isHuaweiSignatures(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/huawei/filter/FilterInterfaceImpl;->grantedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSameEventInstant(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "eventId"    # I
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 248
    iget v1, p0, Lcom/huawei/filter/FilterInterfaceImpl;->lastEventId:I

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/huawei/filter/FilterInterfaceImpl;->lastPkgName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    iget v1, p0, Lcom/huawei/filter/FilterInterfaceImpl;->instantCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huawei/filter/FilterInterfaceImpl;->instantCount:I

    .line 250
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/huawei/filter/FilterInterfaceImpl;->lastContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/huawei/filter/FilterInterfaceImpl;->lastContent:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    iput v0, p0, Lcom/huawei/filter/FilterInterfaceImpl;->instantCount:I

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 256
    :cond_1
    iget v1, p0, Lcom/huawei/filter/FilterInterfaceImpl;->instantCount:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/huawei/filter/FilterInterfaceImpl;->lastEventUpTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 257
    const/4 v0, 0x1

    goto :goto_0

    .line 260
    :cond_2
    iput v0, p0, Lcom/huawei/filter/FilterInterfaceImpl;->instantCount:I

    goto :goto_0
.end method


# virtual methods
.method public isFiltered(Lcom/huawei/bd/events/AppActionEvent;)Z
    .locals 1
    .param p1, "event"    # Lcom/huawei/bd/events/AppActionEvent;

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isFiltered(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "eventId"    # I
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 104
    const v2, -0x10001

    and-int v0, p2, v2

    .line 105
    .local v0, "id":I
    invoke-direct {p0, p1, v0}, Lcom/huawei/filter/FilterInterfaceImpl;->isLegalPackagesAndId(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    const-string v2, "BD.FilterInterfaceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is illLegal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    return v1

    .line 110
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/filter/FilterInterfaceImpl;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    const-string v2, "BD.FilterInterfaceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not permission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/filter/FilterInterfaceImpl;->isSameEventInstant(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    const-string v2, "BD.FilterInterfaceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rejected for too many at instant"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHuaweiSignatures(Ljava/lang/String;)Z
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 209
    :try_start_0
    iget-object v6, p0, Lcom/huawei/filter/FilterInterfaceImpl;->packageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x40

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 210
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 211
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v6, :cond_1

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v6

    if-ne v6, v4, :cond_1

    .line 212
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/content/pm/Signature;->hashCode()I

    move-result v2

    .line 213
    .local v2, "sigHashCode":I
    sget-object v7, Lcom/huawei/filter/FilterInterfaceImpl;->COMPARED_SIGNATURES_CODE:[I

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_1

    aget v3, v7, v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .local v3, "signHashCode":I
    if-ne v2, v3, :cond_0

    .line 223
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "sigHashCode":I
    .end local v3    # "signHashCode":I
    :goto_1
    return v4

    .line 213
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v2    # "sigHashCode":I
    .restart local v3    # "signHashCode":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v2    # "sigHashCode":I
    .end local v3    # "signHashCode":I
    :cond_1
    move v4, v5

    .line 219
    goto :goto_1

    :cond_2
    move v4, v5

    .line 221
    goto :goto_1

    .line 222
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move v4, v5

    .line 223
    goto :goto_1
.end method

.method public saveLastEventInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "eventId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 241
    iput p1, p0, Lcom/huawei/filter/FilterInterfaceImpl;->lastEventId:I

    .line 242
    iput-object p2, p0, Lcom/huawei/filter/FilterInterfaceImpl;->lastPkgName:Ljava/lang/String;

    .line 243
    iput-object p3, p0, Lcom/huawei/filter/FilterInterfaceImpl;->lastContent:Ljava/lang/String;

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/filter/FilterInterfaceImpl;->lastEventUpTime:J

    .line 245
    return-void
.end method
