.class public Lcom/huawei/opcollect/location/HwLocation;
.super Ljava/lang/Object;
.source "HwLocation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private accuracy:I

.field private altitude:D

.field private city:Ljava/lang/String;

.field private cityCode:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private detailAddress:Ljava/lang/String;

.field private district:Ljava/lang/String;

.field private latitude:D

.field private longitude:D

.field private priority:I

.field private provider:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide v0, p0, Lcom/huawei/opcollect/location/HwLocation;->longitude:D

    .line 16
    iput-wide v0, p0, Lcom/huawei/opcollect/location/HwLocation;->latitude:D

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/huawei/opcollect/location/HwLocation;->timestamp:J

    .line 30
    return-void
.end method


# virtual methods
.method public clone()Lcom/huawei/opcollect/location/HwLocation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/opcollect/location/HwLocation;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/huawei/opcollect/location/HwLocation;->clone()Lcom/huawei/opcollect/location/HwLocation;

    move-result-object v0

    return-object v0
.end method

.method public getAccuracy()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/huawei/opcollect/location/HwLocation;->accuracy:I

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/huawei/opcollect/location/HwLocation;->altitude:D

    return-wide v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/huawei/opcollect/location/HwLocation;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/huawei/opcollect/location/HwLocation;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/huawei/opcollect/location/HwLocation;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/huawei/opcollect/location/HwLocation;->detailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/huawei/opcollect/location/HwLocation;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/huawei/opcollect/location/HwLocation;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/huawei/opcollect/location/HwLocation;->longitude:D

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/huawei/opcollect/location/HwLocation;->priority:I

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/huawei/opcollect/location/HwLocation;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/huawei/opcollect/location/HwLocation;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/huawei/opcollect/location/HwLocation;->timestamp:J

    return-wide v0
.end method

.method public setAccuracy(I)V
    .locals 0
    .param p1, "accuracy"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/huawei/opcollect/location/HwLocation;->accuracy:I

    .line 134
    return-void
.end method

.method public setAltitude(D)V
    .locals 1
    .param p1, "altitude"    # D

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/huawei/opcollect/location/HwLocation;->altitude:D

    .line 62
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/huawei/opcollect/location/HwLocation;->city:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityCode"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/huawei/opcollect/location/HwLocation;->cityCode:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/huawei/opcollect/location/HwLocation;->country:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setDetailAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailAddress"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/huawei/opcollect/location/HwLocation;->detailAddress:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0
    .param p1, "district"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/huawei/opcollect/location/HwLocation;->district:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/huawei/opcollect/location/HwLocation;->latitude:D

    .line 54
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/huawei/opcollect/location/HwLocation;->longitude:D

    .line 46
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/huawei/opcollect/location/HwLocation;->priority:I

    .line 70
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/huawei/opcollect/location/HwLocation;->provider:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/huawei/opcollect/location/HwLocation;->province:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/huawei/opcollect/location/HwLocation;->timestamp:J

    .line 38
    return-void
.end method
