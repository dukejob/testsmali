.class public Lcom/huawei/bd/utils/BigDataSwitchUtil;
.super Ljava/lang/Object;
.source "BigDataSwitchUtil.java"


# static fields
.field private static isBdRecordDebug:Z

.field private static isBdServiceDebug:Z

.field private static isEncrypt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-boolean v0, Lcom/huawei/bd/utils/BigDataSwitchUtil;->isBdServiceDebug:Z

    .line 16
    sput-boolean v0, Lcom/huawei/bd/utils/BigDataSwitchUtil;->isBdRecordDebug:Z

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/bd/utils/BigDataSwitchUtil;->isEncrypt:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static isBdRecordDebug()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/huawei/bd/utils/BigDataSwitchUtil;->isBdRecordDebug:Z

    return v0
.end method

.method public static isBdServiceDebug()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/huawei/bd/utils/BigDataSwitchUtil;->isBdServiceDebug:Z

    return v0
.end method

.method public static isEncrypt()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/huawei/bd/utils/BigDataSwitchUtil;->isEncrypt:Z

    return v0
.end method

.method public static setBdRecordDebug(Z)V
    .locals 0
    .param p0, "isRecordDebug"    # Z

    .prologue
    .line 36
    sput-boolean p0, Lcom/huawei/bd/utils/BigDataSwitchUtil;->isBdRecordDebug:Z

    .line 37
    return-void
.end method

.method public static setBdServiceDebug(Z)V
    .locals 0
    .param p0, "isServiceDebug"    # Z

    .prologue
    .line 28
    sput-boolean p0, Lcom/huawei/bd/utils/BigDataSwitchUtil;->isBdServiceDebug:Z

    .line 29
    return-void
.end method

.method public static setEncrypt(Z)V
    .locals 0
    .param p0, "isBdEncrypt"    # Z

    .prologue
    .line 44
    sput-boolean p0, Lcom/huawei/bd/utils/BigDataSwitchUtil;->isEncrypt:Z

    .line 45
    return-void
.end method
