.class Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "AbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .locals 0

    .prologue
    .line 2710
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 2717
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 2718
    const/4 v0, 0x0

    .line 2720
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View$AccessibilityDelegate;->createAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2725
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2727
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v1, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 2728
    .local v0, "position":I
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v1, p1, v0, p2}, Landroid/widget/AbsHorizontalListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2729
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2733
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2777
    :goto_0
    return v4

    .line 2737
    :cond_0
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 2738
    .local v3, "position":I
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2740
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eq v3, v7, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move v4, v5

    .line 2742
    goto :goto_0

    .line 2745
    :cond_2
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    move v4, v5

    .line 2747
    goto :goto_0

    .line 2750
    :cond_4
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6, v3}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 2752
    .local v1, "id":J
    sparse-switch p2, :sswitch_data_0

    move v4, v5

    .line 2777
    goto :goto_0

    .line 2754
    :sswitch_0
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    if-ne v6, v3, :cond_5

    .line 2755
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v5, v7}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_0

    :cond_5
    move v4, v5

    .line 2758
    goto :goto_0

    .line 2760
    :sswitch_1
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    if-eq v6, v3, :cond_6

    .line 2761
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v5, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_0

    :cond_6
    move v4, v5

    .line 2764
    goto :goto_0

    .line 2766
    :sswitch_2
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2767
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4, p1, v3, v1, v2}, Landroid/widget/AbsHorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    :cond_7
    move v4, v5

    .line 2769
    goto :goto_0

    .line 2771
    :sswitch_3
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2772
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4, p1, v3, v1, v2}, Landroid/widget/AbsHorizontalListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    :cond_8
    move v4, v5

    .line 2774
    goto :goto_0

    .line 2752
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method
