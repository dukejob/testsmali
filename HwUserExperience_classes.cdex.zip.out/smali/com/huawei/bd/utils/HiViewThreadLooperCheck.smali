.class public final Lcom/huawei/bd/utils/HiViewThreadLooperCheck;
.super Ljava/lang/Object;
.source "HiViewThreadLooperCheck.java"


# static fields
.field private static final CLASS_HIVEWLOOPERCHECK:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CLASS_NAME_HIVEWLOOPERCHECK:Ljava/lang/String; = "android.util.HiviewLooperCheck"

.field private static final METHOD_CHECK:Ljava/lang/reflect/Method;

.field private static final TAG:Ljava/lang/String; = "HiViewThreadLooperCheck"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 24
    const-string v0, "android.util.HiviewLooperCheck"

    invoke-static {v0}, Lcom/huawei/bd/utils/ReflectionUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/huawei/bd/utils/HiViewThreadLooperCheck;->CLASS_HIVEWLOOPERCHECK:Ljava/lang/Class;

    .line 26
    sget-object v0, Lcom/huawei/bd/utils/HiViewThreadLooperCheck;->CLASS_HIVEWLOOPERCHECK:Ljava/lang/Class;

    const-string v1, "check"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/HandlerThread;

    aput-object v4, v2, v3

    .line 27
    invoke-static {v0, v1, v2}, Lcom/huawei/bd/utils/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/huawei/bd/utils/HiViewThreadLooperCheck;->METHOD_CHECK:Ljava/lang/reflect/Method;

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static initLoopCheck(Landroid/os/HandlerThread;)V
    .locals 5
    .param p0, "thread"    # Landroid/os/HandlerThread;

    .prologue
    .line 39
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/huawei/bd/utils/HiViewThreadLooperCheck;->METHOD_CHECK:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/huawei/bd/utils/ReflectionUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v1, "HiViewThreadLooperCheck"

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

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
