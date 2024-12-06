.class public final Lcom/huawei/bd/utils/BigDataLog;
.super Ljava/lang/Object;
.source "BigDataLog.java"


# static fields
.field private static final DOMAIN:I = 0xd002d02

.field private static final TAG:Ljava/lang/String; = "BigDataLog"

.field private static fieldHwInfoLog:Ljava/lang/reflect/Field;

.field private static fieldHwLog:Ljava/lang/reflect/Field;

.field private static fieldHwModuleLog:Ljava/lang/reflect/Field;

.field private static isDebug:Z

.field private static isDebugD:Z

.field private static isDebugE:Z

.field private static isDebugI:Z

.field private static isDebugV:Z

.field private static isDebugW:Z

.field private static isHwFlow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 18
    sput-object v1, Lcom/huawei/bd/utils/BigDataLog;->fieldHwLog:Ljava/lang/reflect/Field;

    .line 20
    sput-object v1, Lcom/huawei/bd/utils/BigDataLog;->fieldHwModuleLog:Ljava/lang/reflect/Field;

    .line 22
    sput-object v1, Lcom/huawei/bd/utils/BigDataLog;->fieldHwInfoLog:Ljava/lang/reflect/Field;

    .line 24
    sput-boolean v0, Lcom/huawei/bd/utils/BigDataLog;->isDebug:Z

    .line 34
    sput-boolean v0, Lcom/huawei/bd/utils/BigDataLog;->isDebugE:Z

    .line 36
    sput-boolean v0, Lcom/huawei/bd/utils/BigDataLog;->isHwFlow:Z

    .line 43
    invoke-static {}, Lcom/huawei/bd/utils/BigDataLog;->initLogFlags()V

    .line 44
    sget-boolean v0, Lcom/huawei/bd/utils/BigDataLog;->isDebug:Z

    sput-boolean v0, Lcom/huawei/bd/utils/BigDataLog;->isDebugV:Z

    .line 45
    sget-boolean v0, Lcom/huawei/bd/utils/BigDataLog;->isDebug:Z

    sput-boolean v0, Lcom/huawei/bd/utils/BigDataLog;->isDebugD:Z

    .line 46
    sget-boolean v0, Lcom/huawei/bd/utils/BigDataLog;->isHwFlow:Z

    sput-boolean v0, Lcom/huawei/bd/utils/BigDataLog;->isDebugI:Z

    .line 47
    sget-boolean v0, Lcom/huawei/bd/utils/BigDataLog;->isDebugE:Z

    sput-boolean v0, Lcom/huawei/bd/utils/BigDataLog;->isDebugW:Z

    .line 48
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 102
    sget-boolean v0, Lcom/huawei/bd/utils/BigDataLog;->isDebugD:Z

    if-eqz v0, :cond_0

    .line 103
    const v0, 0xd002d02

    const-string v1, "BigDataLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v2, v3}, Lcom/huawei/android/app/HiLog;->d(ILjava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)I

    .line 105
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "isFmtStrPrivate"    # Z
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 117
    sget-boolean v0, Lcom/huawei/bd/utils/BigDataLog;->isDebugD:Z

    if-eqz v0, :cond_0

    .line 118
    const v0, 0xd002d02

    invoke-static {v0, p0, p1, p2, p3}, Lcom/huawei/android/app/HiLog;->d(ILjava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)I

    .line 120
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 184
    sget-boolean v0, Lcom/huawei/bd/utils/BigDataLog;->isDebugE:Z

    if-eqz v0, :cond_0

    .line 185
    const v0, 0xd002d02

    const-string v1, "BigDataLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v2, v3}, Lcom/huawei/android/app/HiLog;->e(ILjava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)I

    .line 187
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "isFmtStrPrivate"    # Z
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 198
    sget-boolean v0, Lcom/huawei/bd/utils/BigDataLog;->isDebugE:Z

    if-eqz v0, :cond_0

    .line 199
    const v0, 0xd002d02

    invoke-static {v0, p0, p1, p2, p3}, Lcom/huawei/android/app/HiLog;->e(ILjava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)I

    .line 201
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 130
    sget-boolean v0, Lcom/huawei/bd/utils/BigDataLog;->isDebugI:Z

    if-eqz v0, :cond_0

    .line 131
    const v0, 0xd002d02

    const-string v1, "BigDataLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v2, v3}, Lcom/huawei/android/app/HiLog;->i(ILjava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)I

    .line 133
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "isFmtStrPrivate"    # Z
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 144
    sget-boolean v0, Lcom/huawei/bd/utils/BigDataLog;->isDebugI:Z

    if-eqz v0, :cond_0

    .line 145
    const v0, 0xd002d02

    invoke-static {v0, p0, p1, p2, p3}, Lcom/huawei/android/app/HiLog;->i(ILjava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)I

    .line 147
    :cond_0
    return-void
.end method

.method public static initLogFlags()V
    .locals 12

    .prologue
    const v11, 0xd002d02

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 57
    const/4 v2, 0x1

    .line 58
    .local v2, "isHwLog":Z
    const/4 v3, 0x1

    .line 59
    .local v3, "isHwModuleLog":Z
    const/4 v1, 0x1

    .line 61
    .local v1, "isHwInfo":Z
    :try_start_0
    const-class v6, Landroid/util/Log;

    const-string v9, "HWLog"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    sput-object v6, Lcom/huawei/bd/utils/BigDataLog;->fieldHwLog:Ljava/lang/reflect/Field;

    .line 62
    const-class v6, Landroid/util/Log;

    const-string v9, "HWModuleLog"

    .line 63
    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    sput-object v6, Lcom/huawei/bd/utils/BigDataLog;->fieldHwModuleLog:Ljava/lang/reflect/Field;

    .line 64
    const-class v6, Landroid/util/Log;

    const-string v9, "HWINFO"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    sput-object v6, Lcom/huawei/bd/utils/BigDataLog;->fieldHwInfoLog:Ljava/lang/reflect/Field;

    .line 65
    sget-object v6, Lcom/huawei/bd/utils/BigDataLog;->fieldHwLog:Ljava/lang/reflect/Field;

    const-class v9, Landroid/util/Log;

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    .line 66
    sget-object v6, Lcom/huawei/bd/utils/BigDataLog;->fieldHwModuleLog:Ljava/lang/reflect/Field;

    const-class v9, Landroid/util/Log;

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    .line 67
    sget-object v6, Lcom/huawei/bd/utils/BigDataLog;->fieldHwInfoLog:Ljava/lang/reflect/Field;

    const-class v9, Landroid/util/Log;

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 75
    :goto_0
    if-eqz v3, :cond_3

    const-string v6, "BigDataLog"

    const/4 v9, 0x3

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v8

    .line 76
    .local v4, "isLogDebug":Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v4, :cond_4

    :cond_0
    move v6, v8

    :goto_2
    sput-boolean v6, Lcom/huawei/bd/utils/BigDataLog;->isDebug:Z

    .line 77
    if-eqz v3, :cond_5

    const-string v6, "BigDataLog"

    const/4 v9, 0x4

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5

    move v5, v8

    .line 78
    .local v5, "isLogInfo":Z
    :goto_3
    if-nez v1, :cond_1

    if-eqz v5, :cond_2

    :cond_1
    move v7, v8

    :cond_2
    sput-boolean v7, Lcom/huawei/bd/utils/BigDataLog;->isHwFlow:Z

    .line 79
    return-void

    .line 68
    .end local v4    # "isLogDebug":Z
    .end local v5    # "isLogInfo":Z
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v6, "BigDataLog"

    const-string v9, "NoSuchFieldException"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v11, v6, v7, v9, v10}, Lcom/huawei/android/app/HiLog;->e(ILjava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 70
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "BigDataLog"

    const-string v9, "IllegalArgumentException"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v11, v6, v7, v9, v10}, Lcom/huawei/android/app/HiLog;->e(ILjava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v6, "BigDataLog"

    const-string v9, "IllegalAccessException"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v11, v6, v7, v9, v10}, Lcom/huawei/android/app/HiLog;->e(ILjava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_3
    move v4, v7

    .line 75
    goto :goto_1

    .restart local v4    # "isLogDebug":Z
    :cond_4
    move v6, v7

    .line 76
    goto :goto_2

    :cond_5
    move v5, v7

    .line 77
    goto :goto_3
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 211
    const v0, 0xd002d02

    const-string v1, "BigDataLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v2, v3}, Lcom/huawei/android/app/HiLog;->i(ILjava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)I

    .line 212
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 89
    sget-boolean v0, Lcom/huawei/bd/utils/BigDataLog;->isDebugV:Z

    if-eqz v0, :cond_0

    .line 90
    const v0, 0xd002d02

    const-string v1, "BigDataLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v2, v3}, Lcom/huawei/android/app/HiLog;->d(ILjava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)I

    .line 92
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 157
    sget-boolean v0, Lcom/huawei/bd/utils/BigDataLog;->isDebugW:Z

    if-eqz v0, :cond_0

    .line 158
    const v0, 0xd002d02

    const-string v1, "BigDataLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v2, v3}, Lcom/huawei/android/app/HiLog;->w(ILjava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)I

    .line 160
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "isFmtStrPrivate"    # Z
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 171
    sget-boolean v0, Lcom/huawei/bd/utils/BigDataLog;->isDebugW:Z

    if-eqz v0, :cond_0

    .line 172
    const v0, 0xd002d02

    invoke-static {v0, p0, p1, p2, p3}, Lcom/huawei/android/app/HiLog;->w(ILjava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)I

    .line 174
    :cond_0
    return-void
.end method
