.class Landroid/widget/HorizontalListView$1;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/HorizontalListView;->logActivity(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mView:Landroid/view/View;

.field final synthetic this$0:Landroid/widget/HorizontalListView;

.field final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/HorizontalListView;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 3860
    iput-object p1, p0, Landroid/widget/HorizontalListView$1;->this$0:Landroid/widget/HorizontalListView;

    iput-object p2, p0, Landroid/widget/HorizontalListView$1;->val$root:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3861
    iget-object v0, p0, Landroid/widget/HorizontalListView$1;->val$root:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/HorizontalListView$1;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    .line 3864
    iget-object v5, p0, Landroid/widget/HorizontalListView$1;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3866
    iget-object v5, p0, Landroid/widget/HorizontalListView$1;->mView:Landroid/view/View;

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 3867
    iget-object v4, p0, Landroid/widget/HorizontalListView$1;->mView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    .line 3868
    .local v4, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 3870
    .local v1, "cnt":I
    const/4 v2, 0x0

    .line 3871
    .local v2, "firstTextViewFound":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 3872
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3873
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 3875
    if-eqz v2, :cond_0

    .line 3871
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3876
    :cond_0
    const/4 v2, 0x1

    .line 3878
    :cond_1
    iget-object v5, p0, Landroid/widget/HorizontalListView$1;->this$0:Landroid/widget/HorizontalListView;

    # invokes: Landroid/widget/HorizontalListView;->logActivity(Landroid/view/View;Landroid/view/View;)V
    invoke-static {v5, v0, v4}, Landroid/widget/HorizontalListView;->access$200(Landroid/widget/HorizontalListView;Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    .line 3881
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "cnt":I
    .end local v2    # "firstTextViewFound":Z
    .end local v3    # "i":I
    .end local v4    # "vg":Landroid/view/ViewGroup;
    :cond_2
    const/4 v5, 0x1

    return v5
.end method
