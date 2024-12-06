.class public abstract Lcom/huawei/msdp/movement/IMSDPMovementService$Stub;
.super Landroid/os/Binder;
.source "IMSDPMovementService.java"

# interfaces
.implements Lcom/huawei/msdp/movement/IMSDPMovementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/msdp/movement/IMSDPMovementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/msdp/movement/IMSDPMovementService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.msdp.movement.IMSDPMovementService"

.field static final TRANSACTION_disableMovementEvent:I = 0x7

.field static final TRANSACTION_enableMovementEvent:I = 0x6

.field static final TRANSACTION_exitEnvironment:I = 0xb

.field static final TRANSACTION_flush:I = 0x9

.field static final TRANSACTION_getARVersion:I = 0xc

.field static final TRANSACTION_getCurrentMovement:I = 0x8

.field static final TRANSACTION_getServcieVersion:I = 0x1

.field static final TRANSACTION_getSupportedModule:I = 0x2

.field static final TRANSACTION_getSupportedMovements:I = 0x3

.field static final TRANSACTION_initEnvironment:I = 0xa

.field static final TRANSACTION_registerSink:I = 0x4

.field static final TRANSACTION_unregisterSink:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.huawei.msdp.movement.IMSDPMovementService"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/msdp/movement/IMSDPMovementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/msdp/movement/IMSDPMovementService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.huawei.msdp.movement.IMSDPMovementService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/msdp/movement/IMSDPMovementService;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/huawei/msdp/movement/IMSDPMovementService;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/huawei/msdp/movement/IMSDPMovementService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/huawei/msdp/movement/IMSDPMovementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 47
    :sswitch_0
    const-string v1, "com.huawei.msdp.movement.IMSDPMovementService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v1, "com.huawei.msdp.movement.IMSDPMovementService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/huawei/msdp/movement/IMSDPMovementService$Stub;->getServcieVersion()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v1, "com.huawei.msdp.movement.IMSDPMovementService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/huawei/msdp/movement/IMSDPMovementService$Stub;->getSupportedModule()I

    move-result v0

    .line 62
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v0    # "_result":I
    :sswitch_3
    const-string v1, "com.huawei.msdp.movement.IMSDPMovementService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 71
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/huawei/msdp/movement/IMSDPMovementService$Stub;->getSupportedMovements(I)[Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 78
    .end local v0    # "_result":[Ljava/lang/String;
    .end local v2    # "_arg0":I
    :sswitch_4
    const-string v1, "com.huawei.msdp.movement.IMSDPMovementService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;

    move-result-object v3

    .line 83
    .local v3, "_arg1":Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;
    invoke-virtual {p0, v2, v3}, Lcom/huawei/msdp/movement/IMSDPMovementService$Stub;->registerSink(Ljava/lang/String;Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;)Z

    move-result v0

    .line 84
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v0, :cond_0

    move v1, v9

    :goto_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v1, v10

    goto :goto_1

    .line 90
    .end local v0    # "_result":Z
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;
    :sswitch_5
    const-string v1, "com.huawei.msdp.movement.IMSDPMovementService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;

    move-result-object v3

    .line 95
    .restart local v3    # "_arg1":Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;
    invoke-virtual {p0, v2, v3}, Lcom/huawei/msdp/movement/IMSDPMovementService$Stub;->unregisterSink(Ljava/lang/String;Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;)Z

    move-result v0

    .line 96
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v0, :cond_1

    move v10, v9

    :cond_1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 102
    .end local v0    # "_result":Z
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;
    :sswitch_6
    const-string v1, "com.huawei.msdp.movement.IMSDPMovementService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 112
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 114
    .local v6, "_arg4":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    sget-object v1, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    .local v8, "_arg5":Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
    :goto_2
    move-object v1, p0

    .line 120
    invoke-virtual/range {v1 .. v8}, Lcom/huawei/msdp/movement/IMSDPMovementService$Stub;->enableMovementEvent(ILjava/lang/String;Ljava/lang/String;IJLcom/huawei/msdp/movement/HwMSDPOtherParameters;)Z

    move-result v0

    .line 121
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v0, :cond_2

    move v10, v9

    :cond_2
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v0    # "_result":Z
    .end local v8    # "_arg5":Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "_arg5":Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
    goto :goto_2

    .line 127
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":J
    .end local v8    # "_arg5":Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
    :sswitch_7
    const-string v1, "com.huawei.msdp.movement.IMSDPMovementService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 133
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 135
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 136
    .restart local v5    # "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/huawei/msdp/movement/IMSDPMovementService$Stub;->disableMovementEvent(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 137
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v0, :cond_4

    move v10, v9

    :cond_4
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 143
    .end local v0    # "_result":Z
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    :sswitch_8
    const-string v1, "com.huawei.msdp.movement.IMSDPMovementService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 148
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/huawei/msdp/movement/IMSDPMovementService$Stub;->getCurrentMovement(ILjava/lang/String;)Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;

    move-result-object v0

    .line 149
    .local v0, "_result":Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v0, :cond_5

    .line 151
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    invoke-virtual {v0, p3, v9}, Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 155
    :cond_5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 161
    .end local v0    # "_result":Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_9
    const-string v1, "com.huawei.msdp.movement.IMSDPMovementService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/huawei/msdp/movement/IMSDPMovementService$Stub;->flush()Z

    move-result v0

    .line 163
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v0, :cond_6

    move v10, v9

    :cond_6
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 169
    .end local v0    # "_result":Z
    :sswitch_a
    const-string v1, "com.huawei.msdp.movement.IMSDPMovementService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 175
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 176
    sget-object v1, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    .line 181
    .local v4, "_arg2":Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
    :goto_3
    invoke-virtual {p0, v2, v3, v4}, Lcom/huawei/msdp/movement/IMSDPMovementService$Stub;->initEnvironment(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/msdp/movement/HwMSDPOtherParameters;)Z

    move-result v0

    .line 182
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v0, :cond_7

    move v10, v9

    :cond_7
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 179
    .end local v0    # "_result":Z
    .end local v4    # "_arg2":Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
    goto :goto_3

    .line 188
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
    :sswitch_b
    const-string v1, "com.huawei.msdp.movement.IMSDPMovementService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 194
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 195
    sget-object v1, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/msdp/movement/HwMSDPOtherParameters;

    .line 200
    .restart local v4    # "_arg2":Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
    :goto_4
    invoke-virtual {p0, v2, v3, v4}, Lcom/huawei/msdp/movement/IMSDPMovementService$Stub;->exitEnvironment(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/msdp/movement/HwMSDPOtherParameters;)Z

    move-result v0

    .line 201
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v0, :cond_9

    move v10, v9

    :cond_9
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 198
    .end local v0    # "_result":Z
    .end local v4    # "_arg2":Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
    goto :goto_4

    .line 207
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/huawei/msdp/movement/HwMSDPOtherParameters;
    :sswitch_c
    const-string v1, "com.huawei.msdp.movement.IMSDPMovementService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 212
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/huawei/msdp/movement/IMSDPMovementService$Stub;->getARVersion(Ljava/lang/String;I)I

    move-result v0

    .line 213
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
