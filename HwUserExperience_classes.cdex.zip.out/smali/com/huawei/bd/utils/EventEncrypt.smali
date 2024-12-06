.class public Lcom/huawei/bd/utils/EventEncrypt;
.super Ljava/lang/Object;
.source "EventEncrypt.java"

# interfaces
.implements Lcom/huawei/bd/utils/EncryptInterface;


# static fields
.field private static final BIT_LENGTH:I = 0x8

.field public static final CIPHER_TYPE:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field public static final EXPONENT_VALUE:Ljava/lang/String; = "65537"

.field private static final INIT_LENGTH:I = 0x10

.field private static final INIT_VALUE:J = 0x2386f26fc10000L

.field public static final MODEL_VALUE:Ljava/lang/String; = "24907259431961377209480304447420314675278854956424737688244507998454379688588314890162679979323703303509240796245532111474023047392580178709435281576624542294613207523485034492914828565153172773053351891188090398210811384185501117117991603774176386409127476628856566065613009756131651597266262540467980974946876675842468600552312158771248419700603327630677244315755445967726919102965015263135288381740211593751262078285738436597133664401598420056690274760726854877181978220226448211936820860496708860964018593025172845041095854180953040116559241637133730839837036910305932797451786785855051024967644159284784940216337"

.field private static final SPLIT_INDEX:I = 0xb

.field private static final TAG:Ljava/lang/String; = "BD.EventEncrypt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encryptByPublicKey(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "publicKey"    # Ljava/security/interfaces/RSAPublicKey;

    .prologue
    .line 202
    :try_start_0
    const-string v6, "RSA/ECB/OAEPWITHSHA-1ANDMGF1PADDING"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 203
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 204
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    div-int/lit8 v2, v6, 0x8

    .line 205
    .local v2, "keyLength":I
    add-int/lit8 v6, v2, -0xb

    invoke-static {p0, v6}, Lcom/huawei/bd/utils/BigDataUtils;->splitString(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "splitData":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 207
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    array-length v7, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v4, v3, v6

    .line 208
    .local v4, "string":Ljava/lang/String;
    const-string v8, "UTF8"

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    invoke-static {v8}, Lcom/huawei/bd/utils/BigDataUtils;->byteConvertedString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 210
    .end local v4    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v6

    .line 215
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "keyLength":I
    .end local v3    # "splitData":[Ljava/lang/String;
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :goto_1
    return-object v6

    .line 211
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    const-string v6, "BD.EventEncrypt"

    const-string v7, "encryptByPublicKey failed"

    invoke-static {v6, v7}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v6, 0x0

    goto :goto_1

    .line 211
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public aesEncrypt(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ivParameter"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 136
    :try_start_0
    const-string v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 137
    .local v1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    .line 138
    .local v0, "blockSize":I
    array-length v5, p3

    .line 139
    .local v5, "plaintextLength":I
    rem-int v7, v5, v0

    if-eqz v7, :cond_0

    .line 140
    rem-int v7, v5, v0

    sub-int v7, v0, v7

    add-int/2addr v5, v7

    .line 142
    :cond_0
    new-array v4, v5, [B

    .line 143
    .local v4, "plaintext":[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, p3

    invoke-static {p3, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "UTF-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const-string v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 145
    .local v6, "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const-string v7, "UTF-8"

    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v3, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 146
    .local v3, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v7, 0x1

    invoke-virtual {v1, v7, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 147
    invoke-virtual {v1, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v7

    .line 152
    .end local v0    # "blockSize":I
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v4    # "plaintext":[B
    .end local v5    # "plaintextLength":I
    .end local v6    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v7

    .line 148
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    const-string v7, "BD.EventEncrypt"

    const-string v8, "aesEncrypt failed"

    invoke-static {v7, v8}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v7, 0x0

    goto :goto_0

    .line 148
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_1

    :catch_5
    move-exception v2

    goto :goto_1

    :catch_6
    move-exception v2

    goto :goto_1
.end method

.method public generatePublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .locals 6
    .param p1, "publicKeyStr"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v4, 0x0

    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 78
    .local v0, "buffer":[B
    :try_start_0
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 79
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 80
    .local v3, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    check-cast v4, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    .end local v3    # "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    :goto_0
    return-object v4

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/security/GeneralSecurityException;
    :goto_1
    const-string v4, "BD.EventEncrypt"

    const-string v5, "generatePublicKey failed"

    invoke-static {v4, v5}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v4, 0x0

    goto :goto_0

    .line 81
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public generatePublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .locals 7
    .param p1, "modulus"    # Ljava/lang/String;
    .param p2, "exponent"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "bigInteger":Ljava/math/BigInteger;
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, "bigIntegerTow":Ljava/math/BigInteger;
    :try_start_0
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 102
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    new-instance v4, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v4, v0, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 103
    .local v4, "keySpec":Ljava/security/spec/RSAPublicKeySpec;
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    check-cast v5, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    .end local v4    # "keySpec":Ljava/security/spec/RSAPublicKeySpec;
    :goto_0
    return-object v5

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/security/GeneralSecurityException;
    :goto_1
    const-string v5, "BD.EventEncrypt"

    const-string v6, "generatePublicKey execution failed"

    invoke-static {v5, v6}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v5, 0x0

    goto :goto_0

    .line 104
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public generateRandomKey()Ljava/lang/String;
    .locals 8

    .prologue
    .line 118
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 119
    .local v2, "secureRandom":Ljava/security/SecureRandom;
    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v4

    const-wide v6, 0x2386f26fc10000L

    rem-long v0, v4, v6

    .line 120
    .local v0, "randKey":J
    const-string v3, "%016d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public rsaEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "plainTextData"    # Ljava/lang/String;

    .prologue
    .line 192
    const-string v1, "24907259431961377209480304447420314675278854956424737688244507998454379688588314890162679979323703303509240796245532111474023047392580178709435281576624542294613207523485034492914828565153172773053351891188090398210811384185501117117991603774176386409127476628856566065613009756131651597266262540467980974946876675842468600552312158771248419700603327630677244315755445967726919102965015263135288381740211593751262078285738436597133664401598420056690274760726854877181978220226448211936820860496708860964018593025172845041095854180953040116559241637133730839837036910305932797451786785855051024967644159284784940216337"

    const-string v2, "65537"

    invoke-virtual {p0, v1, v2}, Lcom/huawei/bd/utils/EventEncrypt;->generatePublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    .line 193
    .local v0, "publicKey":Ljava/security/interfaces/RSAPublicKey;
    if-nez v0, :cond_0

    .line 194
    const/4 v1, 0x0

    .line 196
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, v0}, Lcom/huawei/bd/utils/EventEncrypt;->encryptByPublicKey(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public rsaEncrypt([B)[B
    .locals 6
    .param p1, "plainTextData"    # [B

    .prologue
    const/4 v3, 0x0

    .line 166
    const-string v4, "24907259431961377209480304447420314675278854956424737688244507998454379688588314890162679979323703303509240796245532111474023047392580178709435281576624542294613207523485034492914828565153172773053351891188090398210811384185501117117991603774176386409127476628856566065613009756131651597266262540467980974946876675842468600552312158771248419700603327630677244315755445967726919102965015263135288381740211593751262078285738436597133664401598420056690274760726854877181978220226448211936820860496708860964018593025172845041095854180953040116559241637133730839837036910305932797451786785855051024967644159284784940216337"

    const-string v5, "65537"

    invoke-virtual {p0, v4, v5}, Lcom/huawei/bd/utils/EventEncrypt;->generatePublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v2

    .line 167
    .local v2, "publicKey":Ljava/security/interfaces/RSAPublicKey;
    if-nez v2, :cond_0

    .line 179
    :goto_0
    return-object v3

    .line 172
    :cond_0
    :try_start_0
    const-string v4, "RSA/ECB/OAEPWITHSHA-1ANDMGF1PADDING"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 173
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 174
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 175
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/security/GeneralSecurityException;
    :goto_1
    const-string v4, "BD.EventEncrypt"

    const-string v5, "rsaEncrypt failed"

    invoke-static {v4, v5}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_1
.end method
