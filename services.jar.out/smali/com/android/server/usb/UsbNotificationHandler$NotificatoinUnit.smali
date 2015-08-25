.class Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
.super Ljava/lang/Object;
.source "UsbNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbNotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificatoinUnit"
.end annotation


# instance fields
.field private mCurrentNofication:Z

.field private final mDismissable:Z

.field private mExpandedIcon1:I

.field private mExpandedIcon2:I

.field private mExpandedIntent1:Landroid/app/PendingIntent;

.field private mExpandedIntent2:Landroid/app/PendingIntent;

.field private mExpandedTitleId1:I

.field private mExpandedTitleId2:I

.field private final mIcon:I

.field private final mId:I

.field private final mMessageId:I

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mStayNofiBar:Z

.field private final mTitleId:I

.field private final mVisible:Z

.field private final mszId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/usb/UsbNotificationHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbNotificationHandler;IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIIZLjava/lang/String;)V
    .locals 1
    .param p2, "titleId"    # I
    .param p3, "messageId"    # I
    .param p4, "icon"    # I
    .param p5, "visible"    # Z
    .param p6, "dismissable"    # Z
    .param p7, "expandedIntent1"    # Landroid/app/PendingIntent;
    .param p8, "expandedIntent2"    # Landroid/app/PendingIntent;
    .param p9, "expandedTitleId1"    # I
    .param p10, "expandedTitleId2"    # I
    .param p11, "expandedIcon1"    # I
    .param p12, "expandedIcon2"    # I
    .param p13, "bstay"    # Z
    .param p14, "device"    # Ljava/lang/String;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mCurrentNofication:Z

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent1:Landroid/app/PendingIntent;

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent2:Landroid/app/PendingIntent;

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId1:I

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId2:I

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon1:I

    .line 361
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon2:I

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 370
    iput p2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mTitleId:I

    .line 371
    iput p3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mMessageId:I

    .line 372
    iput p4, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mIcon:I

    .line 373
    iput-boolean p5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mVisible:Z

    .line 374
    iput-boolean p6, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mDismissable:Z

    .line 375
    iput-object p14, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mszId:Ljava/lang/String;

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mCurrentNofication:Z

    .line 377
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mszId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mId:I

    .line 378
    iput-boolean p13, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mStayNofiBar:Z

    .line 380
    iput-object p7, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent1:Landroid/app/PendingIntent;

    .line 381
    iput-object p8, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent2:Landroid/app/PendingIntent;

    .line 382
    iput p9, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId1:I

    .line 383
    iput p10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId2:I

    .line 384
    iput p11, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon1:I

    .line 385
    iput p12, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon2:I

    .line 386
    return-void
.end method

.method private declared-synchronized setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIILjava/lang/String;)V
    .locals 16
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "icon"    # I
    .param p4, "visible"    # Z
    .param p5, "dismissable"    # Z
    .param p6, "expandedIntent1"    # Landroid/app/PendingIntent;
    .param p7, "expandedIntent2"    # Landroid/app/PendingIntent;
    .param p8, "expandedTitleId1"    # I
    .param p9, "expandedTitleId2"    # I
    .param p10, "expandedIcon1"    # I
    .param p11, "expandedIcon2"    # I
    .param p12, "device"    # Ljava/lang/String;

    .prologue
    .line 426
    monitor-enter p0

    if-nez p4, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 513
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 430
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/usb/UsbNotificationHandler;->access$200(Lcom/android/server/usb/UsbNotificationHandler;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 432
    .local v11, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v11, :cond_0

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    if-eqz v2, :cond_2

    if-eqz p4, :cond_2

    .line 442
    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->hashCode()I

    move-result v10

    .line 443
    .local v10, "notificationId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUsbObserverNotification : cancel id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", device = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v2, v10, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 450
    .end local v10    # "notificationId":I
    :cond_2
    if-eqz p4, :cond_5

    .line 451
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 452
    .local v12, "r":Landroid/content/res/Resources;
    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 453
    .local v15, "title":Ljava/lang/CharSequence;
    if-nez p2, :cond_6

    .line 454
    new-instance v8, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 460
    .local v8, "message":Ljava/lang/CharSequence;
    :goto_1
    new-instance v2, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/usb/UsbNotificationHandler;->access$200(Lcom/android/server/usb/UsbNotificationHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 464
    if-eqz p5, :cond_7

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 472
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v15}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 482
    if-eqz p6, :cond_8

    if-eqz p7, :cond_8

    .line 483
    const/4 v13, 0x0

    .line 484
    .local v13, "subtitle1":Ljava/lang/CharSequence;
    const/4 v14, 0x0

    .line 486
    .local v14, "subtitle2":Ljava/lang/CharSequence;
    if-eqz p8, :cond_3

    .line 487
    move/from16 v0, p8

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 490
    :cond_3
    if-eqz p9, :cond_4

    .line 491
    move/from16 v0, p9

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 493
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move/from16 v0, p10

    move-object/from16 v1, p6

    invoke-virtual {v2, v0, v13, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move/from16 v0, p11

    move-object/from16 v1, p7

    invoke-virtual {v2, v0, v14, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 505
    .end local v8    # "message":Ljava/lang/CharSequence;
    .end local v12    # "r":Landroid/content/res/Resources;
    .end local v13    # "subtitle1":Ljava/lang/CharSequence;
    .end local v14    # "subtitle2":Ljava/lang/CharSequence;
    .end local v15    # "title":Ljava/lang/CharSequence;
    :cond_5
    :goto_3
    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->hashCode()I

    move-result v10

    .line 506
    .restart local v10    # "notificationId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUsbObserverNotification : cancel id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", device = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v2, v10, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 508
    if-eqz p4, :cond_0

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 510
    .local v9, "noti":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUsbObserverNotification : notify id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", device = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", title = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v2, v10, v9, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 426
    .end local v9    # "noti":Landroid/app/Notification;
    .end local v10    # "notificationId":I
    .end local v11    # "notificationManager":Landroid/app/NotificationManager;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 456
    .restart local v11    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v12    # "r":Landroid/content/res/Resources;
    .restart local v15    # "title":Ljava/lang/CharSequence;
    :cond_6
    :try_start_2
    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .restart local v8    # "message":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 468
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    .line 495
    :cond_8
    if-eqz p6, :cond_9

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    .line 497
    :cond_9
    if-nez p6, :cond_5

    .line 498
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 499
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/usb/UsbNotificationHandler;->access$200(Lcom/android/server/usb/UsbNotificationHandler;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p6

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method


# virtual methods
.method public clearNotification()V
    .locals 13

    .prologue
    .line 406
    iget v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mTitleId:I

    iget v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mMessageId:I

    iget v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mIcon:I

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mDismissable:Z

    iget-object v6, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent1:Landroid/app/PendingIntent;

    iget-object v7, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent2:Landroid/app/PendingIntent;

    iget v8, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId1:I

    iget v9, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId2:I

    iget v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon1:I

    iget v11, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon2:I

    iget-object v12, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mszId:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIILjava/lang/String;)V

    .line 409
    return-void
.end method

.method public getNotificationStayed()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mStayNofiBar:Z

    return v0
.end method

.method public getStringId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mszId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 396
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 397
    .local v0, "r":Landroid/content/res/Resources;
    iget v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mTitleId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setNotificationStayed(Z)V
    .locals 0
    .param p1, "stay"    # Z

    .prologue
    .line 389
    iput-boolean p1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mStayNofiBar:Z

    .line 390
    return-void
.end method

.method public setObserverNotification()V
    .locals 13

    .prologue
    .line 412
    iget v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mTitleId:I

    iget v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mMessageId:I

    iget v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mIcon:I

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mDismissable:Z

    iget-object v6, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent1:Landroid/app/PendingIntent;

    iget-object v7, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent2:Landroid/app/PendingIntent;

    iget v8, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId1:I

    iget v9, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId2:I

    iget v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon1:I

    iget v11, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon2:I

    iget-object v12, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mszId:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIILjava/lang/String;)V

    .line 415
    return-void
.end method
