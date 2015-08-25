.class public Lcom/samsung/android/hermes/object/HermesHtml;
.super Lcom/samsung/android/hermes/object/HermesObject;
.source "HermesHtml.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hermes/object/HermesHtml;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHtml:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/samsung/android/hermes/object/HermesHtml$1;

    invoke-direct {v0}, Lcom/samsung/android/hermes/object/HermesHtml$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hermes/object/HermesHtml;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/hermes/object/HermesObject;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/samsung/android/hermes/object/HermesHtml;->mText:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/samsung/android/hermes/object/HermesHtml;->mHtml:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesHtml;->mHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesHtml;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hermes/object/HermesHtml;->mText:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hermes/object/HermesHtml;->mHtml:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHtml"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/samsung/android/hermes/object/HermesHtml;->mHtml:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "mText"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/samsung/android/hermes/object/HermesHtml;->mText:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesHtml;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesHtml;->mHtml:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return-void
.end method
