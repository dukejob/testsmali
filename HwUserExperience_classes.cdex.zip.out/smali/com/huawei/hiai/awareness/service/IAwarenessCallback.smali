.class public interface abstract Lcom/huawei/hiai/awareness/service/IAwarenessCallback;
.super Ljava/lang/Object;
.source "IAwarenessCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hiai/awareness/service/IAwarenessCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onErrorCallback(ILjava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onServiceRestarted(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
