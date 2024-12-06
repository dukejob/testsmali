.class public final Lcom/huawei/bd/Reporter;
.super Ljava/lang/Object;
.source "Reporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/bd/Reporter$BigDataServiceDeathRecipient;
    }
.end annotation


# static fields
.field private static final CHINA_BEAT:I = 0x3

.field private static final MAX_AVAILABLE_SERVICE:I = 0x5

.field public static final MAX_CONTENT_SIZE:I = 0x400

.field private static final MAX_EVENT_ID:I = 0xffff

.field private static final NO_DATA:I = -0x1

.field public static final PRI_HIGH:I = 0x19

.field public static final PRI_LOW:I = 0x5

.field public static final PRI_NORMAL:I = 0xf

.field private static final RESTRICT_EVENT_ID:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "BD.Reporter"

.field private static betaState:I

.field private static bigDataService:Lcom/huawei/bd/IBDService;

.field private static deathRecipient:Lcom/huawei/bd/Reporter$BigDataServiceDeathRecipient;

.field private static getServiceMethod:Ljava/lang/reflect/Method;

.field private static notAvailCount:I

.field private static serviceManagerClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 62
    sput-object v2, Lcom/huawei/bd/Reporter;->bigDataService:Lcom/huawei/bd/IBDService;

    .line 64
    new-instance v1, Lcom/huawei/bd/Reporter$BigDataServiceDeathRecipient;

    invoke-direct {v1, v2}, Lcom/huawei/bd/Reporter$BigDataServiceDeathRecipient;-><init>(Lcom/huawei/bd/Reporter$1;)V

    sput-object v1, Lcom/huawei/bd/Reporter;->deathRecipient:Lcom/huawei/bd/Reporter$BigDataServiceDeathRecipient;

    .line 66
    sput v3, Lcom/huawei/bd/Reporter;->notAvailCount:I

    .line 68
    const/4 v1, -0x1

    sput v1, Lcom/huawei/bd/Reporter;->betaState:I

    .line 70
    sput-object v2, Lcom/huawei/bd/Reporter;->serviceManagerClazz:Ljava/lang/Class;

    .line 72
    sput-object v2, Lcom/huawei/bd/Reporter;->getServiceMethod:Ljava/lang/reflect/Method;

    .line 83
    :try_start_0
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/huawei/bd/Reporter;->serviceManagerClazz:Ljava/lang/Class;

    .line 84
    sget-object v1, Lcom/huawei/bd/Reporter;->serviceManagerClazz:Ljava/lang/Class;

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/huawei/bd/Reporter;->getServiceMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 94
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "BD.Reporter"

    const-string v2, "ServiceManager ClassNotFoundException"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "BD.Reporter"

    const-string v2, "ServiceManager NoSuchMethodException"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "BD.Reporter"

    const-string v2, "ServiceManager SecurityException"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "BD.Reporter"

    const-string v2, "ServiceManager IllegalArgumentException"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method static synthetic access$102(Lcom/huawei/bd/IBDService;)Lcom/huawei/bd/IBDService;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/IBDService;

    .prologue
    .line 26
    sput-object p0, Lcom/huawei/bd/Reporter;->bigDataService:Lcom/huawei/bd/IBDService;

    return-object p0
.end method

.method public static beta(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # I
    .param p2, "eventMsg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 198
    sget v1, Lcom/huawei/bd/Reporter;->betaState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 199
    const-string v1, "ro.logsystem.usertype"

    invoke-static {v1, v0}, Lcom/huawei/android/os/SystemPropertiesEx;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/huawei/bd/Reporter;->betaState:I

    .line 201
    :cond_0
    sget v1, Lcom/huawei/bd/Reporter;->betaState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 202
    const/4 v0, 0x5

    invoke-static {p0, p1, p2, v0}, Lcom/huawei/bd/Reporter;->e(Landroid/content/Context;ILjava/lang/String;I)Z

    move-result v0

    .line 204
    :cond_1
    return v0
.end method

.method public static c(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # I

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/huawei/bd/Reporter;->c(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;II)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    if-eqz p0, :cond_0

    const v5, 0xffff

    if-gt p1, v5, :cond_0

    if-ge p2, v4, :cond_2

    .line 170
    :cond_0
    const-string v4, "BD.Reporter"

    const-string v5, "context is null or eventId > 0x0000FFFF or count < 1"

    invoke-static {v4, v5}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_1
    :goto_0
    return v3

    .line 174
    :cond_2
    invoke-static {}, Lcom/huawei/bd/Reporter;->getService()Lcom/huawei/bd/IBDService;

    move-result-object v2

    .line 175
    .local v2, "service":Lcom/huawei/bd/IBDService;
    if-eqz v2, :cond_1

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "pkgName":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/huawei/bd/Reporter;->restrictId(I)I

    move-result v5

    invoke-interface {v2, v1, v5, p2}, Lcom/huawei/bd/IBDService;->sendAccumulativeData(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 186
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "BD.Reporter"

    const-string v5, "sendAccumulativeData RemoteException"

    invoke-static {v4, v5}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # I
    .param p2, "eventMsg"    # Ljava/lang/String;

    .prologue
    .line 108
    const/16 v0, 0xf

    const/4 v1, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/huawei/bd/Reporter;->handleEvent(Landroid/content/Context;ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;ILjava/lang/String;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # I
    .param p2, "eventMsg"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .prologue
    .line 121
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/huawei/bd/Reporter;->handleEvent(Landroid/content/Context;ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private static getService()Lcom/huawei/bd/IBDService;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-static {}, Lcom/huawei/bd/Reporter;->ifServiceNotAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    .local v0, "binder":Landroid/os/IBinder;
    :goto_0
    return-object v2

    .line 249
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_0
    sget-object v3, Lcom/huawei/bd/Reporter;->bigDataService:Lcom/huawei/bd/IBDService;

    if-eqz v3, :cond_1

    .line 250
    sget-object v2, Lcom/huawei/bd/Reporter;->bigDataService:Lcom/huawei/bd/IBDService;

    goto :goto_0

    .line 253
    :cond_1
    sget-object v3, Lcom/huawei/bd/Reporter;->serviceManagerClazz:Ljava/lang/Class;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/huawei/bd/Reporter;->getServiceMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_3

    .line 254
    :cond_2
    const-string v3, "BD.Reporter"

    const-string v4, "Can\'t support using ServiceManager"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_3
    :try_start_0
    sget-object v3, Lcom/huawei/bd/Reporter;->getServiceMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "com.huawei.bd.BDService"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 260
    .restart local v0    # "binder":Landroid/os/IBinder;
    if-nez v0, :cond_4

    .line 261
    sget v3, Lcom/huawei/bd/Reporter;->notAvailCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/huawei/bd/Reporter;->notAvailCount:I

    .line 262
    const-string v3, "BD.Reporter"

    const-string v4, "Can\'t getService HwBDService"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "BD.Reporter"

    const-string v3, "getService IllegalAccessException"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    sget-object v2, Lcom/huawei/bd/Reporter;->bigDataService:Lcom/huawei/bd/IBDService;

    goto :goto_0

    .line 266
    :cond_4
    :try_start_1
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v3

    if-nez v3, :cond_5

    .line 267
    const-string v3, "BD.Reporter"

    const-string v4, "HwBDService is not running"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 275
    :catch_1
    move-exception v1

    .line 276
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "BD.Reporter"

    const-string v3, "getService IllegalArgumentException"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 270
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5
    :try_start_2
    sget-object v2, Lcom/huawei/bd/Reporter;->deathRecipient:Lcom/huawei/bd/Reporter$BigDataServiceDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 271
    invoke-static {v0}, Lcom/huawei/bd/IBDService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/bd/IBDService;

    move-result-object v2

    sput-object v2, Lcom/huawei/bd/Reporter;->bigDataService:Lcom/huawei/bd/IBDService;

    .line 272
    const-string v2, "BD.Reporter"

    sget-object v3, Lcom/huawei/bd/Reporter;->bigDataService:Lcom/huawei/bd/IBDService;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 277
    :catch_2
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "BD.Reporter"

    const-string v3, "getService InvocationTargetException"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 279
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 280
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BD.Reporter"

    const-string v3, "RemoteException: RemoteException"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static handleEvent(Landroid/content/Context;ILjava/lang/String;II)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "taskId"    # I

    .prologue
    const/16 v6, 0x400

    const/4 v4, 0x0

    .line 219
    if-eqz p0, :cond_0

    const v5, 0xffff

    if-le p1, v5, :cond_2

    .line 220
    :cond_0
    const-string v5, "BD.Reporter"

    const-string v6, "context is null or eventId > 65535"

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_1
    :goto_0
    return v4

    .line 224
    :cond_2
    invoke-static {}, Lcom/huawei/bd/Reporter;->getService()Lcom/huawei/bd/IBDService;

    move-result-object v3

    .line 225
    .local v3, "service":Lcom/huawei/bd/IBDService;
    if-eqz v3, :cond_1

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "pkgName":Ljava/lang/String;
    move-object v1, p2

    .line 232
    .local v1, "eventMssage":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_3

    .line 233
    const/4 v5, 0x0

    const/16 v6, 0x400

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 235
    :cond_3
    invoke-static {p1}, Lcom/huawei/bd/Reporter;->restrictId(I)I

    move-result v5

    invoke-interface {v3, v2, v5, v1, p3}, Lcom/huawei/bd/IBDService;->sendAppActionData(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    const/4 v4, 0x1

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "BD.Reporter"

    const-string v6, "sendAppActionData RemoteException"

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static ifServiceNotAvailable()Z
    .locals 2

    .prologue
    .line 215
    sget v0, Lcom/huawei/bd/Reporter;->notAvailCount:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;ILorg/json/JSONObject;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # I
    .param p2, "eventMsg"    # Lorg/json/JSONObject;

    .prologue
    .line 133
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    const/4 v2, -0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/huawei/bd/Reporter;->handleEvent(Landroid/content/Context;ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static j(Landroid/content/Context;ILorg/json/JSONObject;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # I
    .param p2, "eventMsg"    # Lorg/json/JSONObject;
    .param p3, "priority"    # I

    .prologue
    .line 146
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, p3, v1}, Lcom/huawei/bd/Reporter;->handleEvent(Landroid/content/Context;ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private static restrictId(I)I
    .locals 2
    .param p0, "eventId"    # I

    .prologue
    .line 208
    move v0, p0

    .line 209
    .local v0, "eventIdTemporary":I
    const v1, 0xffff

    and-int/2addr v0, v1

    .line 210
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 211
    return v0
.end method
