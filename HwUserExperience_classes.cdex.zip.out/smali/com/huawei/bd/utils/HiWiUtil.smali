.class public Lcom/huawei/bd/utils/HiWiUtil;
.super Ljava/lang/Object;
.source "HiWiUtil.java"


# static fields
.field public static final CHINA_COUNTRY_CODE:Ljava/lang/String; = "156"

.field public static final CHINA_COUNTRY_LOCAL_REGION:Ljava/lang/String; = "CN"

.field private static final TAG:Ljava/lang/String; = "HiWiServiceBD.HiWiUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static getActiveNetwork(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 111
    .local v1, "connMgr":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 112
    const-string v2, "HiWiServiceBD.HiWiUtil"

    const-string v3, "getActiveNetwork, connMgr == null"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    .line 115
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 116
    .local v0, "activeInfo":Landroid/net/NetworkInfo;
    goto :goto_0
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 7

    .prologue
    .line 139
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 140
    .local v2, "sysPropertyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 141
    const-string v3, "get"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 142
    .local v1, "getStringMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 143
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ro.config.hw_optb"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 157
    .end local v1    # "getStringMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "HiWiServiceBD.HiWiUtil"

    const-string v4, "SystemProperties ClassNotFoundException"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_1
    const-string v3, ""

    goto :goto_0

    .line 148
    :catch_1
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "HiWiServiceBD.HiWiUtil"

    const-string v4, "SystemProperties NoSuchMethodException"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 150
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "HiWiServiceBD.HiWiUtil"

    const-string v4, "SystemProperties IllegalArgumentException"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 152
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "HiWiServiceBD.HiWiUtil"

    const-string v4, "SystemProperties IllegalAccessException"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 154
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "HiWiServiceBD.HiWiUtil"

    const-string v4, "SystemProperties InvocationTargetException"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getCountryLocalRegion()Ljava/lang/String;
    .locals 7

    .prologue
    .line 47
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 48
    .local v2, "sysPropertyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 49
    const-string v3, "get"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 50
    .local v1, "getStringMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 51
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ro.product.locale.region"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 65
    .end local v1    # "getStringMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "HiWiServiceBD.HiWiUtil"

    const-string v4, "SystemProperties ClassNotFoundException"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_1
    const-string v3, ""

    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "HiWiServiceBD.HiWiUtil"

    const-string v4, "SystemProperties NoSuchMethodException"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 58
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "HiWiServiceBD.HiWiUtil"

    const-string v4, "SystemProperties IllegalArgumentException"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 60
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "HiWiServiceBD.HiWiUtil"

    const-string v4, "SystemProperties IllegalAccessException"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 62
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "HiWiServiceBD.HiWiUtil"

    const-string v4, "SystemProperties InvocationTargetException"

    invoke-static {v3, v4}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getMinutes(JJ)I
    .locals 6
    .param p0, "oldminute"    # J
    .param p2, "newminute"    # J

    .prologue
    .line 127
    sub-long v0, p2, p0

    .line 128
    .local v0, "intPart":J
    const-wide/32 v4, 0xea60

    div-long v2, v0, v4

    .line 129
    .local v2, "minute":J
    long-to-int v4, v2

    add-int/lit8 v4, v4, 0x2

    return v4
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    const-string v0, "HiWiService"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static isDomestic()Z
    .locals 2

    .prologue
    .line 166
    const-string v0, "156"

    invoke-static {}, Lcom/huawei/bd/utils/HiWiUtil;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CN"

    .line 167
    invoke-static {}, Lcom/huawei/bd/utils/HiWiUtil;->getCountryLocalRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkRoaming(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 90
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 91
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    .line 92
    const-string v2, "HiWiServiceBD.HiWiUtil"

    const-string v3, "TelephonyManager get failed!"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    return v1

    .line 95
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    const-string v2, "HiWiServiceBD.HiWiUtil"

    const-string v3, "network is roaming"

    invoke-static {v2, v3}, Lcom/huawei/bd/utils/BigDataLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static safeClose(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "inputStream"    # Ljava/io/Closeable;

    .prologue
    .line 74
    if-eqz p0, :cond_0

    .line 76
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "HiWiServiceBD.HiWiUtil"

    const-string v2, "IOException close error"

    invoke-static {v1, v2}, Lcom/huawei/bd/utils/BigDataLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
