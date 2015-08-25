.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;
.super Landroid/widget/FrameLayout;
.source "TwToolBoxFloatingViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwToolBoxLongPressPanel"
.end annotation


# instance fields
.field final mLongPressPanelAttributes:Landroid/view/WindowManager$LayoutParams;

.field final mLongPressPanelRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/Context;)V
    .locals 8
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 2466
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .line 2467
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2464
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->mLongPressPanelRect:Landroid/graphics/Rect;

    .line 2470
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I
    invoke-static {p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v2

    iget-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->mLongPressPanelAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 2479
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->mLongPressPanelAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2480
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->mLongPressPanelAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2481
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->mLongPressPanelAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 2482
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->mLongPressPanelAttributes:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "TwToolBoxLongPressPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2484
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2485
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2544
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v12

    .line 2549
    .local v12, "longPressPanelPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v20, v0

    sget-object v21, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v12, v0, :cond_6

    .line 2551
    :cond_0
    if-gez v12, :cond_1

    const/16 v20, 0x0

    int-to-float v0, v12

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2553
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    .line 2554
    .local v13, "r":Landroid/graphics/Rect;
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v21, v0

    add-int v6, v20, v21

    .line 2555
    .local v6, "absoluteMainLeft":I
    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->mLongPressPanelRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    .line 2556
    .local v8, "absoluteMainTop":I
    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v21, v0

    add-int v7, v20, v21

    .line 2557
    .local v7, "absoluteMainRight":I
    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->mLongPressPanelRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v5, v20, v21

    .line 2559
    .local v5, "absoluteMainBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBg:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBgArea:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBg:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtn:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 2563
    .local v9, "editButton":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtn:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 2564
    .local v14, "removeButton":Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 2566
    .local v17, "removeNeedAnimating":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditConflictArea:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v8, v7, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 2567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBgArea:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnFocused:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 2578
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2579
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2581
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mIsTablet:Z
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 2584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Paint;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v10, v0

    .line 2585
    .local v10, "lenEditMsg":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Paint;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v11, v0

    .line 2586
    .local v11, "lenRemoveMsg":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    div-int/lit8 v22, v10, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v23, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v23 .. v23}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    div-int/lit8 v23, v23, 0x3

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v23, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;
    invoke-static/range {v23 .. v23}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Paint;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    div-int/lit8 v22, v11, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v23, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v23 .. v23}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    div-int/lit8 v23, v23, 0x3

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v23, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;
    invoke-static/range {v23 .. v23}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Paint;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2595
    .end local v10    # "lenEditMsg":I
    .end local v11    # "lenRemoveMsg":I
    :goto_1
    if-eqz v17, :cond_9

    .line 2596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 2597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnPosition:I
    invoke-static/range {v20 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6802(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I

    .line 2598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAngle:F
    invoke-static/range {v20 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6902(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F

    .line 2599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z
    invoke-static/range {v20 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6702(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z

    .line 2600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$10100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/animation/AnimatorSet;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->start()V

    .line 2603
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnPosition:I
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v16

    .line 2604
    .local v16, "removeButtonPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAngle:F
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)F

    move-result v15

    .line 2606
    .local v15, "removeButtonAngle":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$10200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocusedCover:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$10300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$10200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$10200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v18, v0

    .line 2610
    .local v18, "rotatePivotX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$10200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerY()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v19, v0

    .line 2612
    .local v19, "rotatePivotY":F
    if-lez v16, :cond_4

    .line 2613
    const/16 v20, 0x0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2614
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v15, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2616
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocusedCover:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$10300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2617
    if-lez v16, :cond_5

    .line 2618
    neg-float v0, v15

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2619
    const/16 v20, 0x0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2627
    .end local v15    # "removeButtonAngle":F
    .end local v16    # "removeButtonPosition":I
    .end local v18    # "rotatePivotX":F
    .end local v19    # "rotatePivotY":F
    :cond_5
    :goto_2
    if-gez v12, :cond_6

    const/16 v20, 0x0

    neg-int v0, v12

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2631
    .end local v5    # "absoluteMainBottom":I
    .end local v6    # "absoluteMainLeft":I
    .end local v7    # "absoluteMainRight":I
    .end local v8    # "absoluteMainTop":I
    .end local v9    # "editButton":Landroid/graphics/drawable/Drawable;
    .end local v13    # "r":Landroid/graphics/Rect;
    .end local v14    # "removeButton":Landroid/graphics/drawable/Drawable;
    .end local v17    # "removeNeedAnimating":Z
    :cond_6
    return-void

    .line 2571
    .restart local v5    # "absoluteMainBottom":I
    .restart local v6    # "absoluteMainLeft":I
    .restart local v7    # "absoluteMainRight":I
    .restart local v8    # "absoluteMainTop":I
    .restart local v9    # "editButton":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "r":Landroid/graphics/Rect;
    .restart local v14    # "removeButton":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "removeNeedAnimating":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveConflictArea:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v8, v7, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 2572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBgArea:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocused:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 2575
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2589
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Paint;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v23, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v24, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextBounds:Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$10000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v24

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v23, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextBounds:Landroid/graphics/Rect;
    invoke-static/range {v23 .. v23}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$10000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v23, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;
    invoke-static/range {v23 .. v23}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Paint;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Paint;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v23, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v24, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextBounds:Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$10000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v24

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v23, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextBounds:Landroid/graphics/Rect;
    invoke-static/range {v23 .. v23}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$10000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v23, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;
    invoke-static/range {v23 .. v23}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$9800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Paint;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 2622
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$10100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/animation/AnimatorSet;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->cancel()V

    goto/16 :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 24
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2489
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 2493
    .local v16, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v19

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I
    invoke-static/range {v18 .. v19}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBgArea:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v16

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2496
    div-int/lit8 v9, v16, 0x2

    .line 2497
    .local v9, "halfWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_BUTTON_SIZE:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v8

    .line 2498
    .local v8, "editBtnWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_BUTTON_SIZE:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v7

    .line 2499
    .local v7, "editBtnHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_BUTTON_BG_WIDTH:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v6

    .line 2500
    .local v6, "editBgWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_BUTTON_BG_HEIGHT:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v5

    .line 2501
    .local v5, "editBgHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_BUTTON_SIZE:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v14

    .line 2502
    .local v14, "removeBtnWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_BUTTON_SIZE:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v13

    .line 2503
    .local v13, "removeBtnHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_BUTTON_BG_WIDTH:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v12

    .line 2504
    .local v12, "removeBgWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_BUTTON_BG_HEIGHT:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v11

    .line 2509
    .local v11, "removeBgHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mIsTablet:Z
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2510
    div-int/lit8 v18, v6, 0x2

    sub-int v10, v9, v18

    .line 2511
    .local v10, "leftCenterX":I
    div-int/lit8 v18, v12, 0x2

    add-int v15, v9, v18

    .line 2512
    .local v15, "rightCenterX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v19

    sub-int v18, v18, v19

    sub-int v18, v18, v7

    div-int/lit8 v17, v18, 0x2

    .line 2514
    .local v17, "topEmptySpace":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v18

    sub-int v19, v10, v8

    add-int/lit8 v19, v19, -0x1

    add-int/lit8 v20, v10, -0x1

    add-int v21, v17, v7

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v18

    sub-int v19, v15, v14

    add-int/lit8 v19, v19, -0x1

    add-int/lit8 v20, v15, -0x1

    add-int v21, v17, v13

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBgArea:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v18

    div-int/lit8 v19, v6, 0x2

    sub-int v19, v10, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v21

    sub-int v20, v20, v21

    sub-int v20, v20, v5

    div-int/lit8 v21, v6, 0x2

    add-int v21, v21, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v23, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I
    invoke-static/range {v23 .. v23}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v23

    sub-int v22, v22, v23

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/Rect;->set(IIII)V

    .line 2519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBgArea:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v18

    div-int/lit8 v19, v12, 0x2

    sub-int v19, v15, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v20, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v21

    sub-int v20, v20, v21

    sub-int v20, v20, v11

    div-int/lit8 v21, v12, 0x2

    add-int v21, v21, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v23, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I
    invoke-static/range {v23 .. v23}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v23

    sub-int v22, v22, v23

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/Rect;->set(IIII)V

    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditConflictArea:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBgArea:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveConflictArea:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBgArea:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2540
    :goto_0
    return-void

    .line 2525
    .end local v10    # "leftCenterX":I
    .end local v15    # "rightCenterX":I
    .end local v17    # "topEmptySpace":I
    :cond_0
    div-int/lit8 v18, v9, 0x2

    sub-int v10, v9, v18

    .line 2526
    .restart local v10    # "leftCenterX":I
    div-int/lit8 v18, v9, 0x2

    add-int v15, v9, v18

    .line 2527
    .restart local v15    # "rightCenterX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_TOP_EMPTY_SPACE_PX:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v17

    .line 2529
    .restart local v17    # "topEmptySpace":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v18

    div-int/lit8 v19, v8, 0x2

    sub-int v19, v10, v19

    div-int/lit8 v20, v8, 0x2

    add-int v20, v20, v10

    add-int v21, v17, v7

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v18

    div-int/lit8 v19, v14, 0x2

    sub-int v19, v15, v19

    div-int/lit8 v20, v14, 0x2

    add-int v20, v20, v15

    add-int v21, v17, v13

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBgArea:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->centerX()I

    move-result v19

    div-int/lit8 v20, v6, 0x2

    sub-int v19, v19, v20

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    div-int/lit8 v22, v6, 0x2

    add-int v21, v21, v22

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBgArea:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->centerX()I

    move-result v19

    div-int/lit8 v20, v12, 0x2

    sub-int v19, v19, v20

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    div-int/lit8 v22, v12, 0x2

    add-int v21, v21, v22

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 2537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditConflictArea:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBgArea:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveConflictArea:Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBgArea:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$8500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method
