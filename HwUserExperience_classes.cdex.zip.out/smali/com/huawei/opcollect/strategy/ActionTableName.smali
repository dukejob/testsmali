.class public final enum Lcom/huawei/opcollect/strategy/ActionTableName;
.super Ljava/lang/Enum;
.source "ActionTableName.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/opcollect/strategy/ActionTableName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/opcollect/strategy/ActionTableName;

.field public static final enum DS_CONTACTS_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

.field public static final enum RAW_AR_STATUS:Lcom/huawei/opcollect/strategy/ActionTableName;

.field public static final enum RAW_DEVICE_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

.field public static final enum RAW_DEVICE_STATUS_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

.field public static final enum RAW_FG_APP_EVENT:Lcom/huawei/opcollect/strategy/ActionTableName;

.field public static final enum RAW_HOTEL_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

.field public static final enum RAW_LOCATION_RECORD:Lcom/huawei/opcollect/strategy/ActionTableName;

.field public static final enum RAW_MEDIA_APP_STASTIC:Lcom/huawei/opcollect/strategy/ActionTableName;

.field public static final enum RAW_POSITION_STATE:Lcom/huawei/opcollect/strategy/ActionTableName;

.field public static final enum RAW_SYSTEM_EVENT:Lcom/huawei/opcollect/strategy/ActionTableName;

.field public static final enum RAW_TRAIN_FLIGHT_TICK_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

.field public static final enum RAW_WEATHER_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;


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

    .line 14
    new-instance v0, Lcom/huawei/opcollect/strategy/ActionTableName;

    const-string v1, "RAW_DEVICE_INFO"

    const-string v2, "RawDeviceInfo"

    invoke-direct {v0, v1, v4, v2}, Lcom/huawei/opcollect/strategy/ActionTableName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_DEVICE_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

    .line 15
    new-instance v0, Lcom/huawei/opcollect/strategy/ActionTableName;

    const-string v1, "RAW_TRAIN_FLIGHT_TICK_INFO"

    const-string v2, "RawTrainFlightTickInfo"

    invoke-direct {v0, v1, v5, v2}, Lcom/huawei/opcollect/strategy/ActionTableName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_TRAIN_FLIGHT_TICK_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

    .line 16
    new-instance v0, Lcom/huawei/opcollect/strategy/ActionTableName;

    const-string v1, "RAW_HOTEL_INFO"

    const-string v2, "RawHotelInfo"

    invoke-direct {v0, v1, v6, v2}, Lcom/huawei/opcollect/strategy/ActionTableName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_HOTEL_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

    .line 17
    new-instance v0, Lcom/huawei/opcollect/strategy/ActionTableName;

    const-string v1, "RAW_MEDIA_APP_STASTIC"

    const-string v2, "RawMediaAppStastic"

    invoke-direct {v0, v1, v7, v2}, Lcom/huawei/opcollect/strategy/ActionTableName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_MEDIA_APP_STASTIC:Lcom/huawei/opcollect/strategy/ActionTableName;

    .line 18
    new-instance v0, Lcom/huawei/opcollect/strategy/ActionTableName;

    const-string v1, "RAW_LOCATION_RECORD"

    const-string v2, "RawLocationRecord"

    invoke-direct {v0, v1, v8, v2}, Lcom/huawei/opcollect/strategy/ActionTableName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_LOCATION_RECORD:Lcom/huawei/opcollect/strategy/ActionTableName;

    .line 19
    new-instance v0, Lcom/huawei/opcollect/strategy/ActionTableName;

    const-string v1, "RAW_SYSTEM_EVENT"

    const/4 v2, 0x5

    const-string v3, "RawSysEvent"

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/opcollect/strategy/ActionTableName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_SYSTEM_EVENT:Lcom/huawei/opcollect/strategy/ActionTableName;

    .line 20
    new-instance v0, Lcom/huawei/opcollect/strategy/ActionTableName;

    const-string v1, "RAW_AR_STATUS"

    const/4 v2, 0x6

    const-string v3, "RawARStatus"

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/opcollect/strategy/ActionTableName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_AR_STATUS:Lcom/huawei/opcollect/strategy/ActionTableName;

    .line 21
    new-instance v0, Lcom/huawei/opcollect/strategy/ActionTableName;

    const-string v1, "RAW_WEATHER_INFO"

    const/4 v2, 0x7

    const-string v3, "RawWeatherInfo"

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/opcollect/strategy/ActionTableName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_WEATHER_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

    .line 22
    new-instance v0, Lcom/huawei/opcollect/strategy/ActionTableName;

    const-string v1, "RAW_POSITION_STATE"

    const/16 v2, 0x8

    const-string v3, "RawPositionState"

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/opcollect/strategy/ActionTableName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_POSITION_STATE:Lcom/huawei/opcollect/strategy/ActionTableName;

    .line 23
    new-instance v0, Lcom/huawei/opcollect/strategy/ActionTableName;

    const-string v1, "RAW_FG_APP_EVENT"

    const/16 v2, 0x9

    const-string v3, "RawFgAPPEvent"

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/opcollect/strategy/ActionTableName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_FG_APP_EVENT:Lcom/huawei/opcollect/strategy/ActionTableName;

    .line 24
    new-instance v0, Lcom/huawei/opcollect/strategy/ActionTableName;

    const-string v1, "RAW_DEVICE_STATUS_INFO"

    const/16 v2, 0xa

    const-string v3, "RawDeviceStatusInfo"

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/opcollect/strategy/ActionTableName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_DEVICE_STATUS_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

    .line 25
    new-instance v0, Lcom/huawei/opcollect/strategy/ActionTableName;

    const-string v1, "DS_CONTACTS_INFO"

    const/16 v2, 0xb

    const-string v3, "DSContactsInfo"

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/opcollect/strategy/ActionTableName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/opcollect/strategy/ActionTableName;->DS_CONTACTS_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

    .line 13
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/huawei/opcollect/strategy/ActionTableName;

    sget-object v1, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_DEVICE_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_TRAIN_FLIGHT_TICK_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_HOTEL_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_MEDIA_APP_STASTIC:Lcom/huawei/opcollect/strategy/ActionTableName;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_LOCATION_RECORD:Lcom/huawei/opcollect/strategy/ActionTableName;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_SYSTEM_EVENT:Lcom/huawei/opcollect/strategy/ActionTableName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_AR_STATUS:Lcom/huawei/opcollect/strategy/ActionTableName;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_WEATHER_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_POSITION_STATE:Lcom/huawei/opcollect/strategy/ActionTableName;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_FG_APP_EVENT:Lcom/huawei/opcollect/strategy/ActionTableName;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/huawei/opcollect/strategy/ActionTableName;->RAW_DEVICE_STATUS_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/huawei/opcollect/strategy/ActionTableName;->DS_CONTACTS_INFO:Lcom/huawei/opcollect/strategy/ActionTableName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/huawei/opcollect/strategy/ActionTableName;->$VALUES:[Lcom/huawei/opcollect/strategy/ActionTableName;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/huawei/opcollect/strategy/ActionTableName;->value:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/opcollect/strategy/ActionTableName;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/huawei/opcollect/strategy/ActionTableName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/strategy/ActionTableName;

    return-object v0
.end method

.method public static values()[Lcom/huawei/opcollect/strategy/ActionTableName;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/huawei/opcollect/strategy/ActionTableName;->$VALUES:[Lcom/huawei/opcollect/strategy/ActionTableName;

    invoke-virtual {v0}, [Lcom/huawei/opcollect/strategy/ActionTableName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/opcollect/strategy/ActionTableName;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/huawei/opcollect/strategy/ActionTableName;->value:Ljava/lang/String;

    return-object v0
.end method

.method setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/huawei/opcollect/strategy/ActionTableName;->value:Ljava/lang/String;

    .line 39
    return-void
.end method
