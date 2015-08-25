.class Landroid/view/VolumePanel$5;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v5, 0x0

    .line 667
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 668
    const/4 v1, 0x1

    .line 670
    .local v1, "isCoverOpen":Z
    # getter for: Landroid/view/VolumePanel;->LOGD:Z
    invoke-static {}, Landroid/view/VolumePanel;->access$300()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 671
    const-string v3, "VolumePanel"

    const-string/jumbo v4, "onCoverStateChanged : isCoverOpen = true, cover is opened"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_0
    iget-object v3, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mIsShowingSCoverWarning:Z
    invoke-static {v3}, Landroid/view/VolumePanel;->access$500(Landroid/view/VolumePanel;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 675
    # getter for: Landroid/view/VolumePanel;->LOGD:Z
    invoke-static {}, Landroid/view/VolumePanel;->access$300()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "VolumePanel"

    const-string/jumbo v4, "onCoverStateChanged: remove warning popup on the s view cover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_1
    iget-object v3, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    iget-object v4, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mCoverManager:Lcom/samsung/android/cover/CoverManager;
    invoke-static {v4}, Landroid/view/VolumePanel;->access$700(Landroid/view/VolumePanel;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    # setter for: Landroid/view/VolumePanel;->mCoverType:I
    invoke-static {v3, v4}, Landroid/view/VolumePanel;->access$602(Landroid/view/VolumePanel;I)I

    .line 677
    iget-object v3, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mCoverType:I
    invoke-static {v3}, Landroid/view/VolumePanel;->access$600(Landroid/view/VolumePanel;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    .line 678
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    iget-object v3, v3, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x1090134

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 679
    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    # getter for: Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;
    invoke-static {}, Landroid/view/VolumePanel;->access$100()Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 680
    # getter for: Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;
    invoke-static {}, Landroid/view/VolumePanel;->access$100()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 688
    :cond_2
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    .local v0, "coverIntent":Landroid/content/Intent;
    const-string/jumbo v3, "visibility"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 690
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "volume"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const-string/jumbo v3, "remote"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 692
    iget-object v3, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    iget-object v3, v3, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 693
    iget-object v3, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    # setter for: Landroid/view/VolumePanel;->mIsShowingSCoverWarning:Z
    invoke-static {v3, v5}, Landroid/view/VolumePanel;->access$502(Landroid/view/VolumePanel;Z)Z

    .line 701
    .end local v0    # "coverIntent":Landroid/content/Intent;
    .end local v2    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_3
    iget-object v3, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v3}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v3}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 702
    # getter for: Landroid/view/VolumePanel;->LOGD:Z
    invoke-static {}, Landroid/view/VolumePanel;->access$300()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 703
    const-string v3, "VolumePanel"

    const-string/jumbo v4, "onCoverStateChanged : Call mDialog.dismiss() #1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_4
    iget-object v3, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v3}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 752
    :cond_5
    :goto_1
    return-void

    .line 683
    :cond_6
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    iget-object v3, v3, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x1090133

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 684
    .restart local v2    # "remoteViews":Landroid/widget/RemoteViews;
    # getter for: Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;
    invoke-static {}, Landroid/view/VolumePanel;->access$100()Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 685
    # getter for: Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;
    invoke-static {}, Landroid/view/VolumePanel;->access$100()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 707
    .end local v1    # "isCoverOpen":Z
    .end local v2    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_7
    const/4 v1, 0x0

    .line 709
    .restart local v1    # "isCoverOpen":Z
    # getter for: Landroid/view/VolumePanel;->LOGD:Z
    invoke-static {}, Landroid/view/VolumePanel;->access$300()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 710
    const-string v3, "VolumePanel"

    const-string/jumbo v4, "onCoverStateChanged : isCoverOpen = false, cover is closed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_8
    # getter for: Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;
    invoke-static {}, Landroid/view/VolumePanel;->access$100()Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 742
    # getter for: Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;
    invoke-static {}, Landroid/view/VolumePanel;->access$100()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 744
    :cond_9
    iget-object v3, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v3}, Landroid/view/VolumePanel;->onDismissSafeVolumeWarning()V

    .line 746
    iget-object v3, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v3}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v3}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 747
    # getter for: Landroid/view/VolumePanel;->LOGD:Z
    invoke-static {}, Landroid/view/VolumePanel;->access$300()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 748
    const-string v3, "VolumePanel"

    const-string/jumbo v4, "onCoverStateChanged : Call mDialog.dismiss() #2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_a
    iget-object v3, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v3}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1
.end method
