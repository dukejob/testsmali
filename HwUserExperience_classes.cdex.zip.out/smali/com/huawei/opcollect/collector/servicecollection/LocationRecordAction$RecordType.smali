.class final enum Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;
.super Ljava/lang/Enum;
.source "LocationRecordAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RecordType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

.field public static final enum GPS:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

.field public static final enum INTELLIGENT:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

.field public static final enum NET:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

.field public static final enum WIFI:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;


# instance fields
.field private chr:C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 113
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    const-string v1, "INTELLIGENT"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;->INTELLIGENT:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    .line 114
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    const-string v1, "GPS"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v4, v2}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;->GPS:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    .line 115
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    const-string v1, "NET"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v5, v2}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;->NET:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    .line 116
    new-instance v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    const-string v1, "WIFI"

    const/16 v2, 0x33

    invoke-direct {v0, v1, v6, v2}, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;->WIFI:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    .line 112
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;->INTELLIGENT:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;->GPS:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;->NET:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;->WIFI:Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;->$VALUES:[Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IC)V
    .locals 0
    .param p3, "chr"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    iput-char p3, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;->chr:C

    .line 122
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    const-class v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;->$VALUES:[Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    invoke-virtual {v0}, [Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;

    return-object v0
.end method


# virtual methods
.method public getChr()C
    .locals 1

    .prologue
    .line 125
    iget-char v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$RecordType;->chr:C

    return v0
.end method
