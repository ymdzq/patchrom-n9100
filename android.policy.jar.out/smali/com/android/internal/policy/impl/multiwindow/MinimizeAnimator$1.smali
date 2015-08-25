.class Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 329
    const/4 v1, 0x0

    .line 331
    .local v1, "isNeedAdditionalAnimation":Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$000(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 332
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$000(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    .line 333
    .local v0, "currMovements":Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$000(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 335
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v4, v0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    iput v4, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    .line 336
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v4, v0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    iput v4, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    .line 341
    .end local v0    # "currMovements":Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "viewIdx":I
    :goto_0
    if-lez v2, :cond_5

    .line 342
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_1

    .line 343
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    .line 346
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iput v7, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    .line 348
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_2

    .line 349
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 352
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iput v7, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    .line 355
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_3

    .line 356
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    iput v4, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    .line 357
    const/4 v1, 0x1

    .line 359
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_4

    .line 360
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    iput v4, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    .line 361
    const/4 v1, 0x1

    .line 341
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 365
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_6

    .line 366
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    .line 368
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iput v7, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    .line 370
    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_7

    .line 371
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 373
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iput v7, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    .line 376
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsTouchDown:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$300(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v1, :cond_9

    .line 377
    :cond_8
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShiftPosition:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 378
    :cond_9
    return-void
.end method
