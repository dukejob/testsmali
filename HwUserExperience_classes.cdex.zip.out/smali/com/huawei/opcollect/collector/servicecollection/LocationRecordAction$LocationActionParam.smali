.class Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;
.super Lcom/huawei/opcollect/strategy/AbsActionParam;
.source "LocationRecordAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationActionParam"
.end annotation


# instance fields
.field private hwLocation:Lcom/huawei/opcollect/location/HwLocation;


# direct methods
.method constructor <init>(Lcom/huawei/opcollect/location/HwLocation;Z)V
    .locals 0
    .param p1, "hwLocation"    # Lcom/huawei/opcollect/location/HwLocation;
    .param p2, "checkMinInterval"    # Z

    .prologue
    .line 482
    invoke-direct {p0, p2}, Lcom/huawei/opcollect/strategy/AbsActionParam;-><init>(Z)V

    .line 483
    iput-object p1, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;->hwLocation:Lcom/huawei/opcollect/location/HwLocation;

    .line 484
    return-void
.end method


# virtual methods
.method public getHwLocation()Lcom/huawei/opcollect/location/HwLocation;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;->hwLocation:Lcom/huawei/opcollect/location/HwLocation;

    return-object v0
.end method

.method public setHwLocation(Lcom/huawei/opcollect/location/HwLocation;)V
    .locals 0
    .param p1, "hwLocation"    # Lcom/huawei/opcollect/location/HwLocation;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;->hwLocation:Lcom/huawei/opcollect/location/HwLocation;

    .line 492
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationActionParam{hwLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/opcollect/collector/servicecollection/LocationRecordAction$LocationActionParam;->hwLocation:Lcom/huawei/opcollect/location/HwLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 498
    invoke-super {p0}, Lcom/huawei/opcollect/strategy/AbsActionParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    return-object v0
.end method
