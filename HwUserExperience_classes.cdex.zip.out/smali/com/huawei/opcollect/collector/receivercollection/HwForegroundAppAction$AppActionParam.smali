.class Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$AppActionParam;
.super Lcom/huawei/opcollect/strategy/AbsActionParam;
.source "HwForegroundAppAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppActionParam"
.end annotation


# instance fields
.field private componentName:Landroid/content/ComponentName;

.field private pid:I

.field private uid:I


# direct methods
.method constructor <init>(Landroid/content/ComponentName;II)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/huawei/opcollect/strategy/AbsActionParam;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$AppActionParam;->componentName:Landroid/content/ComponentName;

    .line 183
    iput p2, p0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$AppActionParam;->pid:I

    .line 184
    iput p3, p0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$AppActionParam;->uid:I

    .line 185
    return-void
.end method


# virtual methods
.method getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$AppActionParam;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$AppActionParam;->pid:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/huawei/opcollect/collector/receivercollection/HwForegroundAppAction$AppActionParam;->uid:I

    return v0
.end method
