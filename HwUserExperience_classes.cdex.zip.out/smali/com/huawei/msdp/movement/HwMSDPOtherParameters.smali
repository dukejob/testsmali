.class public Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
.super Ljava/lang/Object;
.source "HwMSDPOtherParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/msdp/movement/HwMSDPOtherParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mParam1:D

.field private mParam2:D

.field private mParam3:D

.field private mParam4:D

.field private mParam5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters$1;

    invoke-direct {v0}, Lcom/huawei/msdp/movement/HwMSDPOtherParameters$1;-><init>()V

    sput-object v0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DDDDLjava/lang/String;)V
    .locals 1
    .param p1, "param1"    # D
    .param p3, "param2"    # D
    .param p5, "param3"    # D
    .param p7, "param4"    # D
    .param p9, "param5"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam1:D

    .line 16
    iput-wide p3, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam2:D

    .line 17
    iput-wide p5, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam3:D

    .line 18
    iput-wide p7, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam4:D

    .line 19
    iput-object p9, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam5:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getmParam1()D
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam1:D

    return-wide v0
.end method

.method public getmParam2()D
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam2:D

    return-wide v0
.end method

.method public getmParam3()D
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam3:D

    return-wide v0
.end method

.method public getmParam4()D
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam4:D

    return-wide v0
.end method

.method public getmParam5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam5:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam1:D

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam2:D

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam3:D

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam4:D

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam5:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setmParam1(D)V
    .locals 1
    .param p1, "mParam1"    # D

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam1:D

    .line 24
    return-void
.end method

.method public setmParam2(D)V
    .locals 1
    .param p1, "mParam2"    # D

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam2:D

    .line 28
    return-void
.end method

.method public setmParam3(D)V
    .locals 1
    .param p1, "mParam3"    # D

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam3:D

    .line 32
    return-void
.end method

.method public setmParam4(D)V
    .locals 1
    .param p1, "mParam4"    # D

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam4:D

    .line 36
    return-void
.end method

.method public setmParam5(Ljava/lang/String;)V
    .locals 0
    .param p1, "mParam5"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam5:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 105
    const-string v0, "Param1=%f, Param2=%f, Param3=%f, Param4=%f, Param5=%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam1:D

    .line 107
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam2:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam3:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam4:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam5:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 105
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam1:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 88
    iget-wide v0, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam2:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 89
    iget-wide v0, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam3:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 90
    iget-wide v0, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam4:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 91
    iget-object v0, p0, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->mParam5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return-void
.end method
