.class final Lcom/android/server/display/MagnifierDisplayPolicy;
.super Ljava/lang/Object;
.source "MagnifierPolicy.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;,
        Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SECTOR_CENTER:I = 0x3

.field private static final SECTOR_LEFT:I = 0x1

.field private static final SECTOR_NONE:I = 0x0

.field private static final SECTOR_RIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MagnifierDisplayPolicy"


# instance fields
.field private mBorderPadding:F

.field private mContext:Landroid/content/Context;

.field private mCropHeight:F

.field private mCropWidth:F

.field private mDefaultDisplay:Landroid/view/Display;

.field private mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field private mDefaultHeight:I

.field private mDefaultWidth:I

.field mDm:Landroid/hardware/display/IDisplayManager;

.field private mFixedHeight:I

.field private mFixedWidth:I

.field private final mHoverZoomObserver:Landroid/database/ContentObserver;

.field private mIsHoverZoom:Z

.field private mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

.field private mOnSizeChangeListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPointerMargin:F

.field private mScale:F

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    invoke-direct {v0, p0}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;-><init>(Lcom/android/server/display/MagnifierDisplayPolicy;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    .line 56
    iput v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    .line 57
    iput v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    .line 62
    iput v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    .line 63
    iput v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    .line 64
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    .line 67
    iput v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    .line 343
    new-instance v0, Lcom/android/server/display/MagnifierDisplayPolicy$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/android/server/display/MagnifierDisplayPolicy$1;-><init>(Lcom/android/server/display/MagnifierDisplayPolicy;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mHoverZoomObserver:Landroid/database/ContentObserver;

    .line 74
    iput-object p1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_magnifier"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mIsHoverZoom:Z

    .line 77
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_magnifier"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mHoverZoomObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 79
    return-void

    :cond_0
    move v0, v1

    .line 76
    goto :goto_0
.end method

.method static synthetic access$300(Lcom/android/server/display/MagnifierDisplayPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierDisplayPolicy;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/MagnifierDisplayPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierDisplayPolicy;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mIsHoverZoom:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/display/MagnifierDisplayPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierDisplayPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mIsHoverZoom:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/display/MagnifierDisplayPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierDisplayPolicy;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPointMargin()V

    return-void
.end method

.method private setPointMargin()V
    .locals 2

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mIsHoverZoom:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105016c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    goto :goto_0
.end method

.method private updateDisplayInfo(Landroid/view/DisplayInfo;)Z
    .locals 2
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .prologue
    .line 200
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    iget v1, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    iget v1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v0, v1, :cond_1

    .line 203
    :cond_0
    const/4 v0, 0x0

    .line 214
    :goto_0
    return v0

    .line 205
    :cond_1
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    .line 206
    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    .line 208
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    .line 209
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    .line 212
    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPrecision()V

    .line 214
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addOnSizeChanageListener(Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    return-void
.end method

.method public checkUpdateDisplayInfo()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 296
    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v3, :cond_0

    .line 297
    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mWindowManager:Landroid/view/WindowManager;

    .line 299
    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplay:Landroid/view/Display;

    .line 301
    const-string v3, "display"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 305
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDm:Landroid/hardware/display/IDisplayManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {p0, v3}, Lcom/android/server/display/MagnifierDisplayPolicy;->updateDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    .line 312
    .local v2, "listener":Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;->onSizeChanged(Z)V

    goto :goto_1

    .line 306
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 315
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return v5
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getDefaultDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method public getDisplayInfo(Landroid/view/MagnificationSpec;)Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
    .locals 20
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 108
    move-object/from16 v0, p1

    iget v15, v0, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v15, v15

    int-to-float v13, v15

    .line 109
    .local v13, "x":F
    move-object/from16 v0, p1

    iget v15, v0, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v15, v15

    int-to-float v14, v15

    .line 110
    .local v14, "y":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    .line 112
    .local v8, "scale":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float v3, v13, v15

    .line 113
    .local v3, "left":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float v12, v14, v15

    .line 115
    .local v12, "top":F
    const/4 v10, 0x0

    .line 116
    .local v10, "surfaceOffsetX":F
    const/4 v11, 0x0

    .line 117
    .local v11, "surfaceoffsetY":F
    const/4 v1, 0x0

    .line 118
    .local v1, "absOffsetX":F
    const/4 v2, 0x0

    .line 120
    .local v2, "absOffsetY":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8}, Lcom/android/server/display/MagnifierDisplayPolicy;->getPointSector(FF)I

    move-result v9

    .line 121
    .local v9, "sector":I
    packed-switch v9, :pswitch_data_0

    .line 146
    :goto_0
    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v15, v8, v15

    mul-float/2addr v15, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v16, v0

    mul-float v16, v16, v8

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    add-float v15, v15, v16

    neg-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v16, v0

    sub-float v11, v15, v16

    .line 147
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    mul-float/2addr v15, v8

    sub-float v15, v14, v15

    float-to-int v15, v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v16, v0

    sub-float v2, v15, v16

    .line 148
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    cmpg-float v15, v14, v15

    if-gez v15, :cond_3

    .line 149
    const/4 v12, 0x0

    .line 150
    const/4 v11, 0x0

    .line 151
    const/4 v2, 0x0

    .line 165
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static {v15}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v15

    float-to-int v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Point;->x:I

    .line 166
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static {v15}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v15

    float-to-int v0, v11

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Point;->y:I

    .line 168
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mAbsOffset:Landroid/graphics/Point;
    invoke-static {v15}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$100(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v15

    float-to-int v0, v1

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Point;->x:I

    .line 169
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mAbsOffset:Landroid/graphics/Point;
    invoke-static {v15}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$100(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v15

    float-to-int v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Point;->y:I

    .line 171
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    add-float v5, v3, v15

    .line 172
    .local v5, "rectLeft":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    add-float v7, v12, v15

    .line 173
    .local v7, "rectTop":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    add-float/2addr v15, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    move/from16 v16, v0

    sub-float v6, v15, v16

    .line 174
    .local v6, "rectRight":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    add-float/2addr v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    move/from16 v16, v0

    sub-float v4, v15, v16

    .line 176
    .local v4, "rectBottom":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceCropRect:Landroid/graphics/Rect;
    invoke-static {v15}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Rect;

    move-result-object v15

    float-to-int v0, v5

    move/from16 v16, v0

    float-to-int v0, v7

    move/from16 v17, v0

    const v18, 0x3d4ccccd    # 0.05f

    add-float v18, v18, v6

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    const v19, 0x3d4ccccd    # 0.05f

    add-float v19, v19, v4

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/Rect;->set(IIII)V

    .line 177
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static {v15}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v15

    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    float-to-int v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v5, v17

    mul-float v17, v17, v8

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Point;->x:I

    .line 178
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static {v15}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v15

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    float-to-int v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v7, v17

    mul-float v17, v17, v8

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Point;->y:I

    .line 186
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    return-object v15

    .line 123
    .end local v4    # "rectBottom":F
    .end local v5    # "rectLeft":F
    .end local v6    # "rectRight":F
    .end local v7    # "rectTop":F
    :pswitch_0
    const/4 v15, 0x0

    cmpg-float v15, v3, v15

    if-gez v15, :cond_1

    .line 124
    const/4 v10, 0x0

    .line 125
    const/4 v3, 0x0

    .line 129
    :goto_2
    const/4 v1, 0x0

    .line 130
    goto/16 :goto_0

    .line 127
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v15, v13

    mul-float v10, v15, v8

    goto :goto_2

    .line 132
    :pswitch_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    cmpl-float v15, v3, v15

    if-lez v15, :cond_2

    .line 133
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    int-to-float v15, v15

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v8

    mul-float v10, v15, v16

    .line 134
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v16, v0

    sub-float v3, v15, v16

    .line 138
    :goto_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v16, v0

    mul-float v16, v16, v8

    sub-float v1, v15, v16

    .line 139
    goto/16 :goto_0

    .line 136
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    add-float v16, v16, v13

    mul-float v16, v16, v8

    sub-float v10, v15, v16

    goto :goto_3

    .line 141
    :pswitch_2
    neg-float v15, v13

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v8, v16

    mul-float v10, v15, v16

    .line 142
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    mul-float/2addr v15, v8

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float v1, v13, v15

    goto/16 :goto_0

    .line 152
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    mul-float/2addr v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v16, v0

    add-float v15, v15, v16

    cmpg-float v15, v14, v15

    if-gez v15, :cond_4

    .line 153
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    mul-float/2addr v15, v8

    sub-float/2addr v15, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v16, v0

    add-float v15, v15, v16

    add-float/2addr v11, v15

    .line 154
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 155
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    sub-float v15, v15, v16

    cmpl-float v15, v14, v15

    if-lez v15, :cond_0

    .line 156
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v16, v0

    sub-float v12, v15, v16

    .line 157
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_5

    .line 158
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    sub-float v15, v15, v16

    sub-float v15, v14, v15

    mul-float/2addr v15, v8

    add-float/2addr v11, v15

    goto/16 :goto_1

    .line 160
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    sub-float v15, v15, v16

    sub-float v15, v14, v15

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v8, v16

    mul-float v15, v15, v16

    add-float/2addr v11, v15

    .line 161
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v16, v0

    mul-float v16, v16, v8

    sub-float v2, v15, v16

    goto/16 :goto_1

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 248
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    mul-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getPointSector(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "scale"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 190
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 191
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    .line 192
    :cond_0
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    mul-float/2addr v1, p2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 193
    const/4 v0, 0x2

    goto :goto_0

    .line 195
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getPrecision(F)F
    .locals 3
    .param p1, "length"    # F

    .prologue
    .line 218
    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    sub-float v1, p1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .line 219
    .local v0, "diff":F
    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    sub-float/2addr v1, p1

    return v1
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 244
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    mul-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isHoverZoom()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mIsHoverZoom:Z

    return v0
.end method

.method public removeOnSizeChanageListener(Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method

.method public setPadding(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 240
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    .line 241
    return-void
.end method

.method public setPrecision()V
    .locals 2

    .prologue
    .line 223
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    invoke-virtual {p0, v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getPrecision(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    .line 224
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    invoke-virtual {p0, v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getPrecision(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    .line 227
    invoke-direct {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPointMargin()V

    .line 229
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 231
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    .line 232
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    .line 233
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    invoke-virtual {p0, v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getPrecision(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    .line 235
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Last:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateSettings(IIF)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "scale"    # F

    .prologue
    .line 327
    iput p1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    .line 328
    iput p2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedHeight:I

    .line 329
    iput p3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    .line 331
    iget v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    .line 332
    iget v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    .line 334
    iget-object v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    .line 335
    .local v1, "listener":Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;->onSizeChanged(Z)V

    goto :goto_0

    .line 337
    .end local v1    # "listener":Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;
    :cond_0
    return-void
.end method
