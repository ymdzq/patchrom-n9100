.class public Lcom/samsung/android/cover/CoverState;
.super Ljava/lang/Object;
.source "CoverState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COLOR_BLACK:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_BLUSH_PINK:I = 0x3

.field public static final COLOR_BRONZE:I = 0xe

.field public static final COLOR_CARBON_METAL:I = 0x9

.field public static final COLOR_CHARCOAL_GRAY:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_CLASSIC_WHITE:I = 0x2

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final COLOR_GRAYISH_BLUE:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_INDIGO_BLUE:I = 0x6

.field public static final COLOR_JET_BLACK:I = 0x1

.field public static final COLOR_MAGENTA:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_MINT_BLUE:I = 0x8

.field public static final COLOR_MUSTARD_YELLOW:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_OATMEAL:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_OATMEAL_BEIGE:I = 0x5

.field public static final COLOR_ORANGE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_PEAKCOCK_GREEN:I = 0xa

.field public static final COLOR_PEARL_WHITE:I = 0xd

.field public static final COLOR_PINK:I = 0xc

.field public static final COLOR_PLUM_RED:I = 0x7

.field public static final COLOR_ROSE_GOLD:I = 0xb

.field public static final COLOR_SOFT_PINK:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_WHITE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_WILD_ORANGE:I = 0x4

.field public static final COVER_ATTACHED:Z = true

.field public static final COVER_DETACHED:Z = false

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/cover/CoverState;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODEL_DEFAULT:I = 0x0

.field public static final MODEL_TB:I = 0x3

.field public static final MODEL_TR:I = 0x2

.field public static final SWITCH_STATE_COVER_CLOSE:Z = false

.field public static final SWITCH_STATE_COVER_OPEN:Z = true

.field private static final TAG:Ljava/lang/String; = "CoverState"

.field public static final TYPE_BRAND_MONBLANC_COVER:I = 0x64

.field public static final TYPE_FLIP_COVER:I = 0x0

.field public static final TYPE_HEALTH_COVER:I = 0x4

.field public static final TYPE_LED_COVER:I = 0x7

.field public static final TYPE_NONE:I = 0x2

.field public static final TYPE_SVIEW_CHARGER_COVER:I = 0x3

.field public static final TYPE_SVIEW_COVER:I = 0x1

.field public static final TYPE_S_CHARGER_COVER:I = 0x5

.field public static final TYPE_S_VIEW_WALLET_COVER:I = 0x6


# instance fields
.field public attached:Z

.field public color:I

.field public heightPixel:I

.field public model:I

.field public switchState:Z

.field public type:I

.field public widthPixel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 429
    new-instance v0, Lcom/samsung/android/cover/CoverState$1;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cover/CoverState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 296
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 297
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 298
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 299
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 300
    iput-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 301
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 302
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "defaultType"    # I
    .param p2, "defaultWidthPixel"    # I
    .param p3, "defaultHeightPixel"    # I

    .prologue
    const/4 v1, 0x0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 314
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 315
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 316
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 317
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 318
    iput-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 319
    iput v1, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 320
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    invoke-direct {p0, p1}, Lcom/samsung/android/cover/CoverState;->readFromParcel(Landroid/os/Parcel;)V

    .line 378
    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 1
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I

    .prologue
    const/4 v0, 0x0

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 333
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 334
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 335
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 336
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 337
    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 338
    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 339
    return-void
.end method

.method public constructor <init>(ZIIIIZ)V
    .locals 1
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I
    .param p6, "attached"    # Z

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 352
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 353
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 354
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 355
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 356
    iput-boolean p6, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 357
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 358
    return-void
.end method

.method public constructor <init>(ZIIIIZI)V
    .locals 0
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I
    .param p6, "attached"    # Z
    .param p7, "model"    # I

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 362
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 363
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 364
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 365
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 366
    iput-boolean p6, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 367
    iput p7, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 368
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 422
    return-void

    :cond_0
    move v0, v2

    .line 415
    goto :goto_0

    :cond_1
    move v1, v2

    .line 420
    goto :goto_1
.end method


# virtual methods
.method public copyFrom(Lcom/samsung/android/cover/CoverState;)V
    .locals 1
    .param p1, "o"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 512
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 513
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->type:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 514
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->color:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 515
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 516
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 517
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    iput-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 518
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->model:I

    iput v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 519
    return-void
.end method

.method public describeContents()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public getAttachState()Z
    .locals 1

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    return v0
.end method

.method public getModel()I
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    return v0
.end method

.method public getSwitchState()Z
    .locals 1

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    return v0
.end method

.method public getWindowHeight()I
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    return v0
.end method

.method public getWindowWidth()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    return v0
.end method

.method public setAttachState(Z)V
    .locals 0
    .param p1, "attached"    # Z

    .prologue
    .line 603
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 604
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 563
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 564
    return-void
.end method

.method public setModel(I)V
    .locals 0
    .param p1, "model"    # I

    .prologue
    .line 611
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 612
    return-void
.end method

.method public setSwitchState(Z)V
    .locals 0
    .param p1, "switchState"    # Z

    .prologue
    .line 535
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 536
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 549
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 550
    return-void
.end method

.method public setWindowHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 589
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 590
    return-void
.end method

.method public setWindowWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 576
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 577
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 449
    const-string v0, "CoverState(switchState=%b type=%d color=%d widthPixel=%d heightPixel=%d model=%d attached=%b)"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCoverState(IIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "color"    # I
    .param p3, "widthPixel"    # I
    .param p4, "heightPixel"    # I

    .prologue
    .line 457
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 458
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 459
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 460
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 461
    return-void
.end method

.method public updateCoverState(IIIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "color"    # I
    .param p3, "widthPixel"    # I
    .param p4, "heightPixel"    # I
    .param p5, "model"    # I

    .prologue
    .line 486
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 487
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 488
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 489
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 490
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 491
    return-void
.end method

.method public updateCoverState(IIIIZI)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "color"    # I
    .param p3, "widthPixel"    # I
    .param p4, "heightPixel"    # I
    .param p5, "attached"    # Z
    .param p6, "model"    # I

    .prologue
    .line 496
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 497
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 498
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 499
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 500
    iput-boolean p5, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 501
    iput p6, p0, Lcom/samsung/android/cover/CoverState;->model:I

    .line 502
    return-void
.end method

.method public updateCoverState(ZIIII)V
    .locals 0
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I

    .prologue
    .line 466
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 467
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 468
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 469
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 470
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 471
    return-void
.end method

.method public updateCoverState(ZIIIIZ)V
    .locals 0
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I
    .param p6, "attached"    # Z

    .prologue
    .line 476
    iput-boolean p1, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 477
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 478
    iput p3, p0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 479
    iput p4, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 480
    iput p5, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 481
    iput-boolean p6, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 482
    return-void
.end method

.method public updateCoverWindowSize(II)V
    .locals 0
    .param p1, "widthPixel"    # I
    .param p2, "heightPixel"    # I

    .prologue
    .line 506
    iput p1, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 507
    iput p2, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 508
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 399
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    return-void

    :cond_0
    move v0, v2

    .line 399
    goto :goto_0

    :cond_1
    move v1, v2

    .line 404
    goto :goto_1
.end method
