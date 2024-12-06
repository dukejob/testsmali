.class public Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
.super Lcom/huawei/hiai/awareness/service/AwarenessFence;
.source "ExtendAwarenessFence.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ExtendAwarenessFence"


# instance fields
.field protected registerBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence$1;

    invoke-direct {v0}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence$1;-><init>()V

    sput-object v0, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "action"    # I
    .param p4, "secondAction"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hiai/awareness/service/AwarenessFence;-><init>(IIILjava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;-><init>(Landroid/os/Parcel;)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->registerBundle:Landroid/os/Bundle;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;)V
    .locals 1
    .param p1, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;-><init>(Lcom/huawei/hiai/awareness/service/AwarenessFence;)V

    .line 60
    invoke-virtual {p1}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->getRegisterBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->registerBundle:Landroid/os/Bundle;

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getRegisterBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->registerBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->readFromParcel(Landroid/os/Parcel;)V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->registerBundle:Landroid/os/Bundle;

    .line 38
    return-void
.end method

.method public setRegisterBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "registerBundle"    # Landroid/os/Bundle;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->registerBundle:Landroid/os/Bundle;

    .line 69
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->registerBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method
