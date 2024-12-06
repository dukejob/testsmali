.class final Lcom/huawei/bd/Reporter$BigDataServiceDeathRecipient;
.super Ljava/lang/Object;
.source "Reporter.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/bd/Reporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BigDataServiceDeathRecipient"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/bd/Reporter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/bd/Reporter$1;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/huawei/bd/Reporter$BigDataServiceDeathRecipient;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/bd/Reporter;->access$102(Lcom/huawei/bd/IBDService;)Lcom/huawei/bd/IBDService;

    .line 78
    return-void
.end method
