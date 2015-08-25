.class public final Landroid/sec/multiwindow/impl/MultiWindowManager;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/multiwindow/impl/MultiWindowManager$FEATURE_LEVEL;
    }
.end annotation


# static fields
.field public static final APPLIST_POSITION_BOTTOM:I = 0x2

.field public static final APPLIST_POSITION_LEFT:I = 0x3

.field public static final APPLIST_POSITION_RIGHT:I = 0x4

.field public static final APPLIST_POSITION_TOP:I = 0x1

.field public static final CALLBACK_TYPE_COMMON:I = 0x0

.field public static final CALLBACK_TYPE_MINIMIZE:I = 0x1

.field public static final CENTER_BAR_TYPE_EXTRA:I = 0x2

.field public static final CENTER_BAR_TYPE_NORMAL:I = 0x1

.field public static final MINIMIZE_ICON_STATE_EXPANDED:I = 0x1

.field public static final MINIMIZE_ICON_STATE_STACKED:I = 0x0

.field public static final MW_FEATURE_MINIMIZED_FLOATING_ICON:Z = true

.field public static final MW_TOUCH_DETECTED_ACTION:Ljava/lang/String; = "mw_action"

.field public static final MW_TOUCH_DETECTED_INTENT:Ljava/lang/String; = "com.sec.multiwindow.MW_TOUCH_DETECTED"

.field public static final MW_TOUCH_DETECTED_X:Ljava/lang/String; = "mw_x"

.field public static final MW_TOUCH_DETECTED_Y:Ljava/lang/String; = "mw_y"

.field private static sCenterBarInnerPadding:I

.field private static sFeatureLevel:I

.field private static sHasSystemNavBar:Z

.field private static sIsEnabled:Z

.field private static sQueried:Z

.field private static sQueriedTypeMultiWindow:Z

.field private static sStatusBarHeight:I

.field private static sStatusBarVisibility:Z

.field private static sSupportCommonUI:Z

.field private static sSupportFixedSplitView:Z

.field private static sSupportFreeStyle:Z

.field private static sSupportFreeStyleDocking:Z

.field private static sSupportFreeStyleLaunch:Z

.field private static sSupportMinimize:Z

.field private static sSupportMultiInstance:Z

.field private static sSupportMultiWindow:Z

.field private static sSupportMultiWindowLaunch:Z

.field private static sSupportQuadView:Z

.field private static sSupportRecentUI:Z

.field private static sSupportScaleWindow:Z

.field private static sSupportSplitFullScreen:Z


# instance fields
.field private mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 32
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    .line 33
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedTypeMultiWindow:Z

    .line 34
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    .line 35
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindow:Z

    .line 36
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyle:Z

    .line 37
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMinimize:Z

    .line 38
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportQuadView:Z

    .line 39
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFixedSplitView:Z

    .line 40
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleDocking:Z

    .line 41
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleLaunch:Z

    .line 42
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportScaleWindow:Z

    .line 43
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindowLaunch:Z

    .line 44
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportSplitFullScreen:Z

    .line 45
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiInstance:Z

    .line 46
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportCommonUI:Z

    .line 47
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportRecentUI:Z

    .line 48
    const/4 v0, 0x2

    sput v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sFeatureLevel:I

    .line 49
    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    .line 50
    sput-boolean v2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sHasSystemNavBar:Z

    .line 51
    sput-boolean v2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    .line 52
    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarInnerPadding:I

    return-void
.end method

.method public constructor <init>(Landroid/sec/multiwindow/impl/IMultiWindowManager;)V
    .locals 1
    .param p1, "service"    # Landroid/sec/multiwindow/impl/IMultiWindowManager;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    .line 70
    iput-object p1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    .line 71
    return-void
.end method

.method public static calcStatusBarHeight(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 326
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 327
    .local v1, "display":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v1, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v5

    .line 331
    :cond_1
    invoke-virtual {v1, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 332
    .local v0, "d":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 336
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 337
    .local v2, "fullscreen":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 339
    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_4

    iget v3, v2, Landroid/graphics/Point;->y:I

    .line 340
    .local v3, "shortSize":I
    :goto_1
    mul-int/lit16 v5, v3, 0xa0

    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v4, v5, v6

    .line 342
    .local v4, "shortSizeDp":I
    const/16 v5, 0x258

    if-lt v4, v5, :cond_2

    sget v5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/16 v6, 0xd5

    if-eq v5, v6, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_3

    .line 345
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    .line 347
    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    .line 339
    .end local v3    # "shortSize":I
    .end local v4    # "shortSizeDp":I
    :cond_4
    iget v3, v2, Landroid/graphics/Point;->x:I

    goto :goto_1
.end method

.method public static checkMultiWindowFeature(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 355
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedTypeMultiWindow:Z

    if-nez v1, :cond_1

    .line 356
    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedTypeMultiWindow:Z

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_0

    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 362
    :cond_0
    if-eqz v0, :cond_2

    .line 363
    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindow:Z

    .line 364
    const-string v1, "com.sec.feature.multiwindow.freestyle"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyle:Z

    .line 365
    const-string v1, "com.sec.feature.multiwindow.minimize"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMinimize:Z

    .line 366
    const-string v1, "com.sec.feature.multiwindow.quadview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportQuadView:Z

    .line 367
    const-string v1, "com.sec.feature.multiwindow.fixedsplitview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFixedSplitView:Z

    .line 369
    const-string v1, "com.sec.feature.multiwindow.freestylelaunch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleLaunch:Z

    .line 370
    const-string v1, "com.sec.feature.multiwindow.scalewindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportScaleWindow:Z

    .line 371
    const-string v1, "com.sec.feature.multiwindow.multiwindowlaunch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindowLaunch:Z

    .line 372
    const-string v1, "com.sec.feature.multiwindow.splitfullscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportSplitFullScreen:Z

    .line 373
    const-string v1, "com.sec.feature.multiwindow.multiinstance"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiInstance:Z

    .line 374
    const-string v1, "com.sec.feature.multiwindow.commonui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportCommonUI:Z

    .line 375
    const-string v1, "com.sec.feature.multiwindow.recentui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportRecentUI:Z

    .line 393
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-void

    .line 378
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindow:Z

    .line 379
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.freestyle.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyle:Z

    .line 380
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.minimize.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMinimize:Z

    .line 381
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.quadview.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportQuadView:Z

    .line 382
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.fixedsplitview"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFixedSplitView:Z

    .line 383
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.freestyledocking.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleDocking:Z

    .line 384
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.freestylelaunch.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleLaunch:Z

    .line 385
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.scalewindow.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportScaleWindow:Z

    .line 386
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.multiwindowlaunch.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindowLaunch:Z

    .line 387
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.splitfullscreen.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportSplitFullScreen:Z

    .line 388
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.multiinstance.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiInstance:Z

    .line 389
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.commonui.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportCommonUI:Z

    .line 390
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.recentui.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportRecentUI:Z

    goto/16 :goto_0
.end method

.method public static getAppDisplaySize(Landroid/graphics/Point;)V
    .locals 5
    .param p0, "size"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x0

    .line 300
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 301
    .local v1, "fullscreen":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 302
    .local v0, "d":Landroid/view/Display;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 304
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, p0, Landroid/graphics/Point;->x:I

    .line 305
    iget v3, v1, Landroid/graphics/Point;->y:I

    sget-boolean v4, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    if-eqz v4, :cond_1

    sget v2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    :cond_1
    sub-int v2, v3, v2

    iput v2, p0, Landroid/graphics/Point;->y:I

    .line 306
    return-void
.end method

.method public static getCurrentStatusBarVisibility()Z
    .locals 1

    .prologue
    .line 322
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    return v0
.end method

.method public static getFeatureLevel(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 292
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    if-nez v0, :cond_0

    .line 293
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isEnabled(Landroid/content/Context;)Z

    .line 296
    :cond_0
    sget v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sFeatureLevel:I

    return v0
.end method

.method public static getStatusBarHeight()I
    .locals 1

    .prologue
    .line 351
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSystemNavBar()Z
    .locals 1

    .prologue
    .line 314
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sHasSystemNavBar:Z

    return v0
.end method

.method public static initHasSystemNavBar(Z)V
    .locals 1
    .param p0, "hasBar"    # Z

    .prologue
    .line 309
    sput-boolean p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sHasSystemNavBar:Z

    .line 310
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    .line 311
    return-void

    .line 310
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isArrangeMode(IZZ)Z
    .locals 1
    .param p0, "windowMode"    # I
    .param p1, "bResumed"    # Z
    .param p2, "bIncludePinup"    # Z

    .prologue
    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method public static isCascadeWindow(I)Z
    .locals 1
    .param p0, "windowMode"    # I

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    if-nez v1, :cond_1

    .line 260
    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_0

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 264
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calcStatusBarHeight(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    const/4 v1, 0x0

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    .line 280
    :cond_0
    if-eqz v0, :cond_2

    .line 281
    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    .line 288
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    return v1

    .line 285
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    goto :goto_0
.end method

.method public static isMinimized(I)Z
    .locals 1
    .param p0, "windowMode"    # I

    .prologue
    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public static isMultiWindow(I)Z
    .locals 1
    .param p0, "windowMode"    # I

    .prologue
    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method public static isNormalWindow(I)Z
    .locals 1
    .param p0, "windowMode"    # I

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public static isPinup(I)Z
    .locals 1
    .param p0, "windowMode"    # I

    .prologue
    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public static isResizable(I)Z
    .locals 1
    .param p0, "windowMode"    # I

    .prologue
    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public static isScaleWindow(I)Z
    .locals 1
    .param p0, "windowMode"    # I

    .prologue
    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportCommonUI(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 447
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 448
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportCommonUI:Z

    return v0
.end method

.method public static isSupportFixedSplitView(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 417
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 418
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFixedSplitView:Z

    return v0
.end method

.method public static isSupportFreeStyle(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 402
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 403
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyle:Z

    return v0
.end method

.method public static isSupportFreeStyleDocking(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 422
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 423
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleDocking:Z

    return v0
.end method

.method public static isSupportFreeStyleLaunch(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 427
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 428
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportFreeStyleLaunch:Z

    return v0
.end method

.method public static isSupportMinimize(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 407
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 408
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMinimize:Z

    return v0
.end method

.method public static isSupportMultiWindow(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 397
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 398
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindow:Z

    return v0
.end method

.method public static isSupportMultiWindowLaunch(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 437
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 438
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportMultiWindowLaunch:Z

    return v0
.end method

.method public static isSupportQuadView(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 412
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 413
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportQuadView:Z

    return v0
.end method

.method public static isSupportScaleWindow(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 432
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 433
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportScaleWindow:Z

    return v0
.end method

.method public static isSupportSplitFullScreen(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 442
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->checkMultiWindowFeature(Landroid/content/Context;)V

    .line 443
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSupportSplitFullScreen:Z

    return v0
.end method

.method private static mode(I)I
    .locals 1
    .param p0, "windowMode"    # I

    .prologue
    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method private static option(I)I
    .locals 1
    .param p0, "windowMode"    # I

    .prologue
    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public static setCurrentStatusBarVisibility(Z)V
    .locals 0
    .param p0, "isVisible"    # Z

    .prologue
    .line 318
    sput-boolean p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    .line 319
    return-void
.end method

.method private static zone(I)I
    .locals 1
    .param p0, "windowMode"    # I

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public calculateSplitWindowSize(I)Landroid/graphics/Rect;
    .locals 2
    .param p1, "splitZone"    # I

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 130
    :goto_0
    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkCenterBarRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->checkCenterBarRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 78
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchMinimizeEvent(Landroid/os/IBinder;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 235
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->dispatchMinimizeEvent(Landroid/os/IBinder;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public findDockingWindowZone(IIIII)I
    .locals 7
    .param p1, "currentLaunchMode"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "dockingBoundary"    # I
    .param p5, "currentZone"    # I

    .prologue
    .line 136
    :try_start_0
    iget-object v0, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->findDockingWindowZone(IIIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 139
    :goto_0
    return v0

    .line 137
    :catch_0
    move-exception v6

    .line 138
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppListPosition()I
    .locals 2

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getAppListPosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 121
    :goto_0
    return v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getArrangeState()I
    .locals 2

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getArrangeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 87
    :goto_0
    return v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCenterBarPoint()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getCenterBarPoint()Landroid/graphics/Point;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 104
    :goto_0
    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMinimizeIconState()I
    .locals 2

    .prologue
    .line 251
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getMinimizeIconState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 254
    :goto_0
    return v1

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 254
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMultiDisplayState()Z
    .locals 2

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getMultiDisplayState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 157
    :goto_0
    return v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMultiDisplayTarget()I
    .locals 2

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getMultiDisplayTarget()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 172
    :goto_0
    return v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getResumedTaskCount()I
    .locals 2

    .prologue
    .line 186
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->getResumedTaskCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 188
    :goto_0
    return v1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 194
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 196
    :goto_0
    return v1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public launchExternalDisplay(Z)V
    .locals 2
    .param p1, "topLaunchExternal"    # Z

    .prologue
    .line 209
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->launchExternalDisplay(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public minimizeAll()V
    .locals 1

    .prologue
    .line 202
    :try_start_0
    iget-object v0, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v0}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->minimizeAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyMultiDisplayState(ZZ)Z
    .locals 2
    .param p1, "bIsMultiDisplay"    # Z
    .param p2, "bForced"    # Z

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->notifyMultiDisplayState(ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 148
    :goto_0
    return v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerCallback(Landroid/os/IBinder;ILandroid/os/IBinder;)Z
    .locals 2
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 217
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->registerCallback(Landroid/os/IBinder;ILandroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 220
    :goto_0
    return v1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 220
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAppListPosition(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 110
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->setAppListPosition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setCenterBarPoint(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->setCenterBarPoint(Landroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setMinimizeStackedIcon()V
    .locals 2

    .prologue
    .line 243
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->setMinimizeStackedIcon()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setMultiDisplayState(Z)V
    .locals 1
    .param p1, "bMultiDisplayState"    # Z

    .prologue
    .line 163
    :try_start_0
    iget-object v0, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v0, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->setMultiDisplayState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMultiDisplayTarget(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 178
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->setMultiDisplayTarget(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 180
    :goto_0
    return v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unRegisterCallback(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "callback"    # Landroid/os/IBinder;

    .prologue
    .line 226
    :try_start_0
    iget-object v1, p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->mService:Landroid/sec/multiwindow/impl/IMultiWindowManager;

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/impl/IMultiWindowManager;->unRegisterCallback(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 229
    :goto_0
    return v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 229
    const/4 v1, 0x0

    goto :goto_0
.end method
