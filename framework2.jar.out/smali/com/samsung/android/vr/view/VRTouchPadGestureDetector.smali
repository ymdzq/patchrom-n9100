.class public Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;
.super Ljava/lang/Object;
.source "VRTouchPadGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadDoubleTapListener;,
        Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadGestureListener;,
        Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$VRTouchPadGestureHandler;
    }
.end annotation


# static fields
.field public static final ACTION_SWIPE_BACKWARD:I = 0x0

.field public static final ACTION_SWIPE_DOWN:I = 0x3

.field public static final ACTION_SWIPE_FORWARD:I = 0x1

.field private static final ACTION_SWIPE_INVALID:I = -0x1

.field public static final ACTION_SWIPE_UP:I = 0x2

.field private static final ACTION_TAP:I = 0x4

.field private static final DEGREE_0:I = 0x0

.field private static final DEGREE_1:I = 0x46

.field private static final DEGREE_2:I = 0x6e

.field private static final DEGREE_3:I = 0xfa

.field private static final DEGREE_4:I = 0x122

.field private static final DEGREE_5:I = 0x168

.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final LONGPRESS_TIMEOUT:I = 0x1f4

.field private static final LONG_PRESS:I = 0x1

.field private static final MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final MINIMUM_FLING_VELOCITY:I = 0x7d0

.field static final TAG:Ljava/lang/String; = "VRTouchPadGestureDetector"

.field private static final TAP:I = 0x2

.field private static final TAP_TIMEOUT:I = 0xb4

.field private static final TOUCH_XSLOP:I = 0x28

.field private static final TOUCH_YSLOP:I = 0x14

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private mAlwaysInTapRegion:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDeferConfirmSingleTap:Z

.field private mDoubleTapListener:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private final mListener:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchXSlopSquare:I

.field private mTouchYSlopSquare:I

.field private mUpFocusX:F

.field private mUpFocusY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVelocityUnits:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadGestureListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadGestureListener;

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;-><init>(Landroid/content/Context;Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadGestureListener;Landroid/os/Handler;)V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadGestureListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    if-eqz p3, :cond_0

    .line 228
    new-instance v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$VRTouchPadGestureHandler;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$VRTouchPadGestureHandler;-><init>(Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mHandler:Landroid/os/Handler;

    .line 232
    :goto_0
    iput-object p2, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mListener:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadGestureListener;

    .line 233
    invoke-direct {p0, p1}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->init(Landroid/content/Context;)V

    .line 234
    return-void

    .line 230
    :cond_0
    new-instance v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$VRTouchPadGestureHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$VRTouchPadGestureHandler;-><init>(Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;)V

    iput-object v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadGestureListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadGestureListener;

    .prologue
    const/4 v0, 0x0

    .line 196
    invoke-direct {p0, v0, p1, v0}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;-><init>(Landroid/content/Context;Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadGestureListener;Landroid/os/Handler;)V

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;)Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadDoubleTapListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDoubleTapListener:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mStillDown:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDeferConfirmSingleTap:Z

    return p1
.end method

.method private cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 396
    iget-object v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 397
    iget-object v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 399
    iput-boolean v2, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mAlwaysInTapRegion:Z

    .line 400
    iput-boolean v2, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDeferConfirmSingleTap:Z

    .line 401
    iput-boolean v2, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mStillDown:Z

    .line 402
    iget-boolean v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_0

    .line 403
    iput-boolean v2, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mInLongPress:Z

    .line 405
    :cond_0
    return-void
.end method

.method private cancelTaps()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 408
    iget-object v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 409
    iput-boolean v2, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mAlwaysInTapRegion:Z

    .line 410
    iput-boolean v2, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDeferConfirmSingleTap:Z

    .line 411
    iget-boolean v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_0

    .line 412
    iput-boolean v2, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mInLongPress:Z

    .line 414
    :cond_0
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDeferConfirmSingleTap:Z

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mInLongPress:Z

    .line 461
    iget-object v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mListener:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadGestureListener;

    iget-object v1, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadGestureListener;->onLongPress(Landroid/view/MotionEvent;)Z

    .line 462
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mListener:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadGestureListener;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OnTouchPadGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mIsLongpressEnabled:Z

    .line 241
    const/16 v0, 0x640

    iput v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mTouchXSlopSquare:I

    .line 242
    const/16 v0, 0x190

    iput v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mTouchYSlopSquare:I

    .line 243
    const/16 v0, 0x2710

    iput v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDoubleTapSlopSquare:I

    .line 244
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mMinimumFlingVelocity:I

    .line 245
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mMaximumFlingVelocity:I

    .line 246
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mVelocityUnits:I

    .line 247
    return-void
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "firstDown"    # Landroid/view/MotionEvent;
    .param p2, "firstUp"    # Landroid/view/MotionEvent;
    .param p3, "secondDown"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 417
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x12c

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v2

    .line 421
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int v0, v3, v4

    .line 422
    .local v0, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v1, v3, v4

    .line 423
    .local v1, "deltaY":I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_2

    const/4 v2, 0x1

    .line 424
    .local v2, "ret":Z
    :cond_2
    if-nez v2, :cond_0

    .line 425
    const-string v3, "VRTouchPadGestureDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isConsideredDoubleTap distance["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int v5, v0, v0

    mul-int v6, v1, v1

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDoubleTapSlopSquare:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processForSwipeAction(FFFF)I
    .locals 7
    .param p1, "downPositionX"    # F
    .param p2, "downPositionY"    # F
    .param p3, "upPositionX"    # F
    .param p4, "upPositionY"    # F

    .prologue
    .line 431
    sub-float v1, p3, p1

    .line 432
    .local v1, "deltaX":F
    sub-float v2, p4, p2

    .line 434
    .local v2, "deltaY":F
    const-string v3, "VRTouchPadGestureDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processForSwipeAction deltaX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " deltaY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    float-to-double v3, v1

    float-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 437
    .local v0, "angle":F
    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 438
    const/high16 v3, 0x43b40000    # 360.0f

    add-float/2addr v0, v3

    .line 440
    :cond_0
    const-string v3, "VRTouchPadGestureDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processForSwipeAction angle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_1

    const/high16 v3, 0x428c0000    # 70.0f

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_2

    :cond_1
    const/high16 v3, 0x43910000    # 290.0f

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_3

    const/high16 v3, 0x43b40000    # 360.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    .line 443
    :cond_2
    const/4 v3, 0x3

    .line 454
    :goto_0
    return v3

    .line 445
    :cond_3
    const/high16 v3, 0x428c0000    # 70.0f

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_4

    const/high16 v3, 0x42dc0000    # 110.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_4

    .line 446
    const/4 v3, 0x0

    goto :goto_0

    .line 448
    :cond_4
    const/high16 v3, 0x42dc0000    # 110.0f

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_5

    const/high16 v3, 0x437a0000    # 250.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_5

    .line 449
    const/4 v3, 0x2

    goto :goto_0

    .line 451
    :cond_5
    const/high16 v3, 0x437a0000    # 250.0f

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_6

    const/high16 v3, 0x43910000    # 290.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6

    .line 452
    const/4 v3, 0x1

    goto :goto_0

    .line 454
    :cond_6
    const/4 v3, -0x1

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 35
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 261
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 263
    .local v5, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    if-nez v29, :cond_0

    .line 264
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 266
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 268
    and-int/lit16 v0, v5, 0xff

    move/from16 v29, v0

    const/16 v30, 0x6

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    const/16 v19, 0x1

    .line 270
    .local v19, "pointerUp":Z
    :goto_0
    if-eqz v19, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v22

    .line 272
    .local v22, "skipIndex":I
    :goto_1
    const/16 v23, 0x0

    .local v23, "sumX":F
    const/16 v24, 0x0

    .line 273
    .local v24, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 274
    .local v6, "count":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v6, :cond_4

    .line 275
    move/from16 v0, v22

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 274
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 268
    .end local v6    # "count":I
    .end local v17    # "i":I
    .end local v19    # "pointerUp":Z
    .end local v22    # "skipIndex":I
    .end local v23    # "sumX":F
    .end local v24    # "sumY":F
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 270
    .restart local v19    # "pointerUp":Z
    :cond_2
    const/16 v22, -0x1

    goto :goto_1

    .line 276
    .restart local v6    # "count":I
    .restart local v17    # "i":I
    .restart local v22    # "skipIndex":I
    .restart local v23    # "sumX":F
    .restart local v24    # "sumY":F
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v29

    add-float v23, v23, v29

    .line 277
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v29

    add-float v24, v24, v29

    goto :goto_3

    .line 279
    :cond_4
    if-eqz v19, :cond_6

    add-int/lit8 v12, v6, -0x1

    .line 280
    .local v12, "div":I
    :goto_4
    int-to-float v0, v12

    move/from16 v29, v0

    div-float v13, v23, v29

    .line 281
    .local v13, "focusX":F
    int-to-float v0, v12

    move/from16 v29, v0

    div-float v14, v24, v29

    .line 283
    .local v14, "focusY":F
    const/16 v16, 0x0

    .line 285
    .local v16, "handled":Z
    and-int/lit16 v0, v5, 0xff

    move/from16 v29, v0

    packed-switch v29, :pswitch_data_0

    .line 392
    :cond_5
    :goto_5
    :pswitch_0
    return v16

    .end local v12    # "div":I
    .end local v13    # "focusX":F
    .end local v14    # "focusY":F
    .end local v16    # "handled":Z
    :cond_6
    move v12, v6

    .line 279
    goto :goto_4

    .line 293
    .restart local v12    # "div":I
    .restart local v13    # "focusX":F
    .restart local v14    # "focusY":F
    .restart local v16    # "handled":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDoubleTapListener:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadDoubleTapListener;

    move-object/from16 v29, v0

    if-eqz v29, :cond_8

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v15

    .line 295
    .local v15, "hadTapMessage":Z
    if-eqz v15, :cond_7

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v29, v0

    if-eqz v29, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v29, v0

    if-eqz v29, :cond_a

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDoubleTapListener:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadDoubleTapListener;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    invoke-interface/range {v29 .. v30}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v29

    or-int v16, v16, v29

    .line 306
    .end local v15    # "hadTapMessage":Z
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDownFocusX:F

    .line 307
    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDownFocusY:F

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/MotionEvent;->recycle()V

    .line 311
    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 312
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mAlwaysInTapRegion:Z

    .line 313
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mStillDown:Z

    .line 314
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mInLongPress:Z

    .line 315
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDeferConfirmSingleTap:Z

    .line 317
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mIsLongpressEnabled:Z

    move/from16 v29, v0

    if-eqz v29, :cond_5

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->removeMessages(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v31

    const-wide/16 v33, 0xb4

    add-long v31, v31, v33

    const-wide/16 v33, 0x1f4

    add-long v31, v31, v33

    invoke-virtual/range {v29 .. v32}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_5

    .line 303
    .restart local v15    # "hadTapMessage":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    const-wide/16 v31, 0x12c

    invoke-virtual/range {v29 .. v32}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_6

    .line 325
    .end local v15    # "hadTapMessage":Z
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mInLongPress:Z

    move/from16 v29, v0

    if-nez v29, :cond_5

    .line 328
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mLastFocusX:F

    move/from16 v29, v0

    sub-float v20, v29, v13

    .line 329
    .local v20, "scrollX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mLastFocusY:F

    move/from16 v29, v0

    sub-float v21, v29, v14

    .line 331
    .local v21, "scrollY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v29, v0

    if-eqz v29, :cond_5

    .line 332
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDownFocusX:F

    move/from16 v29, v0

    sub-float v29, v13, v29

    move/from16 v0, v29

    float-to-int v8, v0

    .line 333
    .local v8, "deltaX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDownFocusY:F

    move/from16 v29, v0

    sub-float v29, v14, v29

    move/from16 v0, v29

    float-to-int v9, v0

    .line 334
    .local v9, "deltaY":I
    mul-int v10, v8, v8

    .line 335
    .local v10, "distanceX":I
    mul-int v11, v9, v9

    .line 337
    .local v11, "distanceY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mTouchXSlopSquare:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-gt v10, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mTouchYSlopSquare:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-le v11, v0, :cond_5

    .line 338
    :cond_b
    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mLastFocusX:F

    .line 339
    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mLastFocusY:F

    .line 340
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mAlwaysInTapRegion:Z

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_5

    .line 347
    .end local v8    # "deltaX":I
    .end local v9    # "deltaY":I
    .end local v10    # "distanceX":I
    .end local v11    # "distanceY":I
    .end local v20    # "scrollX":F
    .end local v21    # "scrollY":F
    :pswitch_3
    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mUpFocusX:F

    .line 348
    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mUpFocusY:F

    .line 350
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mStillDown:Z

    .line 351
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 352
    .local v7, "currentUpEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mInLongPress:Z

    move/from16 v29, v0

    if-eqz v29, :cond_f

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mInLongPress:Z

    .line 374
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v29, v0

    if-eqz v29, :cond_d

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/MotionEvent;->recycle()V

    .line 377
    :cond_d
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    if-eqz v29, :cond_e

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/VelocityTracker;->recycle()V

    .line 381
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 384
    :cond_e
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDeferConfirmSingleTap:Z

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_5

    .line 355
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v29, v0

    if-eqz v29, :cond_10

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mListener:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadGestureListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadGestureListener;->onSingleTap(Landroid/view/MotionEvent;)Z

    move-result v16

    .line 357
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDeferConfirmSingleTap:Z

    move/from16 v29, v0

    if-eqz v29, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDoubleTapListener:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadDoubleTapListener;

    move-object/from16 v29, v0

    if-eqz v29, :cond_c

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDoubleTapListener:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadDoubleTapListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_7

    .line 361
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v26, v0

    .line 362
    .local v26, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    .line 363
    .local v18, "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mVelocityUnits:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mMaximumFlingVelocity:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 364
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v27

    .line 365
    .local v27, "velocityX":F
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v28

    .line 366
    .local v28, "velocityY":F
    const-string v29, "VRTouchPadGestureDetector"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "velocityX:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " velocityY:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDownFocusX:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDownFocusY:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mUpFocusX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mUpFocusY:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->processForSwipeAction(FFFF)I

    move-result v25

    .line 369
    .local v25, "swipeActionType":I
    const/16 v29, -0x1

    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_11

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mListener:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadGestureListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadGestureListener;->onSwipe(Landroid/view/MotionEvent;IFF)Z

    .line 371
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_7

    .line 389
    .end local v7    # "currentUpEvent":Landroid/view/MotionEvent;
    .end local v18    # "pointerId":I
    .end local v25    # "swipeActionType":I
    .end local v26    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v27    # "velocityX":F
    .end local v28    # "velocityY":F
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->cancel()V

    goto/16 :goto_5

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setOnDoubleTapListener(Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadDoubleTapListener;)V
    .locals 0
    .param p1, "onDoubleTapListener"    # Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadDoubleTapListener;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDoubleTapListener:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadDoubleTapListener;

    .line 258
    return-void
.end method
