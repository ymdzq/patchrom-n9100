.class final Landroid/webkitsec/HTML5VideoView$TimeupdateTask;
.super Ljava/util/TimerTask;
.source "HTML5VideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HTML5VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeupdateTask"
.end annotation


# instance fields
.field private mProxy:Landroid/webkitsec/HTML5VideoViewProxy;


# direct methods
.method public constructor <init>(Landroid/webkitsec/HTML5VideoViewProxy;)V
    .locals 0
    .param p1, "proxy"    # Landroid/webkitsec/HTML5VideoViewProxy;

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 391
    iput-object p1, p0, Landroid/webkitsec/HTML5VideoView$TimeupdateTask;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    .line 392
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView$TimeupdateTask;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoViewProxy;->onTimeupdate()V

    .line 397
    return-void
.end method
