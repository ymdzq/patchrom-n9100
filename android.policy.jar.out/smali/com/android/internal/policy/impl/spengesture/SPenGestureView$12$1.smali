.class Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12$1;
.super Ljava/lang/Object;
.source "SPenGestureView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;)V
    .locals 0

    .prologue
    .line 2649
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2677
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x4

    .line 2656
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$8000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2657
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$8000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2659
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;->val$key:I

    packed-switch v0, :pswitch_data_0

    .line 2669
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$8400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2670
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2672
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$8402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z

    .line 2673
    return-void

    .line 2661
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/16 v1, 0x52

    # invokes: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->injectionKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$8300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)V

    goto :goto_0

    .line 2664
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # invokes: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->injectionKeyEvent(I)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$8300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)V

    goto :goto_0

    .line 2659
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2681
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2652
    return-void
.end method
