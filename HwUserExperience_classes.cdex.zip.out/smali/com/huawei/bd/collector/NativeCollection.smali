.class public Lcom/huawei/bd/collector/NativeCollection;
.super Ljava/lang/Object;
.source "NativeCollection.java"


# static fields
.field private static final INTERFACE_TOKEN:Ljava/lang/String; = "android.os.IJankIoInfo"

.field private static final JANK_SERVICE:Ljava/lang/String; = "ioinfo"

.field private static final MAX_NO_SUPPORTED_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "BD.NativeCollection"

.field private static final TRANS_CODE_GET_CPU_OL:I = 0x9

.field private static final TRANS_CODE_GET_LMK_INFO:I = 0xa

.field private static final TRANS_CODE_GET_PATH_SIZE:I = 0x3


# instance fields
.field private volatile jankService:Landroid/os/IBinder;

.field private notSupportedCount:I

.field private volatile powerProfileService:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/huawei/bd/collector/NativeCollection;->jankService:Landroid/os/IBinder;

    .line 40
    iput-object v0, p0, Lcom/huawei/bd/collector/NativeCollection;->powerProfileService:Landroid/os/IBinder;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/bd/collector/NativeCollection;->notSupportedCount:I

    return-void
.end method


# virtual methods
.method public getJankService()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huawei/bd/collector/NativeCollection;->jankService:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 51
    const-string v0, "ioinfo"

    invoke-static {v0}, Lcom/huawei/android/os/ServiceManagerEx;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/bd/collector/NativeCollection;->jankService:Landroid/os/IBinder;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/huawei/bd/collector/NativeCollection;->jankService:Landroid/os/IBinder;

    return-object v0
.end method

.method public getPathSize(Ljava/lang/String;)J
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 110
    const-wide/16 v4, 0x0

    .line 111
    .local v4, "size":J
    invoke-virtual {p0}, Lcom/huawei/bd/collector/NativeCollection;->getJankService()Landroid/os/IBinder;

    move-result-object v3

    .line 112
    .local v3, "service":Landroid/os/IBinder;
    if-nez v3, :cond_0

    .line 113
    const-wide/16 v6, -0x1

    .line 133
    :goto_0
    return-wide v6

    .line 116
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 117
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 119
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v6, "android.os.IJankIoInfo"

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-interface {v3, v6, v0, v2, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 123
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 129
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :goto_1
    move-wide v6, v4

    .line 133
    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    iget v6, p0, Lcom/huawei/bd/collector/NativeCollection;->notSupportedCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/huawei/bd/collector/NativeCollection;->notSupportedCount:I

    .line 127
    const-string v6, "BD.NativeCollection"

    const-string v7, "RemoteException : getPathSize"

    invoke-static {v6, v7}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 129
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 131
    throw v6
.end method

.method public getPowerProfileService()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/huawei/bd/collector/NativeCollection;->powerProfileService:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 63
    const-string v0, "powerprofile"

    invoke-static {v0}, Lcom/huawei/android/os/ServiceManagerEx;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/bd/collector/NativeCollection;->powerProfileService:Landroid/os/IBinder;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/huawei/bd/collector/NativeCollection;->powerProfileService:Landroid/os/IBinder;

    return-object v0
.end method

.method public isDumpPowerProfile(Ljava/io/FileDescriptor;)Z
    .locals 6
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, "isSuccess":Z
    invoke-virtual {p0}, Lcom/huawei/bd/collector/NativeCollection;->getPowerProfileService()Landroid/os/IBinder;

    move-result-object v2

    .line 77
    .local v2, "profileService":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 79
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, p1, v3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    const/4 v1, 0x1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BD.NativeCollection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isJankRunning()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/huawei/bd/collector/NativeCollection;->getJankService()Landroid/os/IBinder;

    move-result-object v0

    .line 95
    .local v0, "service":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    iget v2, p0, Lcom/huawei/bd/collector/NativeCollection;->notSupportedCount:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_0

    .line 100
    const/4 v1, 0x1

    goto :goto_0
.end method
