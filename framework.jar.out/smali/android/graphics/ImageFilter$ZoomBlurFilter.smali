.class public Landroid/graphics/ImageFilter$ZoomBlurFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoomBlurFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    .line 381
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ImageFilter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/ImageFilter$1;

    .prologue
    .line 373
    invoke-direct {p0}, Landroid/graphics/ImageFilter$ZoomBlurFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public setPivot(FF)V
    .locals 1
    .param p1, "xRatio"    # F
    .param p2, "yRatio"    # F

    .prologue
    .line 397
    const/4 v0, 0x1

    invoke-super {p0, v0, p1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    .line 399
    const/4 v0, 0x2

    invoke-super {p0, v0, p2}, Landroid/graphics/ImageFilter;->setValue(IF)V

    .line 401
    return-void
.end method

.method public setZoomRatio(F)V
    .locals 1
    .param p1, "zoom"    # F

    .prologue
    .line 387
    const/4 v0, 0x0

    invoke-super {p0, v0, p1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    .line 389
    return-void
.end method
