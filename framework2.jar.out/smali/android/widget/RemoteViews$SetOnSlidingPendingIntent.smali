.class Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnSlidingPendingIntent"
.end annotation


# static fields
.field public static final TAG:I = 0x12


# instance fields
.field bottomSlidingPendingIntent:Landroid/app/PendingIntent;

.field bottomThresHold:I

.field downPendingIntent:Landroid/app/PendingIntent;

.field leftSlidingPendingIntent:Landroid/app/PendingIntent;

.field leftThresHold:I

.field rightSlidingPendingIntent:Landroid/app/PendingIntent;

.field rightThresHold:I

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field topSlidingPendingIntent:Landroid/app/PendingIntent;

.field topThresHold:I

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IIIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1
    .param p2, "id"    # I
    .param p3, "leftThresHold"    # I
    .param p4, "topThresHold"    # I
    .param p5, "rightThresHold"    # I
    .param p6, "bottomThresHold"    # I
    .param p7, "downPendingIntent"    # Landroid/app/PendingIntent;
    .param p8, "leftSlidingPendingIntent"    # Landroid/app/PendingIntent;
    .param p9, "topSlidingPendingIntent"    # Landroid/app/PendingIntent;
    .param p10, "rightSlidingPendingIntent"    # Landroid/app/PendingIntent;
    .param p11, "bottomSlidingPendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 3390
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 3391
    iput p2, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->viewId:I

    .line 3392
    iput p3, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftThresHold:I

    .line 3393
    iput p4, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topThresHold:I

    .line 3394
    iput p5, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightThresHold:I

    .line 3395
    iput p6, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomThresHold:I

    .line 3396
    iput-object p7, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    .line 3397
    iput-object p8, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftSlidingPendingIntent:Landroid/app/PendingIntent;

    .line 3398
    iput-object p9, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topSlidingPendingIntent:Landroid/app/PendingIntent;

    .line 3399
    iput-object p10, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightSlidingPendingIntent:Landroid/app/PendingIntent;

    .line 3400
    iput-object p11, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomSlidingPendingIntent:Landroid/app/PendingIntent;

    .line 3401
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 3403
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 3404
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->viewId:I

    .line 3405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftThresHold:I

    .line 3406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topThresHold:I

    .line 3407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightThresHold:I

    .line 3408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomThresHold:I

    .line 3409
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3410
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    .line 3412
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3413
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftSlidingPendingIntent:Landroid/app/PendingIntent;

    .line 3415
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3416
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topSlidingPendingIntent:Landroid/app/PendingIntent;

    .line 3418
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3419
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightSlidingPendingIntent:Landroid/app/PendingIntent;

    .line 3421
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 3422
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomSlidingPendingIntent:Landroid/app/PendingIntent;

    .line 3424
    :cond_4
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 3457
    const/4 v1, 0x0

    .line 3458
    .local v1, "touchListener":Landroid/view/View$OnTouchListener;
    iget v2, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3459
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftSlidingPendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topSlidingPendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightSlidingPendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomSlidingPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 3461
    :cond_0
    new-instance v1, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;

    .end local v1    # "touchListener":Landroid/view/View$OnTouchListener;
    invoke-direct {v1, p0, p3}, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent$1;-><init>(Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3523
    .restart local v1    # "touchListener":Landroid/view/View$OnTouchListener;
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3525
    :cond_1
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3528
    const-string v0, "SetOnSlidingPendingIntent"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3427
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3428
    iget v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3429
    iget v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftThresHold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3430
    iget v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topThresHold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3431
    iget v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightThresHold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3432
    iget v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomThresHold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3433
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3434
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 3435
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3437
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftSlidingPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3438
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftSlidingPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 3439
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->leftSlidingPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3441
    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topSlidingPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3442
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topSlidingPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 3443
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->topSlidingPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3445
    :cond_2
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightSlidingPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3446
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightSlidingPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 3447
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->rightSlidingPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3449
    :cond_3
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomSlidingPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_9

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3450
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomSlidingPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4

    .line 3451
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSlidingPendingIntent;->bottomSlidingPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3453
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 3433
    goto :goto_0

    :cond_6
    move v0, v2

    .line 3437
    goto :goto_1

    :cond_7
    move v0, v2

    .line 3441
    goto :goto_2

    :cond_8
    move v0, v2

    .line 3445
    goto :goto_3

    :cond_9
    move v1, v2

    .line 3449
    goto :goto_4
.end method
