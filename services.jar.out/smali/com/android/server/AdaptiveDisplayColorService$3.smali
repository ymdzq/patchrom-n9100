.class Lcom/android/server/AdaptiveDisplayColorService$3;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AdaptiveDisplayColorService;


# direct methods
.method constructor <init>(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/server/AdaptiveDisplayColorService$3;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$3;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    # setter for: Lcom/android/server/AdaptiveDisplayColorService;->mCoverState:Z
    invoke-static {v0, v1}, Lcom/android/server/AdaptiveDisplayColorService;->access$2102(Lcom/android/server/AdaptiveDisplayColorService;Z)Z

    .line 564
    return-void
.end method
