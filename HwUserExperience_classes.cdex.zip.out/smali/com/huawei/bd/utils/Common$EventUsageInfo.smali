.class public final Lcom/huawei/bd/utils/Common$EventUsageInfo;
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
    name = "EventUsageInfo"
.end annotation


# static fields
.field public static final COLUMN_NAME_CURR_DAY_COUNT:Ljava/lang/String; = "d"

.field public static final COLUMN_NAME_CURR_MONTH_COUNT:Ljava/lang/String; = "h"

.field public static final COLUMN_NAME_CURR_WEEK_COUNT:Ljava/lang/String; = "f"

.field public static final COLUMN_NAME_EVENT_ID:Ljava/lang/String; = "b"

.field public static final COLUMN_NAME_HISTORY_COUNT:Ljava/lang/String; = "c"

.field public static final COLUMN_NAME_LAST_DAY_COUNT:Ljava/lang/String; = "e"

.field public static final COLUMN_NAME_LAST_MONTH_COUNT:Ljava/lang/String; = "i"

.field public static final COLUMN_NAME_LAST_WEEK_COUNT:Ljava/lang/String; = "g"

.field public static final COLUMN_NAME_PKG_NAME:Ljava/lang/String; = "a"

.field public static final COLUMN_NAME_RESERVED1:Ljava/lang/String; = "j"

.field public static final COLUMN_NAME_RESERVED2:Ljava/lang/String; = "k"

.field public static final TABLE_NAME:Ljava/lang/String; = "eui"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    return-void
.end method
