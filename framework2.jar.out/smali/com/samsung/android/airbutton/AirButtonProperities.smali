.class public Lcom/samsung/android/airbutton/AirButtonProperities;
.super Ljava/lang/Object;
.source "AirButtonProperities.java"


# static fields
.field private static mIsUspFeatureChecked:Z

.field private static mIsUspFeatureEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    sput-boolean v0, Lcom/samsung/android/airbutton/AirButtonProperities;->mIsUspFeatureChecked:Z

    .line 11
    sput-boolean v0, Lcom/samsung/android/airbutton/AirButtonProperities;->mIsUspFeatureEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUspFeatureEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 14
    sget-boolean v1, Lcom/samsung/android/airbutton/AirButtonProperities;->mIsUspFeatureChecked:Z

    if-nez v1, :cond_1

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    .line 17
    .local v0, "uspLevel":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 18
    sput-boolean v3, Lcom/samsung/android/airbutton/AirButtonProperities;->mIsUspFeatureEnabled:Z

    .line 20
    :cond_0
    sput-boolean v3, Lcom/samsung/android/airbutton/AirButtonProperities;->mIsUspFeatureChecked:Z

    .line 23
    .end local v0    # "uspLevel":I
    :cond_1
    sget-boolean v1, Lcom/samsung/android/airbutton/AirButtonProperities;->mIsUspFeatureEnabled:Z

    return v1
.end method
