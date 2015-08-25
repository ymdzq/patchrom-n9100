.class public Landroid/graphics/ImageFilter$DirectionalBlurFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectionalBlurFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    .line 345
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ImageFilter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/ImageFilter$1;

    .prologue
    .line 337
    invoke-direct {p0}, Landroid/graphics/ImageFilter$DirectionalBlurFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public setAngle(F)V
    .locals 1
    .param p1, "degree"    # F

    .prologue
    .line 363
    const/4 v0, 0x1

    invoke-super {p0, v0, p1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    .line 365
    return-void
.end method

.method public setDistance(F)V
    .locals 1
    .param p1, "dist"    # F

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-super {p0, v0, p1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    .line 355
    return-void
.end method
