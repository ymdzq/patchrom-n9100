.class public Landroid/webkitsec/WebView$PrivateAccess;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrivateAccess"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebView;


# direct methods
.method public constructor <init>(Landroid/webkitsec/WebView;)V
    .locals 0

    .prologue
    .line 1914
    iput-object p1, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public awakenScrollBars(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 1971
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    # invokes: Landroid/view/View;->awakenScrollBars(I)Z
    invoke-static {v0, p1}, Landroid/webkitsec/WebView;->access$1300(Landroid/webkitsec/WebView;I)Z

    .line 1972
    return-void
.end method

.method public awakenScrollBars(IZ)V
    .locals 1
    .param p1, "duration"    # I
    .param p2, "invalidate"    # Z

    .prologue
    .line 1975
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    # invokes: Landroid/view/View;->awakenScrollBars(IZ)Z
    invoke-static {v0, p1, p2}, Landroid/webkitsec/WebView;->access$1400(Landroid/webkitsec/WebView;IZ)Z

    .line 1976
    return-void
.end method

.method public getHorizontalScrollFactor()F
    .locals 1

    .prologue
    .line 1983
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    # invokes: Landroid/view/View;->getHorizontalScrollFactor()F
    invoke-static {v0}, Landroid/webkitsec/WebView;->access$1600(Landroid/webkitsec/WebView;)F

    move-result v0

    return v0
.end method

.method public getHorizontalScrollbarHeight()I
    .locals 1

    .prologue
    .line 1995
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    # invokes: Landroid/view/View;->getHorizontalScrollbarHeight()I
    invoke-static {v0}, Landroid/webkitsec/WebView;->access$1800(Landroid/webkitsec/WebView;)I

    move-result v0

    return v0
.end method

.method public getVerticalScrollFactor()F
    .locals 1

    .prologue
    .line 1979
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    # invokes: Landroid/view/View;->getVerticalScrollFactor()F
    invoke-static {v0}, Landroid/webkitsec/WebView;->access$1500(Landroid/webkitsec/WebView;)F

    move-result v0

    return v0
.end method

.method public onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 1991
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkitsec/WebView;->onScrollChanged(IIII)V

    .line 1992
    return-void
.end method

.method public overScrollBy(IIIIIIIIZ)V
    .locals 10
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 1966
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    # invokes: Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v0 .. v9}, Landroid/webkitsec/WebView;->access$1200(Landroid/webkitsec/WebView;IIIIIIIIZ)Z

    .line 1968
    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 1
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .prologue
    .line 1987
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    # invokes: Landroid/view/View;->setMeasuredDimension(II)V
    invoke-static {v0, p1, p2}, Landroid/webkitsec/WebView;->access$1700(Landroid/webkitsec/WebView;II)V

    .line 1988
    return-void
.end method

.method public setScrollXRaw(I)V
    .locals 1
    .param p1, "scrollX"    # I

    .prologue
    .line 2001
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    # setter for: Landroid/view/View;->mScrollX:I
    invoke-static {v0, p1}, Landroid/webkitsec/WebView;->access$1902(Landroid/webkitsec/WebView;I)I

    .line 2002
    return-void
.end method

.method public setScrollYRaw(I)V
    .locals 1
    .param p1, "scrollY"    # I

    .prologue
    .line 2006
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    # setter for: Landroid/view/View;->mScrollY:I
    invoke-static {v0, p1}, Landroid/webkitsec/WebView;->access$2002(Landroid/webkitsec/WebView;I)I

    .line 2007
    return-void
.end method

.method public super_computeScroll()V
    .locals 1

    .prologue
    .line 1925
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    # invokes: Landroid/view/View;->computeScroll()V
    invoke-static {v0}, Landroid/webkitsec/WebView;->access$301(Landroid/webkitsec/WebView;)V

    .line 1926
    return-void
.end method

.method public super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1945
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    # invokes: Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    invoke-static {v0, p1}, Landroid/webkitsec/WebView;->access$801(Landroid/webkitsec/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_getScrollBarStyle()I
    .locals 1

    .prologue
    .line 1917
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    # invokes: Landroid/view/View;->getScrollBarStyle()I
    invoke-static {v0}, Landroid/webkitsec/WebView;->access$101(Landroid/webkitsec/WebView;)I

    move-result v0

    return v0
.end method

.method public super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1949
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    # invokes: Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Landroid/webkitsec/WebView;->access$901(Landroid/webkitsec/WebView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1929
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    # invokes: Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Landroid/webkitsec/WebView;->access$401(Landroid/webkitsec/WebView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 1933
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    # invokes: Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z
    invoke-static {v0, p1, p2}, Landroid/webkitsec/WebView;->access$501(Landroid/webkitsec/WebView;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public super_performLongClick()Z
    .locals 1

    .prologue
    .line 1937
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    # invokes: Landroid/view/View;->performLongClick()Z
    invoke-static {v0}, Landroid/webkitsec/WebView;->access$601(Landroid/webkitsec/WebView;)Z

    move-result v0

    return v0
.end method

.method public super_requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1953
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    # invokes: Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z
    invoke-static {v0, p1, p2}, Landroid/webkitsec/WebView;->access$1001(Landroid/webkitsec/WebView;ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public super_scrollTo(II)V
    .locals 1
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I

    .prologue
    .line 1921
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    # invokes: Landroid/view/View;->scrollTo(II)V
    invoke-static {v0, p1, p2}, Landroid/webkitsec/WebView;->access$201(Landroid/webkitsec/WebView;II)V

    .line 1922
    return-void
.end method

.method public super_setFrame(IIII)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1941
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    # invokes: Landroid/view/View;->setFrame(IIII)Z
    invoke-static {v0, p1, p2, p3, p4}, Landroid/webkitsec/WebView;->access$701(Landroid/webkitsec/WebView;IIII)Z

    move-result v0

    return v0
.end method

.method public super_setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1957
    iget-object v0, p0, Landroid/webkitsec/WebView$PrivateAccess;->this$0:Landroid/webkitsec/WebView;

    # invokes: Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    invoke-static {v0, p1}, Landroid/webkitsec/WebView;->access$1101(Landroid/webkitsec/WebView;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1958
    return-void
.end method
