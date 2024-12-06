.class public interface abstract Lcom/huawei/android/totemweather/aidl/IRequestCallBack;
.super Ljava/lang/Object;
.source "IRequestCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/totemweather/aidl/IRequestCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract onRequestResult(Ljava/lang/String;Lcom/huawei/android/totemweather/aidl/RequestData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
