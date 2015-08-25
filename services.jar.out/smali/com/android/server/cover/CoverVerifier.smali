.class final Lcom/android/server/cover/CoverVerifier;
.super Ljava/lang/Object;
.source "CoverVerifier.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CoverManager.CoverVerifier"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultCoverColor:I

.field private mDefaultCoverModel:I

.field private mDefaultCoverType:I

.field private mDefaultMiniSViewCoverHeight:I

.field private mDefaultMiniSViewCoverWidth:I

.field private mDefaultSViewCoverHeight:I

.field private mDefaultSViewCoverWidth:I

.field private mIsCoverAttached:Z

.field private mIsCoverVerified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/cover/CoverVerifier;->SAFE_DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverType:I

    .line 40
    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverColor:I

    .line 41
    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverModel:I

    .line 42
    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverWidth:I

    .line 43
    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverHeight:I

    .line 44
    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverWidth:I

    .line 45
    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverHeight:I

    .line 47
    iput-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 48
    iput-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 51
    iput-object p1, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/android/server/cover/CoverVerifier;->initializeDefaultCoverState()V

    .line 53
    return-void
.end method

.method private getDefaultTypeOfCover()I
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 56
    iget-object v3, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isSupportVerifyCover()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 57
    iget-object v2, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isSViewCoverTestMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isMiniSViewCoverTestMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    move v0, v1

    .line 62
    goto :goto_0

    .line 65
    :cond_3
    iget-object v3, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 66
    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 67
    goto :goto_0

    .line 70
    :cond_4
    iget-object v3, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isSupportSViewCover()Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 73
    goto :goto_0

    :cond_5
    move v0, v1

    .line 77
    goto :goto_0
.end method

.method private getSupportSViewCoverHeight(I)I
    .locals 1
    .param p1, "coverType"    # I

    .prologue
    .line 98
    packed-switch p1, :pswitch_data_0

    .line 107
    :pswitch_0
    const/4 v0, 0x0

    .line 109
    .local v0, "supportSViewCoverHeight":I
    :goto_0
    return v0

    .line 101
    .end local v0    # "supportSViewCoverHeight":I
    :pswitch_1
    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverHeight:I

    .line 102
    .restart local v0    # "supportSViewCoverHeight":I
    goto :goto_0

    .line 104
    .end local v0    # "supportSViewCoverHeight":I
    :pswitch_2
    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverHeight:I

    .line 105
    .restart local v0    # "supportSViewCoverHeight":I
    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getSupportSViewCoverWidth(I)I
    .locals 1
    .param p1, "coverType"    # I

    .prologue
    .line 82
    packed-switch p1, :pswitch_data_0

    .line 91
    :pswitch_0
    const/4 v0, 0x0

    .line 93
    .local v0, "supportSViewCoverWidth":I
    :goto_0
    return v0

    .line 85
    .end local v0    # "supportSViewCoverWidth":I
    :pswitch_1
    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverWidth:I

    .line 86
    .restart local v0    # "supportSViewCoverWidth":I
    goto :goto_0

    .line 88
    .end local v0    # "supportSViewCoverWidth":I
    :pswitch_2
    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverWidth:I

    .line 89
    .restart local v0    # "supportSViewCoverWidth":I
    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initializeDefaultCoverState()V
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 115
    const v1, 0x105013f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverWidth:I

    .line 117
    const v1, 0x1050140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverHeight:I

    .line 119
    const v1, 0x1050141

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverWidth:I

    .line 121
    const v1, 0x1050142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverHeight:I

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/android/server/cover/CoverVerifier;->getDefaultTypeOfCover()I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverType:I

    .line 125
    return-void
.end method

.method private static isFactoryMode()Z
    .locals 2

    .prologue
    .line 234
    const-string/jumbo v1, "ro.factory.factory_binary"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "strFactoryProp":Ljava/lang/String;
    const-string v1, "factory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 239
    const-string v0, " Current CoverVerifier state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    const-string v0, "  mIsCoverVerified="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 241
    const-string v0, "  mIsCoverAttached="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 242
    const-string v0, "  mDefaultCoverType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 243
    const-string v0, "  mDefaultCoverColor="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverColor:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 244
    const-string v0, "  mDefaultSViewCoverWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 245
    const-string v0, "  mDefaultSViewCoverHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultSViewCoverHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 246
    const-string v0, "  mDefaultMiniSViewCoverWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 247
    const-string v0, "  mDefaultMiniSViewCoverHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultMiniSViewCoverHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 248
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method isCoverAttached()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    return v0
.end method

.method isCoverVerified()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    return v0
.end method

.method isCoverVerifiedAndAttached()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onUpdateCoverAttachedLocked(Z)Z
    .locals 4
    .param p1, "attached"    # Z

    .prologue
    const/4 v3, 0x1

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "change":Z
    iget-object v1, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->isSupportVerifyCover()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    iget-object v1, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->isSViewCoverTestMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->isMiniSViewCoverTestMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    if-nez v1, :cond_1

    .line 194
    iput-boolean v3, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 195
    const/4 v0, 0x1

    .line 213
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    iput-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 214
    sget-boolean v1, Lcom/android/server/cover/CoverVerifier;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2

    .line 215
    const-string v1, "CoverManager.CoverVerifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateCoverAttachedLocked : mIsCoverVerified ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", attached="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", change="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_2
    return v0

    .line 198
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eq v1, p1, :cond_1

    .line 199
    iput-boolean p1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 200
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    :cond_4
    const-string v1, "CoverManager.CoverVerifier"

    const-string/jumbo v2, "updateCoverAttachedLocked : This device is not support cover attach"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    if-nez v1, :cond_1

    .line 209
    iput-boolean v3, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 210
    const/4 v0, 0x1

    goto :goto_0
.end method

.method onUpdateCoverVerifiedLocked()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "change":Z
    iget-object v2, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isSupportVerifyCover()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 156
    iget-object v2, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isSViewCoverTestMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isMiniSViewCoverTestMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    if-nez v2, :cond_1

    .line 159
    iput-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 160
    const/4 v0, 0x1

    .line 180
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    iput-boolean v2, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 181
    sget-boolean v2, Lcom/android/server/cover/CoverVerifier;->SAFE_DEBUG:Z

    if-eqz v2, :cond_2

    .line 182
    const-string v2, "CoverManager.CoverVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCoverVerificationLocked : mIsCoverVerified ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", change="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_2
    return v0

    .line 163
    :cond_3
    const-string v2, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/server/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    .line 165
    .local v1, "verified":Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    if-eq v2, v1, :cond_1

    .line 166
    iput-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 167
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "verified":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 172
    :cond_5
    const-string v2, "CoverManager.CoverVerifier"

    const-string/jumbo v3, "updateCoverVerificationLocked : This device is not support cover verify"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-boolean v2, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    if-nez v2, :cond_1

    .line 176
    iput-boolean v1, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 177
    const/4 v0, 0x1

    goto :goto_0
.end method

.method updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;)V
    .locals 8
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSViewCoverTestMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isMiniSViewCoverTestMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eqz v0, :cond_2

    .line 132
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    iget v5, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverType:I

    invoke-static {v0, v5}, Lcom/android/server/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v1

    .line 134
    .local v1, "type":I
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    iget v5, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverColor:I

    invoke-static {v0, v5}, Lcom/android/server/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v2

    .line 136
    .local v2, "color":I
    const-string v0, "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_model"

    iget v5, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverModel:I

    invoke-static {v0, v5}, Lcom/android/server/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v6

    .line 143
    .local v6, "model":I
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    move-result v3

    .line 144
    .local v3, "widthPixel":I
    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    move-result v4

    .line 145
    .local v4, "heightPixel":I
    invoke-static {}, Lcom/android/server/cover/CoverVerifier;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-boolean v5, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/cover/CoverState;->updateCoverState(IIIIZI)V

    .line 147
    :cond_0
    sget-boolean v0, Lcom/android/server/cover/CoverVerifier;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    .line 148
    const-string v0, "CoverManager.CoverVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCoverPropertiesLocked : mIsCoverAttached ="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/server/cover/CoverVerifier;->mIsCoverAttached:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", type="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", color="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", model="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_1
    return-void

    .line 139
    .end local v1    # "type":I
    .end local v2    # "color":I
    .end local v3    # "widthPixel":I
    .end local v4    # "heightPixel":I
    .end local v6    # "model":I
    :cond_2
    iget v1, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverType:I

    .line 140
    .restart local v1    # "type":I
    iget v2, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverColor:I

    .line 141
    .restart local v2    # "color":I
    iget v6, p0, Lcom/android/server/cover/CoverVerifier;->mDefaultCoverModel:I

    .restart local v6    # "model":I
    goto :goto_0
.end method
