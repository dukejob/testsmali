.class public interface abstract Lcom/huawei/android/powerkit/adapter/IStateSink;
.super Ljava/lang/Object;
.source "IStateSink.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/powerkit/adapter/IStateSink$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPowerOverUsing(Ljava/lang/String;IJJLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
