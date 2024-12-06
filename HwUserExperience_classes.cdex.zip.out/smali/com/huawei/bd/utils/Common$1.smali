.class final Lcom/huawei/bd/utils/Common$1;
.super Ljava/util/HashMap;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/bd/utils/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "x0"    # I

    .prologue
    .line 1017
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 1019
    const-string v0, "com.android.gallery3d"

    const-string v1, "c.a.g"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/utils/Common$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    const-string v0, "com.huawei.photos"

    const-string v1, "c.a.g"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/utils/Common$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    const-string v0, "com.android.contacts"

    const-string v1, "c.a.c"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/utils/Common$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    const-string v0, "com.huawei.contacts"

    const-string v1, "c.a.c"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/utils/Common$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    const-string v0, "com.android.phone"

    const-string v1, "c.a.p"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/utils/Common$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    const-string v0, "com.android.keyguard"

    const-string v1, "c.a.k"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/utils/Common$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    const-string v0, "com.huawei.magazine"

    const-string v1, "c.a.k"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/utils/Common$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    const-string v0, "com.android.email"

    const-string v1, "c.a.e"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/utils/Common$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    const-string v0, "com.huawei.email"

    const-string v1, "c.a.e"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/utils/Common$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    const-string v0, "com.android.systemui"

    const-string v1, "c.a.su"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/utils/Common$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    const-string v0, "com.android.calendar"

    const-string v1, "c.a.cl"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/utils/Common$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    const-string v0, "com.huawei.calendar"

    const-string v1, "c.a.cl"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/utils/Common$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    const-string v0, "com.android.settings"

    const-string v1, "c.a.s"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/utils/Common$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    const-string v0, "com.huawei.camera"

    const-string v1, "c.h.c"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/utils/Common$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    const-string v0, "com.huawei.android.launcher"

    const-string v1, "c.h.l"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/utils/Common$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    const-string v0, "com.huawei.vassistant"

    const-string v1, "c.h.va"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/utils/Common$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    const-string v0, "com.huawei.hiassistantoversea"

    const-string v1, "c.h.va"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/utils/Common$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    const-string v0, "com.huawei.vdrive"

    const-string v1, "c.h.vd"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/utils/Common$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    const-string v0, "com.huawei.hidisk"

    const-string v1, "c.h.h"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/bd/utils/Common$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    return-void
.end method
