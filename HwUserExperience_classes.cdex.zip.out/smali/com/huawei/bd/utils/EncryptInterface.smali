.class public interface abstract Lcom/huawei/bd/utils/EncryptInterface;
.super Ljava/lang/Object;
.source "EncryptInterface.java"


# virtual methods
.method public abstract aesEncrypt(Ljava/lang/String;Ljava/lang/String;[B)[B
.end method

.method public abstract generatePublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
.end method

.method public abstract generatePublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
.end method

.method public abstract generateRandomKey()Ljava/lang/String;
.end method

.method public abstract rsaEncrypt(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract rsaEncrypt([B)[B
.end method
