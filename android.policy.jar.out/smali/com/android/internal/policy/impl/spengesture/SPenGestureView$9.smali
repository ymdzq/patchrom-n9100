.class Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;
.super Ljava/lang/Object;
.source "SPenGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->injectionKeyEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

.field final synthetic val$key:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)V
    .locals 0

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iput p2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1017
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenDoubleTap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1018
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1022
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;->val$key:I

    const/16 v2, 0x4002

    # invokes: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->sendKeyDownUpSync(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$2700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;II)V

    .line 1029
    :cond_0
    return-void
.end method
