.class public interface abstract Lcom/huawei/hiai/awareness/service/IRequestCallBack;
.super Ljava/lang/Object;
.source "IRequestCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hiai/awareness/service/IRequestCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract onRequestResult(Lcom/huawei/hiai/awareness/service/RequestResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
