.class public Lcom/huawei/bd/events/RomInfoEvent;
.super Lcom/huawei/bd/events/BaseEvent;
.source "RomInfoEvent.java"

# interfaces
.implements Lcom/huawei/bd/events/EventFormatInterface;


# static fields
.field private static final SECOND_INDEX:I = 0x2

.field private static final THIRD_INDEX:I = 0x3


# instance fields
.field private deviceName:Ljava/lang/String;

.field private emuiVersion:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private opta:I

.field private optb:I

.field private romVersion:Ljava/lang/String;

.field private sn:Ljava/lang/String;

.field private wifiMac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/huawei/bd/events/BaseEvent;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic encrypt()Lcom/huawei/bd/events/BaseEvent;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/huawei/bd/events/RomInfoEvent;->encrypt()Lcom/huawei/bd/events/RomInfoEvent;

    move-result-object v0

    return-object v0
.end method

.method public encrypt()Lcom/huawei/bd/events/RomInfoEvent;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/bd/events/RomInfoEvent;->imei:Ljava/lang/String;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/huawei/bd/events/RomInfoEvent;->wifiMac:Ljava/lang/String;

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/huawei/bd/events/RomInfoEvent;->imsi:Ljava/lang/String;

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/huawei/bd/events/RomInfoEvent;->sn:Ljava/lang/String;

    aput-object v2, v0, v6

    .line 115
    .local v0, "encryptFields":[Ljava/lang/String;
    array-length v1, v0

    .line 116
    .local v1, "encryptNum":I
    invoke-virtual {p0, v0}, Lcom/huawei/bd/events/RomInfoEvent;->encrypt([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ne v2, v1, :cond_0

    .line 118
    aget-object v2, v0, v3

    iput-object v2, p0, Lcom/huawei/bd/events/RomInfoEvent;->imei:Ljava/lang/String;

    .line 119
    aget-object v2, v0, v4

    iput-object v2, p0, Lcom/huawei/bd/events/RomInfoEvent;->wifiMac:Ljava/lang/String;

    .line 120
    aget-object v2, v0, v5

    iput-object v2, p0, Lcom/huawei/bd/events/RomInfoEvent;->imsi:Ljava/lang/String;

    .line 121
    aget-object v2, v0, v6

    iput-object v2, p0, Lcom/huawei/bd/events/RomInfoEvent;->sn:Ljava/lang/String;

    .line 123
    :cond_0
    return-object p0
.end method

.method public format()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 93
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "a"

    iget-object v2, p0, Lcom/huawei/bd/events/RomInfoEvent;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "k"

    iget-object v2, p0, Lcom/huawei/bd/events/RomInfoEvent;->sn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "b"

    iget-object v2, p0, Lcom/huawei/bd/events/RomInfoEvent;->wifiMac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "c"

    iget-object v2, p0, Lcom/huawei/bd/events/RomInfoEvent;->imsi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "d"

    iget-object v2, p0, Lcom/huawei/bd/events/RomInfoEvent;->romVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "e"

    iget-object v2, p0, Lcom/huawei/bd/events/RomInfoEvent;->emuiVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "f"

    iget-object v2, p0, Lcom/huawei/bd/events/RomInfoEvent;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "g"

    iget v2, p0, Lcom/huawei/bd/events/RomInfoEvent;->opta:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v1, "h"

    iget v2, p0, Lcom/huawei/bd/events/RomInfoEvent;->optb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v1, "i"

    invoke-virtual {p0}, Lcom/huawei/bd/events/RomInfoEvent;->getRecordTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "j"

    invoke-virtual {p0}, Lcom/huawei/bd/events/RomInfoEvent;->getCipher()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x3

    return v0
.end method

.method public getWiFiMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/huawei/bd/events/RomInfoEvent;->wifiMac:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/huawei/bd/events/RomInfoEvent;->deviceName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setEmuiVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "emuiVersion"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/huawei/bd/events/RomInfoEvent;->emuiVersion:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setImeiCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "imeiCode"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/huawei/bd/events/RomInfoEvent;->imei:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setImsiCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "imsiCode"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/huawei/bd/events/RomInfoEvent;->imsi:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setOpta(I)V
    .locals 0
    .param p1, "opta"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/huawei/bd/events/RomInfoEvent;->opta:I

    .line 80
    return-void
.end method

.method public setOptb(I)V
    .locals 0
    .param p1, "optb"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/huawei/bd/events/RomInfoEvent;->optb:I

    .line 84
    return-void
.end method

.method public setRomVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "romVersion"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/huawei/bd/events/RomInfoEvent;->romVersion:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setSnCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "snCode"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/huawei/bd/events/RomInfoEvent;->sn:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setWiFiMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "wifiMacCode"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/huawei/bd/events/RomInfoEvent;->wifiMac:Ljava/lang/String;

    .line 48
    return-void
.end method
