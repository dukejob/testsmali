.class public final Lcom/huawei/bd/utils/ConfigUpdateFileZipper;
.super Ljava/lang/Object;
.source "ConfigUpdateFileZipper.java"


# static fields
.field private static final CONFIG_FILE_NOT_EXIST:J = -0x1L

.field private static final INVIALID_SIZE:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static desDir:Ljava/lang/String;

.field private static desFile:Ljava/lang/String;

.field private static updateDesDir:Ljava/lang/String;

.field private static zipFileManager:Lcom/huawei/bd/utils/ZipFileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->TAG:Ljava/lang/String;

    .line 26
    const-string v0, "ue_event_list.zip"

    sput-object v0, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->desFile:Ljava/lang/String;

    .line 30
    const-string v0, "/etc/hiview/"

    sput-object v0, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->desDir:Ljava/lang/String;

    .line 32
    const-string v0, "/system/hiview/"

    sput-object v0, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->updateDesDir:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static doUnzipFile(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    sget-object v3, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->TAG:Ljava/lang/String;

    const-string v4, "context is null"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->updateDesDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->desFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "preferredPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->desDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->desFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "alternativePath":Ljava/lang/String;
    invoke-static {p0}, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->isLoadDataDir(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 77
    sget-object v3, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->TAG:Ljava/lang/String;

    const-string v4, "load inner\'s zip"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->desDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->desFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->updateDesDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->desFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v2, "ueConfigZipFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 83
    sget-object v3, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->TAG:Ljava/lang/String;

    const-string v4, "zip file is empty, unzip another zip file"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v2, Ljava/io/File;

    .end local v2    # "ueConfigZipFile":Ljava/io/File;
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .restart local v2    # "ueConfigZipFile":Ljava/io/File;
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 87
    sget-object v3, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->TAG:Ljava/lang/String;

    const-string v4, "both zip config file is empty"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_5

    .line 91
    :cond_4
    sget-object v3, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->TAG:Ljava/lang/String;

    const-string v4, "zip config file can\'t read"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :cond_5
    new-instance v3, Lcom/huawei/bd/utils/ZipFileManager;

    invoke-direct {v3, v2}, Lcom/huawei/bd/utils/ZipFileManager;-><init>(Ljava/io/File;)V

    sput-object v3, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->zipFileManager:Lcom/huawei/bd/utils/ZipFileManager;

    .line 95
    sget-object v3, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->zipFileManager:Lcom/huawei/bd/utils/ZipFileManager;

    invoke-virtual {v3}, Lcom/huawei/bd/utils/ZipFileManager;->isUnzipSuccessful()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 96
    sget-object v3, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->TAG:Ljava/lang/String;

    const-string v4, "unzip config file successfully"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :cond_6
    sget-object v3, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->TAG:Ljava/lang/String;

    const-string v4, "unzip config file failed"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getStatAvailableSize(Ljava/io/File;)J
    .locals 11
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 47
    const-wide/16 v6, -0x1

    .line 61
    :goto_0
    return-wide v6

    .line 52
    :cond_0
    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 53
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 54
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocksLong()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 55
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    .line 60
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v5    # "stat":Landroid/os/StatFs;
    .local v6, "sdcardAvailableSize":J
    :goto_1
    sget-object v8, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AvailableSize:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    .end local v6    # "sdcardAvailableSize":J
    :catch_0
    move-exception v4

    .line 57
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    sget-object v8, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->TAG:Ljava/lang/String;

    const-string v9, "cannot access path."

    invoke-static {v8, v9}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-wide/16 v6, -0x1

    .restart local v6    # "sdcardAvailableSize":J
    goto :goto_1
.end method

.method public static isLoadDataDir(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v1, 0x0

    .line 110
    if-nez p0, :cond_0

    .line 111
    sget-object v6, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->TAG:Ljava/lang/String;

    const-string v7, "context is null"

    invoke-static {v6, v7}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    return v1

    .line 114
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 115
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "UEConfigFileVerison"

    invoke-interface {v0, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 116
    .local v4, "ueConfigFileVerison":J
    const-string v6, "ReleaseTime"

    invoke-interface {v0, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 117
    .local v2, "releaseTime":J
    sget-object v6, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ueConfigFileVerison: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", releaseTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    cmp-long v6, v4, v2

    if-gtz v6, :cond_1

    .line 119
    sget-object v6, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->TAG:Ljava/lang/String;

    const-string v7, "load inner\'s zip firstly"

    invoke-static {v6, v7}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    sget-object v1, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->TAG:Ljava/lang/String;

    const-string v6, "load update\'s zip in the data directory firstly"

    invoke-static {v1, v6}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v1, 0x1

    goto :goto_0
.end method
