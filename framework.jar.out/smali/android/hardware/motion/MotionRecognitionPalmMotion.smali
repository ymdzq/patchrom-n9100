.class public Landroid/hardware/motion/MotionRecognitionPalmMotion;
.super Ljava/lang/Object;
.source "MotionRecognitionPalmMotion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;,
        Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;,
        Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;,
        Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;,
        Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmMotionInputEventReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final GESUTRE_LOGGING_APP_ID:Ljava/lang/String; = "com.android.server.palmMotion"

.field private static final GESUTRE_LOGGING_FEATURE:Ljava/lang/String; = "PALM"

.field private static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final SWEEP_DOWN:I = 0x3

.field private static final SWEEP_LEFT:I = 0x2

.field private static final SWEEP_RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PalmMotion"

.field private static g_IsBootCompleted:Z

.field private static mInputManager:Landroid/hardware/input/InputManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGestureSurfaceTouch:Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;

.field mLockScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mPalmMotionInputChannel:Landroid/view/InputChannel;

.field private mPalmMotionInputEventReceiver:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmMotionInputEventReceiver;

.field private mPalmMotionRecognizer:Z

.field private mPalmObserver:Landroid/database/ContentObserver;

.field private mPalmSweepRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;

.field private mPalmTouchRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;

.field mSIPKeyboardReceiver:Landroid/content/BroadcastReceiver;

.field private mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

.field private mUseGestureDetectorTouchEventEx:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "ro.debuggable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->DEBUG:Z

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->g_IsBootCompleted:Z

    .line 61
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mInputManager:Landroid/hardware/input/InputManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mUseGestureDetectorTouchEventEx:Z

    .line 58
    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmMotionRecognizer:Z

    .line 62
    iput-object v4, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmMotionInputEventReceiver:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmMotionInputEventReceiver;

    .line 759
    new-instance v0, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$1;-><init>(Landroid/hardware/motion/MotionRecognitionPalmMotion;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmObserver:Landroid/database/ContentObserver;

    .line 785
    new-instance v0, Landroid/hardware/motion/MotionRecognitionPalmMotion$2;

    invoke-direct {v0, p0}, Landroid/hardware/motion/MotionRecognitionPalmMotion$2;-><init>(Landroid/hardware/motion/MotionRecognitionPalmMotion;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 797
    new-instance v0, Landroid/hardware/motion/MotionRecognitionPalmMotion$3;

    invoke-direct {v0, p0}, Landroid/hardware/motion/MotionRecognitionPalmMotion$3;-><init>(Landroid/hardware/motion/MotionRecognitionPalmMotion;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSIPKeyboardReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    .line 67
    const-string v0, "PalmMotion"

    const-string v1, "PalmMotion(context)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    sput-object v0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mInputManager:Landroid/hardware/input/InputManager;

    .line 69
    new-instance v0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;

    invoke-direct {v0, p0, v4}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;-><init>(Landroid/hardware/motion/MotionRecognitionPalmMotion;Landroid/hardware/motion/MotionRecognitionPalmMotion$1;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmSweepRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;

    .line 70
    new-instance v0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;

    invoke-direct {v0, p0, v4}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;-><init>(Landroid/hardware/motion/MotionRecognitionPalmMotion;Landroid/hardware/motion/MotionRecognitionPalmMotion$1;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmTouchRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;

    .line 71
    new-instance v0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    invoke-direct {v0, p0, v4}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;-><init>(Landroid/hardware/motion/MotionRecognitionPalmMotion;Landroid/hardware/motion/MotionRecognitionPalmMotion$1;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    .line 72
    new-instance v0, Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;

    invoke-direct {v0, p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mGestureSurfaceTouch:Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;

    .line 73
    sget-object v0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mInputManager:Landroid/hardware/input/InputManager;

    const-string v1, "PalmMotion"

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmMotionInputChannel:Landroid/view/InputChannel;

    .line 74
    sget-object v0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmMotionInputChannel:Landroid/view/InputChannel;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->setMonitorChannelFilter(Landroid/view/InputChannel;I)V

    .line 77
    new-instance v0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmMotionInputEventReceiver;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmMotionInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmMotionInputEventReceiver;-><init>(Landroid/hardware/motion/MotionRecognitionPalmMotion;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmMotionInputEventReceiver:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmMotionInputEventReceiver;

    .line 78
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->SetContentObserver()V

    .line 80
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 83
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "ResponseAxT9Info"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSIPKeyboardReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 86
    return-void
.end method

.method private SetContentObserver()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 732
    const-string v1, "PalmMotion"

    const-string v2, "[Surface Touch] SetContentObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_motion_engine"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 735
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_merged_mute_pause"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 736
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_palm_touch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 737
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "surface_motion_engine"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    .line 738
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_merged_mute_pause"

    invoke-static {v1, v2, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 739
    .local v0, "settingMutePause":I
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "surface_palm_touch"

    invoke-static {v2, v3, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmTouch:I

    .line 740
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    iget v2, v2, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmTouch:I

    and-int/2addr v2, v0

    iput v2, v1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmTouch:I

    .line 755
    .end local v0    # "settingMutePause":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_palm_swipe"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 756
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "surface_palm_swipe"

    invoke-static {v2, v3, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmSweep:I

    .line 757
    return-void

    .line 742
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 743
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_motion_engine"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 744
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_palm_touch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 745
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "surface_motion_engine"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    .line 746
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "surface_palm_touch"

    invoke-static {v2, v3, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmTouch:I

    goto :goto_0

    .line 749
    :cond_1
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 750
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_palm_touch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 751
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    .line 752
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "surface_palm_touch"

    invoke-static {v2, v3, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmTouch:I

    goto/16 :goto_0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mGestureSurfaceTouch:Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmTouchRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion;

    .prologue
    .line 43
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mUseGestureDetectorTouchEventEx:Z

    return v0
.end method

.method static synthetic access$302(Landroid/hardware/motion/MotionRecognitionPalmMotion;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mUseGestureDetectorTouchEventEx:Z

    return p1
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->g_IsBootCompleted:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 43
    sput-boolean p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->g_IsBootCompleted:Z

    return p0
.end method

.method static synthetic access$500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmSweepRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;

    return-object v0
.end method

.method static synthetic access$902(Landroid/hardware/motion/MotionRecognitionPalmMotion;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionPalmMotion;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmMotionRecognizer:Z

    return p1
.end method


# virtual methods
.method public onTouchEvent_ex(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 685
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    if-ne v0, v2, :cond_7

    .line 688
    :cond_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    invoke-virtual {v0, p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->PreUpdate(Landroid/view/MotionEvent;)V

    .line 690
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmMotionRecognizer:Z

    if-nez v0, :cond_1

    .line 691
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v1, 0x42200000    # 40.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 692
    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmMotionRecognizer:Z

    .line 696
    :cond_1
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mAction:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mAction:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    .line 697
    :cond_2
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    invoke-virtual {v0}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Initialize()V

    .line 698
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmSweep:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmSweepRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->Initialize(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)V

    .line 699
    :cond_3
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmTouch:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmTouchRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->Initialize(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)V

    .line 702
    :cond_4
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmMotionRecognizer:Z

    if-ne v0, v2, :cond_7

    .line 703
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    invoke-virtual {v0, p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Update(Landroid/view/MotionEvent;)V

    .line 704
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmTouch:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmTouchRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->Process(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)V

    .line 705
    :cond_5
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmSweep:I

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmSweepRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->Process(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)V

    .line 707
    :cond_6
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmSweepRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmSweepRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepDown:Z
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->access$800(Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;)Z

    move-result v1

    # setter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mPreSweepDown:Z
    invoke-static {v0, v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->access$702(Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;Z)Z

    .line 709
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mAction:I

    if-ne v0, v2, :cond_7

    .line 711
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmSweepRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;

    # setter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepDown:Z
    invoke-static {v0, v3}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->access$802(Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;Z)Z

    .line 712
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmTouchRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;

    # setter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->mPalmDown:Z
    invoke-static {v0, v3}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->access$2402(Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;Z)Z

    .line 713
    iput-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmMotionRecognizer:Z

    .line 718
    :cond_7
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmSweep:I

    if-eq v0, v2, :cond_8

    .line 720
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmSweepRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;

    # setter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->mSweepDown:Z
    invoke-static {v0, v3}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->access$802(Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;Z)Z

    .line 723
    :cond_8
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mSurfaceTouchSharingData:Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mSettingPalmTouch:I

    if-eq v0, v2, :cond_9

    .line 725
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmTouchRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;

    # setter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->mPalmDown:Z
    invoke-static {v0, v3}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->access$2402(Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;Z)Z

    .line 728
    :cond_9
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmSweepRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;

    invoke-virtual {v0}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->getSweepDown()Z

    move-result v0

    return v0
.end method
