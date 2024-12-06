.class Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAwarenessService.java"

# interfaces
.implements Lcom/huawei/hiai/awareness/service/IAwarenessService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput-object p1, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 695
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public checkServerVersion(I)Z
    .locals 6
    .param p1, "apiVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1148
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1151
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1153
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1154
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1155
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1158
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1161
    return v2

    .line 1158
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getAwarenessApiVersion()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1166
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1169
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1170
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1171
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1172
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1175
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1178
    return-object v2

    .line 1175
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCurrentAwareness(IZLandroid/os/Bundle;Ljava/lang/String;)Lcom/huawei/hiai/awareness/service/RequestResult;
    .locals 6
    .param p1, "type"    # I
    .param p2, "isCustom"    # Z
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "callerPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1185
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1188
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v5, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1190
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1191
    if-eqz p3, :cond_1

    .line 1192
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1193
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1198
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1199
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1200
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1201
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1202
    sget-object v3, Lcom/huawei/hiai/awareness/service/RequestResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hiai/awareness/service/RequestResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1209
    .local v2, "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1212
    return-object v2

    .end local v2    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_0
    move v3, v4

    .line 1190
    goto :goto_0

    .line 1196
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1209
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1205
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    goto :goto_2
.end method

.method public getCurrentStatus(I)Lcom/huawei/hiai/awareness/service/RequestResult;
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 709
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 712
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 713
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 715
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 716
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 717
    sget-object v3, Lcom/huawei/hiai/awareness/service/RequestResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hiai/awareness/service/RequestResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    .local v2, "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 727
    return-object v2

    .line 720
    .end local v2    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    goto :goto_0

    .line 724
    .end local v2    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getExtendFenceTriggerResult(Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Lcom/huawei/hiai/awareness/service/RequestResult;
    .locals 6
    .param p1, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "operationPI"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1342
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1345
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1346
    if-eqz p1, :cond_0

    .line 1347
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1348
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1353
    :goto_0
    if-eqz p2, :cond_1

    .line 1354
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1355
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1360
    :goto_1
    if-eqz p3, :cond_2

    .line 1361
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1362
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1367
    :goto_2
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1368
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1369
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1370
    sget-object v3, Lcom/huawei/hiai/awareness/service/RequestResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hiai/awareness/service/RequestResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1377
    .local v2, "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1380
    return-object v2

    .line 1351
    .end local v2    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1377
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1358
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1365
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1373
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    goto :goto_3
.end method

.method public getFenceTriggerResult(Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Lcom/huawei/hiai/awareness/service/RequestResult;
    .locals 6
    .param p1, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "operationPI"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1105
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1108
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1109
    if-eqz p1, :cond_0

    .line 1110
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1116
    :goto_0
    if-eqz p2, :cond_1

    .line 1117
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1123
    :goto_1
    if-eqz p3, :cond_2

    .line 1124
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1130
    :goto_2
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1131
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1132
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1133
    sget-object v3, Lcom/huawei/hiai/awareness/service/RequestResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hiai/awareness/service/RequestResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1140
    .local v2, "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1143
    return-object v2

    .line 1114
    .end local v2    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1140
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1121
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1128
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1136
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    goto :goto_3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 702
    const-string v0, "com.huawei.hiai.awareness.service.IAwarenessService"

    return-object v0
.end method

.method public getSupportAwarenessCapability(I)Lcom/huawei/hiai/awareness/service/RequestResult;
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1387
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1390
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1391
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1392
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1393
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1394
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1395
    sget-object v3, Lcom/huawei/hiai/awareness/service/RequestResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hiai/awareness/service/RequestResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1402
    .local v2, "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1405
    return-object v2

    .line 1398
    .end local v2    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    goto :goto_0

    .line 1402
    .end local v2    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isIntegrateSensorHub()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1525
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1528
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1529
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1530
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1531
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1534
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1537
    return v2

    .line 1534
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public registerAppLifeChangeFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 7
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "oprationPI"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1544
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1547
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1548
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/huawei/hiai/awareness/service/IRequestCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1549
    if-eqz p2, :cond_1

    .line 1550
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1551
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1556
    :goto_1
    if-eqz p3, :cond_2

    .line 1557
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1558
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1563
    :goto_2
    if-eqz p4, :cond_3

    .line 1564
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1565
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1570
    :goto_3
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1571
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1572
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 1575
    .local v2, "_result":Z
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1578
    return v2

    .line 1548
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1554
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1575
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1561
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 1568
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_4
    move v2, v3

    .line 1572
    goto :goto_4
.end method

.method public registerAppUseTotalTimeFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 7
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "operationPI"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 856
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 857
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 860
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 861
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/huawei/hiai/awareness/service/IRequestCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 862
    if-eqz p2, :cond_1

    .line 863
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 869
    :goto_1
    if-eqz p3, :cond_2

    .line 870
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 876
    :goto_2
    if-eqz p4, :cond_3

    .line 877
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 878
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 883
    :goto_3
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 884
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 885
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 888
    .local v2, "_result":Z
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 891
    return v2

    .line 861
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 867
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 888
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 874
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 881
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_4
    move v2, v3

    .line 885
    goto :goto_4
.end method

.method public registerBroadcastEventFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 7
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "operationPI"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1260
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1263
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1264
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/huawei/hiai/awareness/service/IRequestCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1265
    if-eqz p2, :cond_1

    .line 1266
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1267
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1272
    :goto_1
    if-eqz p3, :cond_2

    .line 1273
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1274
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1279
    :goto_2
    if-eqz p4, :cond_3

    .line 1280
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1281
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1286
    :goto_3
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1287
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1288
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 1291
    .local v2, "_result":Z
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1294
    return v2

    .line 1264
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1270
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1291
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1277
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 1284
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_4
    move v2, v3

    .line 1288
    goto :goto_4
.end method

.method public registerCustomLocationFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 7
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "oprationPI"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1219
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1222
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1223
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/huawei/hiai/awareness/service/IRequestCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1224
    if-eqz p2, :cond_1

    .line 1225
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1231
    :goto_1
    if-eqz p3, :cond_2

    .line 1232
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1233
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1238
    :goto_2
    if-eqz p4, :cond_3

    .line 1239
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1245
    :goto_3
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1246
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1247
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 1250
    .local v2, "_result":Z
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1253
    return v2

    .line 1223
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1229
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1250
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1236
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 1243
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_4
    move v2, v3

    .line 1247
    goto :goto_4
.end method

.method public registerDeviceStatusFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 7
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "oprationPI"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1453
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1456
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1457
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/huawei/hiai/awareness/service/IRequestCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1458
    if-eqz p2, :cond_1

    .line 1459
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1460
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1465
    :goto_1
    if-eqz p3, :cond_2

    .line 1466
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1467
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1472
    :goto_2
    if-eqz p4, :cond_3

    .line 1473
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1474
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1479
    :goto_3
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x15

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1480
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1481
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 1484
    .local v2, "_result":Z
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1487
    return v2

    .line 1457
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1463
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1484
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1470
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 1477
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_4
    move v2, v3

    .line 1481
    goto :goto_4
.end method

.method public registerDeviceUseTotalTimeFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 7
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "operationPI"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 938
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 939
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 942
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 943
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/huawei/hiai/awareness/service/IRequestCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 944
    if-eqz p2, :cond_1

    .line 945
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 951
    :goto_1
    if-eqz p3, :cond_2

    .line 952
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 958
    :goto_2
    if-eqz p4, :cond_3

    .line 959
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 960
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 965
    :goto_3
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 966
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 967
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 970
    .local v2, "_result":Z
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 973
    return v2

    .line 943
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 949
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 970
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 956
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 963
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_4
    move v2, v3

    .line 967
    goto :goto_4
.end method

.method public registerLocationFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 7
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "oprationPI"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 815
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 816
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 819
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 820
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/huawei/hiai/awareness/service/IRequestCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 821
    if-eqz p2, :cond_1

    .line 822
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 828
    :goto_1
    if-eqz p3, :cond_2

    .line 829
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 835
    :goto_2
    if-eqz p4, :cond_3

    .line 836
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 842
    :goto_3
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 843
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 844
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 847
    .local v2, "_result":Z
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 850
    return v2

    .line 820
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 826
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 847
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 833
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 840
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_4
    move v2, v3

    .line 844
    goto :goto_4
.end method

.method public registerMotionFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 7
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "oprationPI"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 734
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 737
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 738
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/huawei/hiai/awareness/service/IRequestCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 739
    if-eqz p2, :cond_1

    .line 740
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 746
    :goto_1
    if-eqz p3, :cond_2

    .line 747
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 753
    :goto_2
    if-eqz p4, :cond_3

    .line 754
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 760
    :goto_3
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 761
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 762
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 765
    .local v2, "_result":Z
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 768
    return v2

    .line 738
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 744
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 765
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 751
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 758
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_4
    move v2, v3

    .line 762
    goto :goto_4
.end method

.method public registerMovementFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 7
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "oprationPI"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1412
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1415
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1416
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/huawei/hiai/awareness/service/IRequestCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1417
    if-eqz p2, :cond_1

    .line 1418
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1419
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1424
    :goto_1
    if-eqz p3, :cond_2

    .line 1425
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1426
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1431
    :goto_2
    if-eqz p4, :cond_3

    .line 1432
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1433
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1438
    :goto_3
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1439
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1440
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 1443
    .local v2, "_result":Z
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1446
    return v2

    .line 1416
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1422
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1443
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1429
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 1436
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_4
    move v2, v3

    .line 1440
    goto :goto_4
.end method

.method public registerOneAppContinuousUseTimeFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 7
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "operationPI"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 898
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 901
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 902
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/huawei/hiai/awareness/service/IRequestCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 903
    if-eqz p2, :cond_1

    .line 904
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 910
    :goto_1
    if-eqz p3, :cond_2

    .line 911
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 917
    :goto_2
    if-eqz p4, :cond_3

    .line 918
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 919
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 924
    :goto_3
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 925
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 926
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 929
    .local v2, "_result":Z
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 932
    return v2

    .line 902
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 908
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 929
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 915
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 922
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_4
    move v2, v3

    .line 926
    goto :goto_4
.end method

.method public registerScreenUnlockFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 7
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "operationPI"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1021
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1024
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1025
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/huawei/hiai/awareness/service/IRequestCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1026
    if-eqz p2, :cond_1

    .line 1027
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1028
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1033
    :goto_1
    if-eqz p3, :cond_2

    .line 1034
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1040
    :goto_2
    if-eqz p4, :cond_3

    .line 1041
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1042
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1047
    :goto_3
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1048
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1049
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 1052
    .local v2, "_result":Z
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1055
    return v2

    .line 1025
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1031
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1052
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1038
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 1045
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_4
    move v2, v3

    .line 1049
    goto :goto_4
.end method

.method public registerScreenUnlockTotalNumberFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 7
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "operationPI"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 979
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 980
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 983
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 984
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/huawei/hiai/awareness/service/IRequestCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 985
    if-eqz p2, :cond_1

    .line 986
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 987
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 992
    :goto_1
    if-eqz p3, :cond_2

    .line 993
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 999
    :goto_2
    if-eqz p4, :cond_3

    .line 1000
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1006
    :goto_3
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1007
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1008
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 1011
    .local v2, "_result":Z
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1014
    return v2

    .line 984
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 990
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1011
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 997
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 1004
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_4
    move v2, v3

    .line 1008
    goto :goto_4
.end method

.method public registerTimeFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 7
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "oprationPI"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 775
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 778
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 779
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/huawei/hiai/awareness/service/IRequestCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 780
    if-eqz p2, :cond_1

    .line 781
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 787
    :goto_1
    if-eqz p3, :cond_2

    .line 788
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 794
    :goto_2
    if-eqz p4, :cond_3

    .line 795
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 796
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 801
    :goto_3
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 802
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 803
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 806
    .local v2, "_result":Z
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 809
    return v2

    .line 779
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 785
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 806
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 792
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 799
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_4
    move v2, v3

    .line 803
    goto :goto_4
.end method

.method public setReportPeriod(Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;)Lcom/huawei/hiai/awareness/service/RequestResult;
    .locals 6
    .param p1, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1494
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1497
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1498
    if-eqz p1, :cond_0

    .line 1499
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1500
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1505
    :goto_0
    iget-object v3, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1506
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1507
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1508
    sget-object v3, Lcom/huawei/hiai/awareness/service/RequestResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hiai/awareness/service/RequestResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1515
    .local v2, "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1518
    return-object v2

    .line 1503
    .end local v2    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1515
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1511
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/huawei/hiai/awareness/service/RequestResult;
    goto :goto_1
.end method

.method public unRegisterExtendFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 7
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "operationPI"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1301
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1304
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1305
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/huawei/hiai/awareness/service/IRequestCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1306
    if-eqz p2, :cond_1

    .line 1307
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1308
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Lcom/huawei/hiai/awareness/service/ExtendAwarenessFence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1313
    :goto_1
    if-eqz p3, :cond_2

    .line 1314
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1315
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1320
    :goto_2
    if-eqz p4, :cond_3

    .line 1321
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1322
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1327
    :goto_3
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x11

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1328
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1329
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 1332
    .local v2, "_result":Z
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1335
    return v2

    .line 1305
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1311
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1332
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1318
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 1325
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_4
    move v2, v3

    .line 1329
    goto :goto_4
.end method

.method public unRegisterFence(Lcom/huawei/hiai/awareness/service/IRequestCallBack;Lcom/huawei/hiai/awareness/service/AwarenessFence;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 7
    .param p1, "callback"    # Lcom/huawei/hiai/awareness/service/IRequestCallBack;
    .param p2, "awarenessFence"    # Lcom/huawei/hiai/awareness/service/AwarenessFence;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "operationPI"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1061
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1062
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1065
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.huawei.hiai.awareness.service.IAwarenessService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1066
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/huawei/hiai/awareness/service/IRequestCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1067
    if-eqz p2, :cond_1

    .line 1068
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Lcom/huawei/hiai/awareness/service/AwarenessFence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1074
    :goto_1
    if-eqz p3, :cond_2

    .line 1075
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1081
    :goto_2
    if-eqz p4, :cond_3

    .line 1082
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1083
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1088
    :goto_3
    iget-object v4, p0, Lcom/huawei/hiai/awareness/service/IAwarenessService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1089
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1090
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 1093
    .local v2, "_result":Z
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1096
    return v2

    .line 1066
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1072
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1093
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1079
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 1086
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_4
    move v2, v3

    .line 1090
    goto :goto_4
.end method
