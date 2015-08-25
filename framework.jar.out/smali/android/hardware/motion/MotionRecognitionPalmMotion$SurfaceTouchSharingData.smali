.class Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;
.super Ljava/lang/Object;
.source "MotionRecognitionPalmMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionPalmMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceTouchSharingData"
.end annotation


# instance fields
.field private Actiond:[I

.field private Major:[I

.field private Minor:[I

.field private Nd:[I

.field private SSsd:[[I

.field private Sed:[[F

.field private SmeanX:F

.field private SmeanY:F

.field private Ssd:[[I

.field private SsumEccen:F

.field private SsumMajor:F

.field private SsumMinor:F

.field public SsumSize:F

.field private SsumX:F

.field private SsumY:F

.field private SvarX:F

.field private SvarY:F

.field private Sxd:[[I

.field private Syd:[[I

.field private isPrintDebugLog:Z

.field public mAction:I

.field private mIsRotated:Z

.field private mLastGetSettingVariableTime:D

.field private mLastPalmSweepTouchUpTime:D

.field private mMaxSize:F

.field private mMotionEvent:Landroid/view/MotionEvent;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field public mSettingPalmSweep:I

.field public mSettingPalmTouch:I

.field public mSettingSurfaceMotionEngine:I

.field private mTimeGapUPDown:D

.field private mTouchCnt:I

.field private preSumSize:F

.field private tCurrentTime:D

.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;


# direct methods
.method private constructor <init>(Landroid/hardware/motion/MotionRecognitionPalmMotion;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/16 v5, 0xa

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 190
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Sxd:[[I

    .line 192
    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Syd:[[I

    .line 193
    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Ssd:[[I

    .line 194
    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Sed:[[F

    .line 195
    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SSsd:[[I

    .line 196
    new-array v0, v5, [I

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Major:[I

    .line 197
    new-array v0, v5, [I

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Minor:[I

    .line 198
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I

    .line 199
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Actiond:[I

    .line 201
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SvarX:F

    .line 202
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SvarY:F

    .line 204
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mTouchCnt:I

    .line 205
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mMaxSize:F

    .line 208
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumX:F

    .line 209
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumY:F

    .line 211
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumSize:F

    .line 212
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumEccen:F

    .line 213
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumMajor:F

    .line 214
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumMinor:F

    .line 215
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SmeanX:F

    .line 216
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SmeanY:F

    .line 217
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->preSumSize:F

    .line 221
    iput-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mIsRotated:Z

    .line 224
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    .line 226
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmSweep:I

    .line 228
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmTouch:I

    .line 230
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mScreenWidth:I

    .line 231
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mScreenHeight:I

    .line 233
    iput-wide v6, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->tCurrentTime:D

    .line 234
    iput-wide v6, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mLastPalmSweepTouchUpTime:D

    .line 236
    iput-wide v6, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mTimeGapUPDown:D

    .line 237
    iput-wide v6, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mLastGetSettingVariableTime:D

    .line 240
    iput-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->isPrintDebugLog:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/motion/MotionRecognitionPalmMotion;Landroid/hardware/motion/MotionRecognitionPalmMotion$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion;
    .param p2, "x1"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$1;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;-><init>(Landroid/hardware/motion/MotionRecognitionPalmMotion;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)[I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    .prologue
    .line 190
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)F
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    .prologue
    .line 190
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SvarX:F

    return v0
.end method

.method static synthetic access$1300(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)F
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    .prologue
    .line 190
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SvarY:F

    return v0
.end method

.method static synthetic access$1400(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    .prologue
    .line 190
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    .prologue
    .line 190
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$1700(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    .prologue
    .line 190
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$1800(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)F
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    .prologue
    .line 190
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SmeanX:F

    return v0
.end method

.method static synthetic access$1900(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    .prologue
    .line 190
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mIsRotated:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)F
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    .prologue
    .line 190
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumMajor:F

    return v0
.end method

.method static synthetic access$2100(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)F
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    .prologue
    .line 190
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumEccen:F

    return v0
.end method

.method static synthetic access$2200(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    .prologue
    .line 190
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mTouchCnt:I

    return v0
.end method


# virtual methods
.method public Initialize()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 392
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    const/16 v5, 0xa

    if-ge v2, v5, :cond_1

    .line 393
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v5, 0x3

    if-ge v1, v5, :cond_0

    .line 394
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v5, v5, v2

    aput v10, v5, v1

    .line 395
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Syd:[[I

    aget-object v5, v5, v2

    aput v10, v5, v1

    .line 396
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v5, v5, v2

    aput v10, v5, v1

    .line 397
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Sed:[[F

    aget-object v5, v5, v2

    aput v11, v5, v1

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 399
    :cond_0
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Major:[I

    aput v10, v5, v2

    .line 392
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 402
    .end local v1    # "i":I
    :cond_1
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I

    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I

    const/4 v7, 0x1

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I

    const/4 v9, 0x2

    aput v10, v8, v9

    aput v10, v6, v7

    aput v10, v5, v10

    .line 403
    iput v10, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mTouchCnt:I

    .line 404
    iput v11, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->preSumSize:F

    .line 405
    iput v11, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mMaxSize:F

    .line 407
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 408
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 409
    .local v0, "disp":Landroid/view/Display;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 410
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 412
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mScreenWidth:I

    .line 413
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mScreenHeight:I

    .line 414
    return-void
.end method

.method public PreUpdate(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    iput v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mAction:I

    .line 245
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Actiond:[I

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Actiond:[I

    aget v8, v8, v11

    aput v8, v7, v13

    .line 246
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Actiond:[I

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Actiond:[I

    aget v8, v8, v12

    aput v8, v7, v11

    .line 247
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Actiond:[I

    iget v8, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mAction:I

    aput v8, v7, v12

    .line 249
    const/4 v7, 0x0

    iput v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumSize:F

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 251
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 252
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v7, v7, v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getSurfaceSize(I)F

    move-result v8

    float-to-int v8, v8

    aput v8, v7, v12

    .line 251
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 254
    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    .line 255
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumSize:F

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v8, v8, v4

    aget v8, v8, v12

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumSize:F

    .line 254
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 257
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSumSize()Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSumSize()Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumSize:F

    .line 262
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_5

    .line 264
    :try_start_0
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 265
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 267
    .local v2, "disp":Landroid/view/Display;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 268
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 270
    const/4 v1, 0x1

    .line 271
    .local v1, "bitMask":I
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_4

    .line 272
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mIsRotated:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v1    # "bitMask":I
    .end local v2    # "disp":Landroid/view/Display;
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "wm":Landroid/view/WindowManager;
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-double v7, v7

    iput-wide v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->tCurrentTime:D

    .line 282
    iget-wide v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->tCurrentTime:D

    iget-wide v9, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mLastPalmSweepTouchUpTime:D

    sub-double/2addr v7, v9

    iput-wide v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mTimeGapUPDown:D

    .line 283
    iget-wide v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mTimeGapUPDown:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_3

    iget-wide v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mTimeGapUPDown:D

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    cmpg-double v7, v7, v9

    if-gez v7, :cond_3

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Actiond:[I

    aget v7, v7, v12

    if-nez v7, :cond_3

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Actiond:[I

    aget v7, v7, v11

    if-ne v7, v11, :cond_3

    .line 285
    iput v13, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mAction:I

    .line 286
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmSweepRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$600(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;

    move-result-object v7

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mPreSweepDown:Z
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->access$700(Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 287
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmSweepRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$600(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;

    move-result-object v7

    # setter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepDown:Z
    invoke-static {v7, v11}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->access$802(Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;Z)Z

    .line 288
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # setter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmMotionRecognizer:Z
    invoke-static {v7, v11}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$902(Landroid/hardware/motion/MotionRecognitionPalmMotion;Z)Z

    .line 289
    const-string v7, "PalmMotion"

    const-string v8, "[Surface Touch] MotionEvent change to ACTION_MOVE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_3
    :goto_3
    return-void

    .line 274
    .restart local v1    # "bitMask":I
    .restart local v2    # "disp":Landroid/view/Display;
    .restart local v5    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "wm":Landroid/view/WindowManager;
    :cond_4
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mIsRotated:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 276
    .end local v1    # "bitMask":I
    .end local v2    # "disp":Landroid/view/Display;
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v3

    .line 277
    .local v3, "e":Ljava/lang/Exception;
    iput-boolean v12, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mIsRotated:Z

    .line 278
    const-string v7, "PalmMotion"

    const-string v8, "[Surface Touch] Default Rotate = false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 292
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v11, :cond_3

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-double v7, v7

    iput-wide v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mLastPalmSweepTouchUpTime:D

    goto :goto_3
.end method

.method public Update(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 299
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mMotionEvent:Landroid/view/MotionEvent;

    .line 302
    iput v6, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumX:F

    .line 303
    iput v6, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumY:F

    .line 304
    iput v6, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumEccen:F

    .line 305
    iput v6, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SmeanX:F

    .line 306
    iput v6, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SmeanY:F

    .line 307
    iput v6, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumMajor:F

    .line 308
    iput v6, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumMinor:F

    .line 310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 312
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 313
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 314
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    .line 315
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Syd:[[I

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Syd:[[I

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    .line 316
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    .line 317
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Sed:[[F

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Sed:[[F

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    .line 318
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SSsd:[[I

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SSsd:[[I

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    .line 313
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 312
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 323
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v3, v3, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v7

    .line 324
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Syd:[[I

    aget-object v3, v3, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v7

    .line 325
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Sed:[[F

    aget-object v3, v3, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getEccen(I)F

    move-result v4

    aput v4, v3, v7

    .line 326
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Major:[I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getSurfaceMajor(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v1

    .line 327
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Minor:[I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getSurfaceMinor(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v1

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 330
    :cond_2
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v8

    aput v4, v3, v9

    .line 331
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v7

    aput v4, v3, v8

    .line 332
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I

    aput v0, v3, v7

    .line 334
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mTouchCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mTouchCnt:I

    .line 336
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mTouchCnt:I

    if-ne v3, v8, :cond_3

    .line 337
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v3, v3, v7

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v4, v4, v7

    aget v4, v4, v7

    aput v4, v3, v8

    .line 338
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Syd:[[I

    aget-object v3, v3, v7

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Syd:[[I

    aget-object v4, v4, v7

    aget v4, v4, v7

    aput v4, v3, v8

    .line 339
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v3, v3, v7

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v4, v4, v7

    aget v4, v4, v8

    aput v4, v3, v9

    .line 340
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Syd:[[I

    aget-object v3, v3, v7

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Syd:[[I

    aget-object v4, v4, v7

    aget v4, v4, v8

    aput v4, v3, v9

    .line 343
    :cond_3
    const/4 v1, 0x0

    :goto_3
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I

    aget v3, v3, v7

    if-ge v1, v3, :cond_4

    .line 344
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumX:F

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumX:F

    .line 345
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumY:F

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Syd:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumY:F

    .line 346
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumMajor:F

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Major:[I

    aget v4, v4, v1

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumMajor:F

    .line 347
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumMinor:F

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Minor:[I

    aget v4, v4, v1

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumMinor:F

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 349
    :cond_4
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumX:F

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v7

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SmeanX:F

    .line 350
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumY:F

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v7

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SmeanY:F

    .line 351
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumMajor:F

    iget v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumMinor:F

    div-float/2addr v3, v4

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumEccen:F

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEccen()F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEccen()F

    move-result v3

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumEccen:F

    .line 359
    :cond_5
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Actiond:[I

    aget v3, v3, v7

    if-ne v3, v8, :cond_6

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Actiond:[I

    aget v3, v3, v8

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    .line 360
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->preSumSize:F

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumSize:F

    .line 363
    :cond_6
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumSize:F

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->preSumSize:F

    .line 365
    iput v6, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SvarX:F

    .line 366
    iput v6, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SvarY:F

    .line 368
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I

    aget v3, v3, v7

    if-ge v1, v3, :cond_7

    .line 369
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SvarX:F

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    int-to-float v4, v4

    iget v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SmeanX:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    int-to-float v5, v5

    iget v6, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SmeanX:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SvarX:F

    .line 370
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SvarY:F

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Syd:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    int-to-float v4, v4

    iget v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SmeanY:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Syd:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    int-to-float v5, v5

    iget v6, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SmeanY:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SvarY:F

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 373
    :cond_7
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SvarX:F

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v7

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SvarX:F

    .line 374
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SvarY:F

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v7

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SvarY:F

    .line 376
    iget-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->isPrintDebugLog:Z

    if-nez v3, :cond_8

    const/4 v3, 0x5

    if-lt v0, v3, :cond_8

    .line 377
    iput-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->isPrintDebugLog:Z

    .line 379
    :cond_8
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->DEBUG:Z
    invoke-static {}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$1000()Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mTouchCnt:I

    const/16 v4, 0x32

    if-ge v3, v4, :cond_9

    iget-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->isPrintDebugLog:Z

    if-eqz v3, :cond_9

    .line 380
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_9

    .line 381
    const-string v3, "PalmMotion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ST] cnt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mTouchCnt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " N:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Syd:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " s:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SsumEccen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumEccen:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pa:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sumMajor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumMajor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sumMinor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumMinor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SumSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumSize:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SvarX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SvarX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SvarY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SvarY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 387
    :cond_9
    return-void
.end method
