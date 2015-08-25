.class public Lcom/sec/knox/container/EnterpriseContainerObjectParam;
.super Ljava/lang/Object;
.source "EnterpriseContainerObjectParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/knox/container/EnterpriseContainerObjectParam;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "EnterpriseContainerObjectParam"


# instance fields
.field private mAdmin:I

.field private mApkInstallPath:Ljava/lang/String;

.field private mContainerCreationRequestId:I

.field private mEmail:Ljava/lang/String;

.field private mLockType:I

.field private mName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mSecurityIcon:Landroid/graphics/Bitmap;

.field private mSecurityText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerObjectParam$1;

    invoke-direct {v0}, Lcom/sec/knox/container/EnterpriseContainerObjectParam$1;-><init>()V

    sput-object v0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    .line 24
    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    .line 26
    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    .line 27
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    .line 24
    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    .line 26
    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    .line 27
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public getAdmin()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    return v0
.end method

.method public getApkInstallPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getLockType()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    return v0
.end method

.method public getSecurityIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSecurityText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    return-object v0
.end method

.method public setAdmin(I)V
    .locals 0
    .param p1, "admin"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    .line 109
    return-void
.end method

.method public setApkInstallPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setLockType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    .line 117
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setRequestId(I)V
    .locals 0
    .param p1, "requestId"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    .line 101
    return-void
.end method

.method public setSecurityIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "securityIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    .line 93
    return-void
.end method

.method public setSecurityText(Ljava/lang/String;)V
    .locals 0
    .param p1, "securityText"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    :goto_1
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    :goto_2
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    :goto_3
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 169
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    :goto_4
    return-void

    .line 143
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    const-string v0, "EnterpriseContainerObjectParam"

    const-string/jumbo v1, "writeToParcel Password null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    const-string v0, "EnterpriseContainerObjectParam"

    const-string/jumbo v1, "writeToParcel Password null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 155
    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    const-string v0, "EnterpriseContainerObjectParam"

    const-string/jumbo v1, "writeToParcel Email null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 161
    :cond_3
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    const-string v0, "EnterpriseContainerObjectParam"

    const-string/jumbo v1, "writeToParcel Security Text null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 171
    :cond_4
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    const-string v0, "EnterpriseContainerObjectParam"

    const-string/jumbo v1, "writeToParcel mApkInstallPath null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
