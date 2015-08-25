.class public Lcom/sec/enterprise/knox/EnterpriseContainerObject;
.super Ljava/lang/Object;
.source "EnterpriseContainerObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/sec/knox/container/EnterpriseContainerConstants;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/enterprise/knox/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private admin:I

.field private containerType:I

.field private email:Ljava/lang/String;

.field private id:I

.field private lockType:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/sec/enterprise/knox/EnterpriseContainerObject$1;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerObject$1;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->id:I

    .line 21
    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->admin:I

    .line 22
    iput-object v2, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    .line 23
    iput-object v2, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->lockType:I

    .line 25
    iput v1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->containerType:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->id:I

    .line 21
    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->admin:I

    .line 22
    iput-object v2, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    .line 23
    iput-object v2, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->lockType:I

    .line 25
    iput v1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->containerType:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->id:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->admin:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->lockType:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->containerType:I

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public getContainerAdmin()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->admin:I

    return v0
.end method

.method public getContainerEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->id:I

    return v0
.end method

.method public getContainerLockType()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->lockType:I

    return v0
.end method

.method public getContainerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getContainerType()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->containerType:I

    return v0
.end method

.method public setContainerAdmin(I)V
    .locals 0
    .param p1, "admin"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->admin:I

    .line 85
    return-void
.end method

.method public setContainerEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setContainerId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->id:I

    .line 69
    return-void
.end method

.method public setContainerLockType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->lockType:I

    .line 133
    return-void
.end method

.method public setContainerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setContainerType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->containerType:I

    .line 149
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 168
    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->admin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    :goto_1
    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->lockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->containerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    return-void

    .line 173
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1
.end method
