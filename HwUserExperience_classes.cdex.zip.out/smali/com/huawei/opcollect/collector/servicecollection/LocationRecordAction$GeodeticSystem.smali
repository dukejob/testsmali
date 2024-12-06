.class public final enum Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;
.super Ljava/lang/Enum;
.source "LocationRecordAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GeodeticSystem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

.field public static final enum BD09ll:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

.field public static final enum GCJ02:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

.field public static final enum GS_INVALID:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

.field public static final enum WGS84:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

    const-string v1, "WGS84"

    invoke-direct {v0, v1, v2}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;->WGS84:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

    .line 107
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

    const-string v1, "GCJ02"

    invoke-direct {v0, v1, v3}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;->GCJ02:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

    .line 108
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

    const-string v1, "BD09ll"

    invoke-direct {v0, v1, v4}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;->BD09ll:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

    .line 109
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

    const-string v1, "GS_INVALID"

    invoke-direct {v0, v1, v5}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;->GS_INVALID:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;->WGS84:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;->GCJ02:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;->BD09ll:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;->GS_INVALID:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

    aput-object v1, v0, v5

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;->$VALUES:[Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    const-class v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

    return-object v0
.end method

.method public static values()[Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;->$VALUES:[Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

    invoke-virtual {v0}, [Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$GeodeticSystem;

    return-object v0
.end method
