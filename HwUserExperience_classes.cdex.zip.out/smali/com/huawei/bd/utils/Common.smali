.class public final Lcom/huawei/bd/utils/Common;
.super Ljava/lang/Object;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/bd/utils/Common$Action;,
        Lcom/huawei/bd/utils/Common$AppActiveInfo;,
        Lcom/huawei/bd/utils/Common$DifferentialPrivacyInfo;,
        Lcom/huawei/bd/utils/Common$EventUsageInfo;,
        Lcom/huawei/bd/utils/Common$RomInfo;,
        Lcom/huawei/bd/utils/Common$LocalInfo;,
        Lcom/huawei/bd/utils/Common$AppAction;
    }
.end annotation


# static fields
.field public static final ACQUISITION_ITEM_ACCUINFO:Ljava/lang/String; = "AccumulativeInfo"

.field public static final ACQUISITION_ITEM_ALLAPPS:Ljava/lang/String; = "AllInstalledAPP"

.field public static final ACQUISITION_ITEM_HWCONFIG:Ljava/lang/String; = "HardwareConfig"

.field public static final ACQUISITION_ITEM_MEDIA:Ljava/lang/String; = "MultiMedia"

.field public static final ACQUISITION_ITEM_NWCONFIG:Ljava/lang/String; = "NetworkConfig"

.field public static final ACQUISITION_ITEM_PERFORMANCE:Ljava/lang/String; = "Performance"

.field public static final ACQUISITION_ITEM_SWCONFIG:Ljava/lang/String; = "SoftwareConfig"

.field public static final ACTION_BD_EVENTUSAGE:Ljava/lang/String; = "com.huawei.bd.action.eventusage"

.field public static final ACTION_BD_HEARTBEAT:Ljava/lang/String; = "com.huawei.bd.action.heartbeat"

.field public static final ACTION_BD_HEARTBEAT_HOUR:Ljava/lang/String; = "com.huawei.bd.action.heartbeat_hour"

.field public static final ACTION_UPDATE_UE_CONFIG:Ljava/lang/String; = "com.huawei.lcagent.UPDATE_UE_CONFIG"

.field public static final APP_ACTION_ID_BASE:I = 0x10000

.field public static final APP_COMMON_ID_COUNT:I = 0x30000

.field public static final AUTHORITY:Ljava/lang/String; = "com.huawei.bd.provider.BDProvider"

.field public static final BASEEVENT_ENCRYPT:Ljava/lang/String; = "BaseEvent_Encrypt"

.field public static final BDRECORD_DEBUG:Ljava/lang/String; = "BDrecord_Debug"

.field public static final BDSERVICE_DEBUG:Ljava/lang/String; = "BDservice_Debug"

.field public static final BETA_DELAY_LOAD_INTVL:J = 0x3e8L

.field public static final BUFFER_CACHE_SIZE:I = 0xa

.field public static final CLOSE_STATE:Ljava/lang/String; = "CLOSE"

.field public static final COMMERCIAL_DELAY_LOAD_INTVL:J = 0x927c0L

.field public static final DEFAULT_CAPACITY:I = 0x10

.field public static final DEFAULT_THRESHOLD:I = 0x0

.field public static final DIFF_EVENT_ID:I = 0x40000

.field public static final DISABLE_DIFF_CONTENT:I = 0x0

.field public static final DP_PARAMETER:Ljava/lang/String; = "hiview_countsketch"

.field public static final DP_PARAMETER_GET_FAILED:Ljava/lang/String; = "No Parameter Matched"

.field public static final DP_RETENTION_COUNT_LIMIT:I = 0x3

.field public static final DP_RETENTION_INTERVAL:I = 0x1e

.field public static final ENABLE_DIFF_CONTENT:I = 0x1

.field public static final ERROR_VERSION:Ljava/lang/String; = "-1"

.field public static final EVENT_TYPE_APP_ACTION:I = 0x1

.field public static final EVENT_TYPE_BATCH:I = 0x4

.field public static final EVENT_TYPE_CPR_CHANGE:I = 0x5

.field public static final EVENT_TYPE_DIFF_PRIVACY:I = 0x6

.field public static final EVENT_TYPE_INVALID:I = 0x0

.field public static final EVENT_TYPE_LOCAL_INFO:I = 0x2

.field public static final EVENT_TYPE_ROM_INFO:I = 0x3

.field public static final EVENT_TYPE_UPDATE_QUEUE:I = 0x7

.field public static final FILE_PREFIX:Ljava/lang/String; = "usage-"

.field public static final GENERAL_VERSION:Ljava/lang/String; = "999"

.field public static final HIGH_DELAY_MINUTES:J = 0x1b7740L

.field public static final HIGH_RESTART_TIMES:I = 0xa

.field public static final ID_INFO_APPS_INSTALLED:I = 0x20001

.field public static final ID_INFO_APP_ACTVIE:I = 0x20020

.field public static final ID_INFO_APP_INSTALL:I = 0x20002

.field public static final ID_INFO_APP_UNINSTALL:I = 0x20003

.field public static final ID_INFO_APP_UPDATE:I = 0x20004

.field public static final ID_INFO_APP_USAGE:I = 0x20005

.field public static final ID_INFO_APP_USAGE_HOUR:I = 0x20010

.field public static final ID_INFO_BRIGHTNESS:I = 0x2000a

.field public static final ID_INFO_EXT_SDCARD:I = 0x2001e

.field public static final ID_INFO_HOUR_HEARTBEAT:I = 0x2001c

.field public static final ID_INFO_INPUTMETHOD:I = 0x2000c

.field public static final ID_INFO_LANGUAGE:I = 0x2000b

.field public static final ID_INFO_NETWORK_NAME:I = 0x20017

.field public static final ID_INFO_NET_NAME:I = 0x20018

.field public static final ID_INFO_OPEN_PHONE:I = 0x20012

.field public static final ID_INFO_PERFORMANCE:I = 0x2001b

.field public static final ID_INFO_POWER_CONNECTED:I = 0x20014

.field public static final ID_INFO_POWER_DISCONNECTED:I = 0x20015

.field public static final ID_INFO_SD_FREE_SIZE:I = 0x20008

.field public static final ID_INFO_SD_TOTAL_SIZE:I = 0x20007

.field public static final ID_INFO_SENSOR:I = 0x2001f

.field public static final ID_INFO_SHUTDOWN_PHONE:I = 0x20013

.field public static final ID_INFO_SYSTEM_FONT:I = 0x20009

.field public static final ID_INFO_TRIGGER_DEL:I = 0x203e7

.field public static final ID_INFO_USER_PLAN_SWITCH:I = 0x20019

.field public static final ID_INFO_USING_DURATIONS:I = 0x2001d

.field public static final ID_INFO_USRE_ROOT:I = 0x2001a

.field public static final ID_INFO_WIFI_STATE:I = 0x2000d

.field public static final INFO_NAME_AVAILMEM:Ljava/lang/String; = "AvailableMem"

.field public static final INFO_NAME_USERUSEDSIZE:Ljava/lang/String; = "UserUsedSize"

.field public static final INIT_SIZE:I = 0x10

.field public static final INNER_AUTHORITY:Ljava/lang/String; = "com.huawei.bd.provider.BigDataInnerProvider"

.field public static final INNER_URI_HEAD:Ljava/lang/String; = "content://com.huawei.bd.provider.BigDataInnerProvider/"

.field public static final LOCAL_INFO_ID_BASE:I = 0x20000

.field public static final LOW_DELAY_SECONDS:J = 0x2710L

.field public static final LOW_RESTART_TIMES:I = 0x2

.field public static final MAX_CONTENT_SIZE:I = 0x5000

.field public static final MIDDLE_DELAY_SECONDS:J = 0xea60L

.field public static final MIDDLE_RESTART_TIMES:I = 0x5

.field public static final OPEN_STATE:Ljava/lang/String; = "OPEN"

.field public static final PACKAGE_ALIAS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREFERENCE_ALL_APPS_DATE:Ljava/lang/String; = "AllAPPsDate"

.field public static final PREFERENCE_FILE_ACCUMULATIVE:Ljava/lang/String; = "Accumulative_Info"

.field public static final PREFERENCE_FILE_DIFF_PRIVACY_BASE:Ljava/lang/String; = "DiffPrivacyBase_Info"

.field public static final PREFERENCE_ROM_VERSION:Ljava/lang/String; = "RomVersion"

.field public static final PREFERENCE_SCHEDULER_INFO:Ljava/lang/String; = "SchedulerInfo"

.field public static final PREFERENCE_SENSOR_VAL:Ljava/lang/String; = "SensorVal"

.field public static final PREFERENCE_USER_PLAN:Ljava/lang/String; = "ExperienceState"

.field public static final PREFERENCE_USER_ROOT:Ljava/lang/String; = "Root"

.field public static final PREFERENCE_USING_DURA:Ljava/lang/String; = "UsingDura"

.field public static final PREFERENCE_UUID:Ljava/lang/String; = "uuid"

.field public static final PRI_HIGH:I = 0x19

.field public static final PRI_LOW:I = 0x5

.field public static final PRI_MAX:I = 0x1e

.field public static final PRI_MIN:I = 0x1

.field public static final PRI_NORMAL:I = 0xf

.field public static final RELEASE_TIME:Ljava/lang/String; = "ReleaseTime"

.field public static final RESTART_MODE:Ljava/lang/String; = "IsRestartPunishMode"

.field public static final RESTART_TIMES:Ljava/lang/String; = "RestartTimes"

.field public static final ROOT_STATE_RISK:Ljava/lang/String; = "risk"

.field public static final ROOT_STATE_SAFE:Ljava/lang/String; = "safe"

.field public static final SCHEME:Ljava/lang/String; = "content://"

.field public static final START_SCHEDULE_DELAY_TIME:I = 0x2bf20

.field public static final TAG:Ljava/lang/String; = "BD."

.field public static final UE_CONFIG_FILE_VERSION:Ljava/lang/String; = "UEConfigFileVerison"

.field public static final URI_HEAD:Ljava/lang/String; = "content://com.huawei.bd.provider.BDProvider/"

.field public static final USAGESTAT_VERSION:I = 0x3ef

.field public static final USAGE_APP_LAUNCH_COUNT:Ljava/lang/String; = "APP_COUNT"

.field public static final USAGE_JSON_CT:Ljava/lang/String; = ", CT:"

.field public static final USAGE_JSON_DT:Ljava/lang/String; = "{DT:"

.field public static final USAGE_LAND_USE_TIME:Ljava/lang/String; = "LAND_TIME"

.field public static final USAGE_LAST_TIME_IN_PC:Ljava/lang/String; = "LAST_IN_PC"

.field public static final USAGE_LAST_TIME_IN_WIRELESS_PC:Ljava/lang/String; = "LAST_IN_WIRELESS_PC"

.field public static final USAGE_LAST_USE:Ljava/lang/String; = "LAST_USE"

.field public static final USAGE_LAUCHER_COUNT:Ljava/lang/String; = "COUNT"

.field public static final USAGE_PKG:Ljava/lang/String; = "PN"

.field public static final USAGE_TIME_PC_FORGROUND:Ljava/lang/String; = "PC_TIME"

.field public static final USAGE_TIME_WIRELESS_PC_FORGROUND:Ljava/lang/String; = "WIRELESS_PC_TIME"

.field public static final USAGE_USE_TIME:Ljava/lang/String; = "TIME"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1017
    new-instance v0, Lcom/huawei/bd/utils/Common$1;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/huawei/bd/utils/Common$1;-><init>(I)V

    sput-object v0, Lcom/huawei/bd/utils/Common;->PACKAGE_ALIAS:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1082
    return-void
.end method
