.class Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$2;
.super Ljava/lang/Object;
.source "DifferentialPrivacyScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->startUpdateTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;


# direct methods
.method constructor <init>(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$2;->this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 160
    iget-object v3, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$2;->this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    invoke-static {v3}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->access$100(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    const-string v3, "BD.DifferentialPrivacyScheduler"

    const-string v4, "Can\'t get the context, stop running startUpdateTask"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const-string v3, "BD.DifferentialPrivacyScheduler"

    const-string v4, "Daily task start"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$2;->this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    invoke-static {v3, v7}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->access$200(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;I)V

    .line 166
    iget-object v3, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$2;->this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    invoke-static {v3, v7}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->access$300(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;I)V

    .line 167
    const-string v3, "BD.DifferentialPrivacyScheduler"

    const-string v4, "Daily task finish"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 169
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 170
    .local v2, "day":I
    if-ne v2, v5, :cond_3

    .line 171
    const-string v3, "BD.DifferentialPrivacyScheduler"

    const-string v4, "Weekly task start"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v3, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$2;->this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    invoke-static {v3, v5}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->access$200(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;I)V

    .line 173
    iget-object v3, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$2;->this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    invoke-static {v3, v5}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->access$300(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;I)V

    .line 174
    iget-object v3, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$2;->this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    invoke-static {v3, v5}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->access$400(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    iget-object v3, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$2;->this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    invoke-static {v3, v5}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->access$500(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;I)V

    .line 176
    iget-object v3, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$2;->this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    invoke-static {v3}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->access$600(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;)V

    .line 178
    :cond_2
    const-string v3, "BD.DifferentialPrivacyScheduler"

    const-string v4, "Weekly task finish"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_3
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 181
    .local v1, "date":I
    if-ne v1, v5, :cond_5

    .line 182
    const-string v3, "BD.DifferentialPrivacyScheduler"

    const-string v4, "Monthly task start"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v3, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$2;->this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    invoke-static {v3, v6}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->access$200(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;I)V

    .line 184
    iget-object v3, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$2;->this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    invoke-static {v3, v6}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->access$300(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;I)V

    .line 185
    iget-object v3, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$2;->this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    invoke-static {v3, v6}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->access$400(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    iget-object v3, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$2;->this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    invoke-static {v3, v6}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->access$500(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;I)V

    .line 187
    iget-object v3, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$2;->this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    invoke-static {v3}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->access$700(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;)V

    .line 189
    :cond_4
    const-string v3, "BD.DifferentialPrivacyScheduler"

    const-string v4, "Monthly task finish"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_5
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->isKitKatOrLater()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler$2;->this$0:Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;

    invoke-static {v3}, Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;->access$000(Lcom/huawei/bd/collector/DifferentialPrivacyScheduler;)V

    goto/16 :goto_0
.end method
