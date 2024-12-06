.class Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateActionParam;
.super Lcom/huawei/opcollect/strategy/AbsActionParam;
.source "NfcStateAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NfcStateActionParam"
.end annotation


# instance fields
.field private state:Ljava/lang/String;

.field final synthetic this$0:Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;Ljava/lang/String;)V
    .locals 0
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateActionParam;->this$0:Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction;

    .line 88
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/AbsActionParam;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateActionParam;->state:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/NfcStateAction$NfcStateActionParam;->state:Ljava/lang/String;

    return-object v0
.end method
