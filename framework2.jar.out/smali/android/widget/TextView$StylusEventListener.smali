.class Landroid/widget/TextView$StylusEventListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private mDirLTR:Z

.field private mEndCurPosition:I

.field private mIsMultiSelectionMode:Z

.field private mMaxX:F

.field private mPressed:Z

.field private mStartCurPosition:I

.field private mStartX:F

.field private mStartY:F

.field private oldEndPos:I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 13087
    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13088
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$StylusEventListener;->mDirLTR:Z

    .line 13089
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 13090
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mIsMultiSelectionMode:Z

    .line 13091
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 13092
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 13093
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 13094
    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 13095
    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 13096
    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/TextView;
    .param p2, "x1"    # Landroid/widget/TextView$1;

    .prologue
    .line 13087
    invoke-direct {p0, p1}, Landroid/widget/TextView$StylusEventListener;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;I)V
    .locals 21
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "clipboardId"    # I

    .prologue
    .line 13099
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 13101
    .local v2, "action":I
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/TextView;->mEnableMultiSelection:Z
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2200(Landroid/widget/TextView;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 13337
    :cond_0
    :goto_0
    return-void

    .line 13105
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    .line 13106
    .local v12, "rawX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    .line 13108
    .local v13, "rawY":F
    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v17

    and-int/lit8 v17, v17, 0x2

    if-nez v17, :cond_3

    :cond_2
    const/16 v17, 0xd3

    move/from16 v0, v17

    if-ne v2, v0, :cond_e

    .line 13111
    :cond_3
    # getter for: Landroid/widget/TextView;->mIsFindTargetView:Z
    invoke-static {}, Landroid/widget/TextView;->access$2300()Z

    move-result v17

    if-nez v17, :cond_6

    .line 13112
    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2400()Landroid/widget/TextView;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 13113
    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2400()Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->clearMultiSelection()Z

    .line 13114
    const/16 v17, 0x0

    # setter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2402(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 13116
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # invokes: Landroid/widget/TextView;->canTextMultiSelection()Z
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2500(Landroid/widget/TextView;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 13122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 13123
    .local v3, "curTime":J
    # getter for: Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2600()Landroid/widget/TextView;

    move-result-object v17

    if-eqz v17, :cond_5

    # getter for: Landroid/widget/TextView;->mLastHoveredTime:J
    invoke-static {}, Landroid/widget/TextView;->access$2700()J

    move-result-wide v17

    sub-long v17, v3, v17

    const-wide/16 v19, 0x64

    cmp-long v17, v17, v19

    if-gez v17, :cond_5

    .line 13124
    # getter for: Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2600()Landroid/widget/TextView;

    move-result-object v17

    # setter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2402(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 13127
    .end local v3    # "curTime":J
    :cond_5
    const/16 v17, 0x0

    # setter for: Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2602(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 13128
    const/16 v17, 0x1

    # setter for: Landroid/widget/TextView;->mIsFindTargetView:Z
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2302(Z)Z

    .line 13130
    :cond_6
    # getter for: Landroid/widget/TextView;->mIsFindTargetView:Z
    invoke-static {}, Landroid/widget/TextView;->access$2300()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2400()Landroid/widget/TextView;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 13133
    :cond_7
    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2400()Landroid/widget/TextView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 13134
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2800(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 13135
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2800(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Editor;->hideControllers()V

    goto/16 :goto_0

    .line 13140
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 13143
    :cond_9
    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2400()Landroid/widget/TextView;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v17, v0

    if-eqz v17, :cond_d

    .line 13144
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2800(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v17

    if-eqz v17, :cond_a

    .line 13145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2800(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Editor;->hideControllers()V

    .line 13147
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    float-to-int v0, v12

    move/from16 v18, v0

    float-to-int v0, v13

    move/from16 v19, v0

    const/16 v20, 0x0

    # invokes: Landroid/widget/TextView;->checkPosInView(III)Z
    invoke-static/range {v17 .. v20}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;III)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 13163
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v16

    .line 13164
    .local v16, "text":Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 13166
    const-string v17, "TextView"

    const-string/jumbo v18, "onStylusButtonEvent start"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13168
    sparse-switch v2, :sswitch_data_0

    .line 13336
    .end local v16    # "text":Ljava/lang/CharSequence;
    :cond_c
    :goto_1
    const-string v17, "TextView"

    const-string/jumbo v18, "onStylusButtonEvent END"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 13151
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    float-to-int v0, v12

    move/from16 v18, v0

    float-to-int v0, v13

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/TextView;->TOUCH_DELTA:F
    invoke-static/range {v20 .. v20}, Landroid/widget/TextView;->access$1900(Landroid/widget/TextView;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    # invokes: Landroid/widget/TextView;->checkPosOnText(III)Z
    invoke-static/range {v17 .. v20}, Landroid/widget/TextView;->access$3100(Landroid/widget/TextView;III)Z

    move-result v17

    if-nez v17, :cond_b

    goto/16 :goto_0

    .line 13157
    :cond_e
    const/16 v17, 0x0

    # setter for: Landroid/widget/TextView;->mIsFindTargetView:Z
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2302(Z)Z

    .line 13158
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2400()Landroid/widget/TextView;

    move-result-object v17

    if-nez v17, :cond_b

    goto/16 :goto_0

    .line 13172
    .restart local v16    # "text":Ljava/lang/CharSequence;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # invokes: Landroid/widget/TextView;->hideMultiSelectPopupWindow()V
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$3200(Landroid/widget/TextView;)V

    .line 13173
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    # invokes: Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    invoke-static/range {v17 .. v18}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v14

    .line 13174
    .local v14, "startPos":Landroid/graphics/Point;
    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v12, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 13175
    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v13, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 13176
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 13178
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 13179
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v17, v0

    if-ltz v17, :cond_10

    .line 13180
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 13181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 13182
    # getter for: Landroid/widget/TextView;->sSpenUspLevel:I
    invoke-static {}, Landroid/widget/TextView;->access$3400()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v17, v0

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v17

    if-nez v17, :cond_f

    .line 13183
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$StylusEventListener;->mIsMultiSelectionMode:Z

    .line 13184
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 13186
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 13188
    :cond_10
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    goto/16 :goto_1

    .line 13194
    .end local v14    # "startPos":Landroid/graphics/Point;
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v17

    and-int/lit8 v17, v17, 0x2

    if-eqz v17, :cond_16

    .line 13195
    # getter for: Landroid/widget/TextView;->sSpenUspLevel:I
    invoke-static {}, Landroid/widget/TextView;->access$3500()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 13196
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    # invokes: Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    invoke-static/range {v17 .. v18}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v14

    .line 13197
    .restart local v14    # "startPos":Landroid/graphics/Point;
    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v5, v12, v17

    .line 13198
    .local v5, "endX":F
    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v6, v13, v17

    .line 13200
    .local v6, "endY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    float-to-int v0, v12

    move/from16 v18, v0

    float-to-int v0, v13

    move/from16 v19, v0

    const/16 v20, 0x0

    # invokes: Landroid/widget/TextView;->checkPosInView(III)Z
    invoke-static/range {v17 .. v20}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;III)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 13202
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move/from16 v18, v0

    sub-float v18, v18, v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpg-float v17, v17, v18

    if-gez v17, :cond_11

    .line 13203
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move/from16 v17, v0

    sub-float v17, v17, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 13206
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 13208
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 13209
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsMultiSelectionMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    .line 13210
    check-cast v16, Landroid/text/Spannable;

    .end local v16    # "text":Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    .line 13212
    :cond_12
    const-string v17, "PEN MOVE"

    const-string v18, "TextSelection is canceled because the positions are same."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 13216
    .restart local v16    # "text":Ljava/lang/CharSequence;
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    if-ltz v17, :cond_c

    .line 13217
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 13218
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Landroid/widget/TextView;->mHighlightPathBogus:Z
    invoke-static/range {v17 .. v18}, Landroid/widget/TextView;->access$3602(Landroid/widget/TextView;Z)Z

    .line 13219
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsMultiSelectionMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 13220
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->playPenSelectionVibrator()Z

    .line 13221
    check-cast v16, Landroid/text/Spannable;

    .end local v16    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 13222
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static/range {v17 .. v18}, Landroid/widget/TextView;->access$3702(Landroid/widget/TextView;Z)Z

    goto/16 :goto_1

    .line 13224
    .restart local v16    # "text":Ljava/lang/CharSequence;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->isFocused()Z

    move-result v17

    if-nez v17, :cond_15

    .line 13225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->requestFocus()Z

    .line 13227
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->playPenSelectionVibrator()Z

    .line 13228
    check-cast v16, Landroid/text/Spannable;

    .end local v16    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_1

    .line 13241
    .end local v5    # "endX":F
    .end local v6    # "endY":F
    .end local v14    # "startPos":Landroid/graphics/Point;
    .restart local v16    # "text":Ljava/lang/CharSequence;
    :cond_16
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    # invokes: Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    invoke-static/range {v17 .. v18}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v14

    .line 13242
    .restart local v14    # "startPos":Landroid/graphics/Point;
    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v5, v12, v17

    .line 13243
    .restart local v5    # "endX":F
    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v6, v13, v17

    .line 13245
    .restart local v6    # "endY":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move/from16 v18, v0

    sub-float v18, v18, v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpg-float v17, v17, v18

    if-gez v17, :cond_17

    .line 13246
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move/from16 v17, v0

    sub-float v17, v17, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 13248
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 13250
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    const/4 v10, 0x1

    .line 13251
    .local v10, "isSameLine":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsMultiSelectionMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_18

    if-eqz v10, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/TextView;->TOUCH_DELTA:F
    invoke-static/range {v18 .. v18}, Landroid/widget/TextView;->access$1900(Landroid/widget/TextView;)F

    move-result v18

    cmpg-float v17, v17, v18

    if-gez v17, :cond_18

    .line 13252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v19, v0

    # invokes: Landroid/widget/TextView;->selectCurrentWordForMultiSelection(II)Z
    invoke-static/range {v17 .. v19}, Landroid/widget/TextView;->access$3800(Landroid/widget/TextView;II)Z

    move-object/from16 v17, v16

    .line 13253
    check-cast v17, Landroid/text/Spannable;

    invoke-static/range {v17 .. v17}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v17, v16

    .line 13254
    check-cast v17, Landroid/text/Spannable;

    invoke-static/range {v17 .. v17}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 13256
    :cond_18
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 13257
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c

    .line 13258
    const-string v17, "PEN UP"

    const-string v18, "TextSelection is canceled because the positions are same."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13259
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 13260
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsMultiSelectionMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1b

    .line 13261
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    move-object/from16 v17, v16

    .line 13262
    check-cast v17, Landroid/text/Spannable;

    invoke-static/range {v17 .. v17}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    .line 13263
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    check-cast v16, Landroid/text/Spannable;

    .end local v16    # "text":Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v17

    if-lez v17, :cond_1a

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, v18

    move/from16 v1, v17

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$3702(Landroid/widget/TextView;Z)Z

    goto/16 :goto_1

    .line 13250
    .end local v10    # "isSameLine":Z
    .restart local v16    # "text":Ljava/lang/CharSequence;
    :cond_19
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 13263
    .end local v16    # "text":Ljava/lang/CharSequence;
    .restart local v10    # "isSameLine":Z
    :cond_1a
    const/16 v17, 0x0

    goto :goto_3

    .line 13265
    .restart local v16    # "text":Ljava/lang/CharSequence;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static/range {v17 .. v18}, Landroid/widget/TextView;->access$3702(Landroid/widget/TextView;Z)Z

    goto/16 :goto_1

    .line 13269
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1d

    .line 13270
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 13271
    .local v15, "temp":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 13272
    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 13275
    .end local v15    # "temp":I
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsMultiSelectionMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_21

    .line 13276
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v11, v0, [I

    .line 13277
    .local v11, "range":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->getVisibleTextRange([I)Z

    move-result v7

    .line 13278
    .local v7, "flag":Z
    if-eqz v7, :cond_1f

    .line 13279
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v17, v0

    const/16 v18, 0x0

    aget v18, v11, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1e

    const/16 v17, 0x0

    aget v17, v11, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 13280
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    const/16 v18, 0x1

    aget v18, v11, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1f

    const/16 v17, 0x1

    aget v17, v11, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_1f
    move-object/from16 v17, v16

    .line 13283
    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 13284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # invokes: Landroid/widget/TextView;->showMultiSelectPopupWindow()V
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$3900(Landroid/widget/TextView;)V

    .line 13288
    :try_start_0
    new-instance v8, Lcom/samsung/android/hermes/HermesServiceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V

    .line 13289
    .local v8, "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v18, v0

    invoke-interface/range {v16 .. v18}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/samsung/android/hermes/HermesServiceManager;->training(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13295
    .end local v8    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->registerForTouchMonitorListener()V

    .line 13297
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static/range {v17 .. v18}, Landroid/widget/TextView;->access$3702(Landroid/widget/TextView;Z)Z

    .line 13298
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 13315
    .end local v7    # "flag":Z
    .end local v11    # "range":[I
    .end local v16    # "text":Ljava/lang/CharSequence;
    :cond_20
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 13316
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_1

    .line 13290
    .restart local v7    # "flag":Z
    .restart local v11    # "range":[I
    .restart local v16    # "text":Ljava/lang/CharSequence;
    :catch_0
    move-exception v9

    .line 13291
    .local v9, "ie":Ljava/lang/IllegalStateException;
    const-string v17, "TextView"

    const-string v18, "** skip HERMES Service by IllegalStateException **"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 13299
    .end local v7    # "flag":Z
    .end local v9    # "ie":Ljava/lang/IllegalStateException;
    .end local v11    # "range":[I
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v17, v0

    if-ltz v17, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    if-ltz v17, :cond_20

    .line 13300
    # getter for: Landroid/widget/TextView;->sSpenUspLevel:I
    invoke-static {}, Landroid/widget/TextView;->access$4000()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_22

    if-eqz v10, :cond_20

    .line 13301
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x16

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 13302
    check-cast v16, Landroid/text/Spannable;

    .end local v16    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 13303
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2800(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v17

    if-eqz v17, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2800(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v17

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    move/from16 v17, v0

    if-eqz v17, :cond_23

    .line 13304
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2800(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 13306
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2800(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v17

    if-eqz v17, :cond_20

    .line 13307
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2800(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result v17

    if-eqz v17, :cond_24

    .line 13308
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2800(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Editor;->updateSelectionHandler()V

    .line 13310
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2800(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    goto/16 :goto_5

    .line 13322
    .end local v5    # "endX":F
    .end local v6    # "endY":F
    .end local v10    # "isSameLine":Z
    .end local v14    # "startPos":Landroid/graphics/Point;
    .restart local v16    # "text":Ljava/lang/CharSequence;
    :sswitch_3
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 13324
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsMultiSelectionMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_26

    .line 13325
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    move-object/from16 v17, v16

    .line 13326
    check-cast v17, Landroid/text/Spannable;

    invoke-static/range {v17 .. v17}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    .line 13327
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v18, v0

    check-cast v16, Landroid/text/Spannable;

    .end local v16    # "text":Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v17

    if-lez v17, :cond_25

    const/16 v17, 0x1

    :goto_6
    move-object/from16 v0, v18

    move/from16 v1, v17

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$3702(Landroid/widget/TextView;Z)Z

    goto/16 :goto_1

    :cond_25
    const/16 v17, 0x0

    goto :goto_6

    .line 13329
    .restart local v16    # "text":Ljava/lang/CharSequence;
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static/range {v17 .. v18}, Landroid/widget/TextView;->access$3702(Landroid/widget/TextView;Z)Z

    .line 13330
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v17, v0

    if-ltz v17, :cond_c

    .line 13331
    check-cast v16, Landroid/text/Spannable;

    .end local v16    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_1

    .line 13168
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0xd3 -> :sswitch_0
        0xd4 -> :sswitch_2
        0xd5 -> :sswitch_1
        0xd6 -> :sswitch_3
    .end sparse-switch
.end method
