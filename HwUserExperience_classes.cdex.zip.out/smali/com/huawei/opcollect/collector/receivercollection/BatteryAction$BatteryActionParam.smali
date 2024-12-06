.class Lcom/huawei/opcollect/collector/receivercollection/BatteryAction$BatteryActionParam;
.super Lcom/huawei/opcollect/strategy/AbsActionParam;
.source "BatteryAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryActionParam"
.end annotation


# instance fields
.field private battery:Ljava/lang/String;

.field final synthetic this$0:Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;Ljava/lang/String;)V
    .locals 0
    .param p2, "battery"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction$BatteryActionParam;->this$0:Lcom/huawei/opcollect/collector/receivercollection/BatteryAction;

    .line 92
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/AbsActionParam;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction$BatteryActionParam;->battery:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method getBattery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/BatteryAction$BatteryActionParam;->battery:Ljava/lang/String;

    return-object v0
.end method
