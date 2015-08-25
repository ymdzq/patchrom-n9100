.class public Lcom/android/internal/policy/impl/GuideView;
.super Landroid/widget/FrameLayout;
.source "GuideView.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final DOCKING:I = 0x2

.field static final INVALID:I = -0x1

.field static final NORMAL:I = 0x0

.field static final WARNING:I = 0x1


# instance fields
.field private mBorderView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFakeHeaderView:Landroid/widget/ImageView;

.field private mMakeHeaderView:Z

.field private mParent:Landroid/view/View;

.field private mShowing:Z

.field private mType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 2
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/GuideView;->mType:I

    .line 28
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GuideView;->mShowing:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GuideView;->mMakeHeaderView:Z

    .line 36
    iput-object p1, p0, Lcom/android/internal/policy/impl/GuideView;->mParent:Landroid/view/View;

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mContext:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mWindowManager:Landroid/view/WindowManager;

    .line 40
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/GuideView;->setType(I)V

    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GuideView;->mMakeHeaderView:Z

    .line 44
    :cond_0
    return-void
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 113
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 115
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 116
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 117
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 118
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 119
    const/16 v1, 0x3ed

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 120
    iget-object v1, p0, Lcom/android/internal/policy/impl/GuideView;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 121
    const/16 v1, 0x318

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 125
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x600000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 127
    return-object v0
.end method

.method private refreshBackground()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/GuideView;->mType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    const v1, 0x108068a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GuideView;->mMakeHeaderView:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    const v1, 0x108065d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 145
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    const v1, 0x1080689

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 147
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GuideView;->mMakeHeaderView:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    const v1, 0x108065c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 154
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    const v1, 0x1080681

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 156
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GuideView;->mMakeHeaderView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GuideView;->mShowing:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GuideView;->mShowing:Z

    .line 51
    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 104
    iget v0, p0, Lcom/android/internal/policy/impl/GuideView;->mType:I

    if-ne v0, p1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/GuideView;->mType:I

    .line 109
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GuideView;->refreshBackground()V

    goto :goto_0
.end method

.method public show(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 54
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GuideView;->mShowing:Z

    if-nez v4, :cond_1

    .line 55
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GuideView;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 56
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 57
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GuideView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    .line 58
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GuideView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    .line 59
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GuideView;->refreshBackground()V

    .line 61
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v3, "vlp":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 64
    iput p2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 66
    iget-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {p0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {p0}, Landroid/view/ViewGroup;->resetResolvedLayoutDirection()V

    .line 68
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/View;->setLayoutDirection(I)V

    .line 69
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GuideView;->mMakeHeaderView:Z

    if-eqz v4, :cond_0

    .line 70
    iget-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 72
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 73
    .local v1, "flp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v4, p3, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 74
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 76
    iget-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "vlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GuideView;->mShowing:Z

    .line 84
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    .restart local v3    # "vlp":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 87
    iput p2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 89
    iput p3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 90
    iput p4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 92
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GuideView;->mMakeHeaderView:Z

    if-eqz v4, :cond_2

    .line 93
    iget-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 94
    .restart local v1    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v4, p3, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 95
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 98
    .end local v1    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 99
    iget-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 101
    return-void
.end method
