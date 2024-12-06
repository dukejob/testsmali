.class public Lcom/huawei/hiai/awareness/service/AwarenessFence;
.super Ljava/lang/Object;
.source "AwarenessFence.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AND_RELATION:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/hiai/awareness/service/AwarenessFence;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_RELATION:I = 0x1

.field public static final NOT_RELATION:I = 0x4

.field public static final OR_RELATION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AwarenessFence"


# instance fields
.field private action:I

.field private checkKey:Ljava/lang/String;

.field private condition:Ljava/lang/Long;

.field private endTime:Ljava/lang/String;

.field private excludeAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private excludeAppsStr:Ljava/lang/String;

.field private listFences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hiai/awareness/service/AwarenessFence;",
            ">;"
        }
    .end annotation
.end field

.field private logic:I

.field private operationPI:Landroid/app/PendingIntent;

.field private packageName:Ljava/lang/String;

.field private secondAction:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private status:I

.field private topKey:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/huawei/hiai/awareness/service/AwarenessFence$1;

    invoke-direct {v0}, Lcom/huawei/hiai/awareness/service/AwarenessFence$1;-><init>()V

    sput-object v0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "action"    # I
    .param p4, "secondAction"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->type:I

    .line 27
    iput v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->status:I

    .line 28
    iput v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->action:I

    .line 29
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->secondAction:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->startTime:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->endTime:Ljava/lang/String;

    .line 32
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->condition:Ljava/lang/Long;

    .line 33
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppList:Ljava/util/List;

    .line 35
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->operationPI:Landroid/app/PendingIntent;

    .line 38
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->packageName:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->checkKey:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->topKey:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppsStr:Ljava/lang/String;

    .line 308
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->logic:I

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->listFences:Ljava/util/List;

    .line 135
    iput p1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->type:I

    .line 136
    iput p2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->status:I

    .line 137
    iput p3, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->action:I

    .line 138
    iput-object p4, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->secondAction:Ljava/lang/String;

    .line 140
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->checkKey:Ljava/lang/String;

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->checkKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 3
    .param p1, "logic"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hiai/awareness/service/AwarenessFence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "fences":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/hiai/awareness/service/AwarenessFence;>;"
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->type:I

    .line 27
    iput v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->status:I

    .line 28
    iput v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->action:I

    .line 29
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->secondAction:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->startTime:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->endTime:Ljava/lang/String;

    .line 32
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->condition:Ljava/lang/Long;

    .line 33
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppList:Ljava/util/List;

    .line 35
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->operationPI:Landroid/app/PendingIntent;

    .line 38
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->packageName:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->checkKey:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->topKey:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppsStr:Ljava/lang/String;

    .line 308
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->logic:I

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->listFences:Ljava/util/List;

    .line 350
    iput p1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->logic:I

    .line 351
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->listFences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 353
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->listFences:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 355
    return-void
.end method

.method public varargs constructor <init>(I[Lcom/huawei/hiai/awareness/service/AwarenessFence;)V
    .locals 3
    .param p1, "logic"    # I
    .param p2, "fences"    # [Lcom/huawei/hiai/awareness/service/AwarenessFence;

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->type:I

    .line 27
    iput v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->status:I

    .line 28
    iput v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->action:I

    .line 29
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->secondAction:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->startTime:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->endTime:Ljava/lang/String;

    .line 32
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->condition:Ljava/lang/Long;

    .line 33
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppList:Ljava/util/List;

    .line 35
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->operationPI:Landroid/app/PendingIntent;

    .line 38
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->packageName:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->checkKey:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->topKey:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppsStr:Ljava/lang/String;

    .line 308
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->logic:I

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->listFences:Ljava/util/List;

    .line 340
    iput p1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->logic:I

    .line 341
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->listFences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 343
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->listFences:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 345
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->type:I

    .line 27
    iput v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->status:I

    .line 28
    iput v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->action:I

    .line 29
    iput-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->secondAction:Ljava/lang/String;

    .line 30
    iput-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->startTime:Ljava/lang/String;

    .line 31
    iput-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->endTime:Ljava/lang/String;

    .line 32
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->condition:Ljava/lang/Long;

    .line 33
    iput-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppList:Ljava/util/List;

    .line 35
    iput-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->operationPI:Landroid/app/PendingIntent;

    .line 38
    iput-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->packageName:Ljava/lang/String;

    .line 39
    iput-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->checkKey:Ljava/lang/String;

    .line 40
    iput-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->topKey:Ljava/lang/String;

    .line 41
    iput-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppsStr:Ljava/lang/String;

    .line 308
    const/4 v2, 0x1

    iput v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->logic:I

    .line 322
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->listFences:Ljava/util/List;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->type:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->status:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->action:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->secondAction:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->startTime:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->endTime:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->condition:Ljava/lang/Long;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppsStr:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->packageName:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->checkKey:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->topKey:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    .local v1, "appsArrayLength":I
    if-eqz v1, :cond_0

    .line 119
    new-array v0, v1, [Ljava/lang/String;

    .line 120
    .local v0, "appsArray":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 121
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppList:Ljava/util/List;

    .line 124
    .end local v0    # "appsArray":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/huawei/hiai/awareness/service/AwarenessFence;)V
    .locals 3
    .param p1, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->type:I

    .line 27
    iput v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->status:I

    .line 28
    iput v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->action:I

    .line 29
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->secondAction:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->startTime:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->endTime:Ljava/lang/String;

    .line 32
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->condition:Ljava/lang/Long;

    .line 33
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppList:Ljava/util/List;

    .line 35
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->operationPI:Landroid/app/PendingIntent;

    .line 38
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->packageName:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->checkKey:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->topKey:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppsStr:Ljava/lang/String;

    .line 308
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->logic:I

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->listFences:Ljava/util/List;

    .line 150
    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getType()I

    move-result v0

    iput v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->type:I

    .line 151
    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getStatus()I

    move-result v0

    iput v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->status:I

    .line 152
    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getAction()I

    move-result v0

    iput v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->action:I

    .line 154
    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getSecondAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->secondAction:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getStartTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->startTime:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getEndTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->endTime:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getCondition()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->condition:Ljava/lang/Long;

    .line 160
    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getExcludeAppsStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppsStr:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->packageName:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getCheckKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->checkKey:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getTopKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->topKey:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->getExcludeAppList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppList:Ljava/util/List;

    .line 165
    return-void
.end method

.method public static varargs and([Lcom/huawei/hiai/awareness/service/AwarenessFence;)Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .locals 2
    .param p0, "awarenessFences"    # [Lcom/huawei/hiai/awareness/service/AwarenessFence;

    .prologue
    .line 325
    new-instance v0, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/huawei/hiai/awareness/service/AwarenessFence;-><init>(I[Lcom/huawei/hiai/awareness/service/AwarenessFence;)V

    return-object v0
.end method

.method public static varargs not([Lcom/huawei/hiai/awareness/service/AwarenessFence;)Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .locals 2
    .param p0, "awarenessFences"    # [Lcom/huawei/hiai/awareness/service/AwarenessFence;

    .prologue
    .line 330
    new-instance v0, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/huawei/hiai/awareness/service/AwarenessFence;-><init>(I[Lcom/huawei/hiai/awareness/service/AwarenessFence;)V

    return-object v0
.end method

.method public static varargs or([Lcom/huawei/hiai/awareness/service/AwarenessFence;)Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .locals 2
    .param p0, "awarenessFences"    # [Lcom/huawei/hiai/awareness/service/AwarenessFence;

    .prologue
    .line 334
    new-instance v0, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/huawei/hiai/awareness/service/AwarenessFence;-><init>(I[Lcom/huawei/hiai/awareness/service/AwarenessFence;)V

    return-object v0
.end method


# virtual methods
.method public build(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 281
    if-eqz p1, :cond_1

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->packageName:Ljava/lang/String;

    .line 284
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->packageName:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->packageName:Ljava/lang/String;

    const-string v2, "_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->packageName:Ljava/lang/String;

    .line 288
    :cond_0
    invoke-static {p0}, Lcom/huawei/hiai/awareness/service/AwarenessParseHelper;->parseAwarenessKey(Lcom/huawei/hiai/awareness/service/AwarenessFence;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "key":Ljava/lang/String;
    const-string v1, "AwarenessFence"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build() key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->topKey:Ljava/lang/String;

    .line 295
    .end local v0    # "key":Ljava/lang/String;
    :goto_0
    return-void

    .line 292
    :cond_1
    const-string v1, "AwarenessFence"

    const-string v2, "build() context == null"

    invoke-static {v1, v2}, Lcom/huawei/hiai/awareness/common/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->action:I

    return v0
.end method

.method public getActionString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 270
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->secondAction:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->action:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->secondAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "actionString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 274
    .end local v0    # "actionString":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->action:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "actionString":Ljava/lang/String;
    goto :goto_0
.end method

.method public getCheckKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->checkKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCondition()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->condition:Ljava/lang/Long;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getExcludeAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppList:Ljava/util/List;

    return-object v0
.end method

.method public getExcludeAppsStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppsStr:Ljava/lang/String;

    return-object v0
.end method

.method public getListFences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hiai/awareness/service/AwarenessFence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->listFences:Ljava/util/List;

    return-object v0
.end method

.method public getLogic()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->logic:I

    return v0
.end method

.method public getOperationPI()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->operationPI:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->secondAction:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->status:I

    return v0
.end method

.method public getTopKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->topKey:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->type:I

    return v0
.end method

.method public hasRelation()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 315
    iget v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->logic:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->type:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->status:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->action:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->secondAction:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->startTime:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->endTime:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->condition:Ljava/lang/Long;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppsStr:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->packageName:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->checkKey:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->topKey:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 94
    .local v1, "appsArrayLength":I
    if-eqz v1, :cond_0

    .line 95
    new-array v0, v1, [Ljava/lang/String;

    .line 96
    .local v0, "appsArray":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 97
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppList:Ljava/util/List;

    .line 100
    .end local v0    # "appsArray":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->action:I

    .line 189
    return-void
.end method

.method public setCondition(Ljava/lang/Long;)V
    .locals 0
    .param p1, "condition"    # Ljava/lang/Long;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->condition:Ljava/lang/Long;

    .line 229
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->endTime:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setExcludeAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "excludeAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppList:Ljava/util/List;

    .line 221
    return-void
.end method

.method public setExcludeAppsStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "excludeAppsStr"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppsStr:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setOperationPI(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "operationPI"    # Landroid/app/PendingIntent;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->operationPI:Landroid/app/PendingIntent;

    .line 237
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->packageName:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setSecondAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "secondAction"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->secondAction:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->startTime:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->status:I

    .line 181
    return-void
.end method

.method public setTopKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "topKey"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->topKey:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->type:I

    .line 173
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[ excludeAppList:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppList:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 361
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 363
    .local v3, "var2":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 364
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 365
    .local v2, "excludePackageName":Ljava/lang/String;
    const-string v4, "~"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 370
    .end local v2    # "excludePackageName":Ljava/lang/String;
    .end local v3    # "var2":Ljava/util/Iterator;
    :cond_0
    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "apps":Ljava/lang/String;
    const-string v4, "AwarenessFence{type = %d, status = %d, action = %d, secondAction = %s, startTime = %s, endTime = %s, condition = %d, excludeAppList = %s, packageName = %s, checkKey = %s, topKey = %s}"

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->type:I

    .line 374
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->status:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->action:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->secondAction:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->startTime:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->endTime:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget-object v7, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->condition:Ljava/lang/Long;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    aput-object v0, v5, v6

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->packageName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/16 v6, 0x9

    iget-object v7, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->checkKey:Ljava/lang/String;

    aput-object v7, v5, v6

    const/16 v6, 0xa

    iget-object v7, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->topKey:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 372
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 56
    iget v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->status:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->action:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->secondAction:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->condition:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppsStr:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->checkKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->topKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/huawei/hiai/awareness/service/AwarenessFence;->excludeAppList:Ljava/util/List;

    new-array v2, v4, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 69
    .local v0, "appsArray":[Ljava/lang/String;
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 75
    .end local v0    # "appsArray":[Ljava/lang/String;
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
