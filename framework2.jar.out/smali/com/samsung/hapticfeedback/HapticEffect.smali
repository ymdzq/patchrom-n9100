.class public Lcom/samsung/hapticfeedback/HapticEffect;
.super Ljava/lang/Object;
.source "HapticEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;
    }
.end annotation


# static fields
.field public static final BRUSH:I = 0x2

.field public static final CHINESE_BRUSH:I = 0x1

.field public static final INK:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "HapticEffect"

.field public static final MARKER:I = 0x4

.field public static final PENCIL:I = 0x0

.field public static final STYLE_DEFAULT_STYLE:I = 0x1

.field public static final STYLE_SHARP:I = 0x2

.field public static final STYLE_SMOOTH:I = 0x0

.field public static final STYLE_STRONG:I = 0x1


# instance fields
.field private InsLevel:I

.field private MDRatio:J

.field private aa:D

.field private aa1:D

.field private aa2:D

.field private distance:D

.field private effectStrength:I

.field private imm_devHandle:Lcom/immersion/EffectHandle;

.field private levelToMagnitude:[I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mDevice:Lcom/immersion/Device;

.field private mDeviceLevel:I

.field private mEnableInSettingMenu:Z

.field private mIVTBuffer:Lcom/immersion/IVTBuffer;

.field private mIVTPack:Lcom/samsung/hapticfeedback/effect/IVTPack;

.field private mImmVibe:Lcom/immersion/android/ImmVibe;

.field private mImmVibeTouchMagnitude:I

.field private mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

.field private mTemp:I

.field private m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

.field private magnitudeLevel:I

.field private maxDistance:D

.field private maxMagnitude:I

.field private returnValue:Lcom/immersion/EffectHandle;

.field private timeLineIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->effectStrength:I

    .line 88
    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibe:Lcom/immersion/android/ImmVibe;

    .line 89
    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    .line 90
    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->imm_devHandle:Lcom/immersion/EffectHandle;

    .line 91
    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->timeLineIndex:I

    .line 94
    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContentResolver:Landroid/content/ContentResolver;

    .line 95
    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContext:Landroid/content/Context;

    .line 97
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->levelToMagnitude:[I

    .line 99
    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    .line 100
    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibeTouchMagnitude:I

    .line 102
    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mTemp:I

    .line 105
    const/16 v0, 0x2710

    iput v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->maxMagnitude:I

    .line 112
    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->InsLevel:I

    .line 113
    iput v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mCount:I

    .line 117
    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    .line 118
    iput-boolean v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/hapticfeedback/HapticEffect;->InitializeLib(Landroid/content/Context;)V

    .line 126
    return-void

    .line 97
    nop

    :array_0
    .array-data 4
        0x0
        0xbb8
        0x1194
        0x1770
        0x1f40
        0x2710
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display_width"    # I
    .param p3, "display_height"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v5, p0, Lcom/samsung/hapticfeedback/HapticEffect;->effectStrength:I

    .line 88
    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibe:Lcom/immersion/android/ImmVibe;

    .line 89
    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    .line 90
    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->imm_devHandle:Lcom/immersion/EffectHandle;

    .line 91
    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->timeLineIndex:I

    .line 94
    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContentResolver:Landroid/content/ContentResolver;

    .line 95
    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContext:Landroid/content/Context;

    .line 97
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->levelToMagnitude:[I

    .line 99
    iput v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    .line 100
    iput v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibeTouchMagnitude:I

    .line 102
    iput v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mTemp:I

    .line 105
    const/16 v0, 0x2710

    iput v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->maxMagnitude:I

    .line 112
    iput v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->InsLevel:I

    .line 113
    iput v5, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mCount:I

    .line 117
    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    .line 118
    iput-boolean v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    .line 132
    if-eqz p1, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lcom/samsung/hapticfeedback/HapticEffect;->InitializeLib(Landroid/content/Context;)V

    .line 135
    mul-int v0, p2, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int v1, p3, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->maxDistance:D

    .line 137
    iget v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->maxMagnitude:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->maxDistance:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->MDRatio:J

    .line 139
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    invoke-direct {v0, p0, v4}, Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;-><init>(Lcom/samsung/hapticfeedback/HapticEffect;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    .line 141
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;->setContext(Landroid/content/Context;)V

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/samsung/hapticfeedback/HapticEffect;->isEnableSettingMenu(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    .line 148
    :cond_0
    return-void

    .line 97
    :array_0
    .array-data 4
        0x0
        0xbb8
        0x1194
        0x1770
        0x1f40
        0x2710
    .end array-data
.end method

.method private InitializeLib(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 152
    iput-object p1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContext:Landroid/content/Context;

    .line 153
    new-instance v0, Lcom/samsung/hapticfeedback/effect/IVTPack;

    invoke-direct {v0}, Lcom/samsung/hapticfeedback/effect/IVTPack;-><init>()V

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTPack:Lcom/samsung/hapticfeedback/effect/IVTPack;

    .line 154
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContentResolver:Landroid/content/ContentResolver;

    .line 157
    :try_start_0
    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    new-instance v0, Lcom/immersion/MagSweepEffectDefinition;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/immersion/MagSweepEffectDefinition;-><init>(IIIIIIII)V

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    .line 163
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    .line 164
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setMagnitude(I)V

    .line 165
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    .line 166
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    .line 167
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    .line 168
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    .line 169
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    .line 171
    return-void

    .line 158
    :catch_0
    move-exception v9

    .line 159
    .local v9, "x":Ljava/lang/RuntimeException;
    const-string v0, "HapticEffect"

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/samsung/hapticfeedback/HapticEffect;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/hapticfeedback/HapticEffect;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/hapticfeedback/HapticEffect;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/hapticfeedback/HapticEffect;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/hapticfeedback/HapticEffect;->isEnableSettingMenu(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isEnableSettingMenu(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 586
    if-eqz p1, :cond_0

    .line 588
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "psm_haptic_feedback"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 596
    :cond_0
    :goto_0
    return v0

    .line 591
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "spen_feedback_haptic"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pen_writing_haptic_feedback"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 593
    goto :goto_0
.end method

.method private setMagtAttributes()V
    .locals 11

    .prologue
    const/16 v5, 0xfa0

    const/4 v4, 0x5

    const-wide v9, 0x40c3880000000000L    # 10000.0

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    const/4 v8, 0x0

    .line 359
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mTemp:I

    .line 360
    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mTemp:I

    iget v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    if-eq v2, v3, :cond_0

    .line 361
    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mTemp:I

    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    .line 362
    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    if-le v2, v4, :cond_3

    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    :goto_0
    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibeTouchMagnitude:I

    .line 368
    :cond_0
    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    double-to-int v2, v2

    if-ge v2, v5, :cond_4

    .line 369
    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    iget v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibeTouchMagnitude:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v9

    iput-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    .line 370
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    .line 371
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    iget-wide v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    mul-double/2addr v3, v6

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/immersion/MagSweepEffectDefinition;->setMagnitude(I)V

    .line 372
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    .line 373
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    .line 374
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    .line 375
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    .line 376
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    .line 413
    :cond_1
    :goto_1
    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibeTouchMagnitude:I

    if-eqz v2, :cond_2

    .line 416
    :try_start_0
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v3}, Lcom/immersion/Device;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :cond_2
    :goto_2
    return-void

    .line 362
    :cond_3
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->levelToMagnitude:[I

    iget v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    aget v2, v2, v3

    goto :goto_0

    .line 380
    :cond_4
    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    double-to-int v2, v2

    if-lt v2, v5, :cond_1

    .line 381
    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 382
    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibeTouchMagnitude:I

    mul-int/lit16 v2, v2, 0xfa0

    div-int/lit16 v2, v2, 0x2710

    int-to-double v2, v2

    iput-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa1:D

    .line 383
    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa1:D

    mul-double/2addr v2, v6

    iput-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa2:D

    .line 385
    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    cmpl-double v2, v2, v9

    if-lez v2, :cond_5

    .line 386
    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa1:D

    iput-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    .line 393
    :goto_3
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    .line 394
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    iget-wide v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/immersion/MagSweepEffectDefinition;->setMagnitude(I)V

    .line 395
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    .line 396
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    .line 397
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    .line 398
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    .line 399
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    .line 402
    iput v8, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mCount:I

    goto :goto_1

    .line 390
    :cond_5
    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa1:D

    neg-double v2, v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa1:D

    iget-wide v6, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa2:D

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    mul-double/2addr v4, v6

    const-wide v6, 0x40b7700000000000L    # 6000.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    goto :goto_3

    .line 407
    :cond_6
    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mCount:I

    goto :goto_1

    .line 417
    :catch_0
    move-exception v1

    .line 418
    .local v1, "x":Ljava/lang/RuntimeException;
    const-string v2, "HapticEffect"

    const-string v3, "Haptic Service Error Detected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 421
    :try_start_1
    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 422
    :catch_1
    move-exception v0

    .line 423
    .local v0, "k":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2
.end method


# virtual methods
.method public closeDevice()V
    .locals 3

    .prologue
    .line 540
    :try_start_0
    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    invoke-virtual {v1}, Lcom/immersion/Device;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 546
    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 547
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    .line 549
    :cond_0
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "x":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public geCurrenttMagEffectType()Lcom/immersion/MagSweepEffectDefinition;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    return-object v0
.end method

.method public getDeviceLv()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDeviceLevel:I

    return v0
.end method

.method public getMDRatio()D
    .locals 2

    .prologue
    .line 299
    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->MDRatio:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public playEffect()V
    .locals 4

    .prologue
    .line 234
    iget v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->timeLineIndex:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    iget v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->timeLineIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->imm_devHandle:Lcom/immersion/EffectHandle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "x":Ljava/lang/RuntimeException;
    const-string v1, "HapticEffect"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    .end local v0    # "x":Ljava/lang/RuntimeException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->imm_devHandle:Lcom/immersion/EffectHandle;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 243
    :catch_1
    move-exception v0

    .line 244
    .restart local v0    # "x":Ljava/lang/RuntimeException;
    const-string v1, "HapticEffect"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playEffect(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    invoke-virtual {v1, v2, p1}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->imm_devHandle:Lcom/immersion/EffectHandle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "x":Ljava/lang/RuntimeException;
    const-string v1, "HapticEffect"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playEffect(Lcom/immersion/MagSweepEffectDefinition;)V
    .locals 1
    .param p1, "mEffectDef"    # Lcom/immersion/MagSweepEffectDefinition;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    invoke-virtual {v0, p1}, Lcom/immersion/Device;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;

    .line 276
    return-void
.end method

.method public playEffect(Lcom/immersion/PeriodicEffectDefinition;)V
    .locals 1
    .param p1, "mEffectDef"    # Lcom/immersion/PeriodicEffectDefinition;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    invoke-virtual {v0, p1}, Lcom/immersion/Device;->playPeriodicEffect(Lcom/immersion/PeriodicEffectDefinition;)Lcom/immersion/EffectHandle;

    .line 268
    return-void
.end method

.method public playEffectByDistance(D)V
    .locals 4
    .param p1, "distance"    # D

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    if-eqz v0, :cond_0

    .line 444
    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->MDRatio:J

    long-to-double v0, v0

    mul-double v2, p1, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    .line 445
    invoke-direct {p0}, Lcom/samsung/hapticfeedback/HapticEffect;->setMagtAttributes()V

    .line 447
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/Device;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;

    goto :goto_0
.end method

.method public playEffectByDistance(DF)V
    .locals 4
    .param p1, "dist"    # D
    .param p3, "Pr"    # F

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    if-eqz v0, :cond_0

    .line 463
    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->MDRatio:J

    long-to-double v0, v0

    mul-double v2, p1, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    .line 464
    invoke-direct {p0}, Lcom/samsung/hapticfeedback/HapticEffect;->setMagtAttributes()V

    .line 466
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/Device;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;

    goto :goto_0
.end method

.method public playEffectByDistance(FFFF)V
    .locals 6
    .param p1, "oldX"    # F
    .param p2, "oldY"    # F
    .param p3, "newX"    # F
    .param p4, "newY"    # F

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    if-eqz v0, :cond_0

    .line 482
    sub-float v0, p3, p1

    sub-float v1, p3, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p4, p2

    sub-float v2, p4, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    .line 484
    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 487
    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->MDRatio:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    iget-wide v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    mul-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    .line 488
    invoke-direct {p0}, Lcom/samsung/hapticfeedback/HapticEffect;->setMagtAttributes()V

    goto :goto_0
.end method

.method public playEffectByDistance(FFFFF)V
    .locals 6
    .param p1, "oldX"    # F
    .param p2, "oldY"    # F
    .param p3, "newX"    # F
    .param p4, "newY"    # F
    .param p5, "Pr"    # F

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    if-eqz v0, :cond_0

    .line 499
    sub-float v0, p3, p1

    sub-float v1, p3, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p4, p2

    sub-float v2, p4, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    .line 501
    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->MDRatio:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    iget-wide v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    mul-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    .line 502
    invoke-direct {p0}, Lcom/samsung/hapticfeedback/HapticEffect;->setMagtAttributes()V

    .line 504
    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/Device;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;

    goto :goto_0
.end method

.method public playMagEffect()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/Device;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;

    .line 284
    return-void
.end method

.method public setEffectType(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "buf":[B
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 206
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    .line 208
    :cond_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 216
    if-eqz v4, :cond_1

    .line 217
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v3, v4

    .line 224
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/hapticfeedback/HapticEffect;->setEffectType([B)V

    .line 226
    return-void

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v5, "HapticEffect"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 216
    if-eqz v3, :cond_2

    .line 217
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 219
    :catch_1
    move-exception v1

    .line 220
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "HapticEffect"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 215
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 216
    :goto_3
    if-eqz v3, :cond_3

    .line 217
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 215
    :cond_3
    :goto_4
    throw v5

    .line 219
    :catch_2
    move-exception v1

    .line 220
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "HapticEffect"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 219
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 220
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "HapticEffect"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 212
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public setEffectType([B)V
    .locals 4
    .param p1, "buf"    # [B

    .prologue
    .line 186
    new-instance v3, Lcom/immersion/IVTBuffer;

    invoke-direct {v3, p1}, Lcom/immersion/IVTBuffer;-><init>([B)V

    iput-object v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    .line 187
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->timeLineIndex:I

    .line 188
    iget-object v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    invoke-virtual {v3}, Lcom/immersion/IVTBuffer;->getEffectCount()I

    move-result v1

    .line 189
    .local v1, "m_cEffects":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 190
    iget-object v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    invoke-virtual {v3, v0}, Lcom/immersion/IVTBuffer;->getEffectType(I)I

    move-result v2

    .line 191
    .local v2, "nEffectType":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 192
    iput v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->timeLineIndex:I

    .line 189
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .end local v2    # "nEffectType":I
    :cond_1
    return-void
.end method

.method public setIntensityLevel(I)V
    .locals 0
    .param p1, "Level"    # I

    .prologue
    .line 353
    iput p1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->InsLevel:I

    .line 355
    return-void
.end method

.method public setMagEffectType(IIIIII)V
    .locals 1
    .param p1, "Duration"    # I
    .param p2, "AttackLevel"    # I
    .param p3, "AttackTime"    # I
    .param p4, "FadeLevel"    # I
    .param p5, "FadeTime"    # I
    .param p6, "Style"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p1}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    .line 321
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p2}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    .line 322
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p3}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    .line 323
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p4}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    .line 324
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p5}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    .line 325
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p6}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    .line 326
    return-void
.end method

.method public setMagEffectType(Lcom/immersion/MagSweepEffectDefinition;)V
    .locals 2
    .param p1, "mEffectDef"    # Lcom/immersion/MagSweepEffectDefinition;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    .line 334
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    .line 335
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    .line 336
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    .line 337
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    .line 338
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    .line 339
    return-void
.end method

.method public setMagEffectType([I)V
    .locals 2
    .param p1, "Type"    # [I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    .line 308
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    .line 309
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    .line 310
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x3

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    .line 311
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x4

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    .line 312
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x5

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    .line 313
    return-void
.end method

.method public setMagIntensity(I)V
    .locals 1
    .param p1, "Magnitude"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p1}, Lcom/immersion/MagSweepEffectDefinition;->setMagnitude(I)V

    .line 347
    return-void
.end method

.method public setPlayEffectStrength(I)V
    .locals 0
    .param p1, "str"    # I

    .prologue
    .line 435
    iput p1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->effectStrength:I

    .line 436
    return-void
.end method

.method public stopAllEffect()V
    .locals 4

    .prologue
    .line 521
    :try_start_0
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    invoke-virtual {v2}, Lcom/immersion/Device;->stopAllPlayingEffects()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v1

    .line 523
    .local v1, "x":Ljava/lang/RuntimeException;
    const-string v2, "HapticEffect"

    const-string v3, "Haptic Service Error Detected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 526
    :try_start_1
    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 527
    :catch_1
    move-exception v0

    .line 528
    .local v0, "k":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
