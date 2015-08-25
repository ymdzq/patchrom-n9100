.class public Landroid/webkitsec/FindActionModeCallback;
.super Ljava/lang/Object;
.source "FindActionModeCallback.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/webkitsec/WebView$FindListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/FindActionModeCallback$NoAction;
    }
.end annotation


# instance fields
.field private hintTextview:Landroid/widget/TextView;

.field private isESSBrowser:Z

.field private isESSEmail:Z

.field private mActionMode:Landroid/view/ActionMode;

.field private mActiveMatchIndex:I

.field private mContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mEditText:Landroid/widget/EditText;

.field private mGlobalVisibleOffset:Landroid/graphics/Point;

.field private mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mInput:Landroid/view/inputmethod/InputMethodManager;

.field private mIsParentThemeDeviceDefault:Z

.field private mMatches:Landroid/widget/TextView;

.field private mMatchesFound:Z

.field private mNumberOfMatches:I

.field private mResources:Landroid/content/res/Resources;

.field private mWebView:Landroid/webkitsec/WebView;

.field private searchIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v7, 0x10202b9

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean v6, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    .line 82
    iput-boolean v6, p0, Landroid/webkitsec/FindActionModeCallback;->isESSEmail:Z

    .line 522
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    .line 523
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    .line 88
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 89
    .local v0, "outValue":Landroid/util/TypedValue;
    iput-object p1, p0, Landroid/webkitsec/FindActionModeCallback;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101046a

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 91
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .line 92
    iput-boolean v4, p0, Landroid/webkitsec/FindActionModeCallback;->mIsParentThemeDeviceDefault:Z

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "com.android.browser"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kanas"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ageraltezm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    :cond_1
    iput-boolean v4, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    .line 99
    :cond_2
    const-string v2, "com.android.email"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "victorltectc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    iput-boolean v4, p0, Landroid/webkitsec/FindActionModeCallback;->isESSEmail:Z

    .line 102
    :cond_3
    iget-boolean v2, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    if-eqz v2, :cond_9

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090136

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    .line 157
    :cond_4
    :goto_0
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 158
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v3, 0x1020003

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    .line 159
    iget-boolean v2, p0, Landroid/webkitsec/FindActionModeCallback;->isESSEmail:Z

    if-eqz v2, :cond_5

    .line 160
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    const v3, 0x1080864

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 161
    :cond_5
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    new-instance v3, Landroid/webkitsec/FindActionModeCallback$NoAction;

    invoke-direct {v3}, Landroid/webkitsec/FindActionModeCallback$NoAction;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 162
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 163
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-boolean v2, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    if-eqz v2, :cond_6

    .line 166
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v3, 0x1020446

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->hintTextview:Landroid/widget/TextView;

    .line 167
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v3, 0x1020445

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->searchIcon:Landroid/widget/ImageView;

    .line 168
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Landroid/webkitsec/FindActionModeCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080b15

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v5, v5, v3, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    new-instance v3, Landroid/webkitsec/FindActionModeCallback$2;

    invoke-direct {v3, p0}, Landroid/webkitsec/FindActionModeCallback$2;-><init>(Landroid/webkitsec/FindActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    :cond_6
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    new-instance v3, Landroid/webkitsec/FindActionModeCallback$3;

    invoke-direct {v3, p0}, Landroid/webkitsec/FindActionModeCallback$3;-><init>(Landroid/webkitsec/FindActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 198
    :cond_7
    const-string v2, ""

    invoke-virtual {p0, v2}, Landroid/webkitsec/FindActionModeCallback;->setText(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 200
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v3, 0x1020444

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    .line 202
    :cond_8
    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    .line 204
    return-void

    .line 105
    :cond_9
    const-string v2, "com.android.email"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 106
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090137

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    .line 108
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 109
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/webkitsec/FindActionModeCallback$1;

    invoke-direct {v3, p0}, Landroid/webkitsec/FindActionModeCallback$1;-><init>(Landroid/webkitsec/FindActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 149
    :cond_a
    iget-boolean v2, p0, Landroid/webkitsec/FindActionModeCallback;->mIsParentThemeDeviceDefault:Z

    if-eqz v2, :cond_b

    .line 150
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090135

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    goto/16 :goto_0

    .line 153
    :cond_b
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090140

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/webkitsec/FindActionModeCallback;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/FindActionModeCallback;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkitsec/FindActionModeCallback;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/FindActionModeCallback;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method private findNext(Z)V
    .locals 2
    .param p1, "next"    # Z

    .prologue
    .line 273
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindActionModeCallback::findNext"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 277
    :cond_0
    iget-boolean v0, p0, Landroid/webkitsec/FindActionModeCallback;->mMatchesFound:Z

    if-nez v0, :cond_2

    .line 278
    invoke-virtual {p0}, Landroid/webkitsec/FindActionModeCallback;->findAll()V

    .line 288
    :cond_1
    :goto_0
    return-void

    .line 281
    :cond_2
    iget v0, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebView;->findNext(Z)V

    .line 287
    invoke-direct {p0}, Landroid/webkitsec/FindActionModeCallback;->updateMatchesString()V

    goto :goto_0
.end method

.method private updateMatchesString()V
    .locals 3

    .prologue
    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/webkitsec/FindActionModeCallback;->mActiveMatchIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "matchString":Ljava/lang/String;
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 365
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 520
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 496
    return-void
.end method

.method public findAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 294
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    if-nez v1, :cond_0

    .line 295
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "No WebView for FindActionModeCallback::findAll"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 298
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 299
    .local v0, "find":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 300
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->clearMatches()V

    .line 301
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iput-boolean v3, p0, Landroid/webkitsec/FindActionModeCallback;->mMatchesFound:Z

    .line 303
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebView;->findAll(Ljava/lang/String;)I

    .line 311
    :goto_0
    return-void

    .line 305
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkitsec/FindActionModeCallback;->mMatchesFound:Z

    .line 306
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iput v3, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    .line 309
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebView;->findAllAsync(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 209
    :cond_0
    return-void
.end method

.method public getActionModeGlobalBottom()I
    .locals 3

    .prologue
    .line 525
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_0

    .line 526
    const/4 v1, 0x0

    .line 533
    :goto_0
    return v1

    .line 528
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 529
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    .line 530
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    .line 532
    :cond_1
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 533
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public getActionModeGlobalRight()I
    .locals 3

    .prologue
    .line 538
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_0

    .line 539
    const/4 v1, 0x0

    .line 546
    :goto_0
    return v1

    .line 541
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 542
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    .line 543
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    .line 545
    :cond_1
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 546
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 469
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    if-nez v2, :cond_0

    .line 470
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindActionModeCallback::onActionItemClicked"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 474
    :cond_0
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 475
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 485
    :goto_0
    return v0

    .line 477
    :pswitch_0
    invoke-direct {p0, v0}, Landroid/webkitsec/FindActionModeCallback;->findNext(Z)V

    :goto_1
    move v0, v1

    .line 485
    goto :goto_0

    .line 480
    :pswitch_1
    invoke-direct {p0, v1}, Landroid/webkitsec/FindActionModeCallback;->findNext(Z)V

    goto :goto_1

    .line 475
    :pswitch_data_0
    .packed-switch 0x102049b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 383
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkitsec/FindActionModeCallback;->findNext(Z)V

    .line 384
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 10
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 390
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v8

    if-nez v8, :cond_0

    .line 440
    :goto_0
    return v6

    .line 398
    :cond_0
    iget-object v8, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v8}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 401
    :try_start_0
    iget-boolean v8, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    if-eqz v8, :cond_1

    .line 402
    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 403
    .local v2, "mtempCustomView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 404
    .local v4, "parentCustomView":Landroid/view/View;
    const v8, 0x10809e1

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .end local v2    # "mtempCustomView":Landroid/view/View;
    .end local v4    # "parentCustomView":Landroid/view/View;
    :cond_1
    :goto_1
    iget-object v8, p0, Landroid/webkitsec/FindActionModeCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, "packageName":Ljava/lang/String;
    const-string v8, "com.android.email"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 413
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v8

    const v9, 0x1140007

    invoke-virtual {v8, v9, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 425
    :goto_2
    iput-object p1, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 426
    iget-object v8, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 427
    .local v1, "edit":Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-static {v1, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 428
    iget-object v8, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iput-boolean v6, p0, Landroid/webkitsec/FindActionModeCallback;->mMatchesFound:Z

    .line 430
    iget-object v6, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const-string v8, "0"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v6, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 433
    iget-object v6, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 434
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_4

    .line 435
    iget-object v6, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setClickable(Z)V

    :goto_3
    move v6, v7

    .line 440
    goto :goto_0

    .line 406
    .end local v1    # "edit":Landroid/text/Editable;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 416
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_2
    iget-boolean v8, p0, Landroid/webkitsec/FindActionModeCallback;->mIsParentThemeDeviceDefault:Z

    if-eqz v8, :cond_3

    .line 417
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v8

    const v9, 0x1140006

    invoke-virtual {v8, v9, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_2

    .line 420
    :cond_3
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v8

    const v9, 0x114000a

    invoke-virtual {v8, v9, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_2

    .line 437
    .restart local v1    # "edit":Landroid/text/Editable;
    .restart local v5    # "view":Landroid/view/View;
    :cond_4
    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    goto :goto_3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 445
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 446
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 447
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 450
    :goto_0
    iput-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 451
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/webkitsec/WebView;->notifyFindDialogDismissed()V

    .line 454
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebView;->setFindDialogFindListener(Landroid/webkitsec/WebView$FindListener;)V

    .line 455
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 456
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 457
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 458
    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 460
    return-void

    .line 449
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method public onFindResultReceived(IIZ)V
    .locals 1
    .param p1, "activeMatchOrdinal"    # I
    .param p2, "numberOfMatches"    # I
    .param p3, "isDoneCounting"    # Z

    .prologue
    .line 257
    if-eqz p3, :cond_0

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/webkitsec/FindActionModeCallback;->updateMatchCount(IIZ)V

    .line 265
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 503
    invoke-virtual {p0}, Landroid/webkitsec/FindActionModeCallback;->findAll()V

    .line 506
    iget-boolean v0, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 508
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->searchIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->hintTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->hintTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->searchIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 216
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-boolean v2, p0, Landroid/webkitsec/FindActionModeCallback;->isESSBrowser:Z

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 220
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->searchIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->hintTextview:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 229
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 230
    .local v1, "span":Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 234
    .local v0, "length":I
    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 237
    const/16 v2, 0x12

    invoke-interface {v1, p0, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 238
    iput-boolean v3, p0, Landroid/webkitsec/FindActionModeCallback;->mMatchesFound:Z

    .line 239
    return-void

    .line 223
    .end local v0    # "length":I
    .end local v1    # "span":Landroid/text/Spannable;
    :cond_1
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->hintTextview:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v2, p0, Landroid/webkitsec/FindActionModeCallback;->searchIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setWebView(Landroid/webkitsec/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkitsec/WebView;

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 246
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "WebView supplied to FindActionModeCallback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 249
    :cond_0
    iput-object p1, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    .line 251
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0, p0}, Landroid/webkitsec/WebView;->setFindDialogFindListener(Landroid/webkitsec/WebView$FindListener;)V

    .line 252
    return-void
.end method

.method public showSoftInput()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 315
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 329
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkitsec/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 331
    return-void
.end method

.method public updateMatchCount(IIZ)V
    .locals 2
    .param p1, "matchIndex"    # I
    .param p2, "matchCount"    # I
    .param p3, "isEmptyFind"    # Z

    .prologue
    .line 334
    if-nez p3, :cond_0

    .line 335
    iput p2, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    .line 336
    iput p1, p0, Landroid/webkitsec/FindActionModeCallback;->mActiveMatchIndex:I

    .line 337
    invoke-direct {p0}, Landroid/webkitsec/FindActionModeCallback;->updateMatchesString()V

    .line 342
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/FindActionModeCallback;->mNumberOfMatches:I

    goto :goto_0
.end method
