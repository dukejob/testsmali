.class public final Lcom/huawei/bd/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/bd/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final BIG_DATA:Ljava/lang/String; = "com.huawei.permission.BIG_DATA"

.field public static final OP_COLLECT:Ljava/lang/String; = "com.huawei.permission.OP_COLLECT"

.field public static final PLACE_RECOG:Ljava/lang/String; = "com.huawei.placerecognition.permission.PLACE_RECOG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
