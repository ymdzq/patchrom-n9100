.class public Landroid/os/storage/sensitive/SensitiveDataParcel;
.super Ljava/lang/Object;
.source "SensitiveDataParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/storage/sensitive/SensitiveDataParcel;",
            ">;"
        }
    .end annotation
.end field

.field public static final SD_DECRYPT:I = 0x2

.field public static final SD_ENCRYPT:I = 0x1


# instance fields
.field private client:Ljava/lang/String;

.field private data:[B

.field private op:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Landroid/os/storage/sensitive/SensitiveDataParcel$1;

    invoke-direct {v0}, Landroid/os/storage/sensitive/SensitiveDataParcel$1;-><init>()V

    sput-object v0, Landroid/os/storage/sensitive/SensitiveDataParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/storage/sensitive/SensitiveDataParcel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/os/storage/sensitive/SensitiveDataParcel$1;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "client"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/storage/sensitive/SensitiveDataParcel;->op:I

    .line 33
    iput-object p1, p0, Landroid/os/storage/sensitive/SensitiveDataParcel;->client:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Landroid/os/storage/sensitive/SensitiveDataParcel;->data:[B

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public getClient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataParcel;->client:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataParcel;->data:[B

    return-object v0
.end method

.method public getDataLength()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataParcel;->data:[B

    array-length v0, v0

    return v0
.end method

.method public getOperation()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Landroid/os/storage/sensitive/SensitiveDataParcel;->op:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/sensitive/SensitiveDataParcel;->op:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataParcel;->client:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataParcel;->data:[B

    .line 58
    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataParcel;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 59
    return-void
.end method

.method public setClient(Ljava/lang/String;)V
    .locals 0
    .param p1, "client"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Landroid/os/storage/sensitive/SensitiveDataParcel;->client:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 74
    iput-object p1, p0, Landroid/os/storage/sensitive/SensitiveDataParcel;->data:[B

    .line 75
    return-void
.end method

.method public setOperation(I)V
    .locals 0
    .param p1, "op"    # I

    .prologue
    .line 62
    iput p1, p0, Landroid/os/storage/sensitive/SensitiveDataParcel;->op:I

    .line 63
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 48
    iget v0, p0, Landroid/os/storage/sensitive/SensitiveDataParcel;->op:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataParcel;->client:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataParcel;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v0, p0, Landroid/os/storage/sensitive/SensitiveDataParcel;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 52
    return-void
.end method
