.class public Lcom/android/server/wm/MultiWindowPointerEventListener;
.super Ljava/lang/Object;
.source "MultiWindowPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# static fields
.field private static final DISMISS_DELAYED_TIME:I = 0x1f4

.field static final NONE:I = 0x0

.field static final NOT_SUPPORT:I = 0x2

.field static final RESIZING:I = 0x1


# instance fields
.field private final DEBUG:Z

.field private final DELTA_H_SCALE:F

.field private final DELTA_H_SCALE_TERMINATE:F

.field private final DELTA_H_SCALE_TERMINATE_TOP:F

.field private final DELTA_V_SCALE:F

.field private final DELTA_V_SCALE_TERMINATE:F

.field private final DELTA_V_SCALE_TERMINATE_TOP:F

.field private final DIM_AMOUNT:F

.field private INTERPORATION:I

.field private final TAG:Ljava/lang/String;

.field private mAppToken:Lcom/android/server/wm/AppWindowToken;

.field private mApplicationName:Ljava/lang/CharSequence;

.field private mCenterBarPoint:Landroid/graphics/Point;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

.field private mEdgeFlag:I

.field private mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

.field private mHandler:Landroid/os/Handler;

.field private mIsSplitWindow:Z

.field private mIvt:[B

.field private mLastX:I

.field private mLastY:I

.field private mMaxScale:F

.field private mMinScale:F

.field private mMoved:Z

.field private mResizeState:I

.field private mScreenHeight:I

.field private mScreenRatio:F

.field private mScreenWidth:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTerminate:Z

.field private mValidMotion:Z

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mWasTargetChecked:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "MultiWindowConverter"

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DEBUG:Z

    .line 59
    const v0, 0x3d8f5c29    # 0.07f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_H_SCALE:F

    .line 60
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_V_SCALE:F

    .line 61
    const v0, 0x3e051eb8    # 0.13f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_H_SCALE_TERMINATE:F

    .line 62
    const v0, 0x3e3851ec    # 0.18f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_V_SCALE_TERMINATE:F

    .line 63
    const v0, 0x3e570a3d    # 0.21f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_H_SCALE_TERMINATE_TOP:F

    .line 64
    const v0, 0x3db851ec    # 0.09f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_V_SCALE_TERMINATE_TOP:F

    .line 65
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DIM_AMOUNT:F

    .line 66
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->INTERPORATION:I

    .line 86
    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 88
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    .line 99
    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIvt:[B

    .line 108
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 109
    iput-object p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 110
    return-void

    .line 99
    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x12t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x30t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x5et
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/wm/MultiWindowPointerEventListener;)Lcom/samsung/android/multiwindow/ui/GuideView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowPointerEventListener;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/MultiWindowPointerEventListener;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowPointerEventListener;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/wm/MultiWindowPointerEventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowPointerEventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/wm/MultiWindowPointerEventListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowPointerEventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    return p1
.end method

.method private calcPosX(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 310
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenRatio:F

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    sub-int/2addr v1, p2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 311
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    packed-switch v0, :pswitch_data_0

    .line 316
    :goto_0
    return p1

    .line 313
    :pswitch_0
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    sub-int p1, v0, p1

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private calcPosY(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 300
    int-to-float v0, p2

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinScale:F

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 301
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinScale:F

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 306
    .end local p2    # "y":I
    :cond_0
    :goto_0
    return p2

    .line 303
    .restart local p2    # "y":I
    :cond_1
    int-to-float v0, p2

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMaxScale:F

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 304
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMaxScale:F

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    float-to-int p2, v0

    goto :goto_0
.end method

.method private findApplicationTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    .locals 11
    .param p1, "xf"    # F
    .param p2, "yf"    # F
    .param p3, "exceptInternnalWindow"    # Z

    .prologue
    .line 559
    float-to-int v6, p1

    .line 560
    .local v6, "x":I
    float-to-int v7, p2

    .line 561
    .local v7, "y":I
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 563
    .local v2, "touchableRegion":Landroid/graphics/Region;
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 565
    :try_start_0
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v5

    .line 566
    .local v5, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_9

    .line 567
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 568
    .local v4, "win":Lcom/android/server/wm/WindowState;
    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 569
    .local v0, "flags":I
    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 571
    .local v3, "type":I
    const/16 v8, 0x7d4

    if-ne v3, v8, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 572
    const/4 v4, 0x0

    monitor-exit v9

    .line 624
    .end local v0    # "flags":I
    .end local v3    # "type":I
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :goto_1
    return-object v4

    .line 575
    .restart local v0    # "flags":I
    .restart local v3    # "type":I
    .restart local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v8

    if-nez v8, :cond_2

    .line 566
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 579
    :cond_2
    and-int/lit8 v8, v0, 0x10

    if-nez v8, :cond_1

    .line 584
    and-int/lit8 v8, v0, 0x8

    if-nez v8, :cond_1

    .line 589
    const/16 v8, 0x82f

    if-ne v3, v8, :cond_3

    .line 590
    const/4 v4, 0x0

    monitor-exit v9

    goto :goto_1

    .line 622
    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v3    # "type":I
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    .end local v5    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 593
    .restart local v0    # "flags":I
    .restart local v1    # "i":I
    .restart local v3    # "type":I
    .restart local v4    # "win":Lcom/android/server/wm/WindowState;
    .restart local v5    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    const/16 v8, 0x89b

    if-ne v3, v8, :cond_4

    .line 594
    const/4 v4, 0x0

    :try_start_1
    monitor-exit v9

    goto :goto_1

    .line 597
    :cond_4
    const/4 v8, 0x2

    if-eq v3, v8, :cond_5

    const/4 v8, 0x1

    if-eq v3, v8, :cond_5

    .line 598
    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_1

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_1

    const/16 v8, 0x7d0

    if-lt v3, v8, :cond_1

    const/16 v8, 0xbb7

    if-gt v3, v8, :cond_1

    .line 601
    const/4 v4, 0x0

    monitor-exit v9

    goto :goto_1

    .line 607
    :cond_5
    if-eqz p3, :cond_6

    const/high16 v8, -0x80000000

    and-int/2addr v8, v0

    if-nez v8, :cond_1

    .line 613
    :cond_6
    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 614
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Region;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 615
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_7

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v8, v10, :cond_1

    .line 616
    :cond_7
    monitor-exit v9

    goto :goto_1

    .line 618
    :cond_8
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_1

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v8, v10, :cond_1

    .line 619
    monitor-exit v9

    goto :goto_1

    .line 622
    .end local v0    # "flags":I
    .end local v3    # "type":I
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_9
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "windowName"    # Ljava/lang/CharSequence;

    .prologue
    .line 321
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 322
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, "parts":[Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 324
    .local v3, "i":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const/4 v8, 0x0

    aget-object v8, v5, v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 325
    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 326
    .local v4, "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 327
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v7, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/PackageItemInfo;->labelRes:I

    iget-object v9, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 328
    .local v1, "appName":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 329
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appName":Ljava/lang/CharSequence;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v1

    .line 332
    :catch_0
    move-exception v2

    .line 333
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getApplicationName is error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 336
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private insertLog(Lcom/android/server/wm/AppWindowToken;)V
    .locals 6
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 428
    const/4 v2, 0x0

    .line 429
    .local v2, "packageName":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 430
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "app_id"

    const-string v5, "com.sec.android.app.FlashBarService"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v4, "feature"

    const-string v5, "GEST"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    if-eqz p1, :cond_0

    .line 433
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 434
    .local v3, "w":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_0

    .line 435
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    .line 438
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_0
    const-string v4, "extra"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 440
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v4, "data"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 442
    const-string v4, "com.samsung.android.providers.context"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 444
    return-void
.end method

.method private isCancelArea(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 486
    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMaxScale:F

    sub-float/2addr v2, v3

    const v3, 0x3d4ccccd    # 0.05f

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 488
    .local v0, "limitHieght":I
    if-ge p2, v0, :cond_0

    .line 489
    const/4 v1, 0x1

    .line 492
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTerminativeArea(II)Z
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    .line 496
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 497
    .local v0, "dInfo":Landroid/view/DisplayInfo;
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 498
    .local v6, "screenWidth":I
    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 499
    .local v5, "screenHeight":I
    const v1, 0x3e051eb8    # 0.13f

    .line 500
    .local v1, "dh":F
    const v3, 0x3e3851ec    # 0.18f

    .line 501
    .local v3, "dv":F
    const v2, 0x3e570a3d    # 0.21f

    .line 502
    .local v2, "dht":F
    const v4, 0x3db851ec    # 0.09f

    .line 504
    .local v4, "dvt":F
    if-ge v5, v6, :cond_0

    .line 505
    const v1, 0x3db851ec    # 0.09f

    .line 506
    const v3, 0x3e570a3d    # 0.21f

    .line 507
    const v2, 0x3e3851ec    # 0.18f

    .line 508
    const v4, 0x3e051eb8    # 0.13f

    .line 511
    :cond_0
    iget v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    sparse-switch v8, :sswitch_data_0

    .line 534
    :cond_1
    const/4 v7, 0x0

    :goto_0
    return v7

    .line 513
    :sswitch_0
    int-to-float v8, v6

    mul-float/2addr v8, v1

    float-to-int v8, v8

    if-ge p1, v8, :cond_2

    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v8, v8

    if-le p2, v8, :cond_2

    .line 514
    const-string v8, "MultiWindowConverter"

    const-string v9, "MultiWindow changing is blocked by terminative area"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 517
    :cond_2
    int-to-float v8, v6

    mul-float/2addr v8, v2

    float-to-int v8, v8

    if-le p1, v8, :cond_1

    int-to-float v8, v5

    mul-float/2addr v8, v4

    float-to-int v8, v8

    if-ge p2, v8, :cond_1

    .line 518
    const-string v8, "MultiWindowConverter"

    const-string v9, "MultiWindow changing is blocked by terminative area"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 524
    :sswitch_1
    int-to-float v8, v6

    sub-float v9, v10, v1

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-le p1, v8, :cond_3

    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v8, v8

    if-le p2, v8, :cond_3

    .line 525
    const-string v8, "MultiWindowConverter"

    const-string v9, "MultiWindow changing is blocked by terminative area"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 528
    :cond_3
    int-to-float v8, v6

    sub-float v9, v10, v2

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-ge p1, v8, :cond_1

    int-to-float v8, v5

    mul-float/2addr v8, v4

    float-to-int v8, v8

    if-ge p2, v8, :cond_1

    .line 529
    const-string v8, "MultiWindowConverter"

    const-string v9, "MultiWindow changing is blocked by terminative area"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 511
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private isValidMotion(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 538
    const v0, 0x3d8f5c29    # 0.07f

    .line 539
    .local v0, "dh":F
    const v1, 0x3d4ccccd    # 0.05f

    .line 541
    .local v1, "dv":F
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    if-ge v4, v5, :cond_0

    .line 542
    const v0, 0x3d4ccccd    # 0.05f

    .line 543
    const v1, 0x3d8f5c29    # 0.07f

    .line 545
    :cond_0
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v2, v4

    .line 547
    .local v2, "limitHieght":I
    if-ge p2, v2, :cond_2

    .line 554
    :cond_1
    :goto_0
    return v3

    .line 551
    :cond_2
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    if-lt v4, v5, :cond_1

    .line 554
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private showFullScreenGuide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderResource(I)V

    .line 288
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    sparse-switch v0, :sswitch_data_0

    .line 297
    :goto_0
    return-void

    .line 290
    :sswitch_0
    invoke-direct {p0, v2, v2}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showGuide(II)V

    goto :goto_0

    .line 293
    :sswitch_1
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showGuide(II)V

    goto :goto_0

    .line 288
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private showGuide(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 447
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    sub-int v2, v4, p1

    .line 448
    .local v2, "width":I
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    sub-int v0, v4, p2

    .line 449
    .local v0, "height":I
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    if-ge v4, v5, :cond_2

    const/4 v1, 0x1

    .line 453
    .local v1, "isLandScape":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    if-eqz v4, :cond_0

    if-nez p2, :cond_0

    .line 454
    if-nez v1, :cond_3

    .line 455
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v0, v4, Landroid/graphics/Point;->y:I

    .line 465
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    if-nez v4, :cond_1

    .line 466
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    .line 468
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    .line 470
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    sparse-switch v4, :sswitch_data_0

    .line 483
    :goto_2
    return-void

    .end local v1    # "isLandScape":Z
    :cond_2
    move v1, v3

    .line 449
    goto :goto_0

    .line 457
    .restart local v1    # "isLandScape":Z
    :cond_3
    if-nez p1, :cond_4

    .line 458
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v4, Landroid/graphics/Point;->x:I

    goto :goto_1

    .line 460
    :cond_4
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v2, v4, v5

    goto :goto_1

    .line 472
    :sswitch_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v3, p1, p2, v2, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_2

    .line 476
    :sswitch_1
    iget-boolean v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    if-nez p2, :cond_5

    .line 477
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v3, v6, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_2

    .line 479
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4, v3, p2, p1, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_2

    .line 470
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public dismissGuide(Z)V
    .locals 4
    .param p1, "immediate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 263
    if-nez p1, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/MultiWindowPointerEventListener$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener$1;-><init>(Lcom/android/server/wm/MultiWindowPointerEventListener;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    .line 278
    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 279
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    .line 280
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 113
    new-instance v0, Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setWindowType(I)V

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setPrivateFlags(I)V

    .line 116
    new-instance v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinScale:F

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMaxScale:F

    .line 121
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v0, v10, 0xff

    .line 131
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 132
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    .line 133
    .local v4, "dInfo":Landroid/view/DisplayInfo;
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v10, v10, Lcom/android/server/wm/WindowManagerService;->mIsCocktailBarEnabled:Z

    if-nez v10, :cond_2

    .line 134
    iget v10, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    .line 135
    iget v10, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    .line 142
    .end local v4    # "dInfo":Landroid/view/DisplayInfo;
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    iget v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    invoke-virtual {v10, v11, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->onTouchEvent(ILandroid/view/MotionEvent;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 258
    :cond_1
    :goto_1
    return-void

    .line 137
    .restart local v4    # "dInfo":Landroid/view/DisplayInfo;
    :cond_2
    iget v10, v4, Landroid/view/DisplayInfo;->appWidth:I

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    .line 138
    iget v10, v4, Landroid/view/DisplayInfo;->appHeight:I

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    goto :goto_0

    .line 146
    .end local v4    # "dInfo":Landroid/view/DisplayInfo;
    :cond_3
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 148
    :pswitch_0
    iput-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTerminate:Z

    .line 149
    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenRatio:F

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastY:I

    .line 152
    iput-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    .line 153
    iput-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    .line 154
    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastY:I

    int-to-float v11, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v12

    if-eqz v12, :cond_4

    :goto_2
    invoke-direct {p0, v10, v11, v8}, Lcom/android/server/wm/MultiWindowPointerEventListener;->findApplicationTargetWindow(FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wm/MultiWindowPointerEventListener;->startResizing(Lcom/android/server/wm/WindowState;)Z

    .line 155
    iget v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    invoke-static {v8, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->getEdgeFlag(ILandroid/view/MotionEvent;)I

    move-result v8

    iput v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    .line 158
    const-string v8, "MultiWindowConverter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Start to resize multiwindow: mResizing="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",flag="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",x="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",y="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastY:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    move v8, v9

    .line 154
    goto :goto_2

    .line 163
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v6, v10

    .line 164
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v7, v10

    .line 166
    .local v7, "y":I
    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    sub-int/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->INTERPORATION:I

    if-gt v10, v11, :cond_5

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastY:I

    sub-int/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->INTERPORATION:I

    if-le v10, v11, :cond_1

    .line 168
    :cond_5
    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    if-nez v10, :cond_6

    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTerminate:Z

    if-nez v10, :cond_1

    invoke-direct {p0, v6, v7}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isTerminativeArea(II)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTerminate:Z

    if-nez v10, :cond_1

    .line 171
    :cond_6
    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    if-nez v10, :cond_7

    invoke-direct {p0, v6, v7}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isValidMotion(II)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    if-eqz v10, :cond_1

    .line 175
    :cond_7
    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    if-eqz v10, :cond_1

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    if-eq v10, v8, :cond_8

    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    if-nez v10, :cond_1

    .line 180
    :cond_8
    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    if-eqz v10, :cond_b

    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    if-nez v10, :cond_b

    .line 181
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/MultiWindowFacadeService;->isEnableMakePenWindow()Z

    move-result v10

    if-nez v10, :cond_9

    .line 182
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const v10, 0x1080684

    invoke-virtual {v8, v10}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideResource(I)V

    .line 183
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showFullScreenGuide()V

    .line 184
    iput v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    goto/16 :goto_1

    .line 187
    :cond_9
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIvt:[B

    iget-object v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v12}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 188
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showFullScreenGuide()V

    .line 189
    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    if-eq v10, v8, :cond_a

    .line 192
    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    if-ne v10, v13, :cond_a

    .line 193
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v11, 0x103012b

    invoke-direct {v3, v10, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 194
    .local v3, "context":Landroid/content/Context;
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040bf4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 197
    const-string v9, "MultiWindowConverter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mApplicationName:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not supported popup window"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v3    # "context":Landroid/content/Context;
    :cond_a
    iput-boolean v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    goto/16 :goto_1

    .line 214
    :cond_b
    invoke-direct {p0, v6, v7}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isCancelArea(II)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 215
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showFullScreenGuide()V

    .line 216
    iput-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    goto/16 :goto_1

    .line 220
    :cond_c
    iput-boolean v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    .line 221
    invoke-direct {p0, v6, v7}, Lcom/android/server/wm/MultiWindowPointerEventListener;->calcPosY(II)I

    move-result v2

    .line 222
    .local v2, "adjustY":I
    invoke-direct {p0, v6, v2}, Lcom/android/server/wm/MultiWindowPointerEventListener;->calcPosX(II)I

    move-result v1

    .line 223
    .local v1, "adjustX":I
    if-eq v2, v7, :cond_d

    iget v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinScale:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    float-to-int v8, v8

    if-lt v2, v8, :cond_d

    .line 224
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const v9, 0x1080682

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideResource(I)V

    .line 225
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const v9, 0x108065c

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderResource(I)V

    .line 230
    :goto_3
    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showGuide(II)V

    goto/16 :goto_1

    .line 227
    :cond_d
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const v9, 0x1080683

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideResource(I)V

    .line 228
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const v9, 0x108065d

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderResource(I)V

    goto :goto_3

    .line 235
    .end local v1    # "adjustX":I
    .end local v2    # "adjustY":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :pswitch_2
    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    if-eqz v10, :cond_e

    .line 236
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIvt:[B

    iget-object v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v12}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 238
    new-instance v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v5, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    .line 239
    .local v5, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/ui/GuideView;->getLastBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 240
    invoke-virtual {v5, v13, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 241
    const/16 v10, 0x800

    invoke-virtual {v5, v10, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 242
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v10, v11, v5}, Lcom/android/server/wm/WindowManagerService;->changeMultiWindowStyle(Lcom/android/server/wm/AppWindowToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    .line 243
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0, v10}, Lcom/android/server/wm/MultiWindowPointerEventListener;->insertLog(Lcom/android/server/wm/AppWindowToken;)V

    .line 245
    const-string v10, "MultiWindowConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MultiWindow changing is finished by gesture. app:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",bound="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/ui/GuideView;->getLastBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v5    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_e
    :pswitch_3
    invoke-virtual {p0, v8}, Lcom/android/server/wm/MultiWindowPointerEventListener;->dismissGuide(Z)V

    .line 251
    iput-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    .line 252
    iput-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    .line 254
    const-string v8, "MultiWindowConverter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MultiWindow changing is ended by gesture.:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public showMultiWindowGestureHelp()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->showMultiWindowGestureHelp()V

    .line 629
    return-void
.end method

.method public startResizing(Lcom/android/server/wm/WindowState;)Z
    .locals 12
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 343
    const-string v9, "MultiWindowConverter"

    const-string v10, "The top window does not support multi-window"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 346
    const/4 v9, 0x0

    .line 424
    :goto_0
    return v9

    .line 348
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v8

    .line 350
    .local v8, "stack":Lcom/android/server/wm/TaskStack;
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mApplicationName:Ljava/lang/CharSequence;

    .line 352
    if-eqz v8, :cond_1

    iget v9, v8, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 353
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 355
    const-string v9, "MultiWindowConverter"

    const-string v10, "MultiWindow Gesture is not supported with launcher"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v9, 0x0

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    .line 361
    .local v6, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/high16 v9, 0x1000000

    invoke-virtual {v6, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x10

    invoke-virtual {v6, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_2
    const/4 v7, 0x1

    .line 365
    .local v7, "notSupport":Z
    :goto_1
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 366
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    .line 367
    new-instance v9, Landroid/graphics/Point;

    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/MultiWindowFacadeService;->getCenterBarPoint()Landroid/graphics/Point;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    .line 369
    :cond_3
    const/4 v1, 0x0

    .line 370
    .local v1, "currentTask":Lcom/android/server/wm/Task;
    const/4 v5, 0x0

    .line 371
    .local v5, "mainWindowTitle":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 373
    .local v2, "currentTaskInfo":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/android/server/wm/Task;

    move-object v1, v0

    .line 374
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    iget-object v9, v1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/AppWindowToken;

    iget-object v9, v9, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v9}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 382
    :goto_2
    if-eqz v7, :cond_5

    .line 383
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const v10, 0x1080684

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideResource(I)V

    .line 384
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderResource(I)V

    .line 385
    invoke-direct {p0, v5}, Lcom/android/server/wm/MultiWindowPointerEventListener;->getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mApplicationName:Ljava/lang/CharSequence;

    .line 386
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 388
    const-string v9, "MultiWindowConverter"

    const-string v10, "This application or window do not support multiwindow"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 361
    .end local v1    # "currentTask":Lcom/android/server/wm/Task;
    .end local v2    # "currentTaskInfo":Ljava/lang/String;
    .end local v5    # "mainWindowTitle":Ljava/lang/CharSequence;
    .end local v7    # "notSupport":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 376
    .restart local v1    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v2    # "currentTaskInfo":Ljava/lang/String;
    .restart local v5    # "mainWindowTitle":Ljava/lang/CharSequence;
    .restart local v7    # "notSupport":Z
    :catch_0
    move-exception v4

    .line 377
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "TAG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mainWindowTitle is error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 379
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_2

    .line 394
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 395
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const v10, 0x1080684

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideResource(I)V

    .line 396
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderResource(I)V

    .line 397
    invoke-direct {p0, v5}, Lcom/android/server/wm/MultiWindowPointerEventListener;->getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mApplicationName:Ljava/lang/CharSequence;

    .line 399
    const-string v9, "MultiWindowConverter"

    const-string v10, "MultiWindow Gesture is not supported with ISOLATED or FullScreenOnly"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 402
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 405
    :cond_6
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 406
    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 408
    const-string v9, "MultiWindowConverter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MultiWindow is changing by gesture:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v10, 0x20000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_7

    .line 413
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 414
    .local v3, "dInfo":Landroid/view/DisplayInfo;
    iget v9, v3, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    iget v10, v3, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    if-le v9, v10, :cond_8

    .line 415
    iget v9, v3, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    iput v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    .line 422
    .end local v3    # "dInfo":Landroid/view/DisplayInfo;
    :cond_7
    :goto_3
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const v10, 0x1080683

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideResource(I)V

    .line 424
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 417
    .restart local v3    # "dInfo":Landroid/view/DisplayInfo;
    :cond_8
    iget v9, v3, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    iput v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    goto :goto_3
.end method
