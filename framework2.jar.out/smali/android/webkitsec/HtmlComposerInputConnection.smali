.class public Landroid/webkitsec/HtmlComposerInputConnection;
.super Ljava/lang/Object;
.source "HtmlComposerInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR_BLUE:I = -0xf0001

.field private static final BACKGROUND_COLOR_GREEN:I = -0x993256

.field private static final BACKGROUND_COLOR_PURPLE:I = -0x777701

.field private static final BACKGROUND_COLOR_SKYBLUE:I = -0x604933

.field static final COMPOSING:Ljava/lang/Object;

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerInputConnection"

.field public static TTSbefore:I


# instance fields
.field public DEBUG:Z

.field final MAX_SPANS:I

.field public TTSbeforeText:Ljava/lang/String;

.field private TTSstart:I

.field TTStext:Ljava/lang/String;

.field private bBeginBatchEdit:Z

.field bShadeColor:Z

.field protected composingEnd:I

.field protected composingStart:I

.field protected curSelEnd:I

.field protected curSelStart:I

.field currCompText:Ljava/lang/CharSequence;

.field protected mALTKeyIsPressed:Z

.field private mBGColorSpans:[Landroid/text/style/BackgroundColorSpan;

.field private mBackGroundColorSpan:[I

.field mBatchEditNesting:I

.field private mColorSpans:[Landroid/text/style/ForegroundColorSpan;

.field private mCursorPosition:I

.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field private mDefaultCompositeUnderlineWidth:I

.field mTargetView:Landroid/webkitsec/HtmlComposerView;

.field private mToastForMaxLength:Landroid/widget/Toast;

.field spanData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Landroid/webkitsec/ComposingText;

    invoke-direct {v0}, Landroid/webkitsec/ComposingText;-><init>()V

    sput-object v0, Landroid/webkitsec/HtmlComposerInputConnection;->COMPOSING:Ljava/lang/Object;

    .line 95
    const/4 v0, 0x0

    sput v0, Landroid/webkitsec/HtmlComposerInputConnection;->TTSbefore:I

    return-void
.end method

.method public constructor <init>(Landroid/webkitsec/HtmlComposerView;)V
    .locals 4
    .param p1, "targetView"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    .line 80
    iput v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 81
    iput v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 82
    iput v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 83
    iput v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->TTStext:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->bShadeColor:Z

    .line 88
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    .line 94
    iput v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->TTSstart:I

    .line 96
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    .line 100
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mBackGroundColorSpan:[I

    .line 101
    iput v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mDefaultCompositeUnderlineWidth:I

    .line 102
    iput v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mCursorPosition:I

    .line 103
    const/16 v0, 0xff

    iput v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->MAX_SPANS:I

    .line 110
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    .line 112
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mToastForMaxLength:Landroid/widget/Toast;

    .line 128
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    .line 129
    iput v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mBatchEditNesting:I

    .line 130
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/webkitsec/HtmlComposerView;I)V
    .locals 0
    .param p1, "targetView"    # Landroid/webkitsec/HtmlComposerView;
    .param p2, "compositeUnderlineWidth"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Landroid/webkitsec/HtmlComposerInputConnection;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    .line 135
    iput p2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mDefaultCompositeUnderlineWidth:I

    .line 136
    return-void
.end method

.method private isBracketChar(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1083
    const-string v0, "<>{}[]()\u00ab\u00bb\u300a\u300b"

    .line 1084
    .local v0, "BRACKET":Ljava/lang/String;
    const-string v1, "<>{}[]()\u00ab\u00bb\u300a\u300b"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1085
    const/4 v1, 0x1

    .line 1087
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isThaiVowel(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1122
    const/4 v3, 0x0

    .line 1123
    .local v3, "unicode":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1124
    .local v2, "len":I
    const/4 v1, 0x0

    .line 1126
    .local v1, "isVowel":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1127
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1128
    const/16 v4, 0xe0e

    if-eq v3, v4, :cond_0

    const/16 v4, 0xe38

    if-eq v3, v4, :cond_0

    const/16 v4, 0xe39

    if-eq v3, v4, :cond_0

    const/16 v4, 0xe3a

    if-ne v3, v4, :cond_1

    .line 1129
    :cond_0
    const/4 v4, 0x1

    .line 1131
    :goto_1
    return v4

    .line 1126
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1131
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private replaceTextToHtml(Ljava/lang/CharSequence;IZ)V
    .locals 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "composing"    # Z

    .prologue
    .line 807
    const-string v8, "HtmlComposerInputConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "replaceTextToHtml called here"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-boolean v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 810
    const-string v8, "HtmlComposerInputConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "settings "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " text coming "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_0
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v8, :cond_2

    .line 931
    :cond_1
    :goto_0
    return-void

    .line 817
    :cond_2
    const/4 v5, 0x0

    .line 819
    .local v5, "sp":Landroid/text/Spanned;
    iget v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 820
    .local v0, "a":I
    iget v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 822
    .local v1, "b":I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_3

    const/4 v8, -0x1

    if-ne v1, v8, :cond_3

    .line 823
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 824
    iget v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 825
    iget v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 829
    :cond_3
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->clear()V

    .line 830
    if-eqz p1, :cond_1

    .line 832
    instance-of v8, p1, Landroid/text/Spanned;

    if-eqz v8, :cond_c

    move-object v5, p1

    .line 833
    check-cast v5, Landroid/text/Spanned;

    .line 834
    invoke-static {v5}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v2

    .line 835
    .local v2, "htmltext":Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerInputConnection;->getSpanData(Landroid/text/Spanned;)V

    .line 854
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Landroid/webkitsec/HtmlComposerInputConnection;->isBracketChar(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 855
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/webkitsec/HtmlComposerInputConnection;->isRTLText(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 856
    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerInputConnection;->convertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 860
    :cond_5
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v4

    .line 861
    .local v4, "selectionType":I
    const-string v7, ""

    .line 862
    .local v7, "textString":Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 863
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 865
    :cond_6
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v8, v7, p2, p3, v9}, Landroid/webkitsec/HtmlComposerView;->insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v3

    .line 868
    .local v3, "m_selectionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    const-string v8, "HtmlComposerInputConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Selection offset value start "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",End:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    if-eqz p3, :cond_d

    .line 880
    iget v8, v3, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    add-int/2addr v8, v0

    iput v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 881
    iget v8, v3, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    add-int/2addr v8, v0

    iput v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 883
    iget v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    if-ne v8, v9, :cond_7

    .line 884
    const/4 v8, -0x1

    iput v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 885
    const/4 v8, -0x1

    iput v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 892
    :cond_7
    :goto_2
    if-eqz p1, :cond_8

    .line 893
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/2addr v0, v8

    .line 895
    :cond_8
    if-lez p2, :cond_e

    .line 896
    add-int/lit8 v8, v0, -0x1

    add-int/2addr v8, p2

    iput v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 910
    :cond_9
    :goto_3
    iget v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    if-gez v8, :cond_a

    .line 911
    const/4 v8, 0x0

    iput v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 913
    :cond_a
    iget v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iput v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 914
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 916
    const/4 v8, 0x1

    if-ne v8, v4, :cond_f

    .line 917
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 925
    :cond_b
    :goto_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 926
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroid/webkitsec/HtmlComposerInputConnection;->isThaiVowel(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 927
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 838
    .end local v2    # "htmltext":Ljava/lang/String;
    .end local v3    # "m_selectionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .end local v4    # "selectionType":I
    .end local v7    # "textString":Ljava/lang/String;
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 839
    .restart local v2    # "htmltext":Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 840
    new-instance v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v6}, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;-><init>()V

    .line 841
    .local v6, "tempSpanData":Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;
    const/4 v8, 0x0

    iput v8, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    .line 842
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    iput v8, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    .line 843
    const/4 v8, 0x0

    iput-boolean v8, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    .line 844
    iget v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mDefaultCompositeUnderlineWidth:I

    int-to-float v8, v8

    iput v8, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->underlineThickness:F

    .line 845
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 889
    .end local v6    # "tempSpanData":Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;
    .restart local v3    # "m_selectionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .restart local v4    # "selectionType":I
    .restart local v7    # "textString":Ljava/lang/String;
    :cond_d
    const/4 v8, -0x1

    iput v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 890
    const/4 v8, -0x1

    iput v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    goto :goto_2

    .line 898
    :cond_e
    if-eqz p1, :cond_9

    .line 899
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int v8, v0, v8

    add-int/2addr v8, p2

    iput v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    goto :goto_3

    .line 919
    :cond_f
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 921
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\n"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 922
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto :goto_4
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 217
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 218
    iget v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mBatchEditNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mBatchEditNesting:I

    .line 219
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginBatchEdit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return v3
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 224
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "clearMetaKeyStates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 229
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "commitCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 2
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 139
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "HtmlComposerInputConnection commitCorrection return TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const v10, 0x1040bf6

    const v9, 0x1040bf5

    const/4 v8, -0x1

    const/4 v4, 0x0

    .line 234
    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 235
    const-string v5, "HtmlComposerInputConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "commitText "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-eqz v5, :cond_1

    if-nez p1, :cond_2

    .line 283
    :cond_1
    :goto_0
    return v4

    .line 240
    :cond_2
    const/4 v3, 0x0

    .line 241
    .local v3, "prevComposingTextLen":I
    iget v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    if-eq v8, v5, :cond_3

    iget v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    if-eq v8, v5, :cond_3

    iget v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    if-le v5, v6, :cond_3

    .line 242
    iget v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    sub-int v3, v5, v6

    .line 243
    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 244
    const-string v5, "HtmlComposerInputConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "commitText prevComposingTextLen = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_3
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v5}, Landroid/webkitsec/HtmlComposerView;->htmlLength()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    iget v6, v6, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    if-lt v5, v6, :cond_5

    .line 249
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mToastForMaxLength:Landroid/widget/Toast;

    if-nez v5, :cond_4

    .line 250
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mToastForMaxLength:Landroid/widget/Toast;

    .line 254
    :goto_1
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mToastForMaxLength:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 252
    :cond_4
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mToastForMaxLength:Landroid/widget/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 259
    :cond_5
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v5}, Landroid/webkitsec/HtmlComposerView;->hideInsertionController()V

    .line 261
    const/4 v1, 0x0

    .line 262
    .local v1, "beforeText":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "fromIndex":I
    const/4 v0, 0x0

    .line 263
    .local v0, "addedCount":I
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 264
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v5}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v1

    .line 265
    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "HtmlComposerInputConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "commitText mBeforeText.length = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], beforeText = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 267
    iget v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 270
    :cond_7
    invoke-direct {p0, p1, p2, v4}, Landroid/webkitsec/HtmlComposerInputConnection;->replaceTextToHtml(Ljava/lang/CharSequence;IZ)V

    .line 271
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v5}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    .line 273
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v5, v4}, Landroid/webkitsec/HtmlComposerView;->setComposingState(Z)V

    .line 275
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 276
    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v5, :cond_8

    .line 277
    const-string v5, "HtmlComposerInputConnection"

    const-string v6, "commitText AccessibilityManager"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_8
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v5, v2, v4, v0, v1}, Landroid/webkitsec/HtmlComposerView;->sendAccessibilityEventTypeViewTextChanged(IIILjava/lang/CharSequence;)V

    .line 283
    :cond_9
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public convertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7
    .param p1, "Text"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v6, 0x300b

    const/16 v5, 0x300a

    const/16 v4, 0xbb

    const/16 v3, 0xab

    .line 1091
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1092
    .local v1, "sText":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1093
    .local v0, "sCvtText":Ljava/lang/String;
    const-string/jumbo v2, "{"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1094
    const-string/jumbo v0, "}"

    .line 1118
    :cond_0
    :goto_0
    return-object v0

    .line 1095
    :cond_1
    const-string/jumbo v2, "}"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1096
    const-string/jumbo v0, "{"

    goto :goto_0

    .line 1097
    :cond_2
    const-string v2, "["

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1098
    const-string v0, "]"

    goto :goto_0

    .line 1099
    :cond_3
    const-string v2, "]"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1100
    const-string v0, "["

    goto :goto_0

    .line 1101
    :cond_4
    const-string v2, "<"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1102
    const-string v0, ">"

    goto :goto_0

    .line 1103
    :cond_5
    const-string v2, ">"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1104
    const-string v0, "<"

    goto :goto_0

    .line 1105
    :cond_6
    const-string v2, "("

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1106
    const-string v0, ")"

    goto :goto_0

    .line 1107
    :cond_7
    const-string v2, ")"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1108
    const-string v0, "("

    goto :goto_0

    .line 1109
    :cond_8
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1110
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1111
    :cond_9
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1112
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1113
    :cond_a
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1114
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1115
    :cond_b
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1116
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public deleteSurroundingText(II)Z
    .locals 6
    .param p1, "leftLength"    # I
    .param p2, "rightLength"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 287
    const-string v3, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteSurroundingText left "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rgh "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v3, :cond_0

    .line 317
    :goto_0
    return v1

    .line 291
    :cond_0
    const-string v0, ""

    .line 292
    .local v0, "chng":Ljava/lang/String;
    if-ge p1, v2, :cond_2

    .line 293
    invoke-virtual {p0, p2, v1}, Landroid/webkitsec/HtmlComposerInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->beginBatchEdit()Z

    .line 302
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v3, p1, p2}, Landroid/webkitsec/HtmlComposerView;->deleteSurroundingText(II)V

    .line 304
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->endBatchEdit()Z

    .line 306
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 307
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v3, v1}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 310
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "\nX+\n+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 313
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/webkitsec/HtmlComposerView;->textToSpeech(II)V

    :cond_1
    move v1, v2

    .line 317
    goto :goto_0

    .line 294
    :cond_2
    if-ge p2, v2, :cond_3

    .line 295
    invoke-virtual {p0, p1, v1}, Landroid/webkitsec/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 297
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, v1}, Landroid/webkitsec/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p2, v1}, Landroid/webkitsec/HtmlComposerInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public doExecute(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "in_args"    # Landroid/os/Bundle;
    .param p2, "out_args"    # Landroid/os/Bundle;

    .prologue
    .line 1135
    const/4 v0, 0x0

    return-object v0
.end method

.method public endBatchEdit()Z
    .locals 3

    .prologue
    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 322
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endBatchEdit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mBatchEditNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mBatchEditNesting:I

    .line 324
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public finishComposingText()Z
    .locals 3

    .prologue
    .line 329
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishComposingText  composingStart   composingEnd  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 331
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 5
    .param p1, "reqModes"    # I

    .prologue
    .line 336
    const-string v3, "HtmlComposerInputConnection"

    const-string v4, "getCursorCapsMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v1, 0x3

    .line 338
    .local v1, "arbOffset":I
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/webkitsec/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "textBeforCursor":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 341
    .local v0, "a":I
    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    return v3
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 10
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    const/4 v7, 0x0

    .line 346
    const-string v6, "HtmlComposerInputConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getExtractedText request.hintMaxChars "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "request.hintMaxLines "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v6, :cond_1

    const/4 v2, 0x0

    .line 395
    :cond_0
    :goto_0
    return-object v2

    .line 349
    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->beginBatchEdit()Z

    .line 350
    new-instance v2, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 352
    .local v2, "outText":Landroid/view/inputmethod/ExtractedText;
    iget v6, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    if-lez v6, :cond_4

    iget v1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    .line 353
    .local v1, "lengthOfET":I
    :goto_1
    invoke-virtual {p0, v1, v7}, Landroid/webkitsec/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 354
    .local v5, "textBeforCursor":Ljava/lang/String;
    invoke-virtual {p0, v1, v7}, Landroid/webkitsec/HtmlComposerInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, "textAfterCursor":Ljava/lang/String;
    invoke-virtual {p0, v7}, Landroid/webkitsec/HtmlComposerInputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 357
    .local v3, "selectedText":Ljava/lang/CharSequence;
    if-eqz v3, :cond_5

    .line 358
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 363
    :goto_2
    iget-object v6, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v6, :cond_2

    iget-object v6, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 364
    :cond_2
    iput v7, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 365
    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v6, v8

    if-gtz v6, :cond_6

    move v6, v7

    :goto_3
    iput v6, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 366
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    iput v6, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 369
    if-eqz v3, :cond_7

    .line 370
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/2addr v6, v8

    iput v6, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 372
    iget v6, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 379
    :goto_4
    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v6, v8

    if-gtz v6, :cond_8

    move v6, v7

    :goto_5
    iput v6, v2, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 380
    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v6, v8

    iput v6, v2, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 382
    const-string v6, "HtmlComposerInputConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getExtractedText outText.selectionStart "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " outText.selectionEnd "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "outText.startOffset "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_3
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->endBatchEdit()Z

    .line 386
    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mBatchEditNesting:I

    if-lez v6, :cond_9

    .line 387
    const-string v6, "HtmlComposerInputConnection"

    const-string v7, "getExtractedText return without update"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 352
    .end local v1    # "lengthOfET":I
    .end local v3    # "selectedText":Ljava/lang/CharSequence;
    .end local v4    # "textAfterCursor":Ljava/lang/String;
    .end local v5    # "textBeforCursor":Ljava/lang/String;
    :cond_4
    const/16 v1, 0x1e

    goto/16 :goto_1

    .line 360
    .restart local v1    # "lengthOfET":I
    .restart local v3    # "selectedText":Ljava/lang/CharSequence;
    .restart local v4    # "textAfterCursor":Ljava/lang/String;
    .restart local v5    # "textBeforCursor":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 365
    :cond_6
    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v6, v8

    goto/16 :goto_3

    .line 374
    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    iput v6, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    goto :goto_4

    .line 379
    :cond_8
    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v6, v8

    goto :goto_5

    .line 391
    :cond_9
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 392
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v0, v6}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 393
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v0, v6, v7, v2}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    goto/16 :goto_0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 399
    const-string v1, "HtmlComposerInputConnection"

    const-string v2, "getSelectedText"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 402
    :goto_0
    return-object v0

    .line 401
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView;->getSelectionSec()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "textSelected":Ljava/lang/String;
    goto :goto_0
.end method

.method getSpanData(Landroid/text/Spanned;)V
    .locals 10
    .param p1, "text"    # Landroid/text/Spanned;

    .prologue
    const/high16 v9, 0x1000000

    const/4 v8, 0x0

    .line 760
    iget-object v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    .line 761
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v4

    .line 763
    .local v4, "spanLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_4

    .line 764
    const-class v7, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, v4, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 765
    .local v2, "next":I
    const-class v7, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, v2, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/CharacterStyle;

    .line 767
    .local v5, "style":[Landroid/text/style/CharacterStyle;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v7, v5

    if-ge v1, v7, :cond_3

    .line 768
    aget-object v7, v5, v1

    instance-of v7, v7, Landroid/text/style/BackgroundColorSpan;

    if-eqz v7, :cond_0

    .line 769
    new-instance v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v6}, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;-><init>()V

    .line 770
    .local v6, "tempSpanData":Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;
    iput v0, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    .line 771
    iput v2, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    .line 777
    aget-object v7, v5, v1

    check-cast v7, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v7}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v7

    add-int/2addr v7, v9

    iput v7, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->highLightColor:I

    .line 778
    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    .line 779
    iget-object v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 782
    .end local v6    # "tempSpanData":Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;
    :cond_0
    aget-object v7, v5, v1

    instance-of v7, v7, Landroid/text/style/UnderlineSpan;

    if-eqz v7, :cond_1

    .line 783
    new-instance v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v6}, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;-><init>()V

    .line 784
    .restart local v6    # "tempSpanData":Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;
    iput v0, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    .line 785
    iput v2, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    .line 786
    iput-boolean v8, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    .line 787
    iget-object v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 790
    .end local v6    # "tempSpanData":Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;
    :cond_1
    aget-object v7, v5, v1

    instance-of v7, v7, Landroid/text/style/SuggestionSpan;

    if-eqz v7, :cond_2

    .line 791
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 792
    .local v3, "sp":Landroid/text/TextPaint;
    aget-object v7, v5, v1

    check-cast v7, Landroid/text/style/SuggestionSpan;

    invoke-virtual {v7, v3}, Landroid/text/style/SuggestionSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 794
    new-instance v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v6}, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;-><init>()V

    .line 795
    .restart local v6    # "tempSpanData":Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;
    iput v0, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    .line 796
    iput v2, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    .line 797
    iput-boolean v8, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    .line 798
    iget v7, v3, Landroid/text/TextPaint;->underlineColor:I

    add-int/2addr v7, v9

    iput v7, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->underlineColor:I

    .line 799
    iget v7, v3, Landroid/text/TextPaint;->underlineThickness:F

    iput v7, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->underlineThickness:F

    .line 800
    iget-object v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 767
    .end local v3    # "sp":Landroid/text/TextPaint;
    .end local v6    # "tempSpanData":Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 763
    :cond_3
    move v0, v2

    goto :goto_0

    .line 804
    .end local v1    # "j":I
    .end local v2    # "next":I
    .end local v5    # "style":[Landroid/text/style/CharacterStyle;
    :cond_4
    return-void
.end method

.method public getTTSbeforeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    return-object v0
.end method

.method public getTTStext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->TTStext:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "n"    # I
    .param p2, "flags"    # I

    .prologue
    .line 407
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v5, :cond_1

    const-string v4, ""

    .line 427
    :cond_0
    :goto_0
    return-object v4

    .line 408
    :cond_1
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    sget-object v6, Landroid/webkitsec/HtmlComposerView$CursorDirection;->FORWARD:Landroid/webkitsec/HtmlComposerView$CursorDirection;

    invoke-virtual {v5, p1, v6}, Landroid/webkitsec/HtmlComposerView;->getTextAroundCursor(ILandroid/webkitsec/HtmlComposerView$CursorDirection;)Ljava/lang/String;

    move-result-object v4

    .line 409
    .local v4, "retText":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 410
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 411
    .local v0, "arr":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 412
    aget-char v1, v0, v2

    .line 413
    .local v1, "chrVal":C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 414
    const/16 v5, 0x20

    aput-char v5, v0, v2

    .line 411
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 417
    .end local v1    # "chrVal":C
    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 418
    .local v3, "rText":Ljava/lang/String;
    move-object v4, v3

    .line 421
    .end local v0    # "arr":[C
    .end local v2    # "i":I
    .end local v3    # "rText":Ljava/lang/String;
    :cond_4
    if-nez v4, :cond_5

    const-string v4, ""

    .line 423
    :cond_5
    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v5, :cond_6

    .line 424
    const-string v5, "HtmlComposerInputConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTextAfterCursor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " flags "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_6
    if-nez v4, :cond_0

    const-string v4, ""

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "n"    # I
    .param p2, "flags"    # I

    .prologue
    .line 431
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v5, :cond_1

    const-string v4, ""

    .line 457
    :cond_0
    :goto_0
    return-object v4

    .line 433
    :cond_1
    iget v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    if-gtz v5, :cond_2

    const-string v4, ""

    goto :goto_0

    .line 435
    :cond_2
    iget v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    if-le p1, v5, :cond_3

    .line 436
    iget p1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 439
    :cond_3
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    sget-object v6, Landroid/webkitsec/HtmlComposerView$CursorDirection;->BACKWARD:Landroid/webkitsec/HtmlComposerView$CursorDirection;

    invoke-virtual {v5, p1, v6}, Landroid/webkitsec/HtmlComposerView;->getTextAroundCursor(ILandroid/webkitsec/HtmlComposerView$CursorDirection;)Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, "retText":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 441
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 442
    .local v0, "arr":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 443
    aget-char v1, v0, v2

    .line 444
    .local v1, "chrVal":C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 445
    const/16 v5, 0x20

    aput-char v5, v0, v2

    .line 442
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 448
    .end local v1    # "chrVal":C
    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 449
    .local v3, "rText":Ljava/lang/String;
    move-object v4, v3

    .line 451
    .end local v0    # "arr":[C
    .end local v2    # "i":I
    .end local v3    # "rText":Ljava/lang/String;
    :cond_6
    if-nez v4, :cond_7

    const-string v4, ""

    .line 453
    :cond_7
    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v5, :cond_8

    .line 454
    const-string v5, "HtmlComposerInputConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTextBeforeCursor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " flags "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_8
    if-nez v4, :cond_0

    const-string v4, ""

    goto :goto_0
.end method

.method isInBatchEditMode()Z
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mBatchEditNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRTLText(Ljava/lang/String;)Z
    .locals 13
    .param p1, "sCurStr"    # Ljava/lang/String;

    .prologue
    .line 1006
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_1

    .line 1007
    :cond_0
    const/4 v10, 0x0

    .line 1077
    :goto_0
    return v10

    .line 1010
    :cond_1
    :try_start_0
    iget-object v10, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const/16 v11, 0x3e8

    sget-object v12, Landroid/webkitsec/HtmlComposerView$CursorDirection;->BACKWARD:Landroid/webkitsec/HtmlComposerView$CursorDirection;

    invoke-virtual {v10, v11, v12}, Landroid/webkitsec/HtmlComposerView;->getTextAroundCursor(ILandroid/webkitsec/HtmlComposerView$CursorDirection;)Ljava/lang/String;

    move-result-object v1

    .line 1011
    .local v1, "backContent":Ljava/lang/String;
    iget-object v10, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const/16 v11, 0x64

    sget-object v12, Landroid/webkitsec/HtmlComposerView$CursorDirection;->FORWARD:Landroid/webkitsec/HtmlComposerView$CursorDirection;

    invoke-virtual {v10, v11, v12}, Landroid/webkitsec/HtmlComposerView;->getTextAroundCursor(ILandroid/webkitsec/HtmlComposerView$CursorDirection;)Ljava/lang/String;

    move-result-object v7

    .line 1012
    .local v7, "fwdContent":Ljava/lang/String;
    if-nez v1, :cond_2

    if-eqz v7, :cond_c

    .line 1013
    :cond_2
    if-nez v1, :cond_7

    .line 1014
    const-string v1, ""

    .line 1021
    :cond_3
    :goto_1
    move-object v2, v1

    .line 1022
    .local v2, "backNFwdContent":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 1023
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1025
    :cond_4
    new-instance v0, Ljava/text/Bidi;

    const/4 v10, -0x2

    invoke-direct {v0, v2, v10}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 1026
    .local v0, "backBIDI":Ljava/text/Bidi;
    const/4 v5, 0x0

    .line 1027
    .local v5, "flipRTL":Z
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1028
    const/4 v5, 0x1

    .line 1031
    :cond_5
    if-eqz v7, :cond_6

    .line 1032
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1034
    .local v9, "reverseCont":Ljava/lang/String;
    new-instance v3, Ljava/text/Bidi;

    const/4 v10, -0x2

    invoke-direct {v3, v9, v10}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 1037
    .local v3, "curBIDI":Ljava/text/Bidi;
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1038
    new-instance v6, Ljava/text/Bidi;

    const/4 v10, -0x2

    invoke-direct {v6, v7, v10}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 1043
    .local v6, "fwdBIDI":Ljava/text/Bidi;
    :goto_2
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v3}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v6}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1048
    const/4 v5, 0x1

    .line 1067
    .end local v3    # "curBIDI":Ljava/text/Bidi;
    .end local v6    # "fwdBIDI":Ljava/text/Bidi;
    .end local v9    # "reverseCont":Ljava/lang/String;
    :cond_6
    :goto_3
    if-eqz v5, :cond_c

    .line 1068
    const/4 v10, 0x1

    goto :goto_0

    .line 1016
    .end local v0    # "backBIDI":Ljava/text/Bidi;
    .end local v2    # "backNFwdContent":Ljava/lang/String;
    .end local v5    # "flipRTL":Z
    :cond_7
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 1017
    .local v8, "newLine":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    .line 1018
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1040
    .end local v8    # "newLine":I
    .restart local v0    # "backBIDI":Ljava/text/Bidi;
    .restart local v2    # "backNFwdContent":Ljava/lang/String;
    .restart local v3    # "curBIDI":Ljava/text/Bidi;
    .restart local v5    # "flipRTL":Z
    .restart local v9    # "reverseCont":Ljava/lang/String;
    :cond_8
    new-instance v6, Ljava/text/Bidi;

    const/4 v10, -0x1

    invoke-direct {v6, v7, v10}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .restart local v6    # "fwdBIDI":Ljava/text/Bidi;
    goto :goto_2

    .line 1049
    :cond_9
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v3}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {v6}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1053
    const/4 v5, 0x0

    goto :goto_3

    .line 1054
    :cond_a
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v3}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v6}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1058
    const/4 v5, 0x0

    goto :goto_3

    .line 1059
    :cond_b
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v3}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v6}, Ljava/text/Bidi;->baseIsLeftToRight()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_6

    .line 1063
    const/4 v5, 0x1

    goto :goto_3

    .line 1072
    .end local v0    # "backBIDI":Ljava/text/Bidi;
    .end local v1    # "backContent":Ljava/lang/String;
    .end local v2    # "backNFwdContent":Ljava/lang/String;
    .end local v3    # "curBIDI":Ljava/text/Bidi;
    .end local v5    # "flipRTL":Z
    .end local v6    # "fwdBIDI":Ljava/text/Bidi;
    .end local v7    # "fwdContent":Ljava/lang/String;
    .end local v9    # "reverseCont":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1073
    .local v4, "exp":Ljava/lang/Exception;
    const-string v10, "HtmlComposerInputConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TAGVIVEK ERROR IN HTMLComposerIC, Msg= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1077
    .end local v4    # "exp":Ljava/lang/Exception;
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 461
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performContextMenuAction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "retVal":Z
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 464
    :goto_0
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v1, :cond_1

    .line 469
    :goto_1
    return v0

    .line 463
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1, p1}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v0

    goto :goto_0

    .line 466
    :cond_1
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 467
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 468
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_1
.end method

.method public performEditorAction(I)Z
    .locals 18
    .param p1, "editorAction"    # I

    .prologue
    .line 476
    const-string v1, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "performEditorAction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 532
    :goto_0
    return v1

    .line 485
    :cond_0
    const/4 v1, 0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    .line 487
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const/16 v4, 0x82

    invoke-virtual {v1, v4}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v17

    .line 488
    .local v17, "v":Landroid/view/View;
    if-eqz v17, :cond_1

    .line 489
    const/16 v1, 0x82

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 490
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 496
    .end local v17    # "v":Landroid/view/View;
    :cond_2
    const/4 v1, 0x7

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 497
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const/16 v4, 0x21

    invoke-virtual {v1, v4}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v17

    .line 498
    .restart local v17    # "v":Landroid/view/View;
    if-eqz v17, :cond_3

    .line 499
    const/16 v1, 0x21

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 500
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 504
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 506
    .end local v17    # "v":Landroid/view/View;
    :cond_4
    const/4 v1, 0x6

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    .line 507
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v16

    .line 508
    .local v16, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 509
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 511
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .line 514
    .end local v16    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 515
    .local v2, "eventTime":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/16 v7, 0x42

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x16

    move-wide v4, v2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 520
    new-instance v4, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v9, 0x1

    const/16 v10, 0x42

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x16

    move-wide v7, v2

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 527
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 528
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    move-object/from16 v0, p0

    iput v1, v0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 529
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 530
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 532
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 536
    const-string v0, "HtmlComposerInputConnection"

    const-string/jumbo v1, "performPrivateCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v0, 0x1

    return v0
.end method

.method public removeComposingSpan()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 150
    iput v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 151
    iput v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 152
    const-string v0, "HtmlComposerInputConnection"

    const-string/jumbo v1, "removeComposingSpan called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 155
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->setComposingState(Z)V

    goto :goto_0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 541
    const/4 v0, 0x0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v12, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 545
    const-string v9, "HtmlComposerInputConnection"

    const-string/jumbo v10, "sendKeyEvent"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v9, :cond_1

    move v7, v8

    .line 688
    :cond_0
    :goto_0
    return v7

    .line 548
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-eq v9, v7, :cond_3

    move v2, v7

    .line 549
    .local v2, "down":Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 551
    .local v4, "keyCode":I
    iget-boolean v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 552
    const-string v9, "HtmlComposerInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sendKeyEvent"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_2
    const/16 v9, 0x3d

    if-ne v9, v4, :cond_4

    .line 582
    if-eqz v2, :cond_0

    .line 583
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const-string v9, "InsertText"

    const-string v10, "    "

    invoke-virtual {v8, v9, v10}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 584
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 585
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8, v7}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_0

    .end local v2    # "down":Z
    .end local v4    # "keyCode":I
    :cond_3
    move v2, v8

    .line 548
    goto :goto_1

    .line 589
    .restart local v2    # "down":Z
    .restart local v4    # "keyCode":I
    :cond_4
    const/16 v9, 0x42

    if-ne v4, v9, :cond_8

    .line 590
    if-eqz v2, :cond_0

    .line 591
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 593
    const/4 v1, 0x0

    .line 594
    .local v1, "beforeText":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .local v3, "fromIndex":I
    const/4 v0, 0x0

    .line 595
    .local v0, "addedCount":I
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 596
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v1

    .line 597
    iget-boolean v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_5

    const-string v9, "HtmlComposerInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sendKeyEvent keyEvent.KEYCODE_ENTER mBeforeText.length = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], beforeText = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_5
    const/4 v0, 0x1

    .line 599
    iget v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 602
    :cond_6
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkitsec/HtmlComposerView;->hideInsertionController()V

    .line 604
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const-string v10, "InsertText"

    const-string v11, "\n"

    invoke-virtual {v9, v10, v11}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 605
    iget v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 606
    iget v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 607
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 608
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 609
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9, v8}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 611
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 612
    iget-boolean v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_7

    .line 613
    const-string v9, "HtmlComposerInputConnection"

    const-string/jumbo v10, "sendKeyEvent keyEvent.KEYCODE_ENTER AccessibilityManager"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_7
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9, v3, v8, v0, v1}, Landroid/webkitsec/HtmlComposerView;->sendAccessibilityEventTypeViewTextChanged(IIILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 620
    .end local v0    # "addedCount":I
    .end local v1    # "beforeText":Ljava/lang/CharSequence;
    .end local v3    # "fromIndex":I
    :cond_8
    const/16 v9, 0x43

    if-ne v4, v9, :cond_e

    .line 621
    if-eqz v2, :cond_0

    .line 622
    const/4 v1, 0x0

    .line 623
    .restart local v1    # "beforeText":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .restart local v3    # "fromIndex":I
    const/4 v5, 0x0

    .line 624
    .local v5, "removedCount":I
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 625
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v1

    .line 626
    iget-boolean v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_9

    const-string v9, "HtmlComposerInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sendKeyEvent keyEvent.KEYCODE_DEL mBeforeText.length = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], beforeText = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_9
    iget v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    if-lez v9, :cond_a

    .line 628
    const/4 v5, 0x1

    .line 629
    iget v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v3, v9, -0x1

    .line 633
    :cond_a
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkitsec/HtmlComposerView;->hideInsertionController()V

    .line 635
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const-string v10, ""

    invoke-virtual {v9, v10, v7}, Landroid/webkitsec/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 637
    iget v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    if-eq v9, v12, :cond_b

    iget v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    if-eq v9, v12, :cond_b

    .line 638
    iget v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 639
    iget v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget v10, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    if-ne v9, v10, :cond_b

    .line 640
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 643
    :cond_b
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 644
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    .line 645
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 647
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 648
    invoke-virtual {p0, v7, v8}, Landroid/webkitsec/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/webkitsec/HtmlComposerInputConnection;->isThaiVowel(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 649
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 653
    :cond_c
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9, v8}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 655
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 656
    iget-boolean v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_d

    .line 657
    const-string v9, "HtmlComposerInputConnection"

    const-string/jumbo v10, "sendKeyEvent keyEvent.KEYCODE_DEL AccessibilityManager"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_d
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9, v3, v5, v8, v1}, Landroid/webkitsec/HtmlComposerView;->sendAccessibilityEventTypeViewTextChanged(IIILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 664
    .end local v1    # "beforeText":Ljava/lang/CharSequence;
    .end local v3    # "fromIndex":I
    .end local v5    # "removedCount":I
    :cond_e
    const/16 v9, 0x39

    if-ne v4, v9, :cond_f

    .line 665
    if-eqz v2, :cond_10

    .line 666
    iput-boolean v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    .line 683
    :cond_f
    :goto_2
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-eqz v8, :cond_11

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    .line 684
    .local v6, "viewRootImpl":Landroid/view/ViewRootImpl;
    :goto_3
    if-eqz v6, :cond_0

    .line 685
    invoke-virtual {v6, p1}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 668
    .end local v6    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_10
    iput-boolean v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    goto :goto_2

    .line 683
    :cond_11
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public setComposingRegion(II)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v0, 0x0

    .line 957
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setComposingRegion start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v1, :cond_0

    .line 964
    :goto_0
    return v0

    .line 959
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1, p1, p2}, Landroid/webkitsec/HtmlComposerView;->setComposingRegion(II)V

    .line 960
    iput p1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 961
    iput p2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 962
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 963
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1, v0}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 964
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 692
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    .line 694
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 695
    const-string v6, "HtmlComposerInputConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setComposingText "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_0
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-eqz v6, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v6, 0x0

    .line 755
    :goto_0
    return v6

    .line 700
    :cond_2
    const/4 v3, 0x0

    .line 701
    .local v3, "prevComposingTextLen":I
    const/4 v6, -0x1

    iget v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    if-eq v6, v7, :cond_3

    const/4 v6, -0x1

    iget v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    if-eq v6, v7, :cond_3

    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    if-le v6, v7, :cond_3

    .line 702
    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    sub-int v3, v6, v7

    .line 703
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 704
    const-string v6, "HtmlComposerInputConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setComposingText prevComposingTextLen = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_3
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6}, Landroid/webkitsec/HtmlComposerView;->htmlLength()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    iget v7, v7, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    if-lt v6, v7, :cond_5

    .line 709
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mToastForMaxLength:Landroid/widget/Toast;

    if-nez v6, :cond_4

    .line 710
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1040bf5

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1040bf6

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mToastForMaxLength:Landroid/widget/Toast;

    .line 714
    :goto_1
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mToastForMaxLength:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 716
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 712
    :cond_4
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mToastForMaxLength:Landroid/widget/Toast;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1040bf5

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1040bf6

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 719
    :cond_5
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6}, Landroid/webkitsec/HtmlComposerView;->hideInsertionController()V

    .line 721
    const/4 v1, 0x0

    .local v1, "beforeText":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 722
    .local v5, "removedText":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "fromIndex":I
    const/4 v0, 0x0

    .local v0, "addedCount":I
    const/4 v4, 0x0

    .line 723
    .local v4, "removedCount":I
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 724
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v1

    .line 725
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "HtmlComposerInputConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setComposingText mBeforeText.length = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], beforeText = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_6
    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    if-lt v6, v7, :cond_7

    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 727
    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    invoke-interface {v1, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 729
    :cond_7
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "HtmlComposerInputConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setComposingText removedText = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 731
    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 732
    :cond_9
    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_d

    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_d

    .line 733
    iget v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 739
    :cond_a
    :goto_2
    const/4 v6, 0x1

    invoke-direct {p0, p1, p2, v6}, Landroid/webkitsec/HtmlComposerInputConnection;->replaceTextToHtml(Ljava/lang/CharSequence;IZ)V

    .line 740
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    .line 742
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 743
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/webkitsec/HtmlComposerView;->setComposingState(Z)V

    .line 747
    :goto_3
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 748
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v6, :cond_b

    .line 749
    const-string v6, "HtmlComposerInputConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setComposingText AccessibilityManager fromIndex = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], removedCount = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], addedCount = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_b
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6, v2, v4, v0, v1}, Landroid/webkitsec/HtmlComposerView;->sendAccessibilityEventTypeViewTextChanged(IIILjava/lang/CharSequence;)V

    .line 755
    :cond_c
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 735
    :cond_d
    iget v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    goto :goto_2

    .line 745
    :cond_e
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/webkitsec/HtmlComposerView;->setComposingState(Z)V

    goto :goto_3
.end method

.method public setSelection(II)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v0, 0x1

    .line 968
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSelection start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 991
    :cond_0
    :goto_0
    return v0

    .line 970
    :cond_1
    if-ne p1, p2, :cond_3

    .line 971
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 972
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView;->moveCursorBegining()V

    .line 978
    :goto_1
    iput p1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 979
    iput p2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 980
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto :goto_0

    .line 975
    :cond_2
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1, p1, p2}, Landroid/webkitsec/HtmlComposerView;->setEditableSelection(II)V

    goto :goto_1

    .line 982
    :cond_3
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    if-ne v0, v1, :cond_4

    if-nez p1, :cond_4

    iget v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    if-ne p2, v1, :cond_4

    .line 983
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToBeginningOfDocument()V

    .line 985
    :cond_4
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    iget v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    if-ne p2, v1, :cond_0

    .line 986
    iput p1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 987
    iput p2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 988
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto :goto_0
.end method

.method public setTTSbeforeText(Ljava/lang/String;)V
    .locals 0
    .param p1, "tTSbeforeText"    # Ljava/lang/String;

    .prologue
    .line 952
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    .line 953
    return-void
.end method

.method public setTTSstart(I)V
    .locals 0
    .param p1, "start"    # I

    .prologue
    .line 943
    iput p1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->TTSstart:I

    .line 944
    return-void
.end method

.method public setTTStext(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 939
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->TTStext:Ljava/lang/String;

    .line 940
    return-void
.end method

.method public setTargetNull()V
    .locals 2

    .prologue
    .line 144
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "HtmlComposerInputConnection setTargetNull()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    .line 146
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 147
    return-void
.end method

.method public updateInputMethodSelection()V
    .locals 6

    .prologue
    .line 174
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    iget v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iget v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/webkitsec/HtmlComposerView;->updateIMSelectionToEditor(II)V

    .line 178
    :cond_0
    iget v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mBatchEditNesting:I

    if-lez v1, :cond_1

    .line 180
    const-string v1, "HtmlComposerInputConnection"

    const-string/jumbo v2, "return without updateInputMethodSelection as  bBeginBatchEdit is TRUE.........."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 184
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    iget v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iget v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    iget v4, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 186
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateInputMethodSelection curSelStart curSelEnd composingStart, composingEnd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_2
    const-string v1, "HtmlComposerInputConnection"

    const-string/jumbo v2, "updateInputMethodSelection exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateInputMethodSelectionWithAbsolute()V
    .locals 4

    .prologue
    .line 194
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 195
    .local v0, "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    iget v1, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 196
    iget v1, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 197
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateInputMethodSelection curSelStart curSelEnd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 199
    return-void
.end method

.method public updateInputMethodSelectionWithRandom()V
    .locals 6

    .prologue
    .line 203
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 204
    .local v1, "randm":Ljava/util/Random;
    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 205
    .local v0, "randNum":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v2

    .line 206
    .local v2, "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    iget v3, v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 207
    iget v3, v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 208
    const-string v3, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateInputMethodSelectionWithRandom curSelStart curSelEnd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 210
    return-void
.end method
