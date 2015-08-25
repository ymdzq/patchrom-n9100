.class Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;
.super Ljava/lang/Object;
.source "MotionRecognitionPalmMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionPalmMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PalmSweepRecognizer"
.end annotation


# instance fields
.field private final PALM_SWEEP_PROGRESS_SIZE:I

.field private final PALM_SWEEP_SIZE_TH:I

.field public final SWEEP_LEFT:I

.field public final SWEEP_RIGHT:I

.field private TILT_TO_ZOOM_XVAR:F

.field mArrValidMajor:[Z

.field private mDiffx:F

.field private mFalseSizeCnt:I

.field private mLRSDCnt:I

.field private mLRSizeDecreased:Z

.field private mMoveXTH:I

.field private mPreSweepDown:Z

.field private mSmeanX:F

.field private mSmeanXpre:F

.field private mSweepDown:Z

.field private mSweepInitDiffx:F

.field private mSweepLeftReverseSum:F

.field private mSweepReverse:F

.field private mSweepRightReverseSum:F

.field private mSweepVarX:F

.field private mVarXBig:Z

.field private mbPalmSwipeDetected:Z

.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;


# direct methods
.method private constructor <init>(Landroid/hardware/motion/MotionRecognitionPalmMotion;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 457
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepDown:Z

    .line 459
    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mPreSweepDown:Z

    .line 460
    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 462
    const/16 v0, 0x32

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->PALM_SWEEP_SIZE_TH:I

    .line 463
    const/16 v0, 0x23

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->PALM_SWEEP_PROGRESS_SIZE:I

    .line 464
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    .line 468
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->SWEEP_RIGHT:I

    .line 470
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->SWEEP_LEFT:I

    .line 473
    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 474
    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mVarXBig:Z

    .line 475
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mLRSDCnt:I

    .line 476
    iput v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mMoveXTH:I

    .line 477
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSmeanXpre:F

    .line 478
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSmeanX:F

    .line 479
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 480
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 481
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mDiffx:F

    .line 482
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepInitDiffx:F

    .line 483
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepVarX:F

    .line 484
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepReverse:F

    .line 486
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mArrValidMajor:[Z

    .line 490
    iput v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mFalseSizeCnt:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/motion/MotionRecognitionPalmMotion;Landroid/hardware/motion/MotionRecognitionPalmMotion$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion;
    .param p2, "x1"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$1;

    .prologue
    .line 457
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;-><init>(Landroid/hardware/motion/MotionRecognitionPalmMotion;)V

    return-void
.end method

.method private CalculateHorizontalSweepData(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)V
    .locals 6
    .param p1, "data"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    .prologue
    const/high16 v3, 0x42480000    # 50.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 561
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->SetArrMaxTouchMajor(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)V

    .line 568
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepDown:Z

    if-nez v0, :cond_2

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumMajor:F
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$2000(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumSize:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumEccen:F
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$2100(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumMajor:F
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$2000(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v1, 0x42200000    # 40.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mIsRotated:Z
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1900(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)Z

    move-result v0

    if-eqz v0, :cond_2

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumEccen:F
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$2100(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    :cond_1
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SvarX:F
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1200(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)F

    move-result v0

    iget v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1100(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)[I

    move-result-object v2

    aget v2, v2, v4

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 570
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SmeanX:F
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1800(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)F

    move-result v0

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepInitDiffx:F

    .line 571
    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepDown:Z

    .line 572
    iput-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 573
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1100(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)[I

    move-result-object v1

    aget v1, v1, v4

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepVarX:F

    .line 575
    const-string v0, "PalmMotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Surface touch Event] Palm swipe start, touchCnt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mTouchCnt:I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$2200(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepInitDiffx:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumMajor:F
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$2000(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumSize:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TILT_TO_ZOOM_XVAR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1100(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)[I

    move-result-object v3

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_2
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mTouchCnt:I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$2200(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_4

    .line 580
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepDown:Z

    if-eqz v0, :cond_4

    .line 581
    iget v0, p1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v1, 0x420c0000    # 35.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 582
    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 583
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mLRSDCnt:I

    if-gez v0, :cond_3

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mTouchCnt:I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$2200(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I

    move-result v0

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mLRSDCnt:I

    .line 584
    :cond_3
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mFalseSizeCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mFalseSizeCnt:I

    .line 589
    :cond_4
    iget v0, p1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mAction:I

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepDown:Z

    if-eqz v0, :cond_6

    .line 590
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSmeanXpre:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 591
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSmeanX:F

    iget v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSmeanXpre:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepRightReverseSum:F

    iget v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSmeanX:F

    iget v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSmeanXpre:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 592
    :cond_5
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSmeanX:F

    iget v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSmeanXpre:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    iget v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSmeanX:F

    iget v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSmeanXpre:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 595
    :cond_6
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SvarX:F
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1200(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)F

    move-result v0

    iget v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepVarX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mVarXBig:Z

    .line 596
    :cond_7
    return-void
.end method

.method private GetRangeNum(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I
    .locals 3
    .param p1, "data"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    .prologue
    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "result":I
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SmeanX:F
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1800(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)F

    move-result v2

    float-to-int v1, v2

    .line 523
    .local v1, "x":I
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mIsRotated:Z
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1900(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 525
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mScreenWidth:I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1700(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_0

    .line 527
    const/4 v0, 0x0

    .line 557
    :goto_0
    return v0

    .line 529
    :cond_0
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mScreenWidth:I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1700(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_1

    .line 531
    const/4 v0, 0x1

    goto :goto_0

    .line 535
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 540
    :cond_2
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mScreenWidth:I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1700(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_3

    .line 542
    const/4 v0, 0x0

    goto :goto_0

    .line 544
    :cond_3
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mScreenWidth:I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1700(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_4

    .line 546
    const/4 v0, 0x1

    goto :goto_0

    .line 548
    :cond_4
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mScreenWidth:I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1700(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_5

    .line 550
    const/4 v0, 0x2

    goto :goto_0

    .line 554
    :cond_5
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private RocognizeHorizontalSweepData(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)V
    .locals 9
    .param p1, "data"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 599
    iget-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mLRSizeDecreased:Z

    if-ne v2, v5, :cond_0

    .line 600
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mTouchCnt:I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$2200(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I

    move-result v2

    iget v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mLRSDCnt:I

    sub-int/2addr v2, v3

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    iget v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mFalseSizeCnt:I

    const/16 v3, 0x11

    if-le v2, v3, :cond_0

    .line 601
    iput-boolean v7, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepDown:Z

    .line 602
    const-string v2, "PalmMotion"

    const-string v3, "[Surface Touch Event] Palm Swipe Fail 3 - FalseSize "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    const/4 v1, 0x0

    .line 607
    .local v1, "validMajorCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 609
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mArrValidMajor:[Z

    aget-boolean v2, v2, v0

    if-ne v2, v5, :cond_1

    .line 611
    add-int/lit8 v1, v1, 0x1

    .line 607
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_2
    iget-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepDown:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmTouchRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$2300(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;

    move-result-object v2

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->mPalmDown:Z
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->access$2400(Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 616
    iget v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepInitDiffx:F

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SmeanX:F
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1800(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mDiffx:F

    .line 617
    iget-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mVarXBig:Z

    if-nez v2, :cond_6

    iget v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mMoveXTH:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    if-lt v1, v6, :cond_6

    .line 618
    iget v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepRightReverseSum:F

    iget v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepReverse:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    .line 619
    const-string v2, "PalmMotion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe - RIGHT, ValidMajor[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mArrValidMajor:[Z

    aget-boolean v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mArrValidMajor:[Z

    aget-boolean v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mArrValidMajor:[Z

    aget-boolean v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mArrValidMajor:[Z

    aget-boolean v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ] , dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mGestureSurfaceTouch:Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$1500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;->onSweepDown(I)Z

    .line 621
    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 638
    :cond_3
    :goto_1
    return-void

    .line 622
    :cond_4
    iget v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    iget v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepReverse:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5

    .line 623
    const-string v2, "PalmMotion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe - LEFT, ValidMajor[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mArrValidMajor:[Z

    aget-boolean v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mArrValidMajor:[Z

    aget-boolean v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mArrValidMajor:[Z

    aget-boolean v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mArrValidMajor:[Z

    aget-boolean v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] , dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mGestureSurfaceTouch:Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$1500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;->onSweepDown(I)Z

    .line 625
    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    goto :goto_1

    .line 628
    :cond_5
    const-string v2, "PalmMotion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe Fail 1 - mSweepRightReverseSum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepRightReverseSum:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSweepLeftReverseSum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 634
    :cond_6
    const-string v2, "PalmMotion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe Fail 2 - validMajor[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mArrValidMajor:[Z

    aget-boolean v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mArrValidMajor:[Z

    aget-boolean v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mArrValidMajor:[Z

    aget-boolean v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mArrValidMajor:[Z

    aget-boolean v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ] , dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mVarXBig:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mVarXBig:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private SetArrMaxTouchMajor(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)V
    .locals 3
    .param p1, "data"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    .prologue
    .line 504
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->GetRangeNum(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I

    move-result v0

    .line 511
    .local v0, "range":I
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mArrValidMajor:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 513
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mArrValidMajor:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 516
    :cond_0
    return-void
.end method

.method static synthetic access$700(Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;

    .prologue
    .line 457
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mPreSweepDown:Z

    return v0
.end method

.method static synthetic access$702(Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 457
    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mPreSweepDown:Z

    return p1
.end method

.method static synthetic access$800(Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;

    .prologue
    .line 457
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepDown:Z

    return v0
.end method

.method static synthetic access$802(Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 457
    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepDown:Z

    return p1
.end method


# virtual methods
.method public Initialize(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)V
    .locals 5
    .param p1, "data"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 652
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mScreenWidth:I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1700(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mMoveXTH:I

    .line 653
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mScreenHeight:I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1600(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I

    move-result v1

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mScreenWidth:I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1700(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 654
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mScreenWidth:I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1700(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    .line 658
    :goto_0
    iput-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepDown:Z

    .line 659
    iput-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mPreSweepDown:Z

    .line 660
    iput-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 661
    iput v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSmeanXpre:F

    .line 662
    iput v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSmeanX:F

    .line 663
    iput-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 664
    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mLRSDCnt:I

    .line 665
    iput v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 666
    iput v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 667
    iput v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mDiffx:F

    .line 668
    iput-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mVarXBig:Z

    .line 669
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepVarX:F

    .line 670
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    const/high16 v2, 0x40600000    # 3.5f

    div-float/2addr v1, v2

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepReverse:F

    .line 671
    iput v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepInitDiffx:F

    .line 673
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mFalseSizeCnt:I

    .line 674
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 676
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mArrValidMajor:[Z

    aput-boolean v3, v1, v0

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 656
    .end local v0    # "i":I
    :cond_0
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mScreenHeight:I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1600(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    goto :goto_0

    .line 680
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public Process(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)V
    .locals 2
    .param p1, "data"    # Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    .prologue
    .line 642
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSmeanX:F

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSmeanXpre:F

    .line 643
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SmeanX:F
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1800(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)F

    move-result v0

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSmeanX:F

    .line 644
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->CalculateHorizontalSweepData(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)V

    .line 645
    iget v0, p1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    if-nez v0, :cond_0

    .line 646
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->RocognizeHorizontalSweepData(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)V

    .line 648
    :cond_0
    return-void
.end method

.method public getSweepDown()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepDown:Z

    return v0
.end method

.method public setSweepDown(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 499
    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepDown:Z

    .line 500
    return-void
.end method
