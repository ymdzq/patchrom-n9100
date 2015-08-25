.class public abstract Landroid/hardware/motion/MotionRecognitionSettings;
.super Ljava/lang/Object;
.source "MotionRecognitionSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_MOTIONS_SETTINGS_CHANGED:Ljava/lang/String; = "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

.field public static final CONFIG_READ_SETTINGS:Z = true

.field public static final PANNING_ICON:I = 0x1

.field public static final PANNING_IMAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionService"


# instance fields
.field private mCurrentEnabledMotions:I

.field private mCurrentMotionSettings:I

.field private final mLock:Ljava/lang/Object;

.field private mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

.field private mRegisteredMotions:I

.field private mRegisteredMotionsforOpen:I

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    .line 57
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mLock:Ljava/lang/Object;

    .line 60
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotions:I

    .line 61
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotionsforOpen:I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 66
    new-instance v0, Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-direct {v0, p0, p2}, Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;-><init>(Landroid/hardware/motion/MotionRecognitionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    .line 68
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_engine"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 71
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_shake"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 73
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_pick_up"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 75
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_overturn"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 77
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_merged_mute_pause"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 79
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_zooming"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 81
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_tilt_to_list_scrolling"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 83
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_pan_to_browse_image"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 86
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_panning"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 88
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_double_tap"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 90
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_unlock_camera_short_cut"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 92
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_pick_up_to_call_out"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 94
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_motion_tilt_to_unlock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 96
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "smart_scroll"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 101
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_peek_view_albums_list"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 103
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_peek_chapter_preview"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 107
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "master_arc_motion"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 110
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "master_side_motion"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 114
    invoke-virtual {p0}, Landroid/hardware/motion/MotionRecognitionSettings;->updateCurrentSettings()V

    .line 119
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/motion/MotionRecognitionSettings;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionSettings;

    .prologue
    .line 45
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    return v0
.end method

.method static synthetic access$002(Landroid/hardware/motion/MotionRecognitionSettings;I)I
    .locals 0
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionSettings;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    return p1
.end method

.method private getregisteredMotionforEvents(I)I
    .locals 2
    .param p1, "motion"    # I

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "panningEvent":Z
    const/4 v1, 0x0

    .line 385
    .local v1, "registeredEvents":I
    sparse-switch p1, :sswitch_data_0

    .line 427
    :goto_0
    if-eqz v0, :cond_0

    .line 428
    const v1, 0x80060

    .line 432
    :cond_0
    return v1

    .line 386
    :sswitch_0
    const/16 v1, 0x8

    goto :goto_0

    .line 387
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 389
    :sswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 390
    :sswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 391
    :sswitch_4
    const/16 v1, 0x10

    goto :goto_0

    .line 392
    :sswitch_5
    const/4 v1, 0x4

    goto :goto_0

    .line 393
    :sswitch_6
    const v1, 0x8000

    goto :goto_0

    .line 396
    :sswitch_7
    const/16 v1, 0x400

    goto :goto_0

    .line 412
    :sswitch_8
    const/16 v1, 0x5810

    .line 414
    goto :goto_0

    .line 422
    :sswitch_9
    const/high16 v1, 0x80000

    goto :goto_0

    .line 385
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0x23 -> :sswitch_2
        0x24 -> :sswitch_2
        0x3d -> :sswitch_3
        0x43 -> :sswitch_5
        0x44 -> :sswitch_7
        0x48 -> :sswitch_4
        0x4e -> :sswitch_8
        0x4f -> :sswitch_8
        0x50 -> :sswitch_8
        0x51 -> :sswitch_8
        0x52 -> :sswitch_8
        0x53 -> :sswitch_8
        0x54 -> :sswitch_8
        0x55 -> :sswitch_8
        0x57 -> :sswitch_8
        0x58 -> :sswitch_8
        0x59 -> :sswitch_8
        0x5a -> :sswitch_8
        0x5b -> :sswitch_8
        0x5c -> :sswitch_8
        0x5d -> :sswitch_8
        0x62 -> :sswitch_6
        0x65 -> :sswitch_7
        0x66 -> :sswitch_7
        0x67 -> :sswitch_9
        0x68 -> :sswitch_9
        0x69 -> :sswitch_9
        0x6a -> :sswitch_9
        0x6b -> :sswitch_9
        0x6c -> :sswitch_9
        0x6d -> :sswitch_9
        0x6e -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public getSettingMotionSensitivity(II)I
    .locals 4
    .param p1, "motion"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x5

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "setting":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 224
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 225
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, -0x2

    invoke-static {v2, v0, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 228
    :cond_1
    return v1

    .line 216
    :sswitch_0
    const-string v0, "motion_zooming_sensitivity"

    goto :goto_0

    .line 218
    :sswitch_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    const-string v0, "motion_panning_sensitivity"

    goto :goto_0

    .line 219
    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const-string v0, "motion_pan_to_browse_image_sensitivity"

    goto :goto_0

    .line 215
    :sswitch_data_0
    .sparse-switch
        0x3d -> :sswitch_1
        0x48 -> :sswitch_0
    .end sparse-switch
.end method

.method public getUsedSensorForEvents()I
    .locals 4

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 150
    .local v0, "motion_sensors":I
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquire sensors : Settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    iget v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotions:I

    and-int/2addr v1, v2

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 153
    or-int/lit8 v0, v0, 0x3

    .line 156
    :cond_0
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 159
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    iget v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotions:I

    and-int/2addr v1, v2

    const v2, 0x13fffb

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 179
    or-int/lit8 v0, v0, 0x1

    .line 183
    :cond_1
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    iget v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotions:I

    and-int/2addr v1, v2

    const v2, 0x105ff9

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 197
    or-int/lit8 v0, v0, 0x2

    .line 201
    :cond_2
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    iget v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotions:I

    and-int/2addr v1, v2

    const v2, 0x100c00

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 205
    or-int/lit8 v0, v0, 0x4

    .line 208
    :cond_3
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquired sensors for motion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return v0
.end method

.method public isActivatedEvent(I)Z
    .locals 4
    .param p1, "motion"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 438
    const-string v3, "debug.motion.enabled"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v1, :cond_1

    .line 447
    :cond_0
    :goto_0
    return v1

    .line 441
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionSettings;->getregisteredMotionforEvents(I)I

    move-result v0

    .line 443
    .local v0, "registeredEvents":I
    if-eqz v0, :cond_0

    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    and-int/2addr v3, v0

    if-nez v3, :cond_0

    move v1, v2

    .line 444
    goto :goto_0
.end method

.method public isActivatedMotion(I)Z
    .locals 1
    .param p1, "motionevent"    # I

    .prologue
    .line 453
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 454
    const/4 v0, 0x1

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMotionEngineEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 366
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 370
    .local v1, "isEnabled":Z
    :goto_0
    const-string v3, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .isMotionEngineEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v3, "debug.motion.enabled"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 372
    .local v0, "debugEnabled":Z
    if-eqz v0, :cond_1

    .line 373
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .isMotionEngineEnabled : isEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  debugEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    move v1, v0

    .line 377
    :cond_1
    return v1

    .end local v0    # "debugEnabled":Z
    .end local v1    # "isEnabled":Z
    :cond_2
    move v1, v2

    .line 366
    goto :goto_0
.end method

.method public isOpenAPIMotion(I)Z
    .locals 1
    .param p1, "motionevent"    # I

    .prologue
    .line 463
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotionsforOpen:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 464
    const/4 v0, 0x1

    .line 466
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSettingMotion(I)Z
    .locals 1
    .param p1, "motionevent"    # I

    .prologue
    .line 473
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 474
    const/4 v0, 0x1

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onChangeMotionSettings(II)V
.end method

.method public setRegisteredEvents(I)V
    .locals 0
    .param p1, "registeredmotions"    # I

    .prologue
    .line 123
    iput p1, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotions:I

    .line 124
    return-void
.end method

.method public setRegisteredEvents(II)V
    .locals 3
    .param p1, "registeredmotions"    # I
    .param p2, "registeredmotionsforopen"    # I

    .prologue
    .line 128
    iput p1, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotions:I

    .line 129
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotionsforOpen:I

    if-eq v0, p2, :cond_0

    .line 130
    iput p2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotionsforOpen:I

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    .line 132
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotionsforOpen:I

    if-eqz v0, :cond_1

    .line 133
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotionsforOpen:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    .line 137
    :goto_0
    const-string v0, "MotionRecognitionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "events for open api = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotionsforOpen:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    return-void

    .line 135
    :cond_1
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotionsforOpen:I

    iget v1, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    goto :goto_0
.end method

.method public updateCurrentSettings()V
    .locals 12

    .prologue
    const/high16 v11, 0x200000

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 260
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 262
    const/4 v3, 0x0

    :try_start_0
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    .line 266
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x15

    if-ge v0, v3, :cond_15

    .line 267
    shl-int v1, v4, v0

    .line 269
    .local v1, "motion_event":I
    const/high16 v3, 0x80000

    if-ne v1, v3, :cond_4

    .line 271
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v3, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 266
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_1
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    shl-int v7, v4, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    .line 348
    :cond_2
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-virtual {v3, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_engine"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v3, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 350
    :cond_3
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    or-int/2addr v3, v11

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto :goto_1

    .line 360
    .end local v0    # "i":I
    .end local v1    # "motion_event":I
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 274
    .restart local v0    # "i":I
    .restart local v1    # "motion_event":I
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-virtual {v3, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_engine"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v3, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 276
    :cond_5
    sparse-switch v1, :sswitch_data_0

    goto :goto_2

    .line 279
    :sswitch_0
    const/4 v2, 0x0

    .line 281
    .local v2, "result":I
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_merged_mute_pause"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v3, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_overturn"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    and-int v2, v3, v7

    .line 283
    const-string v3, "MotionRecognitionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Palm motion, result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " motion_event =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    if-eqz v2, :cond_6

    move v3, v4

    :goto_3
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto :goto_2

    :cond_6
    move v3, v5

    goto :goto_3

    .line 292
    .end local v2    # "result":I
    :sswitch_1
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_shake"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_4
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    :cond_7
    move v3, v5

    goto :goto_4

    .line 295
    :sswitch_2
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_double_tap"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_8

    move v3, v4

    :goto_5
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    :cond_8
    move v3, v5

    goto :goto_5

    .line 300
    :sswitch_3
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_zooming"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_9

    move v3, v4

    :goto_6
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    .line 301
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_tilt_to_list_scrolling"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_a

    move v3, v4

    :goto_7
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    :cond_9
    move v3, v5

    .line 300
    goto :goto_6

    :cond_a
    move v3, v5

    .line 301
    goto :goto_7

    .line 304
    :sswitch_4
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_pan_to_browse_image"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_b

    move v3, v4

    :goto_8
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    .line 306
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_peek_view_albums_list"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_c

    move v3, v4

    :goto_9
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    .line 307
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_peek_chapter_preview"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_d

    move v3, v4

    :goto_a
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    :cond_b
    move v3, v5

    .line 304
    goto :goto_8

    :cond_c
    move v3, v5

    .line 306
    goto :goto_9

    :cond_d
    move v3, v5

    .line 307
    goto :goto_a

    .line 311
    :sswitch_5
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_panning"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_e

    move v3, v4

    :goto_b
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    .line 313
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_peek_view_albums_list"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_f

    move v3, v4

    :goto_c
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    .line 314
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_peek_chapter_preview"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_10

    move v3, v4

    :goto_d
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    :cond_e
    move v3, v5

    .line 311
    goto :goto_b

    :cond_f
    move v3, v5

    .line 313
    goto :goto_c

    :cond_10
    move v3, v5

    .line 314
    goto :goto_d

    .line 319
    :sswitch_6
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_unlock_camera_short_cut"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_11

    move v3, v4

    :goto_e
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    :cond_11
    move v3, v5

    goto :goto_e

    .line 323
    :sswitch_7
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_pick_up_to_call_out"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_12

    move v3, v4

    :goto_f
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    :cond_12
    move v3, v5

    goto :goto_f

    .line 326
    :sswitch_8
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "lock_motion_tilt_to_unlock"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_13

    move v3, v4

    :goto_10
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    :cond_13
    move v3, v5

    goto :goto_10

    .line 330
    :sswitch_9
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_pick_up"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_14

    move v3, v4

    :goto_11
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    :cond_14
    move v3, v5

    goto :goto_11

    .line 336
    :sswitch_a
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    shl-int v7, v5, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    .line 340
    :sswitch_b
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    shl-int v7, v4, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    .line 354
    .end local v1    # "motion_event":I
    :cond_15
    const-string v3, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings updated : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    .line 356
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotionsforOpen:I

    if-eqz v3, :cond_16

    .line 357
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget v4, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotionsforOpen:I

    or-int/2addr v3, v4

    or-int/2addr v3, v11

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    .line 358
    const-string v3, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Open API is using motion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_16
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    return-void

    .line 276
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_9
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
        0x100 -> :sswitch_6
        0x200 -> :sswitch_a
        0x400 -> :sswitch_7
        0x800 -> :sswitch_8
        0x1000 -> :sswitch_3
        0x2000 -> :sswitch_a
        0x4000 -> :sswitch_3
        0x8000 -> :sswitch_9
        0x10000 -> :sswitch_a
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_7
        0x100000 -> :sswitch_b
    .end sparse-switch
.end method
