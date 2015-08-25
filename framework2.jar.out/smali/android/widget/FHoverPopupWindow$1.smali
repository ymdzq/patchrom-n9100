.class Landroid/widget/FHoverPopupWindow$1;
.super Landroid/os/Handler;
.source "FHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/FHoverPopupWindow;-><init>(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/FHoverPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/FHoverPopupWindow;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 108
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v2, v2, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 109
    const-string v2, "FHoverPopupWindow"

    const-string v3, "handler :************* Start handleMessage *****************"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v2, v2, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-nez v2, :cond_2

    .line 179
    :cond_1
    :goto_0
    return-void

    .line 114
    :cond_2
    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v2, v2, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v2, v2, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    if-eqz v2, :cond_1

    .line 118
    :cond_3
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 119
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v3, v3, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 121
    .local v0, "movelength":I
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v2, v2, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 122
    const-string v2, "FHoverPopupWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handler : mAnchorView.getWidth() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v4, v4, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_4
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v2, v2, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 124
    const-string v2, "FHoverPopupWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handler : mContentView.getWidth() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v4, v4, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_5
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v2, v2, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 126
    const-string v2, "FHoverPopupWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handler : movelength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_6
    if-gez v0, :cond_8

    .line 130
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_b

    .line 133
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget v2, v2, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget-object v3, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v3, v3, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    add-int v1, v2, v3

    .line 134
    .local v1, "tempMoveLength":I
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I
    invoke-static {v3}, Landroid/widget/FHoverPopupWindow;->access$000(Landroid/widget/FHoverPopupWindow;)I

    move-result v3

    if-le v2, v3, :cond_a

    .line 135
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I
    invoke-static {v3}, Landroid/widget/FHoverPopupWindow;->access$000(Landroid/widget/FHoverPopupWindow;)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 142
    .end local v1    # "tempMoveLength":I
    :cond_7
    :goto_1
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v2, v2, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v2, :cond_8

    .line 143
    const-string v2, "FHoverPopupWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handler : after recomputing, movelength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_8
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_c

    .line 148
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v2, v2, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v2, :cond_9

    .line 149
    const-string v2, "FHoverPopupWindow"

    const-string v3, "handler :***** InfoPreview picker move to RIGHT ****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_9
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v3, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT:I
    invoke-static {v3}, Landroid/widget/FHoverPopupWindow;->access$200(Landroid/widget/FHoverPopupWindow;)I

    move-result v3

    # setter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v2, v3}, Landroid/widget/FHoverPopupWindow;->access$102(Landroid/widget/FHoverPopupWindow;I)I

    .line 151
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v3, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v3}, Landroid/widget/FHoverPopupWindow;->access$100(Landroid/widget/FHoverPopupWindow;)I

    move-result v3

    # invokes: Landroid/widget/FHoverPopupWindow;->setAnimator(II)V
    invoke-static {v2, v0, v3}, Landroid/widget/FHoverPopupWindow;->access$300(Landroid/widget/FHoverPopupWindow;II)V

    .line 152
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$400(Landroid/widget/FHoverPopupWindow;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 137
    .restart local v1    # "tempMoveLength":I
    :cond_a
    move v0, v1

    goto :goto_1

    .line 139
    .end local v1    # "tempMoveLength":I
    :cond_b
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v5, :cond_7

    .line 140
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget v0, v2, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    goto :goto_1

    .line 154
    :cond_c
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v5, :cond_e

    .line 156
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v2, v2, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v2, :cond_d

    .line 157
    const-string v2, "FHoverPopupWindow"

    const-string v3, "handler :***** InfoPreview picker move to LEFT ****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_d
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v3, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->MOVE_LEFT:I
    invoke-static {v3}, Landroid/widget/FHoverPopupWindow;->access$500(Landroid/widget/FHoverPopupWindow;)I

    move-result v3

    # setter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v2, v3}, Landroid/widget/FHoverPopupWindow;->access$102(Landroid/widget/FHoverPopupWindow;I)I

    .line 159
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v3, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v3}, Landroid/widget/FHoverPopupWindow;->access$100(Landroid/widget/FHoverPopupWindow;)I

    move-result v3

    # invokes: Landroid/widget/FHoverPopupWindow;->setAnimator(II)V
    invoke-static {v2, v0, v3}, Landroid/widget/FHoverPopupWindow;->access$300(Landroid/widget/FHoverPopupWindow;II)V

    .line 160
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$400(Landroid/widget/FHoverPopupWindow;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 162
    :cond_e
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 164
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v2, v2, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v2, :cond_f

    .line 165
    const-string v2, "FHoverPopupWindow"

    const-string v3, "handler :***** InfoPreview picker move to CENTER ****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_f
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$100(Landroid/widget/FHoverPopupWindow;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->MOVE_LEFT:I
    invoke-static {v3}, Landroid/widget/FHoverPopupWindow;->access$500(Landroid/widget/FHoverPopupWindow;)I

    move-result v3

    if-ne v2, v3, :cond_11

    .line 170
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v3, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I
    invoke-static {v3}, Landroid/widget/FHoverPopupWindow;->access$600(Landroid/widget/FHoverPopupWindow;)I

    move-result v3

    # setter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v2, v3}, Landroid/widget/FHoverPopupWindow;->access$102(Landroid/widget/FHoverPopupWindow;I)I

    .line 175
    :cond_10
    :goto_2
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v3, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v3}, Landroid/widget/FHoverPopupWindow;->access$100(Landroid/widget/FHoverPopupWindow;)I

    move-result v3

    # invokes: Landroid/widget/FHoverPopupWindow;->setAnimator(II)V
    invoke-static {v2, v0, v3}, Landroid/widget/FHoverPopupWindow;->access$300(Landroid/widget/FHoverPopupWindow;II)V

    .line 176
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$400(Landroid/widget/FHoverPopupWindow;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 171
    :cond_11
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$100(Landroid/widget/FHoverPopupWindow;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT:I
    invoke-static {v3}, Landroid/widget/FHoverPopupWindow;->access$200(Landroid/widget/FHoverPopupWindow;)I

    move-result v3

    if-ne v2, v3, :cond_10

    .line 172
    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v3, p0, Landroid/widget/FHoverPopupWindow$1;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I
    invoke-static {v3}, Landroid/widget/FHoverPopupWindow;->access$700(Landroid/widget/FHoverPopupWindow;)I

    move-result v3

    # setter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v2, v3}, Landroid/widget/FHoverPopupWindow;->access$102(Landroid/widget/FHoverPopupWindow;I)I

    goto :goto_2
.end method
