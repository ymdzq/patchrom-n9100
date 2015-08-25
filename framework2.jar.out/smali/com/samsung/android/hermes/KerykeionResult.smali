.class public Lcom/samsung/android/hermes/KerykeionResult;
.super Ljava/lang/Object;
.source "KerykeionResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hermes/KerykeionResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final HIDE_HERMES_UI:I = 0x2

.field private static final SUPPORT_HERMES_UI:I = 0x1

.field private static final USE_EXTRA:I = 0x2

.field private static final USE_RESULT:I = 0x1


# instance fields
.field private mAccuracy:F

.field private mEndPos:I

.field private mExtraDatas:Ljava/lang/Object;

.field private mResult:Ljava/lang/Object;

.field private mResultType:I

.field private mSrc:Ljava/lang/String;

.field private mStartPos:I

.field private mUIState:I

.field private mUsingData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/samsung/android/hermes/KerykeionResult$1;

    invoke-direct {v0}, Lcom/samsung/android/hermes/KerykeionResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hermes/KerykeionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;IIF)V
    .locals 0
    .param p1, "mResultType"    # I
    .param p2, "mSrc"    # Ljava/lang/String;
    .param p3, "mResult"    # Ljava/lang/Object;
    .param p4, "mExtraDatas"    # Ljava/lang/Object;
    .param p5, "mStartPos"    # I
    .param p6, "mEndPos"    # I
    .param p7, "mAccuracy"    # F

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResultType:I

    .line 46
    iput-object p2, p0, Lcom/samsung/android/hermes/KerykeionResult;->mSrc:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResult:Ljava/lang/Object;

    .line 48
    iput-object p4, p0, Lcom/samsung/android/hermes/KerykeionResult;->mExtraDatas:Ljava/lang/Object;

    .line 49
    iput p5, p0, Lcom/samsung/android/hermes/KerykeionResult;->mStartPos:I

    .line 50
    iput p6, p0, Lcom/samsung/android/hermes/KerykeionResult;->mEndPos:I

    .line 51
    iput p7, p0, Lcom/samsung/android/hermes/KerykeionResult;->mAccuracy:F

    .line 52
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;IIFII)V
    .locals 0
    .param p1, "mResultType"    # I
    .param p2, "mSrc"    # Ljava/lang/String;
    .param p3, "mResult"    # Ljava/lang/Object;
    .param p4, "mExtraDatas"    # Ljava/lang/Object;
    .param p5, "mStartPos"    # I
    .param p6, "mEndPos"    # I
    .param p7, "mAccuracy"    # F
    .param p8, "mUIState"    # I
    .param p9, "mUsingData"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResultType:I

    .line 58
    iput-object p2, p0, Lcom/samsung/android/hermes/KerykeionResult;->mSrc:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResult:Ljava/lang/Object;

    .line 60
    iput-object p4, p0, Lcom/samsung/android/hermes/KerykeionResult;->mExtraDatas:Ljava/lang/Object;

    .line 61
    iput p5, p0, Lcom/samsung/android/hermes/KerykeionResult;->mStartPos:I

    .line 62
    iput p6, p0, Lcom/samsung/android/hermes/KerykeionResult;->mEndPos:I

    .line 63
    iput p7, p0, Lcom/samsung/android/hermes/KerykeionResult;->mAccuracy:F

    .line 64
    iput p8, p0, Lcom/samsung/android/hermes/KerykeionResult;->mUIState:I

    .line 65
    iput p9, p0, Lcom/samsung/android/hermes/KerykeionResult;->mUsingData:I

    .line 66
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mAccuracy:F

    return v0
.end method

.method public getAdaptableData()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mUsingData:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mExtraDatas:Ljava/lang/Object;

    .line 103
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResult:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getEndPos()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mEndPos:I

    return v0
.end method

.method public getExtraDatas()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mExtraDatas:Ljava/lang/Object;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultType()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResultType:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPos()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mStartPos:I

    return v0
.end method

.method public isPossibleToShow()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 111
    iget v1, p0, Lcom/samsung/android/hermes/KerykeionResult;->mUIState:I

    if-ne v1, v0, :cond_0

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResultType:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mSrc:Ljava/lang/String;

    .line 146
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResult:Ljava/lang/Object;

    .line 147
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mExtraDatas:Ljava/lang/Object;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mStartPos:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mEndPos:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mAccuracy:F

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mUIState:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mUsingData:I

    .line 153
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 129
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResultType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mSrc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mResult:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mExtraDatas:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 133
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mEndPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 136
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mUIState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Lcom/samsung/android/hermes/KerykeionResult;->mUsingData:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return-void
.end method
