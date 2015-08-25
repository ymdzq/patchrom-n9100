.class Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;
.super Landroid/widget/AdapterView$AdapterDataSetObserver;
.source "AbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .locals 0

    .prologue
    .line 7733
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0, p1}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 7736
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 7737
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$4900(Landroid/widget/AbsHorizontalListView;)Landroid/widget/HorizontalFastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7738
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$4900(Landroid/widget/AbsHorizontalListView;)Landroid/widget/HorizontalFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalFastScroller;->onSectionsChanged()V

    .line 7740
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 7744
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onInvalidated()V

    .line 7745
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$4900(Landroid/widget/AbsHorizontalListView;)Landroid/widget/HorizontalFastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7746
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$4900(Landroid/widget/AbsHorizontalListView;)Landroid/widget/HorizontalFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalFastScroller;->onSectionsChanged()V

    .line 7748
    :cond_0
    return-void
.end method
