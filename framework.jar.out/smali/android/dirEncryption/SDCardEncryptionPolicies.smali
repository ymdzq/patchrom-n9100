.class public final Landroid/dirEncryption/SDCardEncryptionPolicies;
.super Ljava/lang/Object;
.source "SDCardEncryptionPolicies.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/dirEncryption/SDCardEncryptionPolicies;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/dirEncryption/SDCardEncryptionPolicies;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mEnc:I

.field public mExcludeMedia:I

.field public mFullEnc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies$1;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies$1;-><init>()V

    sput-object v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->init()V

    .line 20
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "enc"    # I
    .param p2, "fullEnc"    # I
    .param p3, "excludeMedia"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 32
    iput p2, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 33
    iput p3, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    .line 158
    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 138
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0, p0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static unflattenFromString(Ljava/lang/String;)Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "values":[Ljava/lang/String;
    const/4 v0, 0x3

    .line 70
    .local v0, "enc":I
    const/4 v2, 0x5

    .line 71
    .local v2, "fullEnc":I
    const/4 v1, 0x7

    .line 74
    .local v1, "excludeMedia":I
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 75
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 76
    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 79
    :goto_0
    new-instance v4, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v4, v0, v2, v1}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    return-object v4

    .line 77
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/dirEncryption/SDCardEncryptionPolicies;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "c"    # Landroid/dirEncryption/SDCardEncryptionPolicies;
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 129
    if-eqz p0, :cond_0

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clone()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    iget v2, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    iget v3, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-direct {v0, v1, v2, v3}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->clone()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Landroid/dirEncryption/SDCardEncryptionPolicies;)I
    .locals 1
    .param p1, "that"    # Landroid/dirEncryption/SDCardEncryptionPolicies;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Landroid/dirEncryption/SDCardEncryptionPolicies;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    check-cast p1, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/dirEncryption/SDCardEncryptionPolicies;->compareTo(Landroid/dirEncryption/SDCardEncryptionPolicies;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 93
    if-eqz p1, :cond_0

    .line 94
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-object v1, v0

    .line 95
    .local v1, "other":Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget v3, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    iget v4, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    iget v4, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    iget v4, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 101
    .end local v1    # "other":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_0
    :goto_0
    return v2

    .line 99
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public flattenToShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public flattenToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultEnc()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    return v0
.end method

.method public getExcludeMedia()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    return v0
.end method

.method public getFullEnc()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x3

    iput v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 26
    const/4 v0, 0x7

    iput v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 122
    iget v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    return-void
.end method
