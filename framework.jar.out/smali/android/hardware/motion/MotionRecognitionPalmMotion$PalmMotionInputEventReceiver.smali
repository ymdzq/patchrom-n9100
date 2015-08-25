.class final Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmMotionInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "MotionRecognitionPalmMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionPalmMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PalmMotionInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;


# direct methods
.method public constructor <init>(Landroid/hardware/motion/MotionRecognitionPalmMotion;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 90
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmMotionInputEventReceiver;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    .line 91
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 92
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 98
    .local v1, "handled":Z
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v2, v0

    .line 99
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmMotionInputEventReceiver;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mUseGestureDetectorTouchEventEx:Z
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$300(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmMotionInputEventReceiver;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    invoke-virtual {v3, v2}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->onTouchEvent_ex(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setAction(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    const/4 v1, 0x1

    .line 106
    invoke-virtual {p0, p1, v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmMotionInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 108
    return-void

    .line 106
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, p1, v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmMotionInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v3
.end method
