.class public final Lcom/huawei/opcollect/utils/OPCollectThreadLooperCheck;
.super Ljava/lang/Object;
.source "OPCollectThreadLooperCheck.java"


# static fields
.field private static final CLASS_NAME_HIVEWLOOPERCHECK:Ljava/lang/String; = "android.util.HiviewLooperCheck"

.field private static final METHOD_CHECK:Ljava/lang/reflect/Method;

.field private static final METHOD_CHECK2:Ljava/lang/reflect/Method;

.field private static final METHOD_DUMPSTRING:Ljava/lang/reflect/Method;

.field private static final TAG:Ljava/lang/String; = "OPCollectThreadLooper"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    const-string v0, "android.util.HiviewLooperCheck"

    const-string v1, "check"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/os/HandlerThread;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/huawei/opcollect/utils/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/huawei/opcollect/utils/OPCollectThreadLooperCheck;->METHOD_CHECK:Ljava/lang/reflect/Method;

    .line 24
    const-string v0, "android.util.HiviewLooperCheck"

    const-string v1, "check"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/os/Looper;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/huawei/opcollect/utils/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/huawei/opcollect/utils/OPCollectThreadLooperCheck;->METHOD_CHECK2:Ljava/lang/reflect/Method;

    .line 26
    const-string v0, "android.util.HiviewLooperCheck"

    const-string v1, "dumpString"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/huawei/opcollect/utils/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/huawei/opcollect/utils/OPCollectThreadLooperCheck;->METHOD_DUMPSTRING:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "OPCollectThreadLooper"

    const-string v1, "static class should not initialize."

    invoke-static {v0, v1}, Lcom/huawei/opcollect/utils/OPCollectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static initLoopCheck(Landroid/os/HandlerThread;)V
    .locals 5
    .param p0, "thread"    # Landroid/os/HandlerThread;

    .prologue
    .line 40
    :try_start_0
    sget-object v1, Lcom/huawei/opcollect/utils/OPCollectThreadLooperCheck;->METHOD_CHECK:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/huawei/opcollect/utils/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v1, "OPCollectThreadLooper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsupportedOperationException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static initLoopCheck(Landroid/os/Looper;Ljava/lang/String;)V
    .locals 5
    .param p0, "looper"    # Landroid/os/Looper;
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 54
    :try_start_0
    sget-object v1, Lcom/huawei/opcollect/utils/OPCollectThreadLooperCheck;->METHOD_CHECK2:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/huawei/opcollect/utils/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v1, "OPCollectThreadLooper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsupportedOperationException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeDumpString(Ljava/io/PrintWriter;)V
    .locals 4
    .param p0, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 67
    :try_start_0
    sget-object v1, Lcom/huawei/opcollect/utils/OPCollectThreadLooperCheck;->METHOD_DUMPSTRING:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v1, "OPCollectThreadLooper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsupportedOperationException is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/opcollect/utils/OPCollectLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
