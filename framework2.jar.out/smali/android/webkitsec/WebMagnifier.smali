.class Landroid/webkitsec/WebMagnifier;
.super Landroid/view/View;
.source "WebMagnifier.java"


# static fields
.field private static final BOUNDARY_STOROKE_WIDTH:F = 3.0f

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ZOOM_SCALE:F = 1.2f

.field private static final DISABLE_ENLARGEMENT:Z = false

.field private static final FLEXIBLE_ZOOM_RATE:F = 0.6f

.field private static final LOGTAG:Ljava/lang/String; = "WebMagnifier"

.field private static final MAGNIFIER_PADDING:I = 0x8

.field private static final ROUND_DIAMETER:F = 2.0f

.field private static final STROKE_WIDTH:I = 0x2

.field private static final USE_BITMAP_ENLARGEMENT:Z = true

.field private static mBitmap:Landroid/graphics/Bitmap;

.field private static mBmCanvas:Landroid/graphics/Canvas;

.field private static mMagnifierHeight:I

.field private static mMagnifierWidth:I

.field private static mRectCurSel:Landroid/graphics/Rect;

.field private static mTailHeight:I

.field private static mTailWidth:I

.field private static mfFlexibleZoomScale:F

.field private static mfWebViewZoomScale:F


# instance fields
.field mAdjustY:I

.field private mBgPath:Landroid/graphics/Path;

.field private mBoundaryPaint:Landroid/graphics/Paint;

.field private mGarbageBgPath:Landroid/graphics/Path;

.field mHandleHeight:I

.field private mMagnifierPath:Landroid/graphics/Path;

.field private mMagnifierRect:Landroid/graphics/Rect;

.field mMode:I

.field private mMoves:Ljava/util/ArrayList;

.field private mPathBgFill:Landroid/graphics/Path;

.field private mShowX:I

.field private mShowY:I

.field private mSrcView:Landroid/view/View;

.field private mSrcX:I

.field private mSrcY:I

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWebView:Landroid/webkitsec/WebView;

.field private mWebViewClassic:Landroid/webkitsec/WebViewClassic;

.field mbShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    sput-object v1, Landroid/webkitsec/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    .line 67
    sput-object v1, Landroid/webkitsec/WebMagnifier;->mBmCanvas:Landroid/graphics/Canvas;

    .line 77
    sput v0, Landroid/webkitsec/WebMagnifier;->mMagnifierWidth:I

    .line 78
    sput v0, Landroid/webkitsec/WebMagnifier;->mMagnifierHeight:I

    .line 79
    sput v0, Landroid/webkitsec/WebMagnifier;->mTailWidth:I

    .line 80
    sput v0, Landroid/webkitsec/WebMagnifier;->mTailHeight:I

    .line 82
    sput-object v1, Landroid/webkitsec/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    .line 83
    const v0, 0x3f99999a    # 1.2f

    sput v0, Landroid/webkitsec/WebMagnifier;->mfFlexibleZoomScale:F

    .line 84
    const/4 v0, 0x0

    sput v0, Landroid/webkitsec/WebMagnifier;->mfWebViewZoomScale:F

    return-void
.end method

.method constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .locals 3
    .param p1, "webViewClassic"    # Landroid/webkitsec/WebViewClassic;

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 102
    iput v2, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    iput v2, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    .line 105
    iput v2, p0, Landroid/webkitsec/WebMagnifier;->mViewWidth:I

    iput v2, p0, Landroid/webkitsec/WebMagnifier;->mViewHeight:I

    .line 109
    iput v2, p0, Landroid/webkitsec/WebMagnifier;->mAdjustY:I

    .line 111
    iput v2, p0, Landroid/webkitsec/WebMagnifier;->mMode:I

    .line 112
    iput v2, p0, Landroid/webkitsec/WebMagnifier;->mHandleHeight:I

    .line 114
    iput-boolean v2, p0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    .line 119
    iput-object p1, p0, Landroid/webkitsec/WebMagnifier;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    .line 120
    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    iput-object v1, p0, Landroid/webkitsec/WebMagnifier;->mWebView:Landroid/webkitsec/WebView;

    .line 121
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 124
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 129
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/webkitsec/WebMagnifier;->mMagnifierWidth:I

    .line 130
    const v1, 0x1050181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/webkitsec/WebMagnifier;->mMagnifierHeight:I

    .line 143
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    .line 144
    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    const v2, -0xff0001

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    .line 150
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    .line 151
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    .line 152
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/WebMagnifier;->mMagnifierRect:Landroid/graphics/Rect;

    .line 153
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    .line 160
    return-void
.end method

.method private drawMagnifierContents(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 263
    sget v6, Landroid/webkitsec/WebMagnifier;->mMagnifierWidth:I

    int-to-float v6, v6

    sget v7, Landroid/webkitsec/WebMagnifier;->mfFlexibleZoomScale:F

    div-float/2addr v6, v7

    float-to-int v5, v6

    .line 264
    .local v5, "zoomarea_width":I
    sget v6, Landroid/webkitsec/WebMagnifier;->mMagnifierHeight:I

    int-to-float v6, v6

    sget v7, Landroid/webkitsec/WebMagnifier;->mfFlexibleZoomScale:F

    div-float/2addr v6, v7

    float-to-int v4, v6

    .line 266
    .local v4, "zoomarea_height":I
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 267
    .local v3, "winloc":[I
    iget-object v6, p0, Landroid/webkitsec/WebMagnifier;->mWebView:Landroid/webkitsec/WebView;

    if-nez v6, :cond_1

    .line 268
    const-string v6, "WebMagnifier"

    const-string/jumbo v7, "show : mWebView is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v6, p0, Landroid/webkitsec/WebMagnifier;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v6, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 273
    new-instance v2, Landroid/graphics/RectF;

    iget v6, p0, Landroid/webkitsec/WebMagnifier;->mSrcX:I

    aget v7, v3, v9

    add-int/2addr v6, v7

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkitsec/WebMagnifier;->mSrcY:I

    aget v8, v3, v10

    add-int/2addr v7, v8

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/webkitsec/WebMagnifier;->mAdjustY:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Landroid/webkitsec/WebMagnifier;->mSrcX:I

    aget v9, v3, v9

    add-int/2addr v8, v9

    div-int/lit8 v9, v5, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Landroid/webkitsec/WebMagnifier;->mSrcY:I

    aget v10, v3, v10

    add-int/2addr v9, v10

    div-int/lit8 v10, v4, 0x2

    add-int/2addr v9, v10

    iget v10, p0, Landroid/webkitsec/WebMagnifier;->mAdjustY:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 278
    .local v2, "srcRect":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    iget v6, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    int-to-float v6, v6

    iget v7, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    int-to-float v7, v7

    iget v8, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    sget v9, Landroid/webkitsec/WebMagnifier;->mMagnifierWidth:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    sget v10, Landroid/webkitsec/WebMagnifier;->mMagnifierHeight:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 285
    .local v0, "destRect":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 286
    .local v1, "matrix":Landroid/graphics/Matrix;
    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v0, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 293
    sget-object v6, Landroid/webkitsec/WebMagnifier;->mBmCanvas:Landroid/graphics/Canvas;

    if-eqz v6, :cond_2

    .line 294
    iget-object v6, p0, Landroid/webkitsec/WebMagnifier;->mSrcView:Landroid/view/View;

    sget-object v7, Landroid/webkitsec/WebMagnifier;->mBmCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 295
    sget-object v6, Landroid/webkitsec/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 296
    sget-object v6, Landroid/webkitsec/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v1, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 299
    iget-object v6, p0, Landroid/webkitsec/WebMagnifier;->mSrcView:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private setShowXY(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 305
    iput p1, p0, Landroid/webkitsec/WebMagnifier;->mSrcX:I

    .line 306
    iput p2, p0, Landroid/webkitsec/WebMagnifier;->mSrcY:I

    .line 309
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 310
    .local v0, "winLoc":[I
    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 312
    const/4 v1, 0x0

    aget v1, v0, v1

    add-int/2addr v1, p1

    sget v2, Landroid/webkitsec/WebMagnifier;->mMagnifierWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    .line 316
    const/4 v1, 0x1

    aget v1, v0, v1

    add-int/2addr v1, p2

    sget v2, Landroid/webkitsec/WebMagnifier;->mMagnifierHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    .line 317
    iget v1, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    iget v2, p0, Landroid/webkitsec/WebMagnifier;->mHandleHeight:I

    add-int/lit8 v2, v2, 0x28

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    .line 319
    invoke-direct {p0}, Landroid/webkitsec/WebMagnifier;->updateDrawingPath()V

    .line 320
    return-void
.end method

.method private updateDrawingPath()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    .line 226
    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 227
    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 230
    sget v5, Landroid/webkitsec/WebMagnifier;->mMagnifierWidth:I

    add-int/lit8 v4, v5, -0x2

    .line 231
    .local v4, "w":I
    sget v5, Landroid/webkitsec/WebMagnifier;->mMagnifierHeight:I

    add-int/lit8 v0, v5, -0x2

    .line 232
    .local v0, "h":I
    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    add-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget v8, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    add-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget v9, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    add-int/2addr v9, v4

    int-to-float v9, v9

    iget v10, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    add-int/2addr v10, v0

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v12, v12, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 235
    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    sget v8, Landroid/webkitsec/WebMagnifier;->mTailWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 236
    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    sget v8, Landroid/webkitsec/WebMagnifier;->mTailHeight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 237
    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    sget v8, Landroid/webkitsec/WebMagnifier;->mTailWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 239
    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    sget v7, Landroid/webkitsec/WebMagnifier;->mTailWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iget v7, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 240
    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    sget v7, Landroid/webkitsec/WebMagnifier;->mTailWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    iget v7, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 242
    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 243
    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    add-int/lit8 v7, v7, 0x8

    int-to-float v7, v7

    iget v8, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    add-int/lit8 v8, v8, 0x8

    int-to-float v8, v8

    iget v9, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    sget v10, Landroid/webkitsec/WebMagnifier;->mMagnifierWidth:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x8

    int-to-float v9, v9

    iget v10, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    sget v11, Landroid/webkitsec/WebMagnifier;->mMagnifierHeight:I

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x8

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v12, v12, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 247
    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mMagnifierRect:Landroid/graphics/Rect;

    iget v6, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    add-int/lit8 v6, v6, 0x8

    iget v7, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    add-int/lit8 v7, v7, 0x8

    iget v8, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    sget v9, Landroid/webkitsec/WebMagnifier;->mMagnifierWidth:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x8

    iget v9, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    sget v10, Landroid/webkitsec/WebMagnifier;->mMagnifierHeight:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x8

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 251
    new-instance v2, Landroid/graphics/Region;

    iget v5, p0, Landroid/webkitsec/WebMagnifier;->mViewWidth:I

    iget v6, p0, Landroid/webkitsec/WebMagnifier;->mViewHeight:I

    invoke-direct {v2, v13, v13, v5, v6}, Landroid/graphics/Region;-><init>(IIII)V

    .line 253
    .local v2, "regionClip":Landroid/graphics/Region;
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 254
    .local v1, "regionBgFill":Landroid/graphics/Region;
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 255
    .local v3, "regionMagnifier":Landroid/graphics/Region;
    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 256
    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {v3, v5, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 257
    sget-object v5, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 258
    invoke-virtual {v1}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v5

    iput-object v5, p0, Landroid/webkitsec/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    .line 260
    return-void
.end method

.method private updateZoomScale()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 325
    sget-object v0, Landroid/webkitsec/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget v1, Landroid/webkitsec/WebMagnifier;->mfWebViewZoomScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 326
    :cond_0
    const v0, 0x3f99999a    # 1.2f

    sput v0, Landroid/webkitsec/WebMagnifier;->mfFlexibleZoomScale:F

    .line 343
    :cond_1
    :goto_0
    return-void

    .line 329
    :cond_2
    sget v0, Landroid/webkitsec/WebMagnifier;->mMagnifierHeight:I

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    sget-object v1, Landroid/webkitsec/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sget v2, Landroid/webkitsec/WebMagnifier;->mfWebViewZoomScale:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    sput v0, Landroid/webkitsec/WebMagnifier;->mfFlexibleZoomScale:F

    .line 330
    sget v0, Landroid/webkitsec/WebMagnifier;->mfFlexibleZoomScale:F

    float-to-double v0, v0

    const-wide v2, 0x3ff999999999999aL    # 1.6

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    .line 332
    const v0, 0x3fcccccd    # 1.6f

    sput v0, Landroid/webkitsec/WebMagnifier;->mfFlexibleZoomScale:F

    goto :goto_0

    .line 333
    :cond_3
    sget v0, Landroid/webkitsec/WebMagnifier;->mfFlexibleZoomScale:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 335
    sput v4, Landroid/webkitsec/WebMagnifier;->mfFlexibleZoomScale:F

    goto :goto_0
.end method


# virtual methods
.method hide()V
    .locals 6

    .prologue
    const/16 v5, 0xa5

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 448
    iget-boolean v1, p0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v1, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    .line 453
    .local v0, "handler":Landroid/os/Handler;
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/webkitsec/WebMagnifier;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-ne v1, v2, :cond_2

    .line 454
    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 457
    :cond_2
    iput v3, p0, Landroid/webkitsec/WebMagnifier;->mSrcX:I

    .line 458
    iput v3, p0, Landroid/webkitsec/WebMagnifier;->mSrcY:I

    .line 459
    iput v3, p0, Landroid/webkitsec/WebMagnifier;->mAdjustY:I

    .line 460
    iput v3, p0, Landroid/webkitsec/WebMagnifier;->mMode:I

    .line 461
    iput v3, p0, Landroid/webkitsec/WebMagnifier;->mHandleHeight:I

    .line 462
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 466
    const v1, 0x3f99999a    # 1.2f

    sput v1, Landroid/webkitsec/WebMagnifier;->mfFlexibleZoomScale:F

    .line 467
    sput-object v4, Landroid/webkitsec/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    .line 470
    sput-object v4, Landroid/webkitsec/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    .line 471
    sput-object v4, Landroid/webkitsec/WebMagnifier;->mBmCanvas:Landroid/graphics/Canvas;

    .line 473
    iput-boolean v3, p0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    goto :goto_0
.end method

.method move()V
    .locals 3

    .prologue
    .line 491
    iget-boolean v1, p0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    if-nez v1, :cond_0

    .line 507
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 495
    const-string v1, "WebMagnifier"

    const-string/jumbo v2, "move() is called with NO data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 498
    :cond_1
    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/webkitsec/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 499
    .local v0, "point":[I
    if-nez v0, :cond_2

    .line 500
    const-string v1, "WebMagnifier"

    const-string v2, "Acquired move data is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 503
    :cond_2
    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 505
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-direct {p0, v1, v2}, Landroid/webkitsec/WebMagnifier;->setShowXY(II)V

    .line 506
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method move(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v4, 0xa5

    const/4 v3, 0x0

    .line 477
    const/4 v2, 0x2

    new-array v1, v2, [I

    aput p1, v1, v3

    const/4 v2, 0x1

    aput p2, v1, v2

    .line 478
    .local v1, "point":[I
    iget-object v2, p0, Landroid/webkitsec/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    iget-object v2, p0, Landroid/webkitsec/WebMagnifier;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v2, :cond_1

    .line 480
    const-string v2, "WebMagnifier"

    const-string/jumbo v3, "show : mWebView is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget-object v2, p0, Landroid/webkitsec/WebMagnifier;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v2, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    .line 484
    .local v0, "handler":Landroid/os/Handler;
    iget-object v2, p0, Landroid/webkitsec/WebMagnifier;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 485
    iget-object v2, p0, Landroid/webkitsec/WebMagnifier;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, v4, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, -0x1

    const/high16 v7, -0x1000000

    const/high16 v6, 0x40000000    # 2.0f

    .line 166
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 167
    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mWebView:Landroid/webkitsec/WebView;

    if-nez v5, :cond_1

    .line 168
    const-string v5, "WebMagnifier"

    const-string/jumbo v6, "onDraw : called after WebView is destroyed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-boolean v5, p0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    if-eqz v5, :cond_0

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 180
    .local v3, "saveCount":I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 181
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 185
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 186
    .local v2, "res":Landroid/content/res/Resources;
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    const v5, 0x10600a6

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 191
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 192
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 196
    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 197
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 203
    .local v4, "saveDrawCount":I
    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mMagnifierRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 204
    invoke-direct {p0, p1}, Landroid/webkitsec/WebMagnifier;->drawMagnifierContents(Landroid/graphics/Canvas;)V

    .line 205
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 208
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 212
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 215
    .local v0, "gPaint":Landroid/graphics/Paint;
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 218
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 219
    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 221
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method setWebView(Landroid/webkitsec/WebView;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkitsec/WebView;

    .prologue
    .line 346
    if-nez p1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebMagnifier;->hide()V

    .line 347
    :cond_0
    iput-object p1, p0, Landroid/webkitsec/WebMagnifier;->mWebView:Landroid/webkitsec/WebView;

    .line 348
    iget-object v0, p0, Landroid/webkitsec/WebMagnifier;->mWebView:Landroid/webkitsec/WebView;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Landroid/webkitsec/WebMagnifier;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 351
    :cond_1
    return-void
.end method

.method declared-synchronized show(II)V
    .locals 23
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebMagnifier;->mWebView:Landroid/webkitsec/WebView;

    if-nez v3, :cond_1

    .line 363
    const-string v3, "WebMagnifier"

    const-string/jumbo v4, "show : mWebView is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 366
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebMagnifier;->mWebView:Landroid/webkitsec/WebView;

    move-object/from16 v18, v0

    .line 372
    .local v18, "srcView":Landroid/view/View;
    :goto_1
    if-eqz v18, :cond_2

    .line 373
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 374
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    .end local v18    # "srcView":Landroid/view/View;
    check-cast v18, Landroid/view/View;

    .restart local v18    # "srcView":Landroid/view/View;
    goto :goto_1

    .line 379
    :cond_2
    if-nez v18, :cond_3

    .line 380
    const-string v3, "WebMagnifier"

    const-string/jumbo v4, "show : Cannot find Decor View."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 362
    .end local v18    # "srcView":Landroid/view/View;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 383
    .restart local v18    # "srcView":Landroid/view/View;
    :cond_3
    :try_start_2
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebMagnifier;->mSrcView:Landroid/view/View;

    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/WindowManager;

    .line 386
    .local v22, "windowManager":Landroid/view/WindowManager;
    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 387
    .local v10, "display":Landroid/view/Display;
    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebMagnifier;->mViewWidth:I

    .line 388
    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebMagnifier;->mViewHeight:I

    .line 390
    invoke-direct/range {p0 .. p2}, Landroid/webkitsec/WebMagnifier;->setShowXY(II)V

    .line 393
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    if-nez v3, :cond_0

    .line 396
    const/16 v16, 0x0

    .line 397
    .local v16, "newPosX":F
    const/16 v17, 0x0

    .line 398
    .local v17, "newPosY":F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "multiwindow_facade"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 400
    .local v14, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v15

    .line 402
    .local v15, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_4

    .line 404
    const/16 v19, 0x0

    .line 405
    .local v19, "stackboxBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v19

    .line 407
    move-object/from16 v0, v19

    iget v13, v0, Landroid/graphics/Rect;->left:I

    .line 408
    .local v13, "left":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    .line 409
    .local v20, "top":I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v21

    .line 410
    .local v21, "w":I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 411
    .local v12, "h":I
    int-to-float v3, v13

    add-float v16, v16, v3

    .line 412
    move/from16 v0, v20

    int-to-float v3, v0

    add-float v17, v17, v3

    .line 413
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebMagnifier;->mViewWidth:I

    .line 414
    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkitsec/WebMagnifier;->mViewHeight:I

    .line 417
    .end local v12    # "h":I
    .end local v13    # "left":I
    .end local v19    # "stackboxBounds":Landroid/graphics/Rect;
    .end local v20    # "top":I
    .end local v21    # "w":I
    :cond_4
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebMagnifier;->mViewWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/WebMagnifier;->mViewHeight:I

    move/from16 v0, v16

    float-to-int v5, v0

    move/from16 v0, v17

    float-to-int v6, v0

    const/16 v7, 0x3e8

    const/16 v8, 0x218

    const/4 v9, -0x3

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 428
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 430
    :try_start_3
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 436
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebMagnifier;->mViewWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/WebMagnifier;->mViewHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Landroid/webkitsec/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 441
    :try_start_5
    new-instance v3, Landroid/graphics/Canvas;

    sget-object v4, Landroid/webkitsec/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v3, Landroid/webkitsec/WebMagnifier;->mBmCanvas:Landroid/graphics/Canvas;

    .line 443
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    goto/16 :goto_0

    .line 431
    :catch_0
    move-exception v11

    .line 432
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 437
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v11

    .line 438
    .local v11, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "WebMagnifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "show: OutOfMemory. Cannot draw contens("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkitsec/WebMagnifier;->mViewWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkitsec/WebMagnifier;->mViewHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method show(IILandroid/graphics/Rect;F)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "rtCurSel"    # Landroid/graphics/Rect;
    .param p4, "fZoomScale"    # F

    .prologue
    .line 354
    sput-object p3, Landroid/webkitsec/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    .line 355
    sput p4, Landroid/webkitsec/WebMagnifier;->mfWebViewZoomScale:F

    .line 356
    invoke-direct {p0}, Landroid/webkitsec/WebMagnifier;->updateZoomScale()V

    .line 358
    invoke-virtual {p0, p1, p2}, Landroid/webkitsec/WebMagnifier;->show(II)V

    .line 359
    return-void
.end method
