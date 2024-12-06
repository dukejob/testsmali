.class public final Lcom/huawei/bd/utils/Common$LocalInfo;
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
    name = "LocalInfo"
.end annotation


# static fields
.field public static final COLUMN_NAME_CIPHER:Ljava/lang/String; = "e"

.field public static final COLUMN_NAME_CONTENT:Ljava/lang/String; = "c"

.field public static final COLUMN_NAME_INFO_ID:Ljava/lang/String; = "b"

.field public static final COLUMN_NAME_PRIORITY:Ljava/lang/String; = "d"

.field public static final COLUMN_NAME_RECORD_TIME:Ljava/lang/String; = "a"

.field public static final COLUMN_NAME_RESERVED1:Ljava/lang/String; = "f"

.field public static final COLUMN_NAME_RESERVED2:Ljava/lang/String; = "g"

.field public static final DELETE_TRIGGER:Ljava/lang/String; = "lt"

.field public static final MAX_DATA_TO_TRIGGER:I = 0x1388

.field public static final TABLE_NAME:Ljava/lang/String; = "li"

.field public static final TRIGGER_DELETE_SIZE:I = 0x3e8


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    return-void
.end method
