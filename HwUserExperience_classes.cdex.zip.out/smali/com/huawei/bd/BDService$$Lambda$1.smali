.class final synthetic Lcom/huawei/bd/BDService$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/huawei/bd/BDService;


# direct methods
.method constructor <init>(Lcom/huawei/bd/BDService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/bd/BDService$$Lambda$1;->arg$1:Lcom/huawei/bd/BDService;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/bd/BDService$$Lambda$1;->arg$1:Lcom/huawei/bd/BDService;

    invoke-virtual {v0}, Lcom/huawei/bd/BDService;->lambda$delayInitialize$1$BDService()V

    return-void
.end method
