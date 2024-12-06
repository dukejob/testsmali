.class public final Lcom/huawei/android/totemweather/aidl/RequestData;
.super Ljava/lang/Object;
.source "RequestData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/totemweather/aidl/RequestData;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_HOME_CITY:I = 0x2

.field public static final TYPE_HOME_CITY_FIRST:I = 0x3

.field public static final TYPE_MY_LOCATION:I = 0x1

.field public static final TYPE_MY_LOCATION_FIRST:I = 0x4


# instance fields
.field private mCityId:Ljava/lang/String;

.field private mCityType:I

.field private mIsAllDay:Z

.field private mLatitude:D

.field private mLongitude:D

.field private mPackageName:Ljava/lang/String;

.field private mRequestFlag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/huawei/android/totemweather/aidl/RequestData$1;

    invoke-direct {v0}, Lcom/huawei/android/totemweather/aidl/RequestData$1;-><init>()V

    sput-object v0, Lcom/huawei/android/totemweather/aidl/RequestData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mCityType:I

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mIsAllDay:Z

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;DD)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mCityType:I

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mIsAllDay:Z

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mPackageName:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mRequestFlag:Ljava/lang/String;

    .line 112
    iput-wide p2, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mLatitude:D

    .line 113
    iput-wide p4, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mLongitude:D

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cityType"    # I

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mCityType:I

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mIsAllDay:Z

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mPackageName:Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mRequestFlag:Ljava/lang/String;

    .line 139
    iput p2, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mCityType:I

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cityId"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mCityType:I

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mIsAllDay:Z

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mPackageName:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mRequestFlag:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mCityId:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mCityType:I

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mIsAllDay:Z

    .line 98
    invoke-virtual {p0, p1}, Lcom/huawei/android/totemweather/aidl/RequestData;->readFromParcel(Landroid/os/Parcel;)V

    .line 99
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public getmCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mCityId:Ljava/lang/String;

    return-object v0
.end method

.method public getmCityType()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mCityType:I

    return v0
.end method

.method public getmLatitude()D
    .locals 2

    .prologue
    .line 167
    iget-wide v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mLatitude:D

    return-wide v0
.end method

.method public getmLongitude()D
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mLongitude:D

    return-wide v0
.end method

.method public getmPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getmRequestFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mRequestFlag:Ljava/lang/String;

    return-object v0
.end method

.method public ismAllDay()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mIsAllDay:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mPackageName:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mRequestFlag:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mCityId:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mLatitude:D

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mLongitude:D

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mCityType:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mIsAllDay:Z

    .line 216
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setmAllDay(Z)V
    .locals 0
    .param p1, "isAllDay"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mIsAllDay:Z

    .line 196
    return-void
.end method

.method public setmCityId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityId"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mCityId:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setmCityType(I)V
    .locals 0
    .param p1, "cityType"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mCityType:I

    .line 188
    return-void
.end method

.method public setmLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 171
    iput-wide p1, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mLatitude:D

    .line 172
    return-void
.end method

.method public setmLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 179
    iput-wide p1, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mLongitude:D

    .line 180
    return-void
.end method

.method public setmPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mPackageName:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setmRequestFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestFlag"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mRequestFlag:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "RequestData [mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRequestFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mRequestFlag:Ljava/lang/String;

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCityId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mCityId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCityType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mCityType:I

    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsAllDay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mIsAllDay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mRequestFlag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mCityId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-wide v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 230
    iget-wide v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 231
    iget v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mCityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget-boolean v0, p0, Lcom/huawei/android/totemweather/aidl/RequestData;->mIsAllDay:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
