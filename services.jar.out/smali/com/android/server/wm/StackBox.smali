.class public Lcom/android/server/wm/StackBox;
.super Ljava/lang/Object;
.source "StackBox.java"


# static fields
.field public static final TASK_STACK_GOES_ABOVE:I = 0x4

.field public static final TASK_STACK_GOES_AFTER:I = 0x1

.field public static final TASK_STACK_GOES_BEFORE:I = 0x0

.field public static final TASK_STACK_GOES_BELOW:I = 0x5

.field public static final TASK_STACK_GOES_OVER:I = 0x6

.field public static final TASK_STACK_GOES_UNDER:I = 0x7

.field public static final TASK_STACK_TO_LEFT_OF:I = 0x2

.field public static final TASK_STACK_TO_RIGHT_OF:I = 0x3

.field static sCurrentBoxId:I


# instance fields
.field layoutNeeded:Z

.field mBounds:Landroid/graphics/Rect;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mExchange:Z

.field mFirst:Lcom/android/server/wm/StackBox;

.field mMinimizedRect:Landroid/graphics/Rect;

.field mParent:Lcom/android/server/wm/StackBox;

.field mSecond:Lcom/android/server/wm/StackBox;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mStack:Lcom/android/server/wm/TaskStack;

.field final mStackBoxId:I

.field final mStackBoxType:I

.field mStackBoxVisible:Z

.field mTmpRectFir:Landroid/graphics/Rect;

.field mTmpRectSec:Landroid/graphics/Rect;

.field mUnderStatusBar:Z

.field mVertical:Z

.field mWeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "parent"    # Lcom/android/server/wm/StackBox;

    .prologue
    .line 122
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;I)V

    .line 123
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;I)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "parent"    # Lcom/android/server/wm/StackBox;
    .param p4, "type"    # I

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    .line 127
    const-class v1, Lcom/android/server/wm/StackBox;

    monitor-enter v1

    .line 128
    :try_start_0
    sget v0, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    iput v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    .line 129
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iput-object p1, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 132
    iput-object p2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 133
    iput-object p3, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 135
    iput p4, p0, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    .line 137
    return-void

    .line 129
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private checkFixedBound(Landroid/graphics/Rect;Z)Z
    .locals 17
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "justCheck"    # Z

    .prologue
    .line 434
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 435
    .local v8, "displaySize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 438
    iget v15, v8, Landroid/graphics/Point;->x:I

    mul-int/lit8 v15, v15, 0x14

    div-int/lit8 v6, v15, 0x64

    .line 439
    .local v6, "FIXED_WIDTH":I
    iget v15, v8, Landroid/graphics/Point;->y:I

    mul-int/lit8 v15, v15, 0x14

    div-int/lit8 v1, v15, 0x64

    .line 440
    .local v1, "FIXED_HEIGHT":I
    const/4 v3, 0x1

    .line 441
    .local v3, "FIXED_ON_LEFT":I
    const/4 v4, 0x2

    .line 442
    .local v4, "FIXED_ON_RIGHT":I
    const/4 v5, 0x4

    .line 443
    .local v5, "FIXED_ON_TOP":I
    const/16 v2, 0x8

    .line 444
    .local v2, "FIXED_ON_BOTTOM":I
    const/4 v9, 0x0

    .line 445
    .local v9, "fixedType":I
    const/4 v14, 0x0

    .line 446
    .local v14, "treeLevel":I
    const/4 v10, 0x0

    .line 447
    .local v10, "lvl1Fixed":Z
    const/4 v11, 0x0

    .line 449
    .local v11, "lvl2Fixed":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-nez v15, :cond_1

    .line 450
    const/4 v7, 0x0

    .line 531
    :cond_0
    :goto_0
    return v7

    .line 452
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v15}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v13

    .line 453
    .local v13, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 454
    .local v12, "parent":Lcom/android/server/wm/StackBox;
    :goto_1
    if-eqz v12, :cond_2

    .line 455
    add-int/lit8 v14, v14, 0x1

    .line 456
    iget-object v12, v12, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_1

    .line 459
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 460
    const/4 v15, 0x1

    if-ne v14, v15, :cond_e

    .line 461
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-boolean v15, v15, Lcom/android/server/wm/StackBox;->mVertical:Z

    if-eqz v15, :cond_c

    .line 462
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3e4ccccd    # 0.2f

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 463
    or-int/2addr v9, v5

    .line 508
    :cond_3
    :goto_2
    const/4 v7, 0x0

    .line 509
    .local v7, "change":Z
    and-int v15, v9, v3

    if-eqz v15, :cond_5

    .line 510
    if-nez p2, :cond_4

    .line 511
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v15, v6

    move-object/from16 v0, p1

    iput v15, v0, Landroid/graphics/Rect;->left:I

    .line 512
    :cond_4
    const/4 v7, 0x1

    .line 514
    :cond_5
    and-int v15, v9, v4

    if-eqz v15, :cond_7

    .line 515
    if-nez p2, :cond_6

    .line 516
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v15, v6

    move-object/from16 v0, p1

    iput v15, v0, Landroid/graphics/Rect;->right:I

    .line 517
    :cond_6
    const/4 v7, 0x1

    .line 519
    :cond_7
    and-int v15, v9, v5

    if-eqz v15, :cond_9

    .line 520
    if-nez p2, :cond_8

    .line 521
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v15, v1

    move-object/from16 v0, p1

    iput v15, v0, Landroid/graphics/Rect;->top:I

    .line 522
    :cond_8
    const/4 v7, 0x1

    .line 524
    :cond_9
    and-int v15, v9, v2

    if-eqz v15, :cond_0

    .line 525
    if-nez p2, :cond_a

    .line 526
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v1

    move-object/from16 v0, p1

    iput v15, v0, Landroid/graphics/Rect;->bottom:I

    .line 527
    :cond_a
    const/4 v7, 0x1

    goto :goto_0

    .line 464
    .end local v7    # "change":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3f4ccccd    # 0.8f

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-nez v15, :cond_3

    .line 465
    or-int/2addr v9, v2

    goto :goto_2

    .line 468
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3e4ccccd    # 0.2f

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 469
    or-int/2addr v9, v3

    goto :goto_2

    .line 470
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3f4ccccd    # 0.8f

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-nez v15, :cond_3

    .line 471
    or-int/2addr v9, v4

    goto :goto_2

    .line 474
    :cond_e
    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    .line 475
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-boolean v15, v15, Lcom/android/server/wm/StackBox;->mVertical:Z

    if-eqz v15, :cond_12

    .line 476
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3e4ccccd    # 0.2f

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 477
    or-int/2addr v9, v5

    .line 478
    const/4 v11, 0x1

    .line 483
    :cond_f
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v15, v15, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3e4ccccd    # 0.2f

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v15}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-eqz v15, :cond_11

    .line 484
    or-int/2addr v9, v3

    .line 485
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 479
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3f4ccccd    # 0.8f

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-nez v15, :cond_f

    .line 480
    or-int/2addr v9, v2

    .line 481
    const/4 v11, 0x1

    goto :goto_3

    .line 486
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v15, v15, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3f4ccccd    # 0.8f

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v15}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-nez v15, :cond_3

    .line 487
    or-int/2addr v9, v4

    .line 488
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 491
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3e4ccccd    # 0.2f

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-eqz v15, :cond_14

    .line 492
    or-int/2addr v9, v3

    .line 493
    const/4 v11, 0x1

    .line 498
    :cond_13
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v15, v15, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3e4ccccd    # 0.2f

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v15}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-eqz v15, :cond_15

    .line 499
    or-int/2addr v9, v5

    .line 500
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 494
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3f4ccccd    # 0.8f

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-nez v15, :cond_13

    .line 495
    or-int/2addr v9, v4

    .line 496
    const/4 v11, 0x1

    goto :goto_4

    .line 501
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v15, v15, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3f4ccccd    # 0.8f

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v15}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-nez v15, :cond_3

    .line 502
    or-int/2addr v9, v2

    .line 503
    const/4 v10, 0x1

    goto/16 :goto_2
.end method

.method private getMinimizedRect()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 949
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 950
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    .line 951
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->getMinimizeSize()I

    move-result v0

    .line 952
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 953
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 957
    .end local v0    # "size":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    return-object v1

    .line 955
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0
.end method


# virtual methods
.method animateDimLayers()Z
    .locals 2

    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->animateDimLayers()Z

    move-result v0

    .line 648
    :goto_0
    return v0

    .line 646
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v0

    .line 647
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v1

    or-int/2addr v0, v1

    .line 648
    goto :goto_0
.end method

.method public applayCocktailBarPolicy(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1043
    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v3, :cond_0

    .line 1044
    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1045
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    const/4 v2, 0x0

    .local v2, "shiftDiff":I
    const/4 v1, 0x0

    .line 1046
    .local v1, "normalDiff":I
    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v4, v0, Landroid/view/DisplayInfo;->appHeight:I

    if-le v3, v4, :cond_1

    .line 1047
    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v4, v0, Landroid/view/DisplayInfo;->appHeight:I

    sub-int v2, v3, v4

    .line 1048
    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v4, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    sub-int v1, v3, v4

    .line 1054
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->hasSubWindow()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1055
    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-boolean v3, v3, Lcom/android/server/wm/StackBox;->mVertical:Z

    if-eqz v3, :cond_3

    .line 1056
    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/view/DisplayInfo;->appWidth:I

    if-ne v3, v4, :cond_2

    .line 1057
    iget v3, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 1084
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1    # "normalDiff":I
    .end local v2    # "shiftDiff":I
    :cond_0
    :goto_1
    return-void

    .line 1050
    .restart local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v1    # "normalDiff":I
    .restart local v2    # "shiftDiff":I
    :cond_1
    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v0, Landroid/view/DisplayInfo;->appWidth:I

    sub-int v2, v3, v4

    .line 1051
    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    sub-int v1, v3, v4

    goto :goto_0

    .line 1058
    :cond_2
    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ne v3, v2, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v3, v4, :cond_0

    .line 1059
    iput v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 1062
    :cond_3
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_4

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/view/DisplayInfo;->appHeight:I

    if-ne v3, v4, :cond_4

    .line 1063
    iget v3, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1064
    :cond_4
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ne v3, v2, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v3, v4, :cond_0

    .line 1065
    iput v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 1069
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-boolean v3, v3, Lcom/android/server/wm/StackBox;->mVertical:Z

    if-eqz v3, :cond_7

    .line 1070
    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_6

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    if-ne v3, v4, :cond_6

    .line 1071
    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1072
    :cond_6
    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ne v3, v1, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v3, v4, :cond_0

    .line 1073
    iput v2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 1076
    :cond_7
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_8

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    if-ne v3, v4, :cond_8

    .line 1077
    iget v3, v0, Landroid/view/DisplayInfo;->appHeight:I

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1078
    :cond_8
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ne v3, v1, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v3, v4, :cond_0

    .line 1079
    iput v2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method buildWeight()V
    .locals 7

    .prologue
    .line 855
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 856
    .local v0, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 883
    :cond_0
    return-void

    .line 858
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 859
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getFirstZone()Z

    move-result v6

    xor-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 861
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v2, v5, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    .line 862
    .local v2, "tempBox":Lcom/android/server/wm/StackBox;
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v5, v5, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v5, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    .line 863
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iput-object v2, v5, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 866
    .end local v2    # "tempBox":Lcom/android/server/wm/StackBox;
    :cond_2
    const/4 v3, 0x0

    .line 867
    .local v3, "treeLevel":I
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 869
    .local v1, "parent":Lcom/android/server/wm/StackBox;
    :goto_0
    if-eqz v1, :cond_3

    .line 870
    add-int/lit8 v3, v3, 0x1

    .line 871
    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_0

    .line 874
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    move v4, v3

    .line 875
    .end local v3    # "treeLevel":I
    .local v4, "treeLevel":I
    :goto_1
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "treeLevel":I
    .restart local v3    # "treeLevel":I
    if-lez v4, :cond_0

    .line 876
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZoneLevel()I

    move-result v5

    if-le v5, v3, :cond_4

    .line 877
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 881
    :goto_2
    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    move v4, v3

    .end local v3    # "treeLevel":I
    .restart local v4    # "treeLevel":I
    goto :goto_1

    .line 879
    .end local v4    # "treeLevel":I
    .restart local v3    # "treeLevel":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v5

    if-eqz v5, :cond_5

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_3
    iput v5, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public checkFixedBound()Z
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/StackBox;->checkFixedBound(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method close()V
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v0, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 690
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    iget-object v0, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 695
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->close()V

    .line 694
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->close()V

    goto :goto_0
.end method

.method contains(I)Z
    .locals 1
    .param p1, "stackBoxId"    # I

    .prologue
    .line 153
    iget v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 698
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 699
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 701
    const-string v0, " mMinimizedRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 703
    :cond_0
    const-string v0, " mWeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 704
    const-string v0, " mVertical="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 705
    const-string v0, " mStackBoxType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 706
    const-string v0, " layoutNeeded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/StackBox;->layoutNeeded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 707
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_1

    .line 708
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFirst="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 709
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 710
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSecond="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 711
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 716
    :goto_0
    return-void

    .line 713
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 714
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method gatherLeafStackBox(Ljava/util/ArrayList;Lcom/android/server/wm/StackBox;)V
    .locals 1
    .param p2, "stackbox"    # Lcom/android/server/wm/StackBox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/StackBox;",
            ">;",
            "Lcom/android/server/wm/StackBox;",
            ")V"
        }
    .end annotation

    .prologue
    .line 837
    .local p1, "outLeafStackBoxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/StackBox;>;"
    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    :goto_0
    return-void

    .line 840
    :cond_0
    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_1

    .line 841
    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/StackBox;->gatherLeafStackBox(Ljava/util/ArrayList;Lcom/android/server/wm/StackBox;)V

    .line 846
    :goto_1
    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_2

    .line 847
    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/StackBox;->gatherLeafStackBox(Ljava/util/ArrayList;Lcom/android/server/wm/StackBox;)V

    goto :goto_0

    .line 843
    :cond_1
    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 849
    :cond_2
    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getAppStacks(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1009
    .local p1, "appStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->getAppStacks(Ljava/util/ArrayList;)V

    .line 1011
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->getAppStacks(Ljava/util/ArrayList;)V

    .line 1015
    :goto_0
    return-void

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getEnableSplitstackId(Lcom/samsung/android/multiwindow/MultiWindowStyle;)I
    .locals 9
    .param p1, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v6, 0x1

    .line 756
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-nez v7, :cond_1

    .line 808
    :cond_0
    :goto_0
    return v6

    .line 759
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v5, v7, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 760
    .local v5, "sibling":Lcom/android/server/wm/StackBox;
    :goto_1
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v1, v7, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 762
    .local v1, "grandparent":Lcom/android/server/wm/StackBox;
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZoneLevel()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 764
    :pswitch_0
    if-eqz v1, :cond_2

    .line 765
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v7}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v5, v1, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 768
    :cond_2
    :goto_2
    iget-object v7, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_5

    .line 769
    iget-object v6, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_0

    .line 759
    .end local v1    # "grandparent":Lcom/android/server/wm/StackBox;
    .end local v5    # "sibling":Lcom/android/server/wm/StackBox;
    :cond_3
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v5, v7, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_1

    .line 765
    .restart local v1    # "grandparent":Lcom/android/server/wm/StackBox;
    .restart local v5    # "sibling":Lcom/android/server/wm/StackBox;
    :cond_4
    iget-object v5, v1, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_2

    .line 770
    :cond_5
    iget-object v7, v5, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v7, v7, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_6

    .line 771
    iget-object v6, v5, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v6, v6, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_0

    .line 772
    :cond_6
    iget-object v7, v5, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v7, v7, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_0

    .line 773
    iget-object v6, v5, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v6, v6, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_0

    .line 778
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    .line 779
    .local v4, "relativeMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_7

    .line 780
    if-eqz v1, :cond_0

    iget-object v7, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_0

    .line 781
    iget-object v6, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_0

    .line 784
    :cond_7
    const/4 v3, 0x0

    .line 785
    .local v3, "level2sibling":Lcom/android/server/wm/StackBox;
    if-nez v1, :cond_9

    .line 786
    iget-object v7, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_8

    .line 787
    iget-object v6, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_0

    .line 789
    :cond_8
    move-object v3, v5

    .line 798
    :goto_3
    iget-object v7, v3, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v7, v7, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_c

    iget-object v7, v3, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v7, v7, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    .line 799
    .local v0, "firstChildVisible":Z
    :goto_4
    if-eqz v0, :cond_d

    .line 800
    iget-object v6, v3, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v6, v6, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto/16 :goto_0

    .line 791
    .end local v0    # "firstChildVisible":Z
    :cond_9
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v7}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v2, v1, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 792
    .local v2, "grandsibling":Lcom/android/server/wm/StackBox;
    :goto_5
    iget-object v7, v2, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_b

    .line 793
    iget-object v6, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto/16 :goto_0

    .line 791
    .end local v2    # "grandsibling":Lcom/android/server/wm/StackBox;
    :cond_a
    iget-object v2, v1, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_5

    .line 795
    .restart local v2    # "grandsibling":Lcom/android/server/wm/StackBox;
    :cond_b
    move-object v3, v2

    goto :goto_3

    .line 798
    .end local v2    # "grandsibling":Lcom/android/server/wm/StackBox;
    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    .line 801
    .restart local v0    # "firstChildVisible":Z
    :cond_d
    iget-object v7, v3, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v7, v7, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_0

    .line 802
    iget-object v6, v3, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v6, v6, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto/16 :goto_0

    .line 762
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRootStackBox()Lcom/android/server/wm/StackBox;
    .locals 2

    .prologue
    .line 1029
    move-object v0, p0

    .line 1030
    .local v0, "parent":Lcom/android/server/wm/StackBox;
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v1, :cond_0

    .line 1031
    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_0

    .line 1033
    :cond_0
    return-object v0
.end method

.method getStackBounds(I)Landroid/graphics/Rect;
    .locals 4
    .param p1, "stackId"    # I

    .prologue
    .line 196
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v2, :cond_3

    .line 198
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v2, p1, :cond_2

    .line 199
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 200
    .local v1, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/server/wm/StackBox;->getMinimizedRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 218
    .end local v1    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_0
    :goto_0
    return-object v0

    .line 204
    .restart local v1    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 208
    .end local v1    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 214
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 215
    .local v0, "bounds":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 218
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getStackBounds(Lcom/android/server/wm/AppWindowToken;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 890
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/StackBox;->getStackBounds(Lcom/android/server/wm/AppWindowToken;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getStackBounds(Lcom/android/server/wm/AppWindowToken;Z)Landroid/graphics/Rect;
    .locals 8
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "exceptMinimizedSize"    # Z

    .prologue
    const/4 v7, 0x3

    .line 894
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-nez v5, :cond_0

    .line 895
    iget v5, p0, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    if-eq v5, v7, :cond_1

    .line 896
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    .line 943
    :goto_0
    return-object v5

    .line 898
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v5, :cond_1

    .line 899
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 902
    :cond_1
    if-nez p1, :cond_3

    .line 903
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 904
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 905
    .local v3, "task":Lcom/android/server/wm/Task;
    iget-object v5, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 906
    iget-object v5, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    iget-object v6, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "appToken":Lcom/android/server/wm/AppWindowToken;
    check-cast p1, Lcom/android/server/wm/AppWindowToken;

    .line 910
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .restart local p1    # "appToken":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    if-nez p1, :cond_3

    .line 911
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 915
    :cond_3
    iget v5, p0, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    if-ne v5, v7, :cond_6

    .line 916
    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    .line 917
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTmpContentRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 919
    :cond_4
    if-nez p2, :cond_5

    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 920
    invoke-direct {p0}, Lcom/android/server/wm/StackBox;->getMinimizedRect()Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_0

    .line 922
    :cond_5
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 926
    :cond_6
    const/4 v2, 0x0

    .line 927
    .local v2, "stackBounds":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 928
    .local v4, "treeLevel":I
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 929
    .local v1, "parent":Lcom/android/server/wm/StackBox;
    :goto_1
    if-eqz v1, :cond_7

    .line 930
    add-int/lit8 v4, v4, 0x1

    .line 931
    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_1

    .line 934
    :cond_7
    const/4 v1, 0x0

    .line 935
    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZoneLevel()I

    move-result v5

    sub-int v0, v4, v5

    .line 936
    .local v0, "levelGap":I
    if-lez v0, :cond_8

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v5, :cond_8

    .line 937
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 938
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_8

    if-eqz v1, :cond_8

    .line 939
    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_2

    .line 943
    :cond_8
    if-eqz v1, :cond_9

    iget-object v5, v1, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    goto/16 :goto_0

    :cond_9
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    goto/16 :goto_0
.end method

.method getStackBoxForStackId(I)Lcom/android/server/wm/StackBox;
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    .line 417
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_2

    .line 418
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne p1, v1, :cond_1

    move-object v0, p0

    .line 425
    :cond_0
    :goto_0
    return-object v0

    .line 419
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 422
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/StackBox;->getStackBoxForStackId(I)Lcom/android/server/wm/StackBox;

    move-result-object v0

    .line 423
    .local v0, "box":Lcom/android/server/wm/StackBox;
    if-nez v0, :cond_0

    .line 424
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/StackBox;->getStackBoxForStackId(I)Lcom/android/server/wm/StackBox;

    move-result-object v0

    .line 425
    goto :goto_0
.end method

.method getStackId()I
    .locals 2

    .prologue
    .line 300
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 308
    :goto_0
    return v1

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->getStackIdRecv()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 305
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1

    .line 306
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_0

    .line 308
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method getStackIdRecv()Lcom/android/server/wm/Task;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 313
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v6, :cond_1

    .line 314
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 315
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    .line 338
    :cond_0
    :goto_0
    return-object v5

    .line 320
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v6}, Lcom/android/server/wm/StackBox;->getStackIdRecv()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 321
    .local v0, "task1":Lcom/android/server/wm/Task;
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v6}, Lcom/android/server/wm/StackBox;->getStackIdRecv()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 323
    .local v1, "task2":Lcom/android/server/wm/Task;
    const/4 v3, -0x1

    .line 324
    .local v3, "winLayer1":I
    const/4 v4, -0x1

    .line 325
    .local v4, "winLayer2":I
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 326
    .local v2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 330
    if-eqz v0, :cond_2

    .line 331
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 333
    :cond_2
    if-eqz v1, :cond_3

    .line 334
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 336
    :cond_3
    if-le v4, v3, :cond_4

    move-object v5, v1

    .line 337
    goto :goto_0

    :cond_4
    move-object v5, v0

    .line 338
    goto :goto_0
.end method

.method public getStackOriginalBound(Lcom/android/server/wm/AppWindowToken;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 887
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/StackBox;->getStackBounds(Lcom/android/server/wm/AppWindowToken;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public hasIsolatedSplitStackBox()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1022
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_1

    .line 1023
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle(Z)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    .line 1025
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->hasIsolatedSplitStackBox()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->hasIsolatedSplitStackBox()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final isApplicationStackBox()Z
    .locals 2

    .prologue
    .line 1018
    iget v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDimming()Z
    .locals 2

    .prologue
    .line 661
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    .line 662
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    move-result v0

    .line 666
    :goto_0
    return v0

    .line 664
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->isDimming()Z

    move-result v0

    .line 665
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->isDimming()Z

    move-result v1

    or-int/2addr v0, v1

    .line 666
    goto :goto_0
.end method

.method isFirstChild()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isFloatingStackBox()Z
    .locals 1

    .prologue
    .line 730
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/StackBox;->isFloatingStackBox(Z)Z

    move-result v0

    return v0
.end method

.method final isFloatingStackBox(Z)Z
    .locals 3
    .param p1, "bCheckTask"    # Z

    .prologue
    const/4 v0, 0x0

    .line 734
    iget v1, p0, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 744
    :cond_0
    :goto_0
    return v0

    .line 738
    :cond_1
    if-eqz p1, :cond_2

    .line 739
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 744
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isFrontStackBox()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 812
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 813
    .local v2, "leafStackBoxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/StackBox;>;"
    move-object v5, p0

    .line 814
    .local v5, "parent":Lcom/android/server/wm/StackBox;
    :goto_0
    iget-object v7, v5, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v7, :cond_0

    .line 815
    iget-object v5, v5, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_0

    .line 818
    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/server/wm/DisplayContent;->getRootStackBox(I)Lcom/android/server/wm/StackBox;

    move-result-object v7

    if-eq v5, v7, :cond_2

    .line 833
    :cond_1
    :goto_1
    return v6

    .line 822
    :cond_2
    invoke-virtual {p0, v2, v5}, Lcom/android/server/wm/StackBox;->gatherLeafStackBox(Ljava/util/ArrayList;Lcom/android/server/wm/StackBox;)V

    .line 823
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 825
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v4

    .line 826
    .local v4, "myZone":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    .line 827
    .local v1, "leafStackBox":Lcom/android/server/wm/StackBox;
    iget-object v7, v1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    .line 828
    .local v3, "leafZone":I
    :goto_3
    if-eqz v3, :cond_1

    and-int v7, v4, v3

    if-eqz v7, :cond_3

    if-ge v4, v3, :cond_3

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "leafStackBox":Lcom/android/server/wm/StackBox;
    .end local v3    # "leafZone":I
    .end local v4    # "myZone":I
    :cond_4
    move v4, v6

    .line 825
    goto :goto_2

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "leafStackBox":Lcom/android/server/wm/StackBox;
    .restart local v4    # "myZone":I
    :cond_5
    move v3, v6

    .line 827
    goto :goto_3

    .line 833
    .end local v1    # "leafStackBox":Lcom/android/server/wm/StackBox;
    :cond_6
    const/4 v6, 0x1

    goto :goto_1
.end method

.method final isHiddenStackBox()Z
    .locals 1

    .prologue
    .line 752
    iget v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isHomeStackBox()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 748
    iget v1, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeDirty()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StackBox;->layoutNeeded:Z

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->makeDirty()V

    .line 145
    :cond_0
    return-void
.end method

.method remove()I
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 346
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v6, v5, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 348
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-nez v5, :cond_1

    .line 351
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, p0, v6}, Lcom/android/server/wm/DisplayContent;->removeStackBox(Lcom/android/server/wm/StackBox;Z)Z

    .line 353
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/server/wm/DisplayContent;->getRootStackBox(I)Lcom/android/server/wm/StackBox;

    move-result-object v0

    .line 354
    .local v0, "appStackBox":Lcom/android/server/wm/StackBox;
    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->getStackId()I

    move-result v5

    .line 390
    .end local v0    # "appStackBox":Lcom/android/server/wm/StackBox;
    :goto_0
    return v5

    .restart local v0    # "appStackBox":Lcom/android/server/wm/StackBox;
    :cond_0
    move v5, v6

    .line 357
    goto :goto_0

    .line 362
    .end local v0    # "appStackBox":Lcom/android/server/wm/StackBox;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v4, v5, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 363
    .local v4, "sibling":Lcom/android/server/wm/StackBox;
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v2, v5, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 364
    .local v2, "grandparent":Lcom/android/server/wm/StackBox;
    iput-object v2, v4, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 365
    if-nez v2, :cond_4

    .line 369
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-boolean v5, v5, Lcom/android/server/wm/StackBox;->mVertical:Z

    iput-boolean v5, v4, Lcom/android/server/wm/StackBox;->mVertical:Z

    .line 371
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v4, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 374
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v5, v7}, Lcom/android/server/wm/DisplayContent;->getAppTopLevelStackBoxIndex(Lcom/android/server/wm/StackBox;)I

    move-result v1

    .line 375
    .local v1, "curAppTopLevelIndex":I
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v5, v7}, Lcom/android/server/wm/DisplayContent;->removeStackBox(Lcom/android/server/wm/StackBox;)Z

    move-result v3

    .line 376
    .local v3, "isRemovedFromAppTopLevelStackBox":Z
    if-eqz v3, :cond_3

    .line 377
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, v4, v1}, Lcom/android/server/wm/DisplayContent;->addTopLevelStackBox(Lcom/android/server/wm/StackBox;I)V

    .line 390
    .end local v1    # "curAppTopLevelIndex":I
    .end local v3    # "isRemovedFromAppTopLevelStackBox":Z
    :goto_2
    invoke-virtual {v4}, Lcom/android/server/wm/StackBox;->getStackId()I

    move-result v5

    goto :goto_0

    .line 362
    .end local v2    # "grandparent":Lcom/android/server/wm/StackBox;
    .end local v4    # "sibling":Lcom/android/server/wm/StackBox;
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v4, v5, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_1

    .line 379
    .restart local v1    # "curAppTopLevelIndex":I
    .restart local v2    # "grandparent":Lcom/android/server/wm/StackBox;
    .restart local v3    # "isRemovedFromAppTopLevelStackBox":Z
    .restart local v4    # "sibling":Lcom/android/server/wm/StackBox;
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, v4, v6}, Lcom/android/server/wm/DisplayContent;->addStackBox(Lcom/android/server/wm/StackBox;Z)V

    goto :goto_2

    .line 384
    .end local v1    # "curAppTopLevelIndex":I
    .end local v3    # "isRemovedFromAppTopLevelStackBox":Z
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v5}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 385
    iput-object v4, v2, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_2

    .line 387
    :cond_5
    iput-object v4, v2, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    goto :goto_2
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    .line 640
    :goto_0
    return-void

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    .line 639
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    goto :goto_0
.end method

.method resetDimming()V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->resetDimmingTag()V

    .line 658
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetDimming()V

    .line 657
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetDimming()V

    goto :goto_0
.end method

.method resize(IF)Z
    .locals 3
    .param p1, "stackBoxId"    # I
    .param p2, "weight"    # F

    .prologue
    const/4 v0, 0x1

    .line 394
    iget v1, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v1, p1, :cond_2

    .line 395
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    .end local p2    # "weight":F
    :cond_0
    :goto_0
    return v0

    .line 395
    .restart local p2    # "weight":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 399
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v2

    if-eqz v2, :cond_3

    .end local p2    # "weight":F
    :goto_1
    iput p2, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    goto :goto_0

    .restart local p2    # "weight":F
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float p2, v2, p2

    goto :goto_1
.end method

.method public resizeWeight(Z)Z
    .locals 3
    .param p1, "isIsolated"    # Z

    .prologue
    .line 969
    const/4 v0, 0x0

    .line 970
    .local v0, "level":I
    move-object v1, p0

    .line 972
    .local v1, "tmpStackBox":Lcom/android/server/wm/StackBox;
    :goto_0
    if-eqz v1, :cond_3

    .line 973
    iget-object v2, v1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v2, :cond_0

    .line 974
    if-eqz p1, :cond_1

    .line 975
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mIsolatedWeightList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 980
    :cond_0
    :goto_1
    iget-object v2, v1, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    if-eqz v2, :cond_2

    .line 981
    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    .line 982
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 977
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    goto :goto_1

    .line 984
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 988
    :cond_3
    const/4 v0, 0x0

    .line 989
    move-object v1, p0

    .line 990
    :goto_2
    if-eqz v1, :cond_7

    .line 991
    iget-object v2, v1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v2, :cond_4

    .line 992
    if-eqz p1, :cond_5

    .line 993
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mIsolatedWeightList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 998
    :cond_4
    :goto_3
    iget-object v2, v1, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    if-eqz v2, :cond_6

    .line 999
    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 1000
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 995
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    goto :goto_3

    .line 1002
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 1005
    :cond_7
    const/4 v2, 0x1

    return v2
.end method

.method reverseVerticalValue()V
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    .line 624
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->reverseVerticalValue()V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->reverseVerticalValue()V

    .line 630
    :cond_1
    return-void

    .line 622
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStackBoxExchanged()V
    .locals 1

    .prologue
    .line 1037
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StackBox;->mExchange:Z

    .line 1038
    return-void
.end method

.method setStackBoxSizes(Landroid/graphics/Rect;Z)Z
    .locals 9
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "underStatusBar"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 540
    const/4 v0, 0x0

    .line 541
    .local v0, "change":Z
    iget-boolean v6, p0, Lcom/android/server/wm/StackBox;->mUnderStatusBar:Z

    if-eq v6, p2, :cond_0

    .line 542
    const/4 v0, 0x1

    .line 543
    iput-boolean p2, p0, Lcom/android/server/wm/StackBox;->mUnderStatusBar:Z

    .line 545
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v6, :cond_7

    .line 546
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->hasCocktailBar()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 547
    invoke-virtual {p0, p1}, Lcom/android/server/wm/StackBox;->applayCocktailBarPolicy(Landroid/graphics/Rect;)V

    .line 549
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v7

    :goto_0
    or-int/2addr v0, v6

    .line 552
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6, p2}, Lcom/android/server/wm/TaskStack;->needToChangeUnderStatusBarAllWindow(Z)Z

    move-result v6

    or-int/2addr v0, v6

    .line 553
    invoke-direct {p0, p1, v7}, Lcom/android/server/wm/StackBox;->checkFixedBound(Landroid/graphics/Rect;Z)Z

    move-result v6

    or-int/2addr v0, v6

    .line 554
    iget-boolean v6, p0, Lcom/android/server/wm/StackBox;->mExchange:Z

    or-int/2addr v0, v6

    .line 557
    if-eqz v0, :cond_3

    .line 561
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->getRootStackBox()Lcom/android/server/wm/StackBox;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/StackBox;->hasIsolatedSplitStackBox()Z

    move-result v3

    .line 562
    .local v3, "hasIsolatedStackBox":Z
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v6, :cond_6

    if-nez v3, :cond_6

    .line 563
    invoke-direct {p0, p1, v8}, Lcom/android/server/wm/StackBox;->checkFixedBound(Landroid/graphics/Rect;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 564
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/TaskStack;->setWindowFlagFixedBound(Z)V

    .line 574
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 575
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 576
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;Z)V

    .line 616
    .end local v3    # "hasIsolatedStackBox":Z
    :cond_3
    :goto_2
    iput-boolean v8, p0, Lcom/android/server/wm/StackBox;->mExchange:Z

    .line 617
    return v0

    :cond_4
    move v6, v8

    .line 549
    goto :goto_0

    .line 566
    .restart local v3    # "hasIsolatedStackBox":Z
    :cond_5
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6, v8}, Lcom/android/server/wm/TaskStack;->setWindowFlagFixedBound(Z)V

    goto :goto_1

    .line 569
    :cond_6
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-boolean v6, v6, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    if-eqz v6, :cond_2

    .line 570
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6, v8}, Lcom/android/server/wm/TaskStack;->setWindowFlagFixedBound(Z)V

    goto :goto_1

    .line 580
    .end local v3    # "hasIsolatedStackBox":Z
    :cond_7
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 581
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 582
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 584
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-nez v6, :cond_9

    .line 585
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->hasIsolatedSplitStackBox()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 586
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mIsolatedWeightList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 598
    :goto_3
    iget-boolean v6, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    if-eqz v6, :cond_b

    .line 599
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 600
    .local v4, "height":I
    int-to-float v6, v4

    iget v7, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 601
    .local v1, "firstHeight":I
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v1

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 602
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v6

    or-int/2addr v0, v6

    .line 603
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 604
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v4

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 605
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v6

    or-int/2addr v0, v6

    .line 606
    goto :goto_2

    .line 588
    .end local v1    # "firstHeight":I
    .end local v4    # "height":I
    :cond_8
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    goto :goto_3

    .line 591
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->getRootStackBox()Lcom/android/server/wm/StackBox;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/StackBox;->hasIsolatedSplitStackBox()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 592
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mIsolatedWeightList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    goto :goto_3

    .line 594
    :cond_a
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    goto :goto_3

    .line 607
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 608
    .local v5, "width":I
    int-to-float v6, v5

    iget v7, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 609
    .local v2, "firstWidth":I
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 610
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v6

    or-int/2addr v0, v6

    .line 611
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 612
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 613
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v6

    or-int/2addr v0, v6

    goto/16 :goto_2
.end method

.method split(IIIF)Lcom/android/server/wm/TaskStack;
    .locals 8
    .param p1, "stackId"    # I
    .param p2, "relativeStackBoxId"    # I
    .param p3, "position"    # I
    .param p4, "weight"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 232
    iget v4, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v4, p2, :cond_2

    .line 234
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 295
    :cond_0
    :goto_0
    return-object v2

    .line 238
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 239
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v2, :cond_0

    .line 242
    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    goto :goto_0

    .line 246
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_2
    new-instance v2, Lcom/android/server/wm/TaskStack;

    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v2, v4, p1, v5}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    .line 249
    .restart local v2    # "stack":Lcom/android/server/wm/TaskStack;
    if-nez p3, :cond_4

    .line 251
    const/4 p3, 0x2

    .line 256
    :cond_3
    :goto_1
    packed-switch p3, :pswitch_data_0

    .line 260
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    .line 261
    const/4 v4, 0x2

    if-ne p3, v4, :cond_5

    .line 262
    iput p4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 263
    move-object v0, v2

    .line 264
    .local v0, "firstStack":Lcom/android/server/wm/TaskStack;
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 286
    .local v1, "secondStack":Lcom/android/server/wm/TaskStack;
    :goto_2
    new-instance v4, Lcom/android/server/wm/StackBox;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v4, v5, v6, p0}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    iput-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    .line 287
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iput-object v4, v0, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 288
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iput-object v0, v4, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 290
    new-instance v4, Lcom/android/server/wm/StackBox;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v4, v5, v6, p0}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    iput-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 291
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v4, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 292
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v1, v4, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 294
    iput-object v3, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    goto :goto_0

    .line 252
    .end local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    :cond_4
    if-ne p3, v7, :cond_3

    .line 254
    const/4 p3, 0x3

    goto :goto_1

    .line 266
    :cond_5
    sub-float v4, v6, p4

    iput v4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 267
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 268
    .restart local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    move-object v1, v2

    .line 270
    .restart local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    goto :goto_2

    .line 273
    .end local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    :pswitch_0
    iput-boolean v7, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    .line 274
    const/4 v4, 0x4

    if-ne p3, v4, :cond_6

    .line 275
    iput p4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 276
    move-object v0, v2

    .line 277
    .restart local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .restart local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    goto :goto_2

    .line 279
    .end local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    :cond_6
    sub-float v4, v6, p4

    iput v4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 280
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 281
    .restart local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    move-object v1, v2

    .restart local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    goto :goto_2

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method stackIdFromPoint(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, -0x1

    .line 164
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-direct {p0}, Lcom/android/server/wm/StackBox;->getMinimizedRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_3

    .line 174
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_0

    .line 176
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->stackIdFromPoint(II)I

    move-result v0

    .line 177
    .local v0, "stackId":I
    if-gez v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->stackIdFromPoint(II)I

    move-result v0

    goto :goto_0
.end method

.method stopDimmingIfNeeded()V
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->stopDimmingIfNeeded()V

    .line 676
    :goto_0
    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    .line 675
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    goto :goto_0
.end method

.method switchBounds(I)Z
    .locals 2
    .param p1, "stackBoxId"    # I

    .prologue
    .line 407
    iget v1, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-ne v1, p1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    .line 410
    .local v0, "tempBox":Lcom/android/server/wm/StackBox;
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    .line 411
    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 413
    .end local v0    # "tempBox":Lcom/android/server/wm/StackBox;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method switchUserStacks(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->switchUser(I)V

    .line 685
    :goto_0
    return-void

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    .line 684
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Box{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 723
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Box{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " second="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public updateMinimizeSize([I)V
    .locals 3
    .param p1, "size"    # [I

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 962
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    aget v2, p1, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 965
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 966
    return-void
.end method
