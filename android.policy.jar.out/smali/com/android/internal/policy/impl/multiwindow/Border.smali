.class public Lcom/android/internal/policy/impl/multiwindow/Border;
.super Ljava/lang/Object;
.source "Border.java"


# instance fields
.field private mBorderPaintInner:Landroid/graphics/Paint;

.field private mBorderPaintOutter:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mFocusLineColor:I

.field private mFocusOutLineColor:I

.field private final mThicknessBorderPaintInner:F

.field private final mThicknessBorderPaintOuter:F

.field private final mThicknessForUnFocused:I

.field private mUnFocusLineColor:I

.field private mUnFocusOutLineColor:I

.field private final mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

.field private final mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

.field private final mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameRightRect:Landroid/graphics/Rect;

.field private final mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameTopRect:Landroid/graphics/Rect;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wm"    # Landroid/view/WindowManager;

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mWindowManager:Landroid/view/WindowManager;

    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050155

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108067a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108067b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108067c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080679

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusLineColor:I

    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusOutLineColor:I

    .line 93
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnFocusOutLineColor:I

    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnFocusLineColor:I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105015c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessBorderPaintInner:F

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessBorderPaintOuter:F

    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/Border;->createBorderPaint()V

    .line 103
    return-void
.end method

.method private createBorderPaint()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintInner:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintInner:Landroid/graphics/Paint;

    .line 108
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintInner:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintInner:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessBorderPaintInner:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintOutter:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintOutter:Landroid/graphics/Paint;

    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintOutter:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusOutLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintOutter:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessBorderPaintOuter:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    :cond_1
    return-void
.end method

.method private drawBorderLine(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 139
    if-nez p4, :cond_1

    .line 188
    :cond_0
    return-void

    .line 142
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    float-to-int v13, v1

    .line 143
    .local v13, "thickness":I
    new-instance v10, Landroid/graphics/Paint;

    move-object/from16 v0, p4

    invoke-direct {v10, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 144
    .local v10, "localPaint":Landroid/graphics/Paint;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 145
    const/4 v11, 0x0

    .line 146
    .local v11, "rotationAdjX":I
    const/4 v12, 0x0

    .line 147
    .local v12, "rotationAdjY":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 151
    .local v8, "display":Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 152
    .local v7, "degrees":I
    packed-switch v7, :pswitch_data_0

    .line 167
    :goto_0
    :pswitch_0
    if-lez v13, :cond_0

    .line 168
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v13, :cond_2

    .line 170
    int-to-float v2, v11

    add-int v1, v9, v12

    int-to-float v3, v1

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v1, v11

    int-to-float v4, v1

    add-int v1, v9, v12

    int-to-float v5, v1

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 173
    int-to-float v2, v11

    add-int/lit8 v1, p3, -0x1

    sub-int/2addr v1, v9

    add-int/2addr v1, v12

    int-to-float v3, v1

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v1, v11

    int-to-float v4, v1

    add-int/lit8 v1, p3, -0x1

    sub-int/2addr v1, v9

    add-int/2addr v1, v12

    int-to-float v5, v1

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 168
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 154
    .end local v9    # "i":I
    :pswitch_1
    const/4 v11, 0x1

    .line 155
    const/4 v12, 0x1

    .line 156
    goto :goto_0

    .line 158
    :pswitch_2
    const/4 v11, 0x1

    .line 159
    goto :goto_0

    .line 163
    :pswitch_3
    const/4 v12, 0x1

    goto :goto_0

    .line 178
    .restart local v9    # "i":I
    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v13, :cond_0

    .line 180
    add-int v1, v9, v11

    int-to-float v2, v1

    int-to-float v3, v12

    add-int v1, v9, v11

    int-to-float v4, v1

    add-int/lit8 v1, p3, -0x1

    add-int/2addr v1, v12

    int-to-float v5, v1

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 183
    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, v9

    add-int/2addr v1, v11

    int-to-float v2, v1

    int-to-float v3, v12

    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, v9

    add-int/2addr v1, v11

    int-to-float v4, v1

    add-int/lit8 v1, p3, -0x1

    add-int/2addr v1, v12

    int-to-float v5, v1

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 178
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public drawBorderBitmap(Landroid/graphics/Canvas;III)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "zone"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 192
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 194
    .local v1, "mTmpDrawRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    invoke-virtual {v1, v4, v4, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 197
    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 198
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 202
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    invoke-virtual {v1, v4, v4, p2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 203
    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 204
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 208
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    sub-int v2, p2, v2

    invoke-virtual {v1, v2, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 209
    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 210
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 214
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    sub-int v2, p3, v2

    invoke-virtual {v1, v4, v2, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 215
    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 216
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 253
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 221
    .local v0, "conf":Landroid/content/res/Configuration;
    const/4 v2, 0x3

    if-ne p4, v2, :cond_2

    .line 222
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_1

    .line 224
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    sub-int v2, p2, v2

    invoke-virtual {v1, v2, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 226
    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 227
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 231
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    sub-int v2, p3, v2

    invoke-virtual {v1, v4, v2, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 233
    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 234
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 238
    :cond_2
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_3

    .line 240
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    invoke-virtual {v1, v4, v4, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 241
    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 242
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 246
    :cond_3
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    invoke-virtual {v1, v4, v4, p2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 247
    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 248
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawBorderLine(Landroid/graphics/Canvas;II)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "right"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintInner:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/policy/impl/multiwindow/Border;->drawBorderLine(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintOutter:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/policy/impl/multiwindow/Border;->drawBorderLine(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    .line 135
    return-void
.end method

.method public setFocus(Z)V
    .locals 2
    .param p1, "focus"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintInner:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintOutter:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    if-eqz p1, :cond_2

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintInner:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintOutter:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusOutLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintInner:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnFocusLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintOutter:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnFocusOutLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method
