.class public abstract Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub;
.super Landroid/os/Binder;
.source "IPowerKitApi.java"

# interfaces
.implements Lcom/huawei/android/powerkit/adapter/IPowerKitApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/powerkit/adapter/IPowerKitApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.android.powerkit.adapter.IPowerKitApi"

.field static final TRANSACTION_applyForResourceUse:I = 0x9

.field static final TRANSACTION_disableStateEvent:I = 0x8

.field static final TRANSACTION_enableStateEvent:I = 0x7

.field static final TRANSACTION_getCurrentFps:I = 0x3

.field static final TRANSACTION_getCurrentResolutionRatio:I = 0x2

.field static final TRANSACTION_getPowerKitVersion:I = 0x1

.field static final TRANSACTION_getPowerMode:I = 0xc

.field static final TRANSACTION_getPowerOptimizeType:I = 0xf

.field static final TRANSACTION_isUserSleeping:I = 0xb

.field static final TRANSACTION_notifyCallingModules:I = 0xa

.field static final TRANSACTION_registerMaintenanceTime:I = 0xd

.field static final TRANSACTION_registerSink:I = 0x5

.field static final TRANSACTION_setActiveState:I = 0x10

.field static final TRANSACTION_setFps:I = 0x4

.field static final TRANSACTION_setPowerOptimizeType:I = 0xe

.field static final TRANSACTION_unregisterSink:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.huawei.android.powerkit.adapter.IPowerKitApi"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/android/powerkit/adapter/IPowerKitApi;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.huawei.android.powerkit.adapter.IPowerKitApi"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/huawei/android/powerkit/adapter/IPowerKitApi;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
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
    .line 39
    const-string v20, "com.huawei.android.powerkit.adapter.IPowerKitApi"

    .line 40
    .local v20, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 243
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 44
    :sswitch_0
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v3, 0x1

    goto :goto_0

    .line 49
    :sswitch_1
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub;->getPowerKitVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 53
    .local v11, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    const/4 v3, 0x1

    goto :goto_0

    .line 59
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 62
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub;->getCurrentResolutionRatio(Ljava/lang/String;)F

    move-result v11

    .line 63
    .local v11, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeFloat(F)V

    .line 65
    const/4 v3, 0x1

    goto :goto_0

    .line 69
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":F
    :sswitch_3
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 72
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub;->getCurrentFps(Ljava/lang/String;)I

    move-result v11

    .line 73
    .local v11, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    const/4 v3, 0x1

    goto :goto_0

    .line 79
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":I
    :sswitch_4
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 83
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 84
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub;->setFps(Ljava/lang/String;I)I

    move-result v11

    .line 85
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v3, 0x1

    goto :goto_0

    .line 91
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v11    # "_result":I
    :sswitch_5
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/android/powerkit/adapter/IStateSink$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/powerkit/adapter/IStateSink;

    move-result-object v4

    .line 94
    .local v4, "_arg0":Lcom/huawei/android/powerkit/adapter/IStateSink;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub;->registerSink(Lcom/huawei/android/powerkit/adapter/IStateSink;)Z

    move-result v11

    .line 95
    .local v11, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v11, :cond_0

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 96
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 101
    .end local v4    # "_arg0":Lcom/huawei/android/powerkit/adapter/IStateSink;
    .end local v11    # "_result":Z
    :sswitch_6
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/android/powerkit/adapter/IStateSink$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/powerkit/adapter/IStateSink;

    move-result-object v4

    .line 104
    .restart local v4    # "_arg0":Lcom/huawei/android/powerkit/adapter/IStateSink;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub;->unregisterSink(Lcom/huawei/android/powerkit/adapter/IStateSink;)Z

    move-result v11

    .line 105
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v11, :cond_1

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 106
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 111
    .end local v4    # "_arg0":Lcom/huawei/android/powerkit/adapter/IStateSink;
    .end local v11    # "_result":Z
    :sswitch_7
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 114
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub;->enableStateEvent(I)Z

    move-result v11

    .line 115
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v11, :cond_2

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 116
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 121
    .end local v4    # "_arg0":I
    .end local v11    # "_result":Z
    :sswitch_8
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 124
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub;->disableStateEvent(I)Z

    move-result v11

    .line 125
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v11, :cond_3

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 126
    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    .line 131
    .end local v4    # "_arg0":I
    .end local v11    # "_result":Z
    :sswitch_9
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v5, 0x1

    .line 137
    .local v5, "_arg1":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 141
    .local v7, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 143
    .local v8, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg5":Ljava/lang/String;
    move-object/from16 v3, p0

    .line 144
    invoke-virtual/range {v3 .. v10}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub;->applyForResourceUse(Ljava/lang/String;ZLjava/lang/String;IJLjava/lang/String;)Z

    move-result v11

    .line 145
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v11, :cond_5

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 135
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":J
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_result":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    .line 146
    .restart local v5    # "_arg1":Z
    .restart local v6    # "_arg2":Ljava/lang/String;
    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":J
    .restart local v10    # "_arg5":Ljava/lang/String;
    .restart local v11    # "_result":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .line 151
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":J
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_result":Z
    :sswitch_a
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 155
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 158
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v2}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub;->notifyCallingModules(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v11

    .line 159
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v11, :cond_6

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 160
    :cond_6
    const/4 v3, 0x0

    goto :goto_7

    .line 165
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Z
    :sswitch_b
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 168
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub;->isUserSleeping(Ljava/lang/String;)Z

    move-result v11

    .line 169
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v11, :cond_7

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 170
    :cond_7
    const/4 v3, 0x0

    goto :goto_8

    .line 175
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Z
    :sswitch_c
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 178
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub;->getPowerMode(Ljava/lang/String;)I

    move-result v11

    .line 179
    .local v11, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 185
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":I
    :sswitch_d
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 189
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    const/4 v5, 0x1

    .line 191
    .local v5, "_arg1":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 193
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 195
    .local v16, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .restart local v8    # "_arg4":J
    move-object/from16 v12, p0

    move-object v13, v4

    move v14, v5

    move-object v15, v6

    move-wide/from16 v18, v8

    .line 196
    invoke-virtual/range {v12 .. v19}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub;->registerMaintenanceTime(Ljava/lang/String;ZLjava/lang/String;JJ)Z

    move-result v11

    .line 197
    .local v11, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v11, :cond_9

    const/4 v3, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 189
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg4":J
    .end local v11    # "_result":Z
    .end local v16    # "_arg3":J
    :cond_8
    const/4 v5, 0x0

    goto :goto_9

    .line 198
    .restart local v5    # "_arg1":Z
    .restart local v6    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg4":J
    .restart local v11    # "_result":Z
    .restart local v16    # "_arg3":J
    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    .line 203
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg4":J
    .end local v11    # "_result":Z
    .end local v16    # "_arg3":J
    :sswitch_e
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 207
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    const/4 v5, 0x1

    .line 209
    .restart local v5    # "_arg1":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 211
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 212
    .restart local v7    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub;->setPowerOptimizeType(Ljava/lang/String;ZII)Z

    move-result v11

    .line 213
    .restart local v11    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v11, :cond_b

    const/4 v3, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 207
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v11    # "_result":Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_b

    .line 214
    .restart local v5    # "_arg1":Z
    .restart local v6    # "_arg2":I
    .restart local v7    # "_arg3":I
    .restart local v11    # "_result":Z
    :cond_b
    const/4 v3, 0x0

    goto :goto_c

    .line 219
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v11    # "_result":Z
    :sswitch_f
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 222
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub;->getPowerOptimizeType(Ljava/lang/String;)I

    move-result v11

    .line 223
    .local v11, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 229
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":I
    :sswitch_10
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 233
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 235
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 236
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/huawei/android/powerkit/adapter/IPowerKitApi$Stub;->setActiveState(Ljava/lang/String;II)Z

    move-result v11

    .line 237
    .local v11, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    if-eqz v11, :cond_c

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 238
    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    .line 40
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
