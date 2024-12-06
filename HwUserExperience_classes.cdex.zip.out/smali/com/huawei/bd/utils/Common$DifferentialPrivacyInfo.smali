.class public final Lcom/huawei/bd/utils/Common$DifferentialPrivacyInfo;
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
    name = "DifferentialPrivacyInfo"
.end annotation


# static fields
.field public static final COLUMN_NAME_CIPHER:Ljava/lang/String; = "g"

.field public static final COLUMN_NAME_DATASET_ID:Ljava/lang/String; = "b"

.field public static final COLUMN_NAME_DP_OUTPUT:Ljava/lang/String; = "e"

.field public static final COLUMN_NAME_DP_SOURCE:Ljava/lang/String; = "d"

.field public static final COLUMN_NAME_PRIORITY:Ljava/lang/String; = "f"

.field public static final COLUMN_NAME_RECORD_TIME:Ljava/lang/String; = "a"

.field public static final COLUMN_NAME_RESERVED1:Ljava/lang/String; = "h"

.field public static final COLUMN_NAME_RESERVED2:Ljava/lang/String; = "i"

.field public static final COLUMN_NAME_STAT_TAG:Ljava/lang/String; = "c"

.field public static final DELETE_TRIGGER:Ljava/lang/String; = "dt"

.field public static final MAX_DATA_TO_TRIGGER:I = 0x1388

.field public static final TABLE_NAME:Ljava/lang/String; = "dpi"

.field public static final TRIGGER_DELETE_SIZE:I = 0x3e8


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    return-void
.end method
