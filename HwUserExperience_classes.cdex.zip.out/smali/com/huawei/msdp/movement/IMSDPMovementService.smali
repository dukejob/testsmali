.class public interface abstract Lcom/huawei/msdp/movement/IMSDPMovementService;
.super Ljava/lang/Object;
.source "IMSDPMovementService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/msdp/movement/IMSDPMovementService$Stub;
    }
.end annotation


# virtual methods
.method public abstract disableMovementEvent(ILjava/lang/String;Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enableMovementEvent(ILjava/lang/String;Ljava/lang/String;IJLcom/huawei/msdp/movement/HwMSDPOtherParameters;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract exitEnvironment(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/msdp/movement/HwMSDPOtherParameters;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract flush()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getARVersion(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCurrentMovement(ILjava/lang/String;)Lcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getServcieVersion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSupportedModule()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSupportedMovements(I)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract initEnvironment(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/msdp/movement/HwMSDPOtherParameters;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerSink(Ljava/lang/String;Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterSink(Ljava/lang/String;Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
