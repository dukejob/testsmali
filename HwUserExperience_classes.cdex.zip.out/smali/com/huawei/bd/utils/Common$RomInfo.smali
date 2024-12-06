.class public final Lcom/huawei/bd/utils/Common$RomInfo;
.super Ljava/lang/Object;
.source "Common.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/bd/utils/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RomInfo"
.end annotation


# static fields
.field public static final COLUMN_NAME_CIPHER:Ljava/lang/String; = "j"

.field public static final COLUMN_NAME_DEVICE_NAME:Ljava/lang/String; = "f"

.field public static final COLUMN_NAME_EMUI_VERSION:Ljava/lang/String; = "e"

.field public static final COLUMN_NAME_EVENT_TIME:Ljava/lang/String; = "i"

.field public static final COLUMN_NAME_IMEI:Ljava/lang/String; = "a"

.field public static final COLUMN_NAME_IMSI:Ljava/lang/String; = "c"

.field public static final COLUMN_NAME_OPTA:Ljava/lang/String; = "g"

.field public static final COLUMN_NAME_OPTB:Ljava/lang/String; = "h"

.field public static final COLUMN_NAME_RESERVED2:Ljava/lang/String; = "l"

.field public static final COLUMN_NAME_ROM_VERSION:Ljava/lang/String; = "d"

.field public static final COLUMN_NAME_SN:Ljava/lang/String; = "k"

.field public static final COLUMN_NAME_WIFI_MAC:Ljava/lang/String; = "b"

.field public static final TABLE_NAME:Ljava/lang/String; = "ri"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    return-void
.end method
