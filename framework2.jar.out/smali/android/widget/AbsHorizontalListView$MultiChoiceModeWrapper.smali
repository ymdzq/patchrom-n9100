.class Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .locals 0

    .prologue
    .line 7771
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    .prologue
    .line 7779
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 7799
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 7784
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

    invoke-interface {v1, p1, p2}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7786
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 7787
    const/4 v0, 0x1

    .line 7789
    :cond_0
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x1

    .line 7804
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 7805
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 7808
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView;->clearChoices()V

    .line 7810
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    iput-boolean v2, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 7811
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 7812
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    .line 7814
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 7815
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 7820
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 7823
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$5000(Landroid/widget/AbsHorizontalListView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7824
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 7826
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 7794
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;)V
    .locals 0
    .param p1, "wrapped"    # Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

    .prologue
    .line 7775
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

    .line 7776
    return-void
.end method
