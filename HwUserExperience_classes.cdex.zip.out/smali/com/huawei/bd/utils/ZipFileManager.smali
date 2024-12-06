.class public Lcom/huawei/bd/utils/ZipFileManager;
.super Ljava/lang/Object;
.source "ZipFileManager.java"


# static fields
.field private static final INVAILD_LENGHT:I = -0x1

.field private static final LIMIT_DATA_SIZE:J = 0xa00000L

.field private static final MODE_VALUE:I = 0x1f8

.field private static final READ_ZIP_BYTE_BUFFER_LENGTH:I = 0x2800

.field private static final SYSTEM_GID:I = 0x3e8

.field private static final SYSTEM_UID:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static final XML_DIR:Ljava/lang/String; = "/system/hiview/ue_tmp/"

.field private static final XML_PATH:Ljava/lang/String;


# instance fields
.field private file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-class v0, Lcom/huawei/bd/utils/ZipFileManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/bd/utils/ZipFileManager;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hiview"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ue_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ue_event_list.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/bd/utils/ZipFileManager;->XML_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/huawei/bd/utils/ZipFileManager;->file:Ljava/io/File;

    .line 58
    return-void
.end method

.method private static changeMode(Ljava/lang/String;)V
    .locals 3
    .param p0, "configFile"    # Ljava/lang/String;

    .prologue
    .line 181
    if-nez p0, :cond_0

    .line 182
    sget-object v1, Lcom/huawei/bd/utils/ZipFileManager;->TAG:Ljava/lang/String;

    const-string v2, "configFile is null"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 187
    :cond_0
    const/16 v1, 0x3e8

    const/16 v2, 0x3e8

    :try_start_0
    invoke-static {p0, v1, v2}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    :goto_1
    const/16 v1, 0x1f8

    :try_start_1
    invoke-static {p0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/system/ErrnoException;
    sget-object v1, Lcom/huawei/bd/utils/ZipFileManager;->TAG:Ljava/lang/String;

    const-string v2, "chmod ErrnoException"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v0

    .line 189
    .restart local v0    # "e":Landroid/system/ErrnoException;
    sget-object v1, Lcom/huawei/bd/utils/ZipFileManager;->TAG:Ljava/lang/String;

    const-string v2, "chown ErrnoException"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private closeAllStream(Ljava/util/zip/ZipInputStream;Ljava/io/FileInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;)V
    .locals 0
    .param p1, "zipInputStream"    # Ljava/util/zip/ZipInputStream;
    .param p2, "fileInputStream"    # Ljava/io/FileInputStream;
    .param p3, "bufferedOutputStream"    # Ljava/io/BufferedOutputStream;
    .param p4, "fileOutputStream"    # Ljava/io/FileOutputStream;

    .prologue
    .line 144
    invoke-static {p2}, Lcom/huawei/bd/utils/ZipFileManager;->safeClose(Ljava/io/Closeable;)V

    .line 145
    invoke-static {p1}, Lcom/huawei/bd/utils/ZipFileManager;->safeClose(Ljava/io/Closeable;)V

    .line 146
    invoke-static {p3}, Lcom/huawei/bd/utils/ZipFileManager;->safeClose(Ljava/io/Closeable;)V

    .line 147
    invoke-static {p4}, Lcom/huawei/bd/utils/ZipFileManager;->safeClose(Ljava/io/Closeable;)V

    .line 148
    return-void
.end method

.method private flushFile(Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "bufferedOutputStream"    # Ljava/io/BufferedOutputStream;
    .param p2, "fileOutputStream"    # Ljava/io/FileOutputStream;
    .param p3, "outPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    sget-object v0, Lcom/huawei/bd/utils/ZipFileManager;->TAG:Ljava/lang/String;

    const-string v1, "bufferedOutputStream is null"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 136
    invoke-static {p1}, Lcom/huawei/bd/utils/ZipFileManager;->safeClose(Ljava/io/Closeable;)V

    .line 137
    invoke-static {p2}, Lcom/huawei/bd/utils/ZipFileManager;->safeClose(Ljava/io/Closeable;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/hiview/ue_tmp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/bd/utils/ZipFileManager;->changeMode(Ljava/lang/String;)V

    .line 139
    invoke-static {p3}, Lcom/huawei/bd/utils/ZipFileManager;->changeMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isAllowUnZipPath(Ljava/io/File;)Z
    .locals 7
    .param p1, "zipFile"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 151
    if-nez p1, :cond_0

    .line 152
    sget-object v5, Lcom/huawei/bd/utils/ZipFileManager;->TAG:Ljava/lang/String;

    const-string v6, "zipFile is null"

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_0
    return v4

    .line 155
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/etc/hiview"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "systemHwUserExperienceDir":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/hiview"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "dataHwUserExperienceDir":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "targetPath":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 160
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 162
    .end local v3    # "targetPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lcom/huawei/bd/utils/ZipFileManager;->TAG:Ljava/lang/String;

    const-string v6, "IOException, not allow unZip File"

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "targetPath":Ljava/lang/String;
    :cond_2
    sget-object v5, Lcom/huawei/bd/utils/ZipFileManager;->TAG:Ljava/lang/String;

    const-string v6, "Invalid file path"

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isBeyondSpace(Ljava/io/BufferedOutputStream;J)Z
    .locals 6
    .param p1, "bufferedOutputStream"    # Ljava/io/BufferedOutputStream;
    .param p2, "totalBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 117
    if-nez p1, :cond_1

    .line 118
    sget-object v1, Lcom/huawei/bd/utils/ZipFileManager;->TAG:Ljava/lang/String;

    const-string v2, "bufferedOutputStream is null"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    const-wide/16 v2, 0x2800

    add-long/2addr v2, p2

    const-wide/32 v4, 0xa00000

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 122
    sget-object v0, Lcom/huawei/bd/utils/ZipFileManager;->TAG:Ljava/lang/String;

    const-string v1, "unzip config file failure , because of beyond 10M"

    invoke-static {v0, v1}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 124
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "fileInputStream"    # Ljava/io/Closeable;

    .prologue
    .line 171
    if-eqz p0, :cond_0

    .line 173
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/huawei/bd/utils/ZipFileManager;->TAG:Ljava/lang/String;

    const-string v2, "IOException close error"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public isUnzipSuccessful()Z
    .locals 24

    .prologue
    .line 66
    const/16 v18, 0x0

    .line 67
    .local v18, "zipInputStream":Ljava/util/zip/ZipInputStream;
    const/4 v9, 0x0

    .line 68
    .local v9, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 69
    .local v5, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    const/4 v11, 0x0

    .line 70
    .local v11, "fileOutputStream":Ljava/io/FileOutputStream;
    const-wide/16 v16, 0x0

    .line 71
    .local v16, "totalBytes":J
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/huawei/bd/utils/ConfigUpdateFileZipper;->getStatAvailableSize(Ljava/io/File;)J

    move-result-wide v20

    const-wide/32 v22, 0xa00000

    cmp-long v20, v20, v22

    if-gez v20, :cond_0

    .line 72
    sget-object v20, Lcom/huawei/bd/utils/ZipFileManager;->TAG:Ljava/lang/String;

    const-string v21, "unzip failed , beyond limit data size"

    invoke-static/range {v20 .. v21}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/16 v20, 0x0

    .line 113
    :goto_0
    return v20

    .line 76
    :cond_0
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/bd/utils/ZipFileManager;->file:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .local v10, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v19, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    .end local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v19, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    .local v8, "entry":Ljava/util/zip/ZipEntry;
    move-object v12, v11

    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v12, "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v6, v5

    .line 79
    .end local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .local v6, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    :goto_1
    if-eqz v8, :cond_5

    :try_start_3
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_5

    .line 80
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/huawei/bd/utils/ZipFileManager;->XML_PATH:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 81
    .local v13, "outPath":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v15, "target":Ljava/io/File;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/huawei/bd/utils/ZipFileManager;->isAllowUnZipPath(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v20

    if-nez v20, :cond_1

    .line 83
    const/16 v20, 0x0

    .line 111
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v10, v6, v12}, Lcom/huawei/bd/utils/ZipFileManager;->closeAllStream(Ljava/util/zip/ZipInputStream;Ljava/io/FileInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;)V

    move-object v11, v12

    .end local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    move-object/from16 v18, v19

    .line 83
    .end local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto :goto_0

    .line 85
    .end local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v20

    if-eqz v20, :cond_2

    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_2

    .line 86
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    move-result v20

    if-nez v20, :cond_2

    .line 87
    sget-object v20, Lcom/huawei/bd/utils/ZipFileManager;->TAG:Ljava/lang/String;

    const-string v21, "mkdirs fail"

    invoke-static/range {v20 .. v21}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    .line 89
    goto :goto_1

    .line 92
    :cond_2
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 93
    .end local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 95
    .end local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    const/16 v20, 0x2800

    :try_start_6
    move/from16 v0, v20

    new-array v4, v0, [B

    .line 96
    .local v4, "buffer":[B
    :cond_3
    const/16 v20, 0x0

    array-length v0, v4

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v4, v1, v2}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v14

    .local v14, "read":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v14, v0, :cond_4

    .line 97
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v4, v0, v14}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 98
    int-to-long v0, v14

    move-wide/from16 v20, v0

    add-long v16, v16, v20

    .line 99
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/huawei/bd/utils/ZipFileManager;->isBeyondSpace(Ljava/io/BufferedOutputStream;J)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v20

    if-eqz v20, :cond_3

    .line 100
    const/16 v20, 0x0

    .line 111
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v10, v5, v11}, Lcom/huawei/bd/utils/ZipFileManager;->closeAllStream(Ljava/util/zip/ZipInputStream;Ljava/io/FileInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;)V

    move-object v9, v10

    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    move-object/from16 v18, v19

    .line 100
    .end local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_0

    .line 103
    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_4
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11, v13}, Lcom/huawei/bd/utils/ZipFileManager;->flushFile(Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v8

    move-object v12, v11

    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v6, v5

    .line 105
    .end local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    goto/16 :goto_1

    .line 106
    .end local v4    # "buffer":[B
    .end local v13    # "outPath":Ljava/lang/String;
    .end local v14    # "read":I
    .end local v15    # "target":Ljava/io/File;
    :cond_5
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 107
    const/16 v20, 0x1

    .line 111
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v10, v6, v12}, Lcom/huawei/bd/utils/ZipFileManager;->closeAllStream(Ljava/util/zip/ZipInputStream;Ljava/io/FileInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;)V

    move-object v11, v12

    .end local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    move-object/from16 v18, v19

    .line 107
    .end local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_0

    .line 108
    .end local v8    # "entry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v7

    .line 109
    .local v7, "e":Ljava/io/IOException;
    :goto_2
    :try_start_9
    sget-object v20, Lcom/huawei/bd/utils/ZipFileManager;->TAG:Ljava/lang/String;

    const-string v21, "unZipFiles IOException"

    invoke-static/range {v20 .. v21}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 111
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9, v5, v11}, Lcom/huawei/bd/utils/ZipFileManager;->closeAllStream(Ljava/util/zip/ZipInputStream;Ljava/io/FileInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;)V

    .line 113
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 111
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v20

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9, v5, v11}, Lcom/huawei/bd/utils/ZipFileManager;->closeAllStream(Ljava/util/zip/ZipInputStream;Ljava/io/FileInputStream;Ljava/io/BufferedOutputStream;Ljava/io/FileOutputStream;)V

    .line 112
    throw v20

    .line 111
    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v20

    move-object v9, v10

    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_2
    move-exception v20

    move-object v9, v10

    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    move-object/from16 v18, v19

    .end local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto :goto_3

    .end local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v8    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_3
    move-exception v20

    move-object v11, v12

    .end local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    move-object/from16 v18, v19

    .end local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto :goto_3

    .end local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v13    # "outPath":Ljava/lang/String;
    .restart local v15    # "target":Ljava/io/File;
    .restart local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_4
    move-exception v20

    move-object v5, v6

    .end local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    move-object/from16 v18, v19

    .end local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto :goto_3

    .line 108
    .end local v8    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v13    # "outPath":Ljava/lang/String;
    .end local v15    # "target":Ljava/io/File;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v7

    move-object v9, v10

    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_2
    move-exception v7

    move-object v9, v10

    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    move-object/from16 v18, v19

    .end local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto :goto_2

    .end local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v8    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_3
    move-exception v7

    move-object v11, v12

    .end local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    move-object/from16 v18, v19

    .end local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto :goto_2

    .end local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local v9    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v13    # "outPath":Ljava/lang/String;
    .restart local v15    # "target":Ljava/io/File;
    .restart local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_4
    move-exception v7

    move-object v5, v6

    .end local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "fileInputStream":Ljava/io/FileInputStream;
    move-object/from16 v18, v19

    .end local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto :goto_2
.end method
