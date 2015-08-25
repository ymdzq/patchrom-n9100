.class public Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
.super Ljava/lang/Object;
.source "SPenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerState"
.end annotation


# instance fields
.field private final ESTIMATE_TRACE_DEFAULT_SIZE:I

.field private mCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mCurDown:Z

.field private mEstimator:Landroid/view/VelocityTracker$Estimator;

.field private mToolType:I

.field private mTraceCount:I

.field private mTraceX:[F

.field private mTraceY:[F

.field private mXVelocity:F

.field private mYVelocity:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->ESTIMATE_TRACE_DEFAULT_SIZE:I

    .line 241
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F

    .line 242
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F

    .line 245
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 249
    new-instance v0, Landroid/view/VelocityTracker$Estimator;

    invoke-direct {v0}, Landroid/view/VelocityTracker$Estimator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .param p1, "x1"    # Z

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)Landroid/view/MotionEvent$PointerCoords;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .param p1, "x1"    # I

    .prologue
    .line 239
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mToolType:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .prologue
    .line 239
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F

    return-object v0
.end method


# virtual methods
.method public addTrace(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x0

    .line 256
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F

    array-length v2, v3

    .line 257
    .local v2, "traceCapacity":I
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I

    if-ne v3, v2, :cond_0

    .line 258
    mul-int/lit8 v2, v2, 0x2

    .line 259
    new-array v0, v2, [F

    .line 260
    .local v0, "newTraceX":[F
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    iput-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F

    .line 263
    new-array v1, v2, [F

    .line 264
    .local v1, "newTraceY":[F
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iput-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F

    .line 268
    .end local v0    # "newTraceX":[F
    .end local v1    # "newTraceY":[F
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I

    aput p1, v3, v4

    .line 269
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I

    aput p2, v3, v4

    .line 270
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I

    .line 271
    return-void
.end method

.method public clearTrace()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I

    .line 253
    return-void
.end method
