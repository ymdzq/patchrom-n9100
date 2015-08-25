.class Landroid/media/WFDUibcManager$EventDispatcher;
.super Landroid/media/WFDUibcManager$EventQueue;
.source "WFDUibcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventDispatcher"
.end annotation


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation
.end field

.field public volatile running:Z

.field final synthetic this$0:Landroid/media/WFDUibcManager;


# direct methods
.method constructor <init>(Landroid/media/WFDUibcManager;)V
    .locals 1

    .prologue
    .line 281
    iput-object p1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/WFDUibcManager$EventQueue;-><init>(Landroid/media/WFDUibcManager;Landroid/media/WFDUibcManager$1;)V

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 69

    .prologue
    .line 288
    const/16 v2, 0xa

    new-array v8, v2, [Landroid/view/MotionEvent$PointerProperties;

    .line 289
    .local v8, "aPonterProp":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v2, 0xa

    new-array v9, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 291
    .local v9, "aPtrCoords":[Landroid/view/MotionEvent$PointerCoords;
    const/16 v2, 0xf

    new-array v0, v2, [Landroid/media/WFDUibcManager$Keyevnt_arrC;

    move-object/from16 v56, v0

    .line 293
    .local v56, "mKeyEvnt_Arr":[Landroid/media/WFDUibcManager$Keyevnt_arrC;
    const/16 v46, 0x0

    .local v46, "i":I
    :goto_0
    const/16 v2, 0xa

    move/from16 v0, v46

    if-ge v0, v2, :cond_0

    .line 294
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v8, v46

    .line 295
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v9, v46

    .line 293
    add-int/lit8 v46, v46, 0x1

    goto :goto_0

    .line 297
    :cond_0
    const/16 v46, 0x0

    :goto_1
    const/16 v2, 0xf

    move/from16 v0, v46

    if-ge v0, v2, :cond_1

    .line 298
    new-instance v2, Landroid/media/WFDUibcManager$Keyevnt_arrC;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/media/WFDUibcManager$Keyevnt_arrC;-><init>(Landroid/media/WFDUibcManager;Landroid/media/WFDUibcManager$1;)V

    aput-object v2, v56, v46

    .line 297
    add-int/lit8 v46, v46, 0x1

    goto :goto_1

    .line 301
    :cond_1
    const/16 v46, 0x0

    :goto_2
    const/16 v2, 0xf

    move/from16 v0, v46

    if-ge v0, v2, :cond_2

    .line 302
    aget-object v2, v56, v46

    const/4 v3, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$302(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 303
    aget-object v2, v56, v46

    const-wide/16 v3, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$402(Landroid/media/WFDUibcManager$Keyevnt_arrC;J)J

    .line 304
    aget-object v2, v56, v46

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$502(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 305
    aget-object v2, v56, v46

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$602(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 301
    add-int/lit8 v46, v46, 0x1

    goto :goto_2

    .line 307
    :cond_2
    new-instance v37, Landroid/util/DisplayMetrics;

    invoke-direct/range {v37 .. v37}, Landroid/util/DisplayMetrics;-><init>()V

    .line 308
    .local v37, "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$700(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Landroid/view/WindowManager;

    .line 309
    .local v68, "wm":Landroid/view/WindowManager;
    const v52, 0x38d1b717    # 1.0E-4f

    .line 310
    .local v52, "kX":F
    const v53, 0x38d1b717    # 1.0E-4f

    .line 313
    .local v53, "kY":F
    const/high16 v27, 0x3f800000    # 1.0f

    .line 314
    .local v27, "Me_X":F
    const/high16 v28, 0x3f800000    # 1.0f

    .line 316
    .local v28, "Me_Y":F
    const/16 v57, 0x0

    .line 317
    .local v57, "me":Landroid/view/MotionEvent;
    const/16 v54, 0x0

    .line 319
    .local v54, "ke":Landroid/view/KeyEvent;
    const/16 v45, 0x0

    .line 320
    .local v45, "foregroundCamera":Z
    const/16 v44, 0x0

    .line 322
    .local v44, "forceAbsoluteValue":Z
    const/16 v42, 0x1

    .line 323
    .local v42, "first_KeyDown":Z
    sget-object v29, Landroid/media/WFDUibcManager$UIBC_Mode;->normal:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 324
    .local v29, "Mode":Landroid/media/WFDUibcManager$UIBC_Mode;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$802(Landroid/media/WFDUibcManager;I)I

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->bCap:Z
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$902(Landroid/media/WFDUibcManager;Z)Z

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->bSim:Z
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1002(Landroid/media/WFDUibcManager;Z)Z

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->bNum:Z
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1102(Landroid/media/WFDUibcManager;Z)Z

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->bScroll:Z
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1202(Landroid/media/WFDUibcManager;Z)Z

    .line 329
    const/16 v39, 0x0

    .line 331
    .local v39, "dmInfo":Landroid/view/DisplayInfo;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    if-eqz v2, :cond_45

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/media/WFDUibcManager$EventDispatcher;->getNextEvent()Landroid/view/InputEvent;

    move-result-object v41

    .line 333
    .local v41, "ev":Landroid/view/InputEvent;
    if-eqz v41, :cond_3

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$700(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v35

    .line 345
    .local v35, "configuration":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$700(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$700(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/ActivityManager;

    .line 346
    .local v33, "activityManager":Landroid/app/ActivityManager;
    const/16 v2, 0x14

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v49

    .line 347
    .local v49, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface/range {v49 .. v49}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 348
    const/4 v2, 0x0

    move-object/from16 v0, v49

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 349
    .local v67, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v67

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.camera"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    .line 351
    if-eqz v45, :cond_4

    .line 352
    sget-object v29, Landroid/media/WFDUibcManager$UIBC_Mode;->Camera:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 355
    .end local v67    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4
    move-object/from16 v0, v41

    instance-of v2, v0, Landroid/view/MotionEvent;

    if-eqz v2, :cond_1c

    .line 359
    const/4 v12, 0x0

    .line 360
    .local v12, "displayId":I
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v38

    .line 361
    .local v38, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual/range {v38 .. v38}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v34

    .local v34, "arr$":[I
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v55, v0

    .local v55, "len$":I
    const/16 v47, 0x0

    .local v47, "i$":I
    :goto_4
    move/from16 v0, v47

    move/from16 v1, v55

    if-ge v0, v1, :cond_5

    aget v48, v34, v47

    .line 362
    .local v48, "id":I
    move-object/from16 v0, v38

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v39

    .line 363
    move-object/from16 v0, v39

    iget v2, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 364
    move/from16 v12, v48

    .end local v48    # "id":I
    :cond_5
    move-object/from16 v59, v41

    .line 370
    check-cast v59, Landroid/view/MotionEvent;

    .line 372
    .local v59, "newEv":Landroid/view/MotionEvent;
    invoke-interface/range {v68 .. v68}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 374
    invoke-virtual/range {v59 .. v59}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    # setter for: Landroid/media/WFDUibcManager;->mTouchDownTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager;->access$1302(Landroid/media/WFDUibcManager;J)J

    .line 379
    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 380
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 381
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v8, v3

    move-object/from16 v0, v59

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 382
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v9, v3

    move-object/from16 v0, v59

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 384
    const/4 v2, 0x0

    aget-object v2, v8, v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 385
    const/4 v2, 0x0

    aget-object v2, v8, v2

    const/4 v3, 0x3

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 387
    const/4 v2, 0x0

    aget-object v2, v9, v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    aget-object v4, v9, v4

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 388
    const/4 v2, 0x0

    aget-object v2, v9, v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    aget-object v4, v9, v4

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 389
    const/4 v2, 0x0

    aget-object v2, v9, v2

    move-object/from16 v0, v37

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 390
    const/4 v2, 0x0

    aget-object v2, v9, v2

    move-object/from16 v0, v37

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mTouchDownTime:J
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1300(Landroid/media/WFDUibcManager;)J

    move-result-wide v2

    const-wide/16 v4, 0xa

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mTouchDownTime:J
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$1300(Landroid/media/WFDUibcManager;)J

    move-result-wide v4

    const-wide/16 v6, 0xa

    sub-long/2addr v4, v6

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v15, 0xa

    const/16 v16, 0x0

    const/16 v17, 0x2002

    const/16 v18, 0x0

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v57

    .line 393
    const/16 v2, 0x2002

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 395
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v57

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 396
    const/16 v57, 0x0

    .line 397
    goto/16 :goto_3

    .line 361
    .end local v59    # "newEv":Landroid/view/MotionEvent;
    .restart local v48    # "id":I
    :cond_6
    add-int/lit8 v47, v47, 0x1

    goto/16 :goto_4

    .line 400
    .end local v48    # "id":I
    .restart local v59    # "newEv":Landroid/view/MotionEvent;
    :cond_7
    invoke-interface/range {v68 .. v68}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v66

    .line 401
    .local v66, "rotation":I
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, v37

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float v52, v2, v3

    .line 402
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, v37

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float v53, v2, v3

    .line 404
    move-object/from16 v0, v37

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    move-object/from16 v0, v37

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float v32, v2, v3

    .line 405
    .local v32, "Ratio_WFD":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$1500(Landroid/media/WFDUibcManager;)F

    move-result v3

    div-float v31, v2, v3

    .line 407
    .local v31, "Ratio_LCD":F
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, v37

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float v50, v2, v3

    .line 408
    .local v50, "kH":F
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, v37

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float v51, v2, v3

    .line 414
    .local v51, "kW":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->mSPCOrientation:Z
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1602(Landroid/media/WFDUibcManager;Z)Z

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, -0x1

    # setter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1702(Landroid/media/WFDUibcManager;I)I

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$700(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sidesync_source_connect"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCoupleShot:Z
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1800(Landroid/media/WFDUibcManager;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 423
    :cond_8
    const/16 v44, 0x1

    .line 424
    sget-object v29, Landroid/media/WFDUibcManager$UIBC_Mode;->forceValue:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 428
    :cond_9
    invoke-virtual/range {v59 .. v59}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v36

    .line 429
    .local v36, "count":I
    const/16 v46, 0x0

    :goto_5
    move/from16 v0, v46

    move/from16 v1, v36

    if-ge v0, v1, :cond_1a

    .line 430
    aget-object v2, v8, v46

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 431
    aget-object v2, v9, v46

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 432
    aget-object v2, v8, v46

    move-object/from16 v0, v59

    move/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 433
    aget-object v2, v9, v46

    move-object/from16 v0, v59

    move/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 436
    sget-object v2, Landroid/media/WFDUibcManager$2;->$SwitchMap$android$media$WFDUibcManager$UIBC_Mode:[I

    invoke-virtual/range {v29 .. v29}, Landroid/media/WFDUibcManager$UIBC_Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 533
    move-object/from16 v0, v35

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_19

    .line 534
    cmpg-float v2, v32, v31

    if-gez v2, :cond_17

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1500(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v51

    div-float v61, v2, v50

    .line 537
    .local v61, "newWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v61

    const/high16 v3, 0x40000000    # 2.0f

    div-float v64, v2, v3

    .line 538
    .local v64, "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    aget-object v3, v9, v46

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v62, v2, v3

    .line 542
    .local v62, "normX":F
    move-object/from16 v0, v37

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    sub-float v3, v62, v64

    div-float v3, v3, v61

    mul-float v27, v2, v3

    .line 543
    aget-object v2, v9, v46

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v28, v53, v2

    .line 545
    aget-object v2, v9, v46

    const/4 v3, 0x0

    move/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 546
    aget-object v2, v9, v46

    const/4 v3, 0x1

    move/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 429
    .end local v61    # "newWidth":F
    .end local v62    # "normX":F
    .end local v64    # "pad":F
    :cond_a
    :goto_6
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_5

    .line 439
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    if-lez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0x2d

    if-lt v2, v3, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0x13b

    if-le v2, v3, :cond_e

    .line 441
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1702(Landroid/media/WFDUibcManager;I)I

    .line 455
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    move/from16 v0, v66

    # += operator for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v0}, Landroid/media/WFDUibcManager;->access$1712(Landroid/media/WFDUibcManager;I)I

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$1700(Landroid/media/WFDUibcManager;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x4

    # setter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1702(Landroid/media/WFDUibcManager;I)I

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1700(Landroid/media/WFDUibcManager;)I

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1700(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    .line 459
    :cond_d
    cmpg-float v2, v32, v31

    if-gez v2, :cond_11

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1500(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v51

    div-float v61, v2, v50

    .line 462
    .restart local v61    # "newWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v61

    const/high16 v3, 0x40000000    # 2.0f

    div-float v64, v2, v3

    .line 463
    .restart local v64    # "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    aget-object v3, v9, v46

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v62, v2, v3

    .line 466
    .restart local v62    # "normX":F
    move-object/from16 v0, v37

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    sub-float v3, v62, v64

    div-float v3, v3, v61

    mul-float v27, v2, v3

    .line 467
    aget-object v2, v9, v46

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v28, v53, v2

    .line 485
    .end local v61    # "newWidth":F
    .end local v62    # "normX":F
    .end local v64    # "pad":F
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1700(Landroid/media/WFDUibcManager;)I

    move-result v2

    if-nez v2, :cond_13

    .line 486
    aget-object v2, v9, v46

    const/4 v3, 0x0

    move/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 487
    aget-object v2, v9, v46

    const/4 v3, 0x1

    move/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    .line 443
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0x2d

    if-lt v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0x73

    if-ge v2, v3, :cond_f

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x1

    # setter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1702(Landroid/media/WFDUibcManager;I)I

    goto/16 :goto_7

    .line 447
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0x73

    if-lt v2, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$000(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/16 v3, 0xe1

    if-ge v2, v3, :cond_10

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x2

    # setter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1702(Landroid/media/WFDUibcManager;I)I

    goto/16 :goto_7

    .line 453
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x3

    # setter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1702(Landroid/media/WFDUibcManager;I)I

    goto/16 :goto_7

    .line 470
    :cond_11
    cmpl-float v2, v32, v31

    if-lez v2, :cond_12

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v50

    div-float v60, v2, v51

    .line 473
    .local v60, "newHeight":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1500(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v60

    const/high16 v3, 0x40000000    # 2.0f

    div-float v64, v2, v3

    .line 474
    .restart local v64    # "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$1500(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    aget-object v3, v9, v46

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v63, v2, v3

    .line 476
    .local v63, "normY":F
    aget-object v2, v9, v46

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v27, v52, v2

    .line 477
    move-object/from16 v0, v37

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    sub-float v3, v63, v64

    div-float v3, v3, v60

    mul-float v28, v2, v3

    .line 479
    goto/16 :goto_8

    .line 482
    .end local v60    # "newHeight":F
    .end local v63    # "normY":F
    .end local v64    # "pad":F
    :cond_12
    aget-object v2, v9, v46

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v27, v52, v2

    .line 483
    aget-object v2, v9, v46

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v28, v53, v2

    goto/16 :goto_8

    .line 491
    :cond_13
    aget-object v2, v9, v46

    const/4 v3, 0x0

    move-object/from16 v0, v37

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v4, v4, v27

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 492
    aget-object v2, v9, v46

    const/4 v3, 0x1

    move-object/from16 v0, v37

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    sub-float v4, v4, v28

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    .line 496
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1700(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1700(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    .line 499
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1500(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v50

    div-float v61, v2, v51

    .line 500
    .restart local v61    # "newWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v61

    const/high16 v3, 0x40000000    # 2.0f

    div-float v64, v2, v3

    .line 501
    .restart local v64    # "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    aget-object v3, v9, v46

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v62, v2, v3

    .line 504
    .restart local v62    # "normX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCameraOrientation:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1700(Landroid/media/WFDUibcManager;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 505
    move-object/from16 v0, v37

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    move-object/from16 v0, v37

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    sub-float v4, v62, v64

    div-float v4, v4, v61

    mul-float/2addr v3, v4

    sub-float v28, v2, v3

    .line 506
    aget-object v2, v9, v46

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v27, v52, v2

    .line 514
    :goto_9
    aget-object v2, v9, v46

    const/4 v3, 0x0

    move/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 515
    aget-object v2, v9, v46

    const/4 v3, 0x1

    move/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    .line 510
    :cond_16
    move-object/from16 v0, v37

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    sub-float v3, v62, v64

    div-float v3, v3, v61

    mul-float v28, v2, v3

    .line 511
    move-object/from16 v0, v37

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    aget-object v3, v9, v46

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v3, v3, v52

    sub-float v27, v2, v3

    goto :goto_9

    .line 524
    .end local v61    # "newWidth":F
    .end local v62    # "normX":F
    .end local v64    # "pad":F
    :pswitch_1
    aget-object v2, v9, v46

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v27, v52, v2

    .line 525
    aget-object v2, v9, v46

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v28, v53, v2

    .line 526
    aget-object v2, v9, v46

    const/4 v3, 0x0

    aget-object v4, v9, v46

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v4, v4, v52

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 527
    aget-object v2, v9, v46

    const/4 v3, 0x1

    aget-object v4, v9, v46

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v4, v53

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    .line 549
    :cond_17
    cmpl-float v2, v32, v31

    if-lez v2, :cond_18

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v50

    div-float v60, v2, v51

    .line 552
    .restart local v60    # "newHeight":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1500(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v60

    const/high16 v3, 0x40000000    # 2.0f

    div-float v64, v2, v3

    .line 553
    .restart local v64    # "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$1500(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    aget-object v3, v9, v46

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v63, v2, v3

    .line 556
    .restart local v63    # "normY":F
    aget-object v2, v9, v46

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v27, v52, v2

    .line 557
    move-object/from16 v0, v37

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    sub-float v3, v63, v64

    div-float v3, v3, v60

    mul-float v28, v2, v3

    .line 558
    aget-object v2, v9, v46

    const/4 v3, 0x0

    move/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 559
    aget-object v2, v9, v46

    const/4 v3, 0x1

    move/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    .line 564
    .end local v60    # "newHeight":F
    .end local v63    # "normY":F
    .end local v64    # "pad":F
    :cond_18
    aget-object v2, v9, v46

    const/4 v3, 0x0

    aget-object v4, v9, v46

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v4, v4, v52

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 565
    aget-object v2, v9, v46

    const/4 v3, 0x1

    aget-object v4, v9, v46

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v4, v53

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    .line 569
    :cond_19
    const-string v2, "WFDUibcManager"

    const-string v3, "6"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    cmpg-float v2, v32, v31

    if-gez v2, :cond_a

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1500(Landroid/media/WFDUibcManager;)F

    move-result v2

    mul-float v2, v2, v51

    div-float v61, v2, v50

    .line 573
    .restart local v61    # "newWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v2

    sub-float v2, v2, v61

    const/high16 v3, 0x40000000    # 2.0f

    div-float v64, v2, v3

    .line 574
    .restart local v64    # "pad":F
    const v2, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v3}, Landroid/media/WFDUibcManager;->access$1400(Landroid/media/WFDUibcManager;)F

    move-result v3

    mul-float/2addr v2, v3

    aget-object v3, v9, v46

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v62, v2, v3

    .line 577
    .restart local v62    # "normX":F
    move-object/from16 v0, v37

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    sub-float v3, v62, v64

    mul-float/2addr v2, v3

    div-float v27, v2, v61

    .line 578
    aget-object v2, v9, v46

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v28, v53, v2

    .line 580
    aget-object v2, v9, v46

    const/4 v3, 0x0

    move-object/from16 v0, v37

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v5, v62, v64

    mul-float/2addr v4, v5

    div-float v4, v4, v61

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 581
    aget-object v2, v9, v46

    const/4 v3, 0x1

    aget-object v4, v9, v46

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v4, v53

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_6

    .line 591
    .end local v61    # "newWidth":F
    .end local v62    # "normX":F
    .end local v64    # "pad":F
    :cond_1a
    invoke-virtual/range {v59 .. v59}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1b

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    # setter for: Landroid/media/WFDUibcManager;->mTouchDownTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager;->access$1302(Landroid/media/WFDUibcManager;J)J

    .line 597
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mTouchDownTime:J
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1300(Landroid/media/WFDUibcManager;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v59 .. v59}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {v59 .. v59}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual/range {v59 .. v59}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v59 .. v59}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    const/16 v18, 0x0

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v57

    .line 601
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v57

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 603
    const/16 v57, 0x0

    .line 604
    goto/16 :goto_3

    .line 605
    .end local v12    # "displayId":I
    .end local v31    # "Ratio_LCD":F
    .end local v32    # "Ratio_WFD":F
    .end local v34    # "arr$":[I
    .end local v36    # "count":I
    .end local v38    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v47    # "i$":I
    .end local v50    # "kH":F
    .end local v51    # "kW":F
    .end local v55    # "len$":I
    .end local v59    # "newEv":Landroid/view/MotionEvent;
    .end local v66    # "rotation":I
    :cond_1c
    move-object/from16 v0, v41

    instance-of v2, v0, Landroid/view/KeyEvent;

    if-eqz v2, :cond_3

    move-object/from16 v30, v41

    .line 608
    check-cast v30, Landroid/view/KeyEvent;

    .line 609
    .local v30, "NewKE":Landroid/view/KeyEvent;
    const/16 v43, -0x1

    .local v43, "fndKyIndex":I
    const/16 v40, -0x1

    .line 610
    .local v40, "empKyIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->mFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1902(Landroid/media/WFDUibcManager;I)I

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const-wide/16 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->mKeyDownTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager;->access$2002(Landroid/media/WFDUibcManager;J)J

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->mRepeatCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$2102(Landroid/media/WFDUibcManager;I)I

    .line 616
    const/4 v12, 0x0

    .line 617
    .restart local v12    # "displayId":I
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v38

    .line 618
    .restart local v38    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual/range {v38 .. v38}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v34

    .restart local v34    # "arr$":[I
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v55, v0

    .restart local v55    # "len$":I
    const/16 v47, 0x0

    .restart local v47    # "i$":I
    :goto_a
    move/from16 v0, v47

    move/from16 v1, v55

    if-ge v0, v1, :cond_1d

    aget v48, v34, v47

    .line 619
    .restart local v48    # "id":I
    move-object/from16 v0, v38

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v39

    .line 620
    move-object/from16 v0, v39

    iget v2, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_21

    .line 621
    move/from16 v12, v48

    .line 627
    .end local v48    # "id":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCoupleShot:Z
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1800(Landroid/media/WFDUibcManager;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    .line 634
    :cond_1e
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_35

    .line 637
    const/16 v65, 0x0

    .local v65, "rCnt":I
    :goto_b
    const/16 v2, 0xf

    move/from16 v0, v65

    if-ge v0, v2, :cond_22

    .line 639
    aget-object v2, v56, v65

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$300(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1f

    .line 640
    move/from16 v40, v65

    .line 641
    :cond_1f
    aget-object v2, v56, v65

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$300(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v2, v3, :cond_20

    .line 642
    move/from16 v43, v65

    .line 637
    :cond_20
    add-int/lit8 v65, v65, 0x1

    goto :goto_b

    .line 618
    .end local v65    # "rCnt":I
    .restart local v48    # "id":I
    :cond_21
    add-int/lit8 v47, v47, 0x1

    goto :goto_a

    .line 646
    .end local v48    # "id":I
    .restart local v65    # "rCnt":I
    :cond_22
    if-gez v43, :cond_33

    .line 647
    if-ltz v40, :cond_23

    .line 648
    aget-object v2, v56, v40

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$302(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 649
    aget-object v2, v56, v40

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$402(Landroid/media/WFDUibcManager$Keyevnt_arrC;J)J

    .line 650
    aget-object v2, v56, v40

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$602(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 651
    aget-object v2, v56, v40

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$502(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 653
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    # setter for: Landroid/media/WFDUibcManager;->mKeyDownTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager;->access$2002(Landroid/media/WFDUibcManager;J)J

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    # |= operator for: Landroid/media/WFDUibcManager;->mFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1976(Landroid/media/WFDUibcManager;I)I

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    # setter for: Landroid/media/WFDUibcManager;->mRepeatCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$2102(Landroid/media/WFDUibcManager;I)I

    .line 667
    :goto_c
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_24

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_26

    .line 668
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x1

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    .line 669
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_25

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, 0x40

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    .line 671
    :cond_25
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_26

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, 0x80

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    .line 674
    :cond_26
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-eq v2, v3, :cond_27

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_29

    .line 675
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x2

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    .line 676
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_28

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, 0x10

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    .line 678
    :cond_28
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_29

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, 0x20

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    .line 681
    :cond_29
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-eq v2, v3, :cond_2a

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_2c

    .line 682
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, 0x1000

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    .line 683
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-ne v2, v3, :cond_2b

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, 0x2000

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    .line 685
    :cond_2b
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_2c

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, 0x4000

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    .line 688
    :cond_2c
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x77

    if-ne v2, v3, :cond_2d

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, 0x8

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    .line 753
    .end local v65    # "rCnt":I
    :cond_2d
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mKeyDownTime:J
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$2000(Landroid/media/WFDUibcManager;)J

    move-result-wide v13

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v15

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getAction()I

    move-result v17

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mRepeatCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$2100(Landroid/media/WFDUibcManager;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$800(Landroid/media/WFDUibcManager;)I

    move-result v20

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v21

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mFlag:I
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$1900(Landroid/media/WFDUibcManager;)I

    move-result v23

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getSource()I

    move-result v25

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v26

    move/from16 v24, v12

    invoke-static/range {v13 .. v26}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v54

    .line 758
    invoke-virtual/range {v54 .. v54}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2e

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    move-object/from16 v0, v54

    iput-object v0, v2, Landroid/media/WFDUibcManager;->last_Ke:Landroid/view/KeyEvent;

    .line 760
    :cond_2e
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 764
    invoke-virtual/range {v54 .. v54}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_32

    .line 766
    invoke-virtual/range {v54 .. v54}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2f

    invoke-virtual/range {v54 .. v54}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_31

    .line 769
    :cond_2f
    new-instance v58, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.PRESENTATION_FOCUS_CHANGED"

    move-object/from16 v0, v58

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    .local v58, "mintent":Landroid/content/Intent;
    const-string v2, "app_name"

    const-string v3, "finish"

    move-object/from16 v0, v58

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    invoke-virtual/range {v54 .. v54}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_44

    .line 773
    const-string v2, "launch_home"

    const/4 v3, 0x1

    move-object/from16 v0, v58

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 782
    :cond_30
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$700(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v58

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 784
    .end local v58    # "mintent":Landroid/content/Intent;
    :cond_31
    if-ltz v43, :cond_32

    .line 786
    aget-object v2, v56, v43

    const/4 v3, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$302(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 787
    aget-object v2, v56, v43

    const-wide/16 v3, -0x1

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$402(Landroid/media/WFDUibcManager$Keyevnt_arrC;J)J

    .line 788
    aget-object v2, v56, v43

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$602(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 789
    aget-object v2, v56, v43

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$502(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 792
    :cond_32
    const/16 v54, 0x0

    goto/16 :goto_3

    .line 658
    .restart local v65    # "rCnt":I
    :cond_33
    aget-object v2, v56, v43

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    # |= operator for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$676(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 659
    aget-object v2, v56, v43

    # operator++ for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$508(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    .line 660
    aget-object v2, v56, v43

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$500(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_34

    .line 661
    aget-object v2, v56, v43

    const/16 v3, 0x80

    # |= operator for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$676(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I

    .line 663
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    aget-object v3, v56, v43

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$400(Landroid/media/WFDUibcManager$Keyevnt_arrC;)J

    move-result-wide v3

    # setter for: Landroid/media/WFDUibcManager;->mKeyDownTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager;->access$2002(Landroid/media/WFDUibcManager;J)J

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    aget-object v3, v56, v43

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$600(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v3

    # |= operator for: Landroid/media/WFDUibcManager;->mFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1976(Landroid/media/WFDUibcManager;I)I

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    aget-object v3, v56, v43

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I
    invoke-static {v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$500(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v3

    # setter for: Landroid/media/WFDUibcManager;->mRepeatCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$2102(Landroid/media/WFDUibcManager;I)I

    goto/16 :goto_c

    .line 694
    .end local v65    # "rCnt":I
    :cond_35
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2d

    .line 696
    const/16 v65, 0x0

    .restart local v65    # "rCnt":I
    :goto_f
    const/16 v2, 0xf

    move/from16 v0, v65

    if-ge v0, v2, :cond_37

    .line 698
    aget-object v2, v56, v65

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I
    invoke-static {v2}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$300(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v2

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v2, v3, :cond_36

    .line 699
    move/from16 v43, v65

    .line 696
    :cond_36
    add-int/lit8 v65, v65, 0x1

    goto :goto_f

    .line 704
    :cond_37
    if-ltz v43, :cond_42

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    aget-object v3, v56, v43

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J
    invoke-static {v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$400(Landroid/media/WFDUibcManager$Keyevnt_arrC;)J

    move-result-wide v3

    # setter for: Landroid/media/WFDUibcManager;->mKeyDownTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager;->access$2002(Landroid/media/WFDUibcManager;J)J

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    aget-object v3, v56, v43

    # getter for: Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I
    invoke-static {v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;->access$600(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I

    move-result v3

    # |= operator for: Landroid/media/WFDUibcManager;->mFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1976(Landroid/media/WFDUibcManager;I)I

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->mRepeatCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$2102(Landroid/media/WFDUibcManager;I)I

    .line 714
    :goto_10
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_38

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_3a

    .line 715
    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, -0x2

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    .line 716
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_39

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, -0x41

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    .line 718
    :cond_39
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_3a

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, -0x81

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    .line 721
    :cond_3a
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-eq v2, v3, :cond_3b

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_3d

    .line 722
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, -0x3

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    .line 723
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_3c

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, -0x11

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    .line 725
    :cond_3c
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_3d

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, -0x21

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    .line 728
    :cond_3d
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-eq v2, v3, :cond_3e

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_40

    .line 729
    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, -0x1001

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    .line 730
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x71

    if-ne v2, v3, :cond_3f

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, -0x2001

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    .line 732
    :cond_3f
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_40

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, -0x4001

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    .line 735
    :cond_40
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x77

    if-ne v2, v3, :cond_41

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, -0x9

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    .line 738
    :cond_41
    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x73

    if-ne v2, v3, :cond_2d

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->bCap:Z
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$900(Landroid/media/WFDUibcManager;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, 0x100

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/high16 v3, 0x100000

    # |= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$876(Landroid/media/WFDUibcManager;I)I

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x1

    # setter for: Landroid/media/WFDUibcManager;->bCap:Z
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$902(Landroid/media/WFDUibcManager;Z)Z

    goto/16 :goto_d

    .line 710
    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    # setter for: Landroid/media/WFDUibcManager;->mKeyDownTime:J
    invoke-static {v2, v3, v4}, Landroid/media/WFDUibcManager;->access$2002(Landroid/media/WFDUibcManager;J)J

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    # |= operator for: Landroid/media/WFDUibcManager;->mFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$1976(Landroid/media/WFDUibcManager;I)I

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-virtual/range {v30 .. v30}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    # setter for: Landroid/media/WFDUibcManager;->mRepeatCnt:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$2102(Landroid/media/WFDUibcManager;I)I

    goto/16 :goto_10

    .line 744
    :cond_43
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const v3, -0x100001

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/16 v3, -0x101

    # &= operator for: Landroid/media/WFDUibcManager;->mMetaFlag:I
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$872(Landroid/media/WFDUibcManager;I)I

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    # setter for: Landroid/media/WFDUibcManager;->bCap:Z
    invoke-static {v2, v3}, Landroid/media/WFDUibcManager;->access$902(Landroid/media/WFDUibcManager;Z)Z

    goto/16 :goto_d

    .line 775
    .end local v65    # "rCnt":I
    .restart local v58    # "mintent":Landroid/content/Intent;
    :cond_44
    invoke-virtual/range {v54 .. v54}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_30

    .line 777
    const-string v2, "launch_home"

    const/4 v3, 0x0

    move-object/from16 v0, v58

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_e

    .line 795
    .end local v12    # "displayId":I
    .end local v30    # "NewKE":Landroid/view/KeyEvent;
    .end local v33    # "activityManager":Landroid/app/ActivityManager;
    .end local v34    # "arr$":[I
    .end local v35    # "configuration":Landroid/content/res/Configuration;
    .end local v38    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v40    # "empKyIndex":I
    .end local v41    # "ev":Landroid/view/InputEvent;
    .end local v43    # "fndKyIndex":I
    .end local v47    # "i$":I
    .end local v49    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v55    # "len$":I
    .end local v58    # "mintent":Landroid/content/Intent;
    :cond_45
    return-void

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
