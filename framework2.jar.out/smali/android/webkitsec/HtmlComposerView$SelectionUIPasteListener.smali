.class Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionUIPasteListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/HtmlComposerView;


# direct methods
.method constructor <init>(Landroid/webkitsec/HtmlComposerView;)V
    .locals 0

    .prologue
    .line 2775
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaste(Ljava/lang/String;I)V
    .locals 11
    .param p1, "htmlFragment"    # Ljava/lang/String;
    .param p2, "dataType"    # I

    .prologue
    const/4 v10, 0x0

    const v9, 0x1040bc7

    const v6, 0x102040a

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2777
    const-string v3, "HtmlComposerView"

    const-string v4, "SelectionUIPasteListener onPaste"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    # getter for: Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;
    invoke-static {v3}, Landroid/webkitsec/HtmlComposerView;->access$1000(Landroid/webkitsec/HtmlComposerView;)Landroid/webkitsec/HtmlComposerInputConnection;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2780
    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView is already destroyed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    :goto_0
    return-void

    .line 2784
    :cond_0
    if-nez p1, :cond_1

    .line 2785
    const-string v3, "HtmlComposerView"

    const-string v4, "SelectionUIPasteListener onPaste htmlFragment == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2789
    :cond_1
    const/4 v2, 0x0

    .line 2790
    .local v2, "result":Z
    const/4 v3, 0x3

    if-eq p2, v3, :cond_2

    const/4 v3, 0x5

    if-ne p2, v3, :cond_5

    .line 2791
    :cond_2
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    # invokes: Landroid/webkitsec/HtmlComposerView;->insertImageWithResizing(Ljava/lang/String;)Z
    invoke-static {v3, p1}, Landroid/webkitsec/HtmlComposerView;->access$1100(Landroid/webkitsec/HtmlComposerView;Ljava/lang/String;)Z

    move-result v2

    .line 2835
    :goto_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v3, v7}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 2836
    if-ne v7, v2, :cond_3

    .line 2837
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    # getter for: Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;
    invoke-static {v3}, Landroid/webkitsec/HtmlComposerView;->access$1200(Landroid/webkitsec/HtmlComposerView;)Landroid/widget/Toast;

    move-result-object v3

    if-nez v3, :cond_9

    .line 2838
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkitsec/HtmlComposerView;->access$1300(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    # setter for: Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;
    invoke-static {v3, v4}, Landroid/webkitsec/HtmlComposerView;->access$1202(Landroid/webkitsec/HtmlComposerView;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 2842
    :goto_2
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    # getter for: Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;
    invoke-static {v3}, Landroid/webkitsec/HtmlComposerView;->access$1200(Landroid/webkitsec/HtmlComposerView;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2846
    :cond_3
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2847
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    sget v4, Landroid/webkitsec/HtmlComposerView;->operSel:I

    invoke-virtual {v3, v4}, Landroid/webkitsec/HtmlComposerView;->invokeTexttoSpeech(I)V

    .line 2849
    :cond_4
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v3, v8}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto :goto_0

    .line 2793
    :cond_5
    const/4 v3, 0x4

    if-ne p2, v3, :cond_8

    .line 2794
    const-string v3, "(?i)(?:(l|L)(i|I)(n|N)(e|E))(-)(h|H)(e|E)(i|I)(g|G)(h|H)(t|T)[\\s]*[\\=\\:][\\s]*([a-zA-Z]+|[0-9]+([a-zA-Z]+|%)|[0-9]+((.)[0-9]+|))[;\\s]?"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2800
    :try_start_0
    const-string v3, "<p"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "<pre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_6

    .line 2802
    const-string v3, "<p"

    const-string v4, "<span"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2804
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v3, "/p>"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "/p>"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    const-string v5, "/span>"

    invoke-virtual {v0, v3, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2805
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2808
    .end local v0    # "b":Ljava/lang/StringBuilder;
    :cond_6
    const-string v3, "<div"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    .line 2810
    const-string v3, "<div"

    const-string v4, "<span"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2812
    .restart local v0    # "b":Ljava/lang/StringBuilder;
    const-string v3, "/div>"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "/div>"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    const-string v5, "/span>"

    invoke-virtual {v0, v3, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2813
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 2820
    .end local v0    # "b":Ljava/lang/StringBuilder;
    :cond_7
    :goto_3
    const-string/jumbo v3, "overflow-x: hidden; overflow-y: hidden;"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2821
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    sget-object v4, Landroid/webkitsec/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    invoke-virtual {v3, p1, v4}, Landroid/webkitsec/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkitsec/HtmlComposerView$InsertionPosition;)Z

    move-result v2

    .line 2823
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iput-object p1, v3, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 2824
    sput v6, Landroid/webkitsec/HtmlComposerView;->operSel:I

    .line 2825
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-object v4, v4, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    const-string v5, "<.*?>"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    goto/16 :goto_1

    .line 2815
    :catch_0
    move-exception v1

    .line 2816
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-object v3, v3, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    if-eqz v3, :cond_7

    .line 2817
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-object v3, v3, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    invoke-interface {v3, v7, v10, v10}, Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;->onNotification(ILjava/lang/Exception;Ljava/lang/String;)V

    goto :goto_3

    .line 2828
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_8
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    sget-object v4, Landroid/webkitsec/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    invoke-virtual {v3, p1, v4}, Landroid/webkitsec/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkitsec/HtmlComposerView$InsertionPosition;)Z

    move-result v2

    .line 2830
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iput-object p1, v3, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 2831
    sput v6, Landroid/webkitsec/HtmlComposerView;->operSel:I

    .line 2832
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-object v4, v4, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    const-string v5, "<.*?>"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    goto/16 :goto_1

    .line 2840
    :cond_9
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkitsec/HtmlComposerView;

    # getter for: Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;
    invoke-static {v3}, Landroid/webkitsec/HtmlComposerView;->access$1200(Landroid/webkitsec/HtmlComposerView;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/Toast;->setText(I)V

    goto/16 :goto_2
.end method