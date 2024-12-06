.class public final Lcom/huawei/bd/utils/Common$AppActiveInfo;
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
    name = "AppActiveInfo"
.end annotation


# static fields
.field public static final COLUMN_NAME_ACTIVE_TIME:Ljava/lang/String; = "d"

.field public static final COLUMN_NAME_PKG_NAME:Ljava/lang/String; = "b"

.field public static final COLUMN_NAME_RECORD_TIME:Ljava/lang/String; = "a"

.field public static final COLUMN_NAME_REPORT_TIME:Ljava/lang/String; = "e"

.field public static final COLUMN_NAME_RESERVED1:Ljava/lang/String; = "f"

.field public static final COLUMN_NAME_RESERVED2:Ljava/lang/String; = "g"

.field public static final COLUMN_NAME_STATUS:Ljava/lang/String; = "c"

.field public static final DELETE_TRIGGER:Ljava/lang/String; = "ait"

.field public static final MAX_DATA_TO_TRIGGER:I = 0x1388

.field public static final TABLE_NAME:Ljava/lang/String; = "ai"

.field public static final TRIGGER_DELETE_SIZE:I = 0x3e8


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    return-void
.end method
