.class public final Lcom/huawei/bd/utils/BigDataUtils;
.super Ljava/lang/Object;
.source "BigDataUtils.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "algorithm"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final BIT_NUMBER:Ljava/lang/String; = "bitnumber"

.field private static final BUFFER_MAX_LENGTH:I = 0x10000

.field private static final B_TO_KB:D = 1024.0

.field private static final COHORT:Ljava/lang/String; = "cohort"

.field private static final CONFIG_ID:Ljava/lang/String; = "configId"

.field private static final DEFAULT_DPP_CONFIG_PATH:Ljava/lang/String;

.field private static final DPP_CONFIG_PATH:Ljava/lang/String;

.field private static final EMUI_Q:D = 10.0

.field private static final EPSILON:Ljava/lang/String; = "epsilon"

.field private static final FIFTH_PARA:Ljava/lang/String; = "h"

.field private static final FIRST_PARA:Ljava/lang/String; = "f"

.field private static final FOURTH_PARA:Ljava/lang/String; = "k"

.field private static final HEXADECIMAL_INDEX:Ljava/lang/String; = "hex"

.field private static final INIT_SIZE:I = 0x10

.field private static final KB_GB_MB:I = 0x400

.field private static final LOW_RAM:D = 2.0

.field private static final MODE:Ljava/lang/String; = "mode"

.field private static final NORMAL_COUNTRIES_CODE:[Ljava/lang/String;

.field private static final REGION_CHINA:I = 0x0

.field private static final REGION_NORMAL:I = 0x1

.field private static final REGION_OVERSEA:I = 0x2

.field private static final SECOND_PARA:Ljava/lang/String; = "p"

.field private static final STRING_BUFFER_DEFAULT_CAPACITY:I = 0x10

.field private static final TAG:Ljava/lang/String; = "BD.BigDataUtils"

.field private static final TAG_FREQUENCY:Ljava/lang/String; = "frequency"

.field private static final TASK_NAME:Ljava/lang/String; = "taskName"

.field private static final THIRD_PARA:Ljava/lang/String; = "q"

.field private static final USER_COMMERCIAL:I = 0x1

.field private static final USER_COMMERCIAL_OVERSEA:I = 0x6

.field private static final VERSION_BETA:I = 0x3

.field private static final VERSION_BIG_IDX:I = 0x1

.field private static final VERSION_LONG_LEN:I = 0x3

.field private static final VERSION_LOW_IDX:I = 0x3

.field private static final VERSION_MIDDLE_IDX:I = 0x2

.field private static final VERSION_SHORT_LEN:I = 0x2

.field private static final WHITE_LIST_PACKAGES:[Ljava/lang/String;

.field private static regionFlag:I

.field private static totalMem:D


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hiview"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "diffprivacy_config.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/bd/utils/BigDataUtils;->DPP_CONFIG_PATH:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hiview"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "diffprivacy_config.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/bd/utils/BigDataUtils;->DEFAULT_DPP_CONFIG_PATH:Ljava/lang/String;

    .line 106
    const/16 v0, 0x5a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "784"

    aput-object v1, v0, v3

    const-string v1, "068"

    aput-object v1, v0, v4

    const-string v1, "076"

    aput-object v1, v0, v5

    const-string v1, "072"

    aput-object v1, v0, v6

    const-string v1, "024"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "032"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "048"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "108"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "152"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "120"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "170"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "188"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "012"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "218"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "818"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "288"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "320"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "340"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "368"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "364"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "388"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "400"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "404"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "414"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "466"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "480"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "454"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "484"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "566"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "558"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "512"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "591"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "604"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "586"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "630"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "600"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "634"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "646"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "686"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "222"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "148"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "788"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "834"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "800"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "858"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "862"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "887"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "710"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "894"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "716"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "044"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "332"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "780"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "214"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "740"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "132"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "270"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "324"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "624"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "178"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "180"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "434"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "266"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "728"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "262"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "231"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "694"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "768"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "566"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "562"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "854"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "504"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "478"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "480"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "682"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "638"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "414"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "174"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "384"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "400"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "516"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "404"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "736"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "508"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "204"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "004"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "454"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "450"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "466"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "422"

    aput-object v2, v0, v1

    sput-object v0, Lcom/huawei/bd/utils/BigDataUtils;->NORMAL_COUNTRIES_CODE:[Ljava/lang/String;

    .line 122
    const/16 v0, 0x4e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.huawei.intelligent"

    aput-object v1, v0, v3

    const-string v1, "com.huawei.vdrive"

    aput-object v1, v0, v4

    const-string v1, "com.huawei.camera"

    aput-object v1, v0, v5

    const-string v1, "com.android.gallery3d"

    aput-object v1, v0, v6

    const-string v1, "com.huawei.photos"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.huawei.scanner"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.huawei.videoeditor"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.huawei.vrlauncher"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.deskclock"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.huawei.deskclock"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.huawei.android.FMRadio"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.huawei.android.instantshare"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.huawei.android.wfdft"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.huawei.hwstartupguide"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.android.bluetooth"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.hicloud.android.clone"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.huawei.android.airsharing"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.huawei.android.internal.app"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.huawei.motionservice"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.huawei.email"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.android.exchange"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.huawei.android.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.example.android.notepad"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.huawei.notepad"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "android"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.huawei.systemmanager"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.huawei.android.totemweather"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.qeexo.smartshot"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.huawei.smartshot"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.huawei.screenrecorder"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.huawei.HwMultiScreenShot"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.huawei.calculator2"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.android.soundrecorder"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.huawei.soundrecorder"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.android.incallui"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "com.huawei.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "com.android.server.telecom"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "com.huawei.vassistant"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "com.huawei.hiassistantoversea"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "com.android.browser"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "com.android.packageinstaller"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "com.huawei.android.hwouc"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "com.huawei.appmarket"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "com.huawei.hwid"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "com.huawei.android.internal.app"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "com.android.mediacenter"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "com.huawei.music"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "com.huawei.android.thememanager"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "com.huawei.health"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "com.huawei.android.dsdscardmanager"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "com.huawei.dsdscardmanager"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "com.huawei.phoneservice"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "com.huawei.gamebox"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "com.android.hwmirror"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "com.vmall.client"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "com.android.documentsui"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "com.huawei.wallet"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "com.huawei.KoBackup"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "com.huawei.remoteassistant"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "com.gameloft.android.GloftGHUH"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "com.facebook.katana"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "com.twitter.android"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "com.shazam.android"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "com.instagram.android"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "com.mobilesrepublic.appy"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "com.booking"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "com.opera.browser"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "com.sl.slc"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "com.tripadvisor.tripadvisor"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "com.google.android.apps.docs.editors.docs"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "com.google.android.apps.docs.editors.sheets"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "com.google.android.apps.docs.editors.slides"

    aput-object v2, v0, v1

    sput-object v0, Lcom/huawei/bd/utils/BigDataUtils;->WHITE_LIST_PACKAGES:[Ljava/lang/String;

    .line 225
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/huawei/bd/utils/BigDataUtils;->totalMem:D

    .line 230
    const/4 v0, -0x1

    sput v0, Lcom/huawei/bd/utils/BigDataUtils;->regionFlag:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    return-void
.end method

.method public static byteConvertedString([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    const/16 v5, 0x9

    .line 400
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [C

    .line 402
    .local v1, "temp":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 403
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-char v2, v3

    .line 404
    .local v2, "val":C
    mul-int/lit8 v4, v0, 0x2

    if-le v2, v5, :cond_0

    add-int/lit8 v3, v2, 0x41

    add-int/lit8 v3, v3, -0xa

    :goto_1
    int-to-char v3, v3

    aput-char v3, v1, v4

    .line 406
    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    int-to-char v2, v3

    .line 407
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v3, 0x1

    if-le v2, v5, :cond_1

    add-int/lit8 v3, v2, 0x41

    add-int/lit8 v3, v3, -0xa

    :goto_2
    int-to-char v3, v3

    aput-char v3, v1, v4

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_0
    add-int/lit8 v3, v2, 0x30

    goto :goto_1

    .line 407
    :cond_1
    add-int/lit8 v3, v2, 0x30

    goto :goto_2

    .line 409
    .end local v2    # "val":C
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private static diffPrivacyParamentParse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "taskName"    # Ljava/lang/String;

    .prologue
    .line 632
    const-string v14, ""

    .line 633
    .local v14, "result":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuffer;

    const/16 v17, 0x10

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 634
    .local v16, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 635
    .local v8, "inputStream":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 636
    .local v10, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v2, 0x0

    .line 637
    .local v2, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 638
    .local v6, "fileOrigin":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    move-object v15, v14

    .line 679
    .end local v14    # "result":Ljava/lang/String;
    .local v15, "result":Ljava/lang/String;
    :goto_0
    return-object v15

    .line 642
    .end local v15    # "result":Ljava/lang/String;
    .restart local v14    # "result":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v5

    .line 643
    .local v5, "file":Ljava/io/File;
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .local v9, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v11, Ljava/io/InputStreamReader;

    const-string v17, "utf-8"

    move-object/from16 v0, v17

    invoke-direct {v11, v9, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 645
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v11, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 646
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .local v3, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_3
    invoke-static {v3}, Lcom/huawei/bd/utils/BigDataUtils;->readFileLine(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v13

    .line 647
    .local v13, "line":Ljava/lang/String;
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12, v13}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 648
    .local v12, "jsonArray":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_2

    .line 649
    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "taskName"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 650
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "configId"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 651
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "algorithm"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 652
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "f"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 653
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "p"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 654
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "q"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 655
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "k"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 656
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "h"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 657
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "cohort"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 658
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "epsilon"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 659
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "mode"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 660
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "bitnumber"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 661
    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "hex"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 648
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 664
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 665
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 666
    const-string v14, "No Parameter Matched"
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 675
    :cond_3
    invoke-static {v9}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    .line 676
    invoke-static {v11}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    .line 677
    invoke-static {v3}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    move-object v2, v3

    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v10, v11

    .end local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "i":I
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "jsonArray":Lorg/json/JSONArray;
    .end local v13    # "line":Ljava/lang/String;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :goto_2
    move-object v15, v14

    .line 679
    .end local v14    # "result":Ljava/lang/String;
    .restart local v15    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 668
    .end local v15    # "result":Ljava/lang/String;
    .restart local v14    # "result":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 669
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    const-string v17, "BD.BigDataUtils"

    const-string v18, "The Configuration File is not found"

    invoke-static/range {v17 .. v18}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 675
    invoke-static {v8}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    .line 676
    invoke-static {v10}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    .line 677
    invoke-static {v2}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    goto :goto_2

    .line 670
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 671
    .local v4, "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v17, "BD.BigDataUtils"

    const-string v18, "IOException error"

    invoke-static/range {v17 .. v18}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 675
    invoke-static {v8}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    .line 676
    invoke-static {v10}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    .line 677
    invoke-static {v2}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    goto :goto_2

    .line 672
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 673
    .local v4, "e":Lorg/json/JSONException;
    :goto_5
    :try_start_6
    const-string v17, "BD.BigDataUtils"

    const-string v18, "JSONException error"

    invoke-static/range {v17 .. v18}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 675
    invoke-static {v8}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    .line 676
    invoke-static {v10}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    .line 677
    invoke-static {v2}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    goto :goto_2

    .line 675
    .end local v4    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v17

    :goto_6
    invoke-static {v8}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    .line 676
    invoke-static {v10}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    .line 677
    invoke-static {v2}, Lcom/huawei/bd/utils/HiWiUtil;->safeClose(Ljava/io/Closeable;)V

    .line 678
    throw v17

    .line 675
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v17

    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_6

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v17

    move-object v10, v11

    .end local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_6

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v17

    move-object v2, v3

    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v10, v11

    .end local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_6

    .line 672
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v4

    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_5

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v4

    move-object v10, v11

    .end local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_5

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v10, v11

    .end local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_5

    .line 670
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    :catch_6
    move-exception v4

    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_4

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_7
    move-exception v4

    move-object v10, v11

    .end local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_4

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_8
    move-exception v4

    move-object v2, v3

    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v10, v11

    .end local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_4

    .line 668
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    :catch_9
    move-exception v4

    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_a
    move-exception v4

    move-object v10, v11

    .end local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_b
    move-exception v4

    move-object v2, v3

    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v10, v11

    .end local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 463
    const-string v0, "ro.config.hw_optb"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/huawei/android/os/SystemPropertiesEx;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCountryLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 454
    const-string v0, "ro.product.locale.language"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/huawei/android/os/SystemPropertiesEx;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCountryLocalRegion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 445
    const-string v0, "ro.product.locale.region"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/huawei/android/os/SystemPropertiesEx;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCustVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 491
    const-string v0, "ro.product.CustCVersion"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/huawei/android/os/SystemPropertiesEx;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDiffPrivacyParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "diffPrivacyTaskName"    # Ljava/lang/String;

    .prologue
    .line 618
    const-string v2, ""

    .line 619
    .local v2, "result":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/huawei/bd/utils/BigDataUtils;->DPP_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, "dpConfigPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/huawei/bd/utils/BigDataUtils;->DEFAULT_DPP_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "defaultDpConfigPath":Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/bd/utils/BigDataUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 622
    invoke-static {v1, p0}, Lcom/huawei/bd/utils/BigDataUtils;->diffPrivacyParamentParse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 628
    :goto_0
    return-object v2

    .line 623
    :cond_0
    invoke-static {v0}, Lcom/huawei/bd/utils/BigDataUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 624
    invoke-static {v0, p0}, Lcom/huawei/bd/utils/BigDataUtils;->diffPrivacyParamentParse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 626
    :cond_1
    const-string v3, "BD.BigDataUtils"

    const-string v4, "DiffPrivacy configuration file path is not correct"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getEmuiVersion()D
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 727
    const-string v4, "ro.build.version.emui"

    invoke-static {v4}, Lcom/huawei/android/os/SystemPropertiesEx;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, "emuiVersion":Ljava/lang/String;
    const-string v4, "[\\]_.]"

    const-string v5, " "

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 730
    .local v3, "str":[Ljava/lang/String;
    array-length v4, v3

    if-le v4, v6, :cond_1

    .line 732
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 733
    .local v2, "flatVersion":Ljava/lang/String;
    array-length v4, v3

    if-le v4, v7, :cond_0

    .line 734
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 736
    :cond_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 741
    .end local v2    # "flatVersion":Ljava/lang/String;
    :goto_0
    return-wide v4

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "BD.BigDataUtils"

    const-string v5, "[getEmuiVersion] get EMUI version error."

    invoke-static {v4, v5}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static getExtSdCardDescription(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageVolume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 365
    const-string v3, "storage"

    .line 366
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 367
    .local v1, "storageManager":Landroid/os/storage/StorageManager;
    if-eqz p1, :cond_0

    .line 368
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/huawei/android/os/storage/StorageManagerEx;->findVolumeByUuid(Landroid/os/storage/StorageManager;Ljava/lang/String;)Lcom/huawei/android/os/storage/VolumeInfoEx;

    move-result-object v2

    .line 369
    .local v2, "volumeInfo":Lcom/huawei/android/os/storage/VolumeInfoEx;
    invoke-virtual {v2}, Lcom/huawei/android/os/storage/VolumeInfoEx;->getDisk()Lcom/huawei/android/os/storage/DiskInfoEx;

    move-result-object v0

    .line 370
    .local v0, "diskInfo":Lcom/huawei/android/os/storage/DiskInfoEx;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/android/os/storage/DiskInfoEx;->isSd()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    invoke-virtual {p1, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 374
    .end local v0    # "diskInfo":Lcom/huawei/android/os/storage/DiskInfoEx;
    .end local v2    # "volumeInfo":Lcom/huawei/android/os/storage/VolumeInfoEx;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getExtSdCardPath(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageVolume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 343
    const-string v3, "storage"

    .line 344
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 345
    .local v1, "storageManager":Landroid/os/storage/StorageManager;
    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/huawei/android/os/storage/StorageManagerEx;->findVolumeByUuid(Landroid/os/storage/StorageManager;Ljava/lang/String;)Lcom/huawei/android/os/storage/VolumeInfoEx;

    move-result-object v2

    .line 347
    .local v2, "volumeInfo":Lcom/huawei/android/os/storage/VolumeInfoEx;
    invoke-virtual {v2}, Lcom/huawei/android/os/storage/VolumeInfoEx;->getDisk()Lcom/huawei/android/os/storage/DiskInfoEx;

    move-result-object v0

    .line 348
    .local v0, "diskInfo":Lcom/huawei/android/os/storage/DiskInfoEx;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/android/os/storage/DiskInfoEx;->isSd()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    invoke-static {p1}, Lcom/huawei/android/os/storage/StorageVolumeEx;->getPath(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 350
    invoke-static {p1}, Lcom/huawei/android/os/storage/StorageVolumeEx;->getPath(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 354
    .end local v0    # "diskInfo":Lcom/huawei/android/os/storage/DiskInfoEx;
    .end local v2    # "volumeInfo":Lcom/huawei/android/os/storage/VolumeInfoEx;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getRemovableVolumeInfo(Landroid/content/Context;)Landroid/os/storage/StorageVolume;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 319
    const-string v4, "storage"

    .line 320
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 321
    .local v0, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v2

    .line 322
    .local v2, "storageVolumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 323
    .local v1, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v5

    if-nez v5, :cond_0

    .line 324
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 325
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, "uuid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 332
    .end local v1    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v3    # "uuid":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getStorageState(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 385
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    :cond_0
    const/4 v1, 0x0

    .line 390
    :goto_0
    return v1

    .line 388
    :cond_1
    const-string v1, "storage"

    .line 389
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 390
    .local v0, "storageManager":Landroid/os/storage/StorageManager;
    const-string v1, "mounted"

    invoke-static {v0, p1}, Lcom/huawei/android/os/storage/StorageManagerEx;->getVolumeState(Landroid/os/storage/StorageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private static getTotalMemory(Landroid/content/Context;)D
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 699
    sget-wide v2, Lcom/huawei/bd/utils/BigDataUtils;->totalMem:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    if-eqz p0, :cond_1

    .line 700
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 701
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 702
    .local v1, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 705
    :cond_0
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v2, v4

    sput-wide v2, Lcom/huawei/bd/utils/BigDataUtils;->totalMem:D

    .line 707
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    :cond_1
    sget-wide v2, Lcom/huawei/bd/utils/BigDataUtils;->totalMem:D

    return-wide v2
.end method

.method public static getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 298
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 299
    :cond_0
    const-string v2, ""

    .line 309
    :goto_0
    return-object v2

    .line 302
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 303
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_2

    .line 304
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 307
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "BD.BigDataUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getPackageInfo NameNotFoundException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const-string v2, ""

    goto :goto_0
.end method

.method private static getVersionType()I
    .locals 2

    .prologue
    .line 487
    const-string v0, "ro.logsystem.usertype"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/android/os/SystemPropertiesEx;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static initRegionFlag()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 495
    sget v6, Lcom/huawei/bd/utils/BigDataUtils;->regionFlag:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 521
    .local v0, "countryCode":Ljava/lang/String;
    :goto_0
    return-void

    .line 499
    .end local v0    # "countryCode":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->getCountryLocalRegion()Ljava/lang/String;

    move-result-object v0

    .line 500
    .restart local v0    # "countryCode":Ljava/lang/String;
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->getCountryLanguage()Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "language":Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 502
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 503
    const/4 v5, 0x0

    sput v5, Lcom/huawei/bd/utils/BigDataUtils;->regionFlag:I
    :try_end_0
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 518
    .end local v2    # "language":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 519
    .local v1, "e":Lcom/huawei/android/util/NoExtAPIException;
    const-string v5, "BD.BigDataUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initRegionFlag Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/huawei/android/util/NoExtAPIException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    .end local v1    # "e":Lcom/huawei/android/util/NoExtAPIException;
    .restart local v2    # "language":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    .line 507
    .local v4, "optbCode":Ljava/lang/String;
    sget-object v6, Lcom/huawei/bd/utils/BigDataUtils;->NORMAL_COUNTRIES_CODE:[Ljava/lang/String;

    array-length v7, v6

    :goto_1
    if-ge v5, v7, :cond_5

    aget-object v3, v6, v5

    .line 508
    .local v3, "normalCountryCode":Ljava/lang/String;
    const-string v8, "999"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "-1"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 509
    :cond_2
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->getCustVersion()Ljava/lang/String;

    move-result-object v4

    .line 511
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 512
    const/4 v5, 0x1

    sput v5, Lcom/huawei/bd/utils/BigDataUtils;->regionFlag:I

    goto :goto_0

    .line 507
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 517
    .end local v3    # "normalCountryCode":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x2

    sput v5, Lcom/huawei/bd/utils/BigDataUtils;->regionFlag:I
    :try_end_1
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static isBetaVersion()Z
    .locals 2

    .prologue
    .line 482
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->getVersionType()I

    move-result v0

    .line 483
    .local v0, "versionType":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChinaRegion()Z
    .locals 2

    .prologue
    .line 529
    sget v0, Lcom/huawei/bd/utils/BigDataUtils;->regionFlag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 530
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->initRegionFlag()V

    .line 532
    :cond_0
    sget v0, Lcom/huawei/bd/utils/BigDataUtils;->regionFlag:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCommercialVersion()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 472
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->getVersionType()I

    move-result v0

    .line 473
    .local v0, "versionType":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isEmuiVersionOverQ()Z
    .locals 4

    .prologue
    .line 750
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->getEmuiVersion()D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 581
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 582
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 583
    const/4 v1, 0x0

    .line 585
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isKitKatOrLater()Z
    .locals 2

    .prologue
    .line 568
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 569
    const/4 v0, 0x1

    .line 571
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLowRam(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 717
    invoke-static {p0}, Lcom/huawei/bd/utils/BigDataUtils;->getTotalMemory(Landroid/content/Context;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetWorkConnect(Ljava/util/HashMap;Ljava/util/HashMap;I)Z
    .locals 6
    .param p2, "packageUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "wifiBuckets":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local p1, "mobileBuckets":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 598
    if-eqz p0, :cond_0

    .line 599
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    move v0, v1

    .line 608
    :goto_0
    return v0

    .line 603
    :cond_0
    if-eqz p1, :cond_1

    .line 604
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    move v0, v1

    .line 605
    goto :goto_0

    .line 608
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNormalCountry()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 541
    sget v1, Lcom/huawei/bd/utils/BigDataUtils;->regionFlag:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 542
    invoke-static {}, Lcom/huawei/bd/utils/BigDataUtils;->initRegionFlag()V

    .line 544
    :cond_0
    sget v1, Lcom/huawei/bd/utils/BigDataUtils;->regionFlag:I

    if-eq v1, v0, :cond_1

    sget v1, Lcom/huawei/bd/utils/BigDataUtils;->regionFlag:I

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWhiteListPackage(Ljava/lang/String;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 554
    sget-object v3, Lcom/huawei/bd/utils/BigDataUtils;->WHITE_LIST_PACKAGES:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 555
    .local v0, "whiteListPackage":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 556
    const/4 v1, 0x1

    .line 559
    .end local v0    # "whiteListPackage":Ljava/lang/String;
    :cond_0
    return v1

    .line 554
    .restart local v0    # "whiteListPackage":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static readFileLine(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 5
    .param p0, "bufferReader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 685
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .local v0, "intChar":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 686
    int-to-char v1, v0

    .line 687
    .local v1, "readChar":C
    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    .line 695
    .end local v1    # "readChar":C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 690
    .restart local v1    # "readChar":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/high16 v4, 0x10000

    if-le v3, v4, :cond_2

    .line 691
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Line is too long!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 693
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static readScheduleFromXml(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/16 v10, 0x10

    const/4 v11, 0x1

    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f030000

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 243
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    .local v2, "frequencyItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6, v10}, Landroid/util/SparseArray;-><init>(I)V

    .line 245
    .local v6, "resultSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v3, 0x1

    .line 246
    .local v3, "frequencyValue":I
    const-string v7, ""

    .line 248
    .local v7, "tag":Ljava/lang/String;
    :try_start_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    .line 249
    .local v1, "eventType":I
    :goto_0
    if-eq v1, v11, :cond_2

    .line 250
    packed-switch v1, :pswitch_data_0

    .line 277
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    goto :goto_0

    .line 254
    :pswitch_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 255
    const-string v8, "frequency"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 256
    const/4 v8, 0x0

    const-string v9, "value"

    const/4 v10, 0x1

    invoke-interface {v5, v8, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    .line 260
    :pswitch_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 261
    const-string v8, "frequency"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 262
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 263
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v4, :cond_1

    .line 264
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v6, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 279
    .end local v1    # "eventType":I
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string v8, "BD.BigDataUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XmlPullParserException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 287
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    return-object v6

    .line 266
    .restart local v1    # "eventType":I
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 281
    .end local v1    # "eventType":I
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    .line 282
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v8, "BD.BigDataUtils"

    const-string v9, "getText IOException"

    invoke-static {v8, v9}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_3

    .line 272
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "eventType":I
    :pswitch_3
    :try_start_4
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 284
    .end local v1    # "eventType":I
    :catchall_0
    move-exception v8

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 285
    throw v8

    .line 284
    .restart local v1    # "eventType":I
    :cond_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_3

    .line 250
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static splitString(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 420
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    div-int v3, v6, p1

    .line 421
    .local v3, "x":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    rem-int v4, v6, p1

    .line 422
    .local v4, "y":I
    const/4 v5, 0x0

    .line 423
    .local v5, "z":I
    if-eqz v4, :cond_0

    .line 424
    const/4 v5, 0x1

    .line 426
    :cond_0
    add-int v6, v3, v5

    new-array v2, v6, [Ljava/lang/String;

    .line 427
    .local v2, "strings":[Ljava/lang/String;
    const-string v1, ""

    .line 428
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int v6, v3, v5

    if-ge v0, v6, :cond_2

    .line 429
    add-int v6, v3, v5

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_1

    if-eqz v4, :cond_1

    .line 430
    mul-int v6, v0, p1

    mul-int v7, v0, p1

    add-int/2addr v7, v4

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 434
    :goto_1
    aput-object v1, v2, v0

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_1
    mul-int v6, v0, p1

    mul-int v7, v0, p1

    add-int/2addr v7, p1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 436
    :cond_2
    return-object v2
.end method
