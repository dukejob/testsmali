.class public abstract Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;
.super Landroid/os/Binder;
.source "IAwarenessService.java"

# interfaces
.implements Lcom/huawei/hiai/awareness/service/IAwarenessService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hiai/awareness/service/IAwarenessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.hiai.awareness.service.IAwarenessService"

.field static final TRANSACTION_checkServerVersion:I = 0xc

.field static final TRANSACTION_getAwarenessApiVersion:I = 0xd

.field static final TRANSACTION_getCurrentAwareness:I = 0xe

.field static final TRANSACTION_getCurrentStatus:I = 0x1

.field static final TRANSACTION_getExtendFenceTriggerResult:I = 0x12

.field static final TRANSACTION_getFenceTriggerResult:I = 0xb

.field static final TRANSACTION_getSupportAwarenessCapability:I = 0x13

.field static final TRANSACTION_isIntegrateSensorHub:I = 0x17

.field static final TRANSACTION_registerAppLifeChangeFence:I = 0x18

.field static final TRANSACTION_registerAppUseTotalTimeFence:I = 0x5

.field static final TRANSACTION_registerBroadcastEventFence:I = 0x10

.field static final TRANSACTION_registerCustomLocationFence:I = 0xf

.field static final TRANSACTION_registerDeviceStatusFence:I = 0x15

.field static final TRANSACTION_registerDeviceUseTotalTimeFence:I = 0x7

.field static final TRANSACTION_registerLocationFence:I = 0x4

.field static final TRANSACTION_registerMotionFence:I = 0x2

.field static final TRANSACTION_registerMovementFence:I = 0x14

.field static final TRANSACTION_registerOneAppContinuousUseTimeFence:I = 0x6

.field static final TRANSACTION_registerScreenUnlockFence:I = 0x9

.field static final TRANSACTION_registerScreenUnlockTotalNumberFence:I = 0x8

.field static final TRANSACTION_registerTimeFence:I = 0x3

.field static final TRANSACTION_setReportPeriod:I = 0x16

.field static final TRANSACTION_unRegisterExtendFence:I = 0x11

.field static final TRANSACTION_unRegisterFence:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/hiai/awareness/service/IAwarenessService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/hiai/awareness/service/IAwarenessService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/huawei/hiai/awareness/service/IAwarenessService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 687
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v5, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->getCurrentStatus(I)Lcom/huawei/hiai/awareness/service/RequestResult;

    move-result-object v4

    .line 51
    .local v4, "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v4, :cond_0

    .line 53
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {v4, p3, v6}, Lcom/huawei/hiai/awareness/service/RequestResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :sswitch_2
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hiai/awareness/service/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hiai/awareness/service/IRequestCallBack;

    move-result-object v0

    .line 67
    .local v0, "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    .line 68
    sget-object v7, Lcom/huawei/hiai/awareness/service/AwarenessFence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    .line 74
    .local v1, "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    .line 75
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 81
    .local v2, "_arg2":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    .line 82
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 87
    .local v3, "_arg3":Landroid/app/PendingIntent;
    :goto_3
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->registerMotionFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v4

    .line 88
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    .end local v4    # "_result":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    goto :goto_1

    .line 78
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_2

    .line 85
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_3

    .line 94
    .end local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_3
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hiai/awareness/service/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hiai/awareness/service/IRequestCallBack;

    move-result-object v0

    .line 98
    .restart local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    .line 99
    sget-object v7, Lcom/huawei/hiai/awareness/service/AwarenessFence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    .line 105
    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    .line 106
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 112
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_8

    .line 113
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 118
    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    :goto_6
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->registerTimeFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v4

    .line 119
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v4, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 102
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    .end local v4    # "_result":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    goto :goto_4

    .line 109
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_5

    .line 116
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_6

    .line 125
    .end local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_4
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hiai/awareness/service/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hiai/awareness/service/IRequestCallBack;

    move-result-object v0

    .line 129
    .restart local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_a

    .line 130
    sget-object v7, Lcom/huawei/hiai/awareness/service/AwarenessFence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    .line 136
    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_b

    .line 137
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 143
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c

    .line 144
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 149
    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    :goto_9
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->registerLocationFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v4

    .line 150
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v4, :cond_9

    move v5, v6

    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    .end local v4    # "_result":Z
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    goto :goto_7

    .line 140
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_8

    .line 147
    :cond_c
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_9

    .line 156
    .end local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_5
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hiai/awareness/service/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hiai/awareness/service/IRequestCallBack;

    move-result-object v0

    .line 160
    .restart local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_e

    .line 161
    sget-object v7, Lcom/huawei/hiai/awareness/service/AwarenessFence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    .line 167
    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_f

    .line 168
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 174
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_10

    .line 175
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 180
    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    :goto_c
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->registerAppUseTotalTimeFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v4

    .line 181
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v4, :cond_d

    move v5, v6

    :cond_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 164
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    .end local v4    # "_result":Z
    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    goto :goto_a

    .line 171
    :cond_f
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_b

    .line 178
    :cond_10
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_c

    .line 187
    .end local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_6
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hiai/awareness/service/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hiai/awareness/service/IRequestCallBack;

    move-result-object v0

    .line 191
    .restart local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_12

    .line 192
    sget-object v7, Lcom/huawei/hiai/awareness/service/AwarenessFence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    .line 198
    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_13

    .line 199
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 205
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_14

    .line 206
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 211
    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    :goto_f
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->registerOneAppContinuousUseTimeFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v4

    .line 212
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v4, :cond_11

    move v5, v6

    :cond_11
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 195
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    .end local v4    # "_result":Z
    :cond_12
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    goto :goto_d

    .line 202
    :cond_13
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_e

    .line 209
    :cond_14
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_f

    .line 218
    .end local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_7
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hiai/awareness/service/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hiai/awareness/service/IRequestCallBack;

    move-result-object v0

    .line 222
    .restart local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_16

    .line 223
    sget-object v7, Lcom/huawei/hiai/awareness/service/AwarenessFence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    .line 229
    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_17

    .line 230
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 236
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_18

    .line 237
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 242
    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    :goto_12
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->registerDeviceUseTotalTimeFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v4

    .line 243
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v4, :cond_15

    move v5, v6

    :cond_15
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 226
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    .end local v4    # "_result":Z
    :cond_16
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    goto :goto_10

    .line 233
    :cond_17
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_11

    .line 240
    :cond_18
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_12

    .line 249
    .end local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_8
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hiai/awareness/service/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hiai/awareness/service/IRequestCallBack;

    move-result-object v0

    .line 253
    .restart local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1a

    .line 254
    sget-object v7, Lcom/huawei/hiai/awareness/service/AwarenessFence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    .line 260
    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1b

    .line 261
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 267
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1c

    .line 268
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 273
    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    :goto_15
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->registerScreenUnlockTotalNumberFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v4

    .line 274
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v4, :cond_19

    move v5, v6

    :cond_19
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 257
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    .end local v4    # "_result":Z
    :cond_1a
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    goto :goto_13

    .line 264
    :cond_1b
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_14

    .line 271
    :cond_1c
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_15

    .line 280
    .end local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_9
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hiai/awareness/service/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hiai/awareness/service/IRequestCallBack;

    move-result-object v0

    .line 284
    .restart local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1e

    .line 285
    sget-object v7, Lcom/huawei/hiai/awareness/service/AwarenessFence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    .line 291
    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1f

    .line 292
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 298
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_20

    .line 299
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 304
    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    :goto_18
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->registerScreenUnlockFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v4

    .line 305
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    if-eqz v4, :cond_1d

    move v5, v6

    :cond_1d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 288
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    .end local v4    # "_result":Z
    :cond_1e
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    goto :goto_16

    .line 295
    :cond_1f
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_17

    .line 302
    :cond_20
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_18

    .line 311
    .end local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_a
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hiai/awareness/service/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hiai/awareness/service/IRequestCallBack;

    move-result-object v0

    .line 315
    .restart local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_22

    .line 316
    sget-object v7, Lcom/huawei/hiai/awareness/service/AwarenessFence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    .line 322
    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    :goto_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_23

    .line 323
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 329
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_24

    .line 330
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 335
    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    :goto_1b
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->unRegisterFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v4

    .line 336
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    if-eqz v4, :cond_21

    move v5, v6

    :cond_21
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 319
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    .end local v4    # "_result":Z
    :cond_22
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    goto :goto_19

    .line 326
    :cond_23
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_1a

    .line 333
    :cond_24
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_1b

    .line 342
    .end local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_b
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_25

    .line 345
    sget-object v7, Lcom/huawei/hiai/awareness/service/AwarenessFence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hiai/awareness/service/AwarenessFence;

    .line 351
    .local v0, "_arg0":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_26

    .line 352
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 358
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_27

    .line 359
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 364
    .local v2, "_arg2":Landroid/app/PendingIntent;
    :goto_1e
    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->getFenceTriggerResult(Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Lcom/huawei/hiai/awareness/service/RequestResult;

    move-result-object v4

    .line 365
    .local v4, "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    if-eqz v4, :cond_28

    .line 367
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    invoke-virtual {v4, p3, v6}, Lcom/huawei/hiai/awareness/service/RequestResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 348
    .end local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Landroid/app/PendingIntent;
    .end local v4    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_25
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    goto :goto_1c

    .line 355
    :cond_26
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_1d

    .line 362
    :cond_27
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_1e

    .line 371
    .restart local v4    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_28
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 377
    .end local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Landroid/app/PendingIntent;
    .end local v4    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :sswitch_c
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 380
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->checkServerVersion(I)Z

    move-result v4

    .line 381
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    if-eqz v4, :cond_29

    move v5, v6

    :cond_29
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 387
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_d
    const-string v5, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->getAwarenessApiVersion()Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 395
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 399
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2a

    move v1, v6

    .line 401
    .local v1, "_arg1":Z
    :goto_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2b

    .line 402
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 408
    .local v2, "_arg2":Landroid/os/Bundle;
    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->getCurrentAwareness(IZLandroid/os/Bundle;Ljava/lang/String;)Lcom/huawei/hiai/awareness/service/RequestResult;

    move-result-object v4

    .line 410
    .local v4, "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    if-eqz v4, :cond_2c

    .line 412
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    invoke-virtual {v4, p3, v6}, Lcom/huawei/hiai/awareness/service/RequestResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_2a
    move v1, v5

    .line 399
    goto :goto_1f

    .line 405
    .restart local v1    # "_arg1":Z
    :cond_2b
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_20

    .line 416
    .restart local v3    # "_arg3":Ljava/lang/String;
    .restart local v4    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_2c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 422
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :sswitch_f
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hiai/awareness/service/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hiai/awareness/service/IRequestCallBack;

    move-result-object v0

    .line 426
    .local v0, "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2e

    .line 427
    sget-object v7, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    .line 433
    .local v1, "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    :goto_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2f

    .line 434
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 440
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_30

    .line 441
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 446
    .local v3, "_arg3":Landroid/app/PendingIntent;
    :goto_23
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->registerCustomLocationFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v4

    .line 447
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    if-eqz v4, :cond_2d

    move v5, v6

    :cond_2d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 430
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    .end local v4    # "_result":Z
    :cond_2e
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    goto :goto_21

    .line 437
    :cond_2f
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_22

    .line 444
    :cond_30
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_23

    .line 453
    .end local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_10
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hiai/awareness/service/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hiai/awareness/service/IRequestCallBack;

    move-result-object v0

    .line 457
    .restart local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_32

    .line 458
    sget-object v7, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    .line 464
    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_33

    .line 465
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 471
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_34

    .line 472
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 477
    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    :goto_26
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->registerBroadcastEventFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v4

    .line 478
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    if-eqz v4, :cond_31

    move v5, v6

    :cond_31
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 461
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    .end local v4    # "_result":Z
    :cond_32
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    goto :goto_24

    .line 468
    :cond_33
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_25

    .line 475
    :cond_34
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_26

    .line 484
    .end local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_11
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hiai/awareness/service/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hiai/awareness/service/IRequestCallBack;

    move-result-object v0

    .line 488
    .restart local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_36

    .line 489
    sget-object v7, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    .line 495
    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    :goto_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_37

    .line 496
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 502
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_38

    .line 503
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 508
    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    :goto_29
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->unRegisterExtendFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v4

    .line 509
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    if-eqz v4, :cond_35

    move v5, v6

    :cond_35
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 492
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    .end local v4    # "_result":Z
    :cond_36
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    goto :goto_27

    .line 499
    :cond_37
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_28

    .line 506
    :cond_38
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_29

    .line 515
    .end local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_12
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_39

    .line 518
    sget-object v7, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    .line 524
    .local v0, "_arg0":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    :goto_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3a

    .line 525
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 531
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3b

    .line 532
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 537
    .local v2, "_arg2":Landroid/app/PendingIntent;
    :goto_2c
    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->getExtendFenceTriggerResult(Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Lcom/huawei/hiai/awareness/service/RequestResult;

    move-result-object v4

    .line 538
    .local v4, "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    if-eqz v4, :cond_3c

    .line 540
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    invoke-virtual {v4, p3, v6}, Lcom/huawei/hiai/awareness/service/RequestResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 521
    .end local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Landroid/app/PendingIntent;
    .end local v4    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_39
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    goto :goto_2a

    .line 528
    :cond_3a
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_2b

    .line 535
    :cond_3b
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_2c

    .line 544
    .restart local v4    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_3c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 550
    .end local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Landroid/app/PendingIntent;
    .end local v4    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :sswitch_13
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 553
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->getSupportAwarenessCapability(I)Lcom/huawei/hiai/awareness/service/RequestResult;

    move-result-object v4

    .line 554
    .restart local v4    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    if-eqz v4, :cond_3d

    .line 556
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    invoke-virtual {v4, p3, v6}, Lcom/huawei/hiai/awareness/service/RequestResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 560
    :cond_3d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 566
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :sswitch_14
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hiai/awareness/service/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hiai/awareness/service/IRequestCallBack;

    move-result-object v0

    .line 570
    .local v0, "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3f

    .line 571
    sget-object v7, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    .line 577
    .local v1, "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    :goto_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_40

    .line 578
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 584
    .local v2, "_arg2":Landroid/os/Bundle;
    :goto_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_41

    .line 585
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 590
    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    :goto_2f
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->registerMovementFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v4

    .line 591
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    if-eqz v4, :cond_3e

    move v5, v6

    :cond_3e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 574
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    .end local v4    # "_result":Z
    :cond_3f
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    goto :goto_2d

    .line 581
    :cond_40
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_2e

    .line 588
    :cond_41
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_2f

    .line 597
    .end local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_15
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hiai/awareness/service/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hiai/awareness/service/IRequestCallBack;

    move-result-object v0

    .line 601
    .restart local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_43

    .line 602
    sget-object v7, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    .line 608
    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    :goto_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_44

    .line 609
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 615
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_45

    .line 616
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 621
    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    :goto_32
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->registerDeviceStatusFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v4

    .line 622
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    if-eqz v4, :cond_42

    move v5, v6

    :cond_42
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 605
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    .end local v4    # "_result":Z
    :cond_43
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    goto :goto_30

    .line 612
    :cond_44
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_31

    .line 619
    :cond_45
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_32

    .line 628
    .end local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_16
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_46

    .line 631
    sget-object v7, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    .line 636
    .local v0, "_arg0":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    :goto_33
    invoke-virtual {p0, v0}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->setReportPeriod(Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;)Lcom/huawei/hiai/awareness/service/RequestResult;

    move-result-object v4

    .line 637
    .local v4, "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    if-eqz v4, :cond_47

    .line 639
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    invoke-virtual {v4, p3, v6}, Lcom/huawei/hiai/awareness/service/RequestResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 634
    .end local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .end local v4    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_46
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    goto :goto_33

    .line 643
    .restart local v4    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_47
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 649
    .end local v0    # "_arg0":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .end local v4    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :sswitch_17
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->isIntegrateSensorHub()Z

    move-result v4

    .line 651
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    if-eqz v4, :cond_48

    move v5, v6

    :cond_48
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 657
    .end local v4    # "_result":Z
    :sswitch_18
    const-string v7, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hiai/awareness/service/IRequestCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hiai/awareness/service/IRequestCallBack;

    move-result-object v0

    .line 661
    .local v0, "_arg0":Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4a

    .line 662
    sget-object v7, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;

    .line 668
    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    :goto_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4b

    .line 669
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 675
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4c

    .line 676
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 681
    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    :goto_36
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;->registerAppLifeChangeFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v4

    .line 682
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    if-eqz v4, :cond_49

    move v5, v6

    :cond_49
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 665
    .end local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    .end local v4    # "_result":Z
    :cond_4a
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    goto :goto_34

    .line 672
    :cond_4b
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_35

    .line 679
    :cond_4c
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_36

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
