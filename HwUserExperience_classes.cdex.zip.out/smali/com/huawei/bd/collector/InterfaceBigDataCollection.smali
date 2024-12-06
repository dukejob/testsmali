.class public interface abstract Lcom/huawei/bd/collector/InterfaceBigDataCollection;
.super Ljava/lang/Object;
.source "InterfaceBigDataCollection.java"


# virtual methods
.method public abstract getAllInstalledApps(Landroid/content/Context;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/bd/collector/AppDataModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableMemory(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getAvailableSpace(Ljava/lang/String;)J
.end method

.method public abstract getBuildNumber()Ljava/lang/String;
.end method

.method public abstract getDeviceName()Ljava/lang/String;
.end method

.method public abstract getEmuiVersion()Ljava/lang/String;
.end method

.method public abstract getFontScale(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getImsi(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getInputMethod(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getNetworkName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getNetworkType(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getRootState(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getScreenBrightness(Landroid/content/Context;Z)Ljava/lang/String;
.end method

.method public abstract getScreenBrightnessMode(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getStorageFree(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getStorageTotal(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getTotalSpace(Ljava/lang/String;)J
.end method

.method public abstract getUserExperienceSwitch(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getWifiState(Landroid/content/Context;)Ljava/lang/String;
.end method
