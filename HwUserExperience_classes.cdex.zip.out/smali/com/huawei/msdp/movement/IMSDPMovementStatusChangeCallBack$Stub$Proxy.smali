.class Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMSDPMovementStatusChangeCallBack.java"

# interfaces
.implements Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack$Stub;
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
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 74
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "com.huawei.msdp.movement.IMSDPMovementStatusChangeCallBack"

    return-object v0
.end method

.method public onActivityChanged(ILcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "event"    # Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 89
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 91
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.huawei.msdp.movement.IMSDPMovementStatusChangeCallBack"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    if-eqz p2, :cond_0

    .line 94
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 100
    :goto_0
    iget-object v2, p0, Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 107
    return-void

    .line 98
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
