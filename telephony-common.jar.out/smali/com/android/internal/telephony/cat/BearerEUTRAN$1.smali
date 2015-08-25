.class final Lcom/android/internal/telephony/cat/BearerEUTRAN$1;
.super Ljava/lang/Object;
.source "BearerEUTRAN.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BearerEUTRAN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/telephony/cat/BearerEUTRAN;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/BearerEUTRAN;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 56
    new-instance v0, Lcom/android/internal/telephony/cat/BearerEUTRAN;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/cat/BearerEUTRAN;-><init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/BearerEUTRAN$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/BearerEUTRAN$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/BearerEUTRAN;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/cat/BearerEUTRAN;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 60
    new-array v0, p1, [Lcom/android/internal/telephony/cat/BearerEUTRAN;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/BearerEUTRAN$1;->newArray(I)[Lcom/android/internal/telephony/cat/BearerEUTRAN;

    move-result-object v0

    return-object v0
.end method
