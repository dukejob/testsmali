.class public final enum Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;
.super Ljava/lang/Enum;
.source "ARStatusAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActivityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

.field public static final enum ACTIVITY_FAST_WALKING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

.field public static final enum ACTIVITY_IN_VEHICLE:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

.field public static final enum ACTIVITY_ON_BICYCLE:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

.field public static final enum ACTIVITY_RUNNING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

.field public static final enum ACTIVITY_STILL:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

.field public static final enum ACTIVITY_TYPE_VE_HIGH_SPEED_RAIL:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

.field public static final enum ACTIVITY_UNKNOWN:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

.field public static final enum ACTIVITY_WALKING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 210
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    const-string v1, "ACTIVITY_IN_VEHICLE"

    invoke-direct {v0, v1, v4, v4}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_IN_VEHICLE:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    .line 211
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    const-string v1, "ACTIVITY_ON_BICYCLE"

    invoke-direct {v0, v1, v5, v5}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_ON_BICYCLE:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    .line 212
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    const-string v1, "ACTIVITY_WALKING"

    invoke-direct {v0, v1, v6, v6}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_WALKING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    .line 213
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    const-string v1, "ACTIVITY_RUNNING"

    invoke-direct {v0, v1, v7, v7}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_RUNNING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    .line 214
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    const-string v1, "ACTIVITY_STILL"

    invoke-direct {v0, v1, v8, v8}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_STILL:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    .line 215
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    const-string v1, "ACTIVITY_TYPE_VE_HIGH_SPEED_RAIL"

    const/4 v2, 0x5

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_TYPE_VE_HIGH_SPEED_RAIL:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    .line 216
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    const-string v1, "ACTIVITY_FAST_WALKING"

    const/4 v2, 0x6

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_FAST_WALKING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    .line 217
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    const-string v1, "ACTIVITY_UNKNOWN"

    const/4 v2, 0x7

    const/16 v3, 0x3f

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_UNKNOWN:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    .line 209
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_IN_VEHICLE:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_ON_BICYCLE:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_WALKING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_RUNNING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_STILL:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_TYPE_VE_HIGH_SPEED_RAIL:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_FAST_WALKING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->ACTIVITY_UNKNOWN:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->$VALUES:[Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 221
    iput p3, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->type:I

    .line 222
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 209
    const-class v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->$VALUES:[Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    invoke-virtual {v0}, [Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityType;->type:I

    return v0
.end method
