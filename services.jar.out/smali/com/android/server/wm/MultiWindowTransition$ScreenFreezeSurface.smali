.class Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;
.super Ljava/lang/Object;
.source "MultiWindowTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiWindowTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenFreezeSurface"
.end annotation


# static fields
.field static final BACKGROUND_LAYER:I = 0x2af7

.field static final DEBUG:Z = false

.field static final FREEZE_LAYER:I = 0x1e8481

.field static final TAG:Ljava/lang/String; = "ScreenFreezeSurface"


# instance fields
.field mAlpha:F

.field mBGSurface:Landroid/view/SurfaceControl;

.field mRect:Landroid/graphics/Rect;

.field mRotation:I

.field mSurface:Landroid/view/SurfaceControl;

.field mTmpFloats:[F

.field mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;IIIIIIZ)V
    .locals 10
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "layerStack"    # I
    .param p7, "rotation"    # I
    .param p8, "needBG"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/SurfaceControl$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    .line 364
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 365
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    .line 367
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 368
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    .line 372
    sub-int v4, p4, p2

    .line 373
    .local v4, "w":I
    sub-int v5, p5, p3

    .line 375
    .local v5, "h":I
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 376
    move/from16 v0, p7

    iput v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    .line 383
    new-instance v1, Landroid/view/SurfaceControl;

    const-string v3, "ScreenFreezeSurface"

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 387
    if-eqz p8, :cond_0

    .line 393
    new-instance v1, Landroid/view/SurfaceControl;

    const-string v3, "ScreenFreezeBGSurface"

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1

    .line 399
    new-instance v9, Landroid/view/Surface;

    invoke-direct {v9}, Landroid/view/Surface;-><init>()V

    .line 400
    .local v9, "sur":Landroid/view/Surface;
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 403
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, v9}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 404
    invoke-virtual {v9}, Landroid/view/Surface;->destroy()V

    .line 406
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 407
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const v2, 0x1e8481

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 409
    iget v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    packed-switch v1, :pswitch_data_0

    .line 429
    .end local v9    # "sur":Landroid/view/Surface;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_2

    .line 430
    new-instance v8, Landroid/view/Surface;

    invoke-direct {v8}, Landroid/view/Surface;-><init>()V

    .line 431
    .local v8, "bgSur":Landroid/view/Surface;
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 434
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 435
    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V

    .line 437
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 438
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/16 v2, 0x2af7

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 440
    iget v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    packed-switch v1, :pswitch_data_1

    .line 459
    .end local v8    # "bgSur":Landroid/view/Surface;
    :cond_2
    :goto_1
    return-void

    .line 411
    .restart local v9    # "sur":Landroid/view/Surface;
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 412
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_0

    .line 415
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    int-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 416
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_0

    .line 419
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    int-to-float v2, v4

    int-to-float v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 420
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_0

    .line 423
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    int-to-float v2, v5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 424
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_0

    .line 442
    .end local v9    # "sur":Landroid/view/Surface;
    .restart local v8    # "bgSur":Landroid/view/Surface;
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 443
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_1

    .line 446
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    int-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 447
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_1

    .line 450
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    int-to-float v2, v4

    int-to-float v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 451
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_1

    .line 454
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    int-to-float v2, v5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 455
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_1

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 440
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method hide()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 502
    :cond_1
    return-void
.end method

.method kill()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 514
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 516
    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 521
    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    .line 523
    :cond_1
    return-void
.end method

.method setAnimationTransform(Landroid/view/animation/Transformation;)V
    .locals 10
    .param p1, "transformation"    # Landroid/view/animation/Transformation;

    .prologue
    .line 462
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 463
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v4

    .line 464
    .local v1, "left":F
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v4

    .line 465
    .local v2, "top":F
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v3, v4

    .line 466
    .local v3, "width":F
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v0, v4

    .line 469
    .local v0, "height":F
    iget v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    packed-switch v4, :pswitch_data_0

    .line 487
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 488
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 489
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v9, 0x4

    aget v8, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 491
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 493
    return-void

    .line 471
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 474
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 475
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v3, v2

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 478
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 479
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v3, v1

    sub-float v6, v0, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 482
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 483
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v0, v1

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method show()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 511
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
