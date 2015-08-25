.class public Landroid/hardware/scontext/SContextCurrentStatusForPositioning;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextCurrentStatusForPositioning.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextCurrentStatusForPositioning;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextCurrentStatusForPositioning$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->mContext:Landroid/os/Bundle;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 42
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->readFromParcel(Landroid/os/Parcel;)V

    .line 43
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->mContext:Landroid/os/Bundle;

    .line 61
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/hardware/scontext/SContextEventContext;->describeContents()I

    move-result v0

    return v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->mContext:Landroid/os/Bundle;

    const-string v1, "Status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Landroid/hardware/scontext/SContextEventContext;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method