.class Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Movement"
.end annotation


# instance fields
.field public movementX:F

.field public movementY:F

.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;FF)V
    .locals 1
    .param p2, "movementX"    # F
    .param p3, "movementY"    # F

    .prologue
    const/4 v0, 0x0

    .line 517
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    .line 515
    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    .line 518
    iput p2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    .line 519
    iput p3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    .line 520
    return-void
.end method
