.class Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

.field final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0

    .prologue
    .line 3461
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3463
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 3464
    .local v4, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 3465
    .local v5, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 3520
    :cond_0
    :goto_0
    return v8

    .line 3467
    :pswitch_0
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # setter for: Landroid/widget/RemoteViews;->mTouchMode:I
    invoke-static {v6, v8}, Landroid/widget/RemoteViews;->access$1202(Landroid/widget/RemoteViews;I)I

    .line 3468
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # setter for: Landroid/widget/RemoteViews;->mDownTouchX:F
    invoke-static {v6, v4}, Landroid/widget/RemoteViews;->access$1302(Landroid/widget/RemoteViews;F)F

    .line 3469
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # setter for: Landroid/widget/RemoteViews;->mDownTouchY:F
    invoke-static {v6, v5}, Landroid/widget/RemoteViews;->access$1402(Landroid/widget/RemoteViews;F)F

    .line 3470
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_1

    .line 3471
    # invokes: Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    invoke-static {p1}, Landroid/widget/RemoteViews;->access$200(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 3472
    .local v2, "rect":Landroid/graphics/Rect;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3473
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 3474
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v7, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v7, v7, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, p1, v7, v0}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    goto :goto_0

    .line 3479
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_1
    :pswitch_1
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # getter for: Landroid/widget/RemoteViews;->mTouchMode:I
    invoke-static {v6}, Landroid/widget/RemoteViews;->access$1200(Landroid/widget/RemoteViews;)I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 3480
    const/4 v3, 0x0

    .line 3481
    .local v3, "sliding":Z
    const/4 v1, 0x0

    .line 3483
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftThresHold:I

    if-lez v6, :cond_3

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # getter for: Landroid/widget/RemoteViews;->mDownTouchX:F
    invoke-static {v6}, Landroid/widget/RemoteViews;->access$1300(Landroid/widget/RemoteViews;)F

    move-result v6

    sub-float/2addr v6, v4

    iget-object v7, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v7, v7, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftThresHold:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    .line 3484
    const/4 v3, 0x1

    .line 3485
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v1, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftSlidingPendingIntent:Landroid/app/PendingIntent;

    .line 3504
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 3505
    # invokes: Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    invoke-static {p1}, Landroid/widget/RemoteViews;->access$200(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 3506
    .restart local v2    # "rect":Landroid/graphics/Rect;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3507
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 3508
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v6, p1, v1, v0}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    .line 3509
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # setter for: Landroid/widget/RemoteViews;->mTouchMode:I
    invoke-static {v6, v9}, Landroid/widget/RemoteViews;->access$1202(Landroid/widget/RemoteViews;I)I

    goto :goto_0

    .line 3488
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_3
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topThresHold:I

    if-lez v6, :cond_4

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # getter for: Landroid/widget/RemoteViews;->mDownTouchY:F
    invoke-static {v6}, Landroid/widget/RemoteViews;->access$1400(Landroid/widget/RemoteViews;)F

    move-result v6

    sub-float/2addr v6, v5

    iget-object v7, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v7, v7, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topThresHold:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    .line 3489
    const/4 v3, 0x1

    .line 3490
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v1, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topSlidingPendingIntent:Landroid/app/PendingIntent;

    .line 3491
    goto :goto_1

    .line 3493
    :cond_4
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightThresHold:I

    if-lez v6, :cond_5

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # getter for: Landroid/widget/RemoteViews;->mDownTouchX:F
    invoke-static {v6}, Landroid/widget/RemoteViews;->access$1300(Landroid/widget/RemoteViews;)F

    move-result v6

    sub-float v6, v4, v6

    iget-object v7, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v7, v7, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightThresHold:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_5

    .line 3494
    const/4 v3, 0x1

    .line 3495
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v1, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightSlidingPendingIntent:Landroid/app/PendingIntent;

    .line 3496
    goto :goto_1

    .line 3498
    :cond_5
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomThresHold:I

    if-lez v6, :cond_2

    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # getter for: Landroid/widget/RemoteViews;->mDownTouchY:F
    invoke-static {v6}, Landroid/widget/RemoteViews;->access$1400(Landroid/widget/RemoteViews;)F

    move-result v6

    sub-float v6, v5, v6

    iget-object v7, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget v7, v7, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomThresHold:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    .line 3499
    const/4 v3, 0x1

    .line 3500
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v1, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomSlidingPendingIntent:Landroid/app/PendingIntent;

    goto :goto_1

    .line 3516
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v3    # "sliding":Z
    :pswitch_2
    iget-object v6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    # setter for: Landroid/widget/RemoteViews;->mTouchMode:I
    invoke-static {v6, v9}, Landroid/widget/RemoteViews;->access$1202(Landroid/widget/RemoteViews;I)I

    goto/16 :goto_0

    .line 3465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
