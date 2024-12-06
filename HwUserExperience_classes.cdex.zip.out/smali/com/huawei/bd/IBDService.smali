.class public interface abstract Lcom/huawei/bd/IBDService;
.super Ljava/lang/Object;
.source "IBDService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/bd/IBDService$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendAccumulativeData(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendAppActionData(Ljava/lang/String;ILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
