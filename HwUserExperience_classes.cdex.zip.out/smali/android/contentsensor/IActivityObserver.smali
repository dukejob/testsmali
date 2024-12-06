.class public interface abstract Landroid/contentsensor/IActivityObserver;
.super Ljava/lang/Object;
.source "IActivityObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/contentsensor/IActivityObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract activityPaused(IILandroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract activityResumed(IILandroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
