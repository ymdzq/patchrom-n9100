.class Landroid/webkitsec/HtmlComposerView$StylusEventListener;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field mLocalEndX:I

.field mLocalEndY:I

.field mLocalStartX:I

.field mLocalStartY:I

.field mShouldIgnoreEvent:Z

.field final synthetic this$0:Landroid/webkitsec/HtmlComposerView;


# direct methods
.method private constructor <init>(Landroid/webkitsec/HtmlComposerView;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2395
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2396
    iput v0, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalStartX:I

    iput v0, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalStartY:I

    .line 2397
    iput v0, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalEndX:I

    iput v0, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalEndY:I

    .line 2398
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mShouldIgnoreEvent:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/HtmlComposerView;Landroid/webkitsec/HtmlComposerView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkitsec/HtmlComposerView;
    .param p2, "x1"    # Landroid/webkitsec/HtmlComposerView$1;

    .prologue
    .line 2395
    invoke-direct {p0, p1}, Landroid/webkitsec/HtmlComposerView$StylusEventListener;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    return-void
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;I)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "clipboardId"    # I

    .prologue
    .line 2404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2405
    .local v0, "action":I
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-boolean v8, v8, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "HtmlComposerView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onStylusButtonEvent action = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    .line 2516
    :cond_1
    :goto_0
    return-void

    .line 2411
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 2412
    .local v4, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 2414
    .local v5, "rawY":F
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-boolean v8, v8, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "HtmlComposerView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onStylusButtonEvent rawX, rawY = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    :cond_3
    const/4 v8, 0x2

    new-array v6, v8, [I

    .line 2417
    .local v6, "screenOffsetOfView":[I
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2418
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2419
    .local v1, "htmlcomposer_rect":Landroid/graphics/Rect;
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2421
    float-to-int v8, v4

    const/4 v9, 0x0

    aget v9, v6, v9

    sub-int v2, v8, v9

    .line 2422
    .local v2, "local_X":I
    float-to-int v8, v5

    const/4 v9, 0x1

    aget v9, v6, v9

    sub-int v3, v8, v9

    .line 2424
    .local v3, "local_Y":I
    if-eqz v1, :cond_7

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_7

    .line 2425
    const/4 v6, 0x0

    .line 2426
    const/4 v1, 0x0

    .line 2428
    const/16 v8, 0xd4

    if-ne v0, v8, :cond_6

    .line 2430
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkitsec/HtmlComposerView;->setSelectionHandle(Z)V

    .line 2431
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2434
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v7

    .line 2435
    .local v7, "selectionType":I
    const/4 v8, 0x1

    if-ne v8, v7, :cond_4

    .line 2436
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    .line 2440
    :cond_4
    const/4 v8, 0x1

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    # getter for: Landroid/webkitsec/HtmlComposerView;->mIsPenSelection:Z
    invoke-static {v9}, Landroid/webkitsec/HtmlComposerView;->access$300(Landroid/webkitsec/HtmlComposerView;)Z

    move-result v9

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    const/4 v9, 0x0

    # setter for: Landroid/webkitsec/HtmlComposerView;->mIsPenSelection:Z
    invoke-static {v8, v9}, Landroid/webkitsec/HtmlComposerView;->access$302(Landroid/webkitsec/HtmlComposerView;Z)Z

    .line 2441
    :cond_5
    const/4 v8, 0x1

    iget-boolean v9, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mShouldIgnoreEvent:Z

    if-ne v8, v9, :cond_1

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mShouldIgnoreEvent:Z

    goto/16 :goto_0

    .line 2442
    .end local v7    # "selectionType":I
    :cond_6
    const/16 v8, 0xd3

    if-ne v0, v8, :cond_1

    .line 2443
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mShouldIgnoreEvent:Z

    .line 2445
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v7

    .line 2446
    .restart local v7    # "selectionType":I
    const/4 v8, 0x1

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/view/View;->isFocused()Z

    move-result v9

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    if-ne v8, v7, :cond_1

    .line 2447
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/webkitsec/HtmlComposerView;->setCursorFromRangeSelection()V

    goto/16 :goto_0

    .line 2454
    .end local v7    # "selectionType":I
    :cond_7
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 2457
    :sswitch_0
    iput v2, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalStartX:I

    .line 2458
    iput v3, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalStartY:I

    .line 2460
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    const/4 v9, 0x1

    # setter for: Landroid/webkitsec/HtmlComposerView;->mIsPenSelection:Z
    invoke-static {v8, v9}, Landroid/webkitsec/HtmlComposerView;->access$302(Landroid/webkitsec/HtmlComposerView;Z)Z

    .line 2461
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkitsec/HtmlComposerView;->setSelectionHandle(Z)V

    .line 2463
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-boolean v8, v8, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "HtmlComposerView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onStylusButtonEvent mLocalStartX, mLocalStartY = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalStartX:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalStartY:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2468
    :sswitch_1
    const/4 v8, 0x1

    iget-boolean v9, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mShouldIgnoreEvent:Z

    if-ne v8, v9, :cond_8

    .line 2469
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mShouldIgnoreEvent:Z

    goto/16 :goto_0

    .line 2472
    :cond_8
    iput v2, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalEndX:I

    .line 2473
    iput v3, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalEndY:I

    .line 2475
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-boolean v8, v8, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v8, :cond_9

    const-string v8, "HtmlComposerView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onStylusButtonEvent mLocalStartX,Y, mLocalEndX,Y = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalStartX:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalStartY:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalEndX:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalEndY:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    :cond_9
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget v9, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalStartX:I

    iget v10, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalStartY:I

    iget v11, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalEndX:I

    iget v12, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalEndY:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/webkitsec/HtmlComposerView;->selectBWStartAndEnd(IIII)V

    .line 2478
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkitsec/HtmlComposerView;->setSelectionHandle(Z)V

    .line 2479
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2482
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v7

    .line 2483
    .restart local v7    # "selectionType":I
    const/4 v8, 0x1

    if-ne v8, v7, :cond_a

    .line 2484
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    .line 2488
    :cond_a
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    const/4 v9, 0x0

    # setter for: Landroid/webkitsec/HtmlComposerView;->mIsPenSelection:Z
    invoke-static {v8, v9}, Landroid/webkitsec/HtmlComposerView;->access$302(Landroid/webkitsec/HtmlComposerView;Z)Z

    goto/16 :goto_0

    .line 2493
    .end local v7    # "selectionType":I
    :sswitch_2
    const/4 v8, 0x1

    iget-boolean v9, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mShouldIgnoreEvent:Z

    if-eq v8, v9, :cond_1

    .line 2495
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/view/View;->isFocused()Z

    move-result v8

    if-nez v8, :cond_b

    .line 2496
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 2499
    :cond_b
    iput v2, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalEndX:I

    .line 2500
    iput v3, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalEndY:I

    .line 2502
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-boolean v8, v8, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v8, :cond_c

    const-string v8, "HtmlComposerView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onStylusButtonEvent mLocalStartX,Y, mLocalEndX,Y = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalStartX:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalStartY:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalEndX:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalEndY:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    :cond_c
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget v9, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalStartX:I

    iget v10, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalStartY:I

    iget v11, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalEndX:I

    iget v12, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mLocalEndY:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/webkitsec/HtmlComposerView;->selectBWStartAndEnd(IIII)V

    .line 2505
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto/16 :goto_0

    .line 2510
    :sswitch_3
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    const/4 v9, 0x0

    # setter for: Landroid/webkitsec/HtmlComposerView;->mIsPenSelection:Z
    invoke-static {v8, v9}, Landroid/webkitsec/HtmlComposerView;->access$302(Landroid/webkitsec/HtmlComposerView;Z)Z

    .line 2511
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->mShouldIgnoreEvent:Z

    .line 2512
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkitsec/HtmlComposerView;->setSelectionHandle(Z)V

    goto/16 :goto_0

    .line 2454
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0xd3 -> :sswitch_0
        0xd4 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xd6 -> :sswitch_3
    .end sparse-switch
.end method
