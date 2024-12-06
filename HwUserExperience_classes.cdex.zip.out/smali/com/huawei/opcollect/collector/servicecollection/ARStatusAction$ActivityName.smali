.class public final enum Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;
.super Ljava/lang/Enum;
.source "ARStatusAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActivityName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

.field public static final enum ACTIVITY_FAST_WALKING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

.field public static final enum ACTIVITY_IN_VEHICLE:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

.field public static final enum ACTIVITY_ON_BICYCLE:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

.field public static final enum ACTIVITY_RUNNING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

.field public static final enum ACTIVITY_STILL:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

.field public static final enum ACTIVITY_TYPE_VE_HIGH_SPEED_RAIL:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

.field public static final enum ACTIVITY_WALKING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 230
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    const-string v1, "ACTIVITY_IN_VEHICLE"

    const-string v2, "android.activity_recognition.in_vehicle"

    invoke-direct {v0, v1, v4, v2}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_IN_VEHICLE:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    .line 231
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    const-string v1, "ACTIVITY_ON_BICYCLE"

    const-string v2, "android.activity_recognition.on_bicycle"

    invoke-direct {v0, v1, v5, v2}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_ON_BICYCLE:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    .line 232
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    const-string v1, "ACTIVITY_WALKING"

    const-string v2, "android.activity_recognition.walking"

    invoke-direct {v0, v1, v6, v2}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_WALKING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    .line 233
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    const-string v1, "ACTIVITY_RUNNING"

    const-string v2, "android.activity_recognition.running"

    invoke-direct {v0, v1, v7, v2}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_RUNNING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    .line 234
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    const-string v1, "ACTIVITY_STILL"

    const-string v2, "android.activity_recognition.still"

    invoke-direct {v0, v1, v8, v2}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_STILL:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    .line 235
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    const-string v1, "ACTIVITY_FAST_WALKING"

    const/4 v2, 0x5

    const-string v3, "android.activity_recognition.fast_walking"

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_FAST_WALKING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    .line 236
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    const-string v1, "ACTIVITY_TYPE_VE_HIGH_SPEED_RAIL"

    const/4 v2, 0x6

    const-string v3, "android.activity_recognition.high_speed_rail"

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_TYPE_VE_HIGH_SPEED_RAIL:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    .line 229
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_IN_VEHICLE:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_ON_BICYCLE:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_WALKING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_RUNNING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_STILL:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_FAST_WALKING:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->ACTIVITY_TYPE_VE_HIGH_SPEED_RAIL:Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->$VALUES:[Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 241
    iput-object p3, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->value:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 229
    const-class v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    return-object v0
.end method

.method public static values()[Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->$VALUES:[Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    invoke-virtual {v0}, [Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/ARStatusAction$ActivityName;->value:Ljava/lang/String;

    return-object v0
.end method
