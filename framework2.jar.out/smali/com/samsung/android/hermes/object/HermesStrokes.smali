.class public Lcom/samsung/android/hermes/object/HermesStrokes;
.super Lcom/samsung/android/hermes/object/HermesObject;
.source "HermesStrokes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hermes/object/HermesStrokes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStrokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hermes/object/HermesStroke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/samsung/android/hermes/object/HermesStrokes$1;

    invoke-direct {v0}, Lcom/samsung/android/hermes/object/HermesStrokes$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hermes/object/HermesStrokes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/samsung/android/hermes/object/HermesObject;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hermes/object/HermesStrokes;->mStrokes:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hermes/object/HermesStrokes;->mStrokes:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public addStroke(Lcom/samsung/android/hermes/object/HermesStroke;)V
    .locals 1
    .param p1, "stroke"    # Lcom/samsung/android/hermes/object/HermesStroke;

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesStrokes;->mStrokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public getStrokes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hermes/object/HermesStroke;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesStrokes;->mStrokes:Ljava/util/List;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesStrokes;->mStrokes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hermes/object/HermesStrokes;->mStrokes:Ljava/util/List;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesStrokes;->mStrokes:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/hermes/object/HermesStroke;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 68
    return-void
.end method

.method public setStrokes([Lcom/samsung/android/hermes/object/HermesStroke;)V
    .locals 5
    .param p1, "stroke"    # [Lcom/samsung/android/hermes/object/HermesStroke;

    .prologue
    .line 31
    move-object v0, p1

    .local v0, "arr$":[Lcom/samsung/android/hermes/object/HermesStroke;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 32
    .local v3, "s":Lcom/samsung/android/hermes/object/HermesStroke;
    iget-object v4, p0, Lcom/samsung/android/hermes/object/HermesStrokes;->mStrokes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v3    # "s":Lcom/samsung/android/hermes/object/HermesStroke;
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesStrokes;->mStrokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesStrokes;->mStrokes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 58
    return-void
.end method
