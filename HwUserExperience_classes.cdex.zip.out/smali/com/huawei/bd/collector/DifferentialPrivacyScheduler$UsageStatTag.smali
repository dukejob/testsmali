.class Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;
.super Ljava/lang/Object;
.source "DifferentialPrivacyScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsageStatTag"
.end annotation


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private isSavePref:Z

.field private statTagCount:Ljava/lang/String;

.field private statTagYn:Ljava/lang/String;

.field final synthetic this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

.field private updateType:I


# direct methods
.method constructor <init>(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;I)V
    .locals 0
    .param p2, "updateType"    # I

    .prologue
    .line 637
    iput-object p1, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput p2, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->updateType:I

    .line 639
    return-void
.end method


# virtual methods
.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public getStatTagCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->statTagCount:Ljava/lang/String;

    return-object v0
.end method

.method public getStatTagYn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->statTagYn:Ljava/lang/String;

    return-object v0
.end method

.method public invoke()Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 658
    const-string v2, ""

    iput-object v2, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->statTagYn:Ljava/lang/String;

    .line 659
    const-string v2, ""

    iput-object v2, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->statTagCount:Ljava/lang/String;

    .line 660
    iput-boolean v4, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->isSavePref:Z

    .line 662
    iget-object v2, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    .line 663
    invoke-static {v2}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->access$800(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "DiffPrivacyBase_Info"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 664
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 665
    .local v0, "appCounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v1, :cond_0

    .line 666
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 668
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->editor:Landroid/content/SharedPreferences$Editor;

    .line 669
    iget v2, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->updateType:I

    packed-switch v2, :pswitch_data_0

    .line 689
    :cond_1
    :goto_0
    return-object p0

    .line 671
    :pswitch_0
    const-string v2, "DAILY|USAGE_COUNT"

    iput-object v2, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->statTagCount:Ljava/lang/String;

    .line 672
    const-string v2, "DAILY|USAGE_YN"

    iput-object v2, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->statTagYn:Ljava/lang/String;

    goto :goto_0

    .line 675
    :pswitch_1
    const-string v2, "WEEKLY|USAGE_COUNT"

    iput-object v2, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->statTagCount:Ljava/lang/String;

    .line 676
    const-string v2, "WEEKLY|USAGE_YN"

    iput-object v2, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->statTagYn:Ljava/lang/String;

    .line 677
    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 678
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->isSavePref:Z

    .line 679
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->editor:Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 683
    :pswitch_2
    const-string v2, "MONTHLY|USAGE_COUNT"

    iput-object v2, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->statTagCount:Ljava/lang/String;

    .line 684
    const-string v2, "MONTHLY|USAGE_YN"

    iput-object v2, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->statTagYn:Ljava/lang/String;

    goto :goto_0

    .line 669
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isSavePref()Z
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$UsageStatTag;->isSavePref:Z

    return v0
.end method
