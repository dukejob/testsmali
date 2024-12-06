.class public Lcom/huawei/bd/events/BaseEvent;
.super Ljava/lang/Object;
.source "BaseEvent.java"


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "_"

.field private static final SYNC_CIPHER:Ljava/lang/Object;

.field public static final TAG:Ljava/lang/String; = "BD.BaseEvent"

.field private static cipher:Ljava/lang/String;

.field private static encrypt:Lcom/huawei/bd/utils/EncryptInterface;

.field private static randomKey:Ljava/lang/String;


# instance fields
.field private recordTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/bd/events/BaseEvent;->SYNC_CIPHER:Ljava/lang/Object;

    .line 31
    sput-object v1, Lcom/huawei/bd/events/BaseEvent;->cipher:Ljava/lang/String;

    .line 33
    sput-object v1, Lcom/huawei/bd/events/BaseEvent;->randomKey:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/huawei/bd/utils/EventEncrypt;

    invoke-direct {v0}, Lcom/huawei/bd/utils/EventEncrypt;-><init>()V

    sput-object v0, Lcom/huawei/bd/events/BaseEvent;->encrypt:Lcom/huawei/bd/utils/EncryptInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "recordTime"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/huawei/bd/events/BaseEvent;->recordTime:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static genericCipher()V
    .locals 3

    .prologue
    .line 86
    sget-object v0, Lcom/huawei/bd/events/BaseEvent;->encrypt:Lcom/huawei/bd/utils/EncryptInterface;

    invoke-interface {v0}, Lcom/huawei/bd/utils/EncryptInterface;->generateRandomKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/bd/events/BaseEvent;->randomKey:Ljava/lang/String;

    .line 87
    sget-object v1, Lcom/huawei/bd/events/BaseEvent;->SYNC_CIPHER:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lcom/huawei/bd/events/BaseEvent;->encrypt:Lcom/huawei/bd/utils/EncryptInterface;

    sget-object v2, Lcom/huawei/bd/events/BaseEvent;->randomKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/huawei/bd/utils/EncryptInterface;->rsaEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/bd/events/BaseEvent;->cipher:Ljava/lang/String;

    .line 89
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public encrypt()Lcom/huawei/bd/events/BaseEvent;
    .locals 0

    .prologue
    .line 98
    return-object p0
.end method

.method public encrypt([Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "encryptFields"    # [Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {}, Lcom/huawei/bd/utils/BigDataSwitchUtil;->isEncrypt()Z

    move-result v5

    if-nez v5, :cond_0

    .line 132
    .end local p1    # "encryptFields":[Ljava/lang/String;
    :goto_0
    return-object p1

    .line 113
    .restart local p1    # "encryptFields":[Ljava/lang/String;
    :cond_0
    array-length v5, p1

    new-array v4, v5, [Ljava/lang/String;

    .line 114
    .local v4, "result":[Ljava/lang/String;
    sget-object v5, Lcom/huawei/bd/events/BaseEvent;->randomKey:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 115
    invoke-static {}, Lcom/huawei/bd/events/BaseEvent;->genericCipher()V

    .line 117
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_4

    .line 118
    aget-object v5, p1, v2

    if-nez v5, :cond_3

    .line 119
    const-string v5, ""

    aput-object v5, v4, v2

    .line 117
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 122
    :cond_3
    sget-object v5, Lcom/huawei/bd/events/BaseEvent;->encrypt:Lcom/huawei/bd/utils/EncryptInterface;

    invoke-interface {v5}, Lcom/huawei/bd/utils/EncryptInterface;->generateRandomKey()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "ivParameter":Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/huawei/bd/events/BaseEvent;->encrypt:Lcom/huawei/bd/utils/EncryptInterface;

    sget-object v6, Lcom/huawei/bd/events/BaseEvent;->randomKey:Ljava/lang/String;

    aget-object v7, p1, v2

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-interface {v5, v6, v3, v7}, Lcom/huawei/bd/utils/EncryptInterface;->aesEncrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 125
    .local v0, "aesData":[B
    if-eqz v0, :cond_2

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 128
    .end local v0    # "aesData":[B
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "BD.BaseEvent"

    const-string v6, "UnsupportedEncodingException aesEncrypt failed"

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "ivParameter":Ljava/lang/String;
    :cond_4
    move-object p1, v4

    .line 132
    goto :goto_0
.end method

.method public getCipher()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/huawei/bd/utils/BigDataSwitchUtil;->isEncrypt()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const-string v0, ""

    .line 70
    :goto_0
    return-object v0

    .line 69
    :cond_0
    sget-object v1, Lcom/huawei/bd/events/BaseEvent;->SYNC_CIPHER:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    sget-object v0, Lcom/huawei/bd/events/BaseEvent;->cipher:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getRecordTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/huawei/bd/events/BaseEvent;->recordTime:Ljava/lang/String;

    return-object v0
.end method

.method public rsaEncrypt([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "encryptFields"    # [Ljava/lang/String;

    .prologue
    .line 142
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 143
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 144
    aget-object v2, p1, v0

    if-nez v2, :cond_0

    .line 145
    const-string v2, ""

    aput-object v2, v1, v0

    .line 143
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    sget-object v2, Lcom/huawei/bd/events/BaseEvent;->encrypt:Lcom/huawei/bd/utils/EncryptInterface;

    aget-object v3, p1, v0

    invoke-interface {v2, v3}, Lcom/huawei/bd/utils/EncryptInterface;->rsaEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    .line 150
    :cond_1
    return-object v1
.end method

.method public setRecordTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "recordTime"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/huawei/bd/events/BaseEvent;->recordTime:Ljava/lang/String;

    .line 80
    return-void
.end method
