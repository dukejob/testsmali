.class public interface abstract Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack;
.super Ljava/lang/Object;
.source "IMSDPMovementStatusChangeCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/msdp/movement/IMSDPMovementStatusChangeCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract onActivityChanged(ILcom/huawei/msdp/movement/HwMSDPMovementChangeEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
