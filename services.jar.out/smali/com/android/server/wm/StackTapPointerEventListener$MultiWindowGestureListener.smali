.class Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StackTapPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/StackTapPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/StackTapPointerEventListener;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/StackTapPointerEventListener;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/StackTapPointerEventListener;Lcom/android/server/wm/StackTapPointerEventListener$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/StackTapPointerEventListener;
    .param p2, "x1"    # Lcom/android/server/wm/StackTapPointerEventListener$1;

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;-><init>(Lcom/android/server/wm/StackTapPointerEventListener;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 221
    iget-object v7, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    # invokes: Lcom/android/server/wm/StackTapPointerEventListener;->findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    invoke-static {v7, v8, v9, v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$100(Lcom/android/server/wm/StackTapPointerEventListener;FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 222
    .local v4, "targetWin":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    if-eqz v6, :cond_f

    .line 223
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x898

    if-eq v6, v7, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_2

    .line 225
    :cond_0
    const/4 v6, 0x0

    .line 277
    :goto_1
    return v6

    .line 221
    .end local v4    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 227
    .restart local v4    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    .line 228
    .local v3, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v3, :cond_f

    .line 229
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    .line 230
    .local v5, "zone":I
    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint()Landroid/graphics/Point;

    move-result-object v1

    .line 231
    .local v1, "point":Landroid/graphics/Point;
    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$300(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 233
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 234
    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 235
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    .line 270
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(Landroid/graphics/Point;)V

    .line 271
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v2, "refreshCenterbarIntent":Landroid/content/Intent;
    const-string v6, "com.sec.android.extra.CONTROL_BAR_POS"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 273
    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 274
    const/4 v6, 0x1

    goto :goto_1

    .line 236
    .end local v2    # "refreshCenterbarIntent":Landroid/content/Intent;
    :cond_4
    const/16 v6, 0xc

    if-ne v5, v6, :cond_5

    .line 237
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 238
    :cond_5
    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 239
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 240
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 241
    :cond_6
    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 242
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 243
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 244
    :cond_7
    const/4 v6, 0x4

    if-ne v5, v6, :cond_8

    .line 245
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 246
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 247
    :cond_8
    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 248
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 249
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 252
    :cond_9
    const/4 v6, 0x3

    if-ne v5, v6, :cond_a

    .line 253
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    goto/16 :goto_2

    .line 254
    :cond_a
    const/16 v6, 0xc

    if-ne v5, v6, :cond_b

    .line 255
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    goto/16 :goto_2

    .line 256
    :cond_b
    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    .line 257
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 258
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    .line 259
    :cond_c
    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    .line 260
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 261
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    .line 262
    :cond_d
    const/4 v6, 0x4

    if-ne v5, v6, :cond_e

    .line 263
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 264
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    .line 265
    :cond_e
    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 266
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 267
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    .line 277
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1    # "point":Landroid/graphics/Point;
    .end local v3    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v5    # "zone":I
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 281
    iget-object v8, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    # invokes: Lcom/android/server/wm/StackTapPointerEventListener;->findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    invoke-static {v8, v9, v10, v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$100(Lcom/android/server/wm/StackTapPointerEventListener;FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 282
    .local v4, "targetWin":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v5}, Lcom/android/server/wm/StackBox;->checkFixedBound()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 284
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x898

    if-ne v5, v8, :cond_3

    .line 311
    :cond_1
    :goto_1
    return v7

    .end local v4    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_2
    move v5, v7

    .line 281
    goto :goto_0

    .line 288
    .restart local v4    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    .line 289
    .local v3, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v3, :cond_1

    .line 293
    const/16 v5, 0x1000

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 297
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZoneLevel()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 298
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 299
    .local v1, "point":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$300(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 301
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v1, Landroid/graphics/Point;->x:I

    .line 302
    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v1, Landroid/graphics/Point;->y:I

    .line 304
    iget-object v5, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(Landroid/graphics/Point;)V

    .line 305
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v2, "refreshCenterbarIntent":Landroid/content/Intent;
    const-string v5, "com.sec.android.extra.CONTROL_BAR_POS"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 307
    iget-object v5, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v7, v6

    .line 308
    goto :goto_1
.end method
