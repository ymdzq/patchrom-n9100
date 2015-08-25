.class public Landroid/hardware/motion/MotionRecognitionService;
.super Landroid/hardware/motion/IMotionRecognitionService$Stub;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/MotionRecognitionService$MyWindowOrientationListener;,
        Landroid/hardware/motion/MotionRecognitionService$EventPool;,
        Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;,
        Landroid/hardware/motion/MotionRecognitionService$Listener;
    }
.end annotation


# static fields
.field private static final ACTION_MOTIONS_SETTINGS_CHANGED:Ljava/lang/String; = "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

.field private static final CONFIG_BROADCAST_INTENT:Z = false

.field private static final CONFIG_ENGINE_SEND_GYRO:Z = false

.field private static final CONFIG_USE_ALWAYS:Z = false

.field private static final EVENT_FROM_ENGINE:I = 0x55

.field private static final EVENT_SCREEN_OFF:I = 0x57

.field private static final EVENT_SCREEN_ON:I = 0x56

.field private static final MOTION_COMMAND_ACC_SENSOR_DISABLE:I = 0x12d

.field private static final MOTION_COMMAND_ACC_SENSOR_ENABLE:I = 0x12c

.field private static final MOTION_COMMAND_CALIBRATE_GYRO:I = 0x136

.field private static final MOTION_COMMAND_GYRO_SENSOR_DISABLE:I = 0x12f

.field private static final MOTION_COMMAND_GYRO_SENSOR_ENABLE:I = 0x12e

.field private static final MOTION_COMMAND_LIGHT_SENSOR_DISABLE:I = 0x135

.field private static final MOTION_COMMAND_LIGHT_SENSOR_ENABLE:I = 0x134

.field private static final MOTION_COMMAND_MRENGINE_RESET:I = 0x137

.field private static final MOTION_COMMAND_PANNINGD_DISABLE:I = 0x133

.field private static final MOTION_COMMAND_PANNINGD_ENABLE:I = 0x132

.field private static final MOTION_COMMAND_PROX_SENSOR_DISABLE:I = 0x131

.field private static final MOTION_COMMAND_PROX_SENSOR_ENABLE:I = 0x130

.field private static final MOTION_COMMAND_SET_WINSET_ANGLE_RESET_END:I = 0xc7

.field private static final MOTION_COMMAND_SET_WINSET_ANGLE_RESET_START:I = 0x64

.field private static final MOTION_COMMAND_SMART_SCROLL_END:I = 0x12b

.field private static final MOTION_COMMAND_SMART_SCROLL_START:I = 0xc8

.field private static final MSG_SEND_FLAT:I = 0x2d

.field private static final SAR_ACCFLAT:I = 0x6

.field private static final SAR_ALL:I = 0x8

.field private static final SAR_FLAT:I = 0x3

.field private static final SAR_GRIP:I = 0x0

.field private static final SAR_PORTRAIT:I = 0x7

.field private static final SAR_PROX:I = 0x1

.field private static final SAR_TURNOVER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionService"

.field private static final localLOGD:Z = false

.field private static final localLOGV:Z = false

.field private static final localLOGVV:Z = false

.field private static final mDefaultAppId:I

.field private static final mSensitivityDef:I = 0x5

.field private static final mSensitivityMax:I = 0xa


# instance fields
.field private final FILE_SENSOR_HISTORY:Ljava/lang/String;

.field mBootCompeleted:Z

.field private final mContext:Landroid/content/Context;

.field private mControlSensor:Landroid/hardware/Sensor;

.field private mEnListenerForYoutube:Z

.field mEngineInitialized:Z

.field private mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

.field mFlatEvent:Z

.field private mFlipCover:Landroid/hardware/motion/MotionRecognitionFlipCover;

.field private mGripMotion:Landroid/hardware/motion/MotionRecognitionGrip;

.field private mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

.field private mIntentValid:I

.field private mIsFlat:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/motion/MotionRecognitionService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockEngine:Ljava/lang/Object;

.field private mMotionSensor:Landroid/hardware/Sensor;

.field private mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;

.field private mPM:Landroid/os/PowerManager;

.field private mPalmMotion:Landroid/hardware/motion/MotionRecognitionPalmMotion;

.field private mPaused:I

.field private mPostMotionVal:[I

.field private mPowerTime:J

.field private mQuickPanelOpend:Z

.field private mReactiveAlert:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mRotate:I

.field private mRotationSensor:Landroid/hardware/Sensor;

.field private mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;

.field mScreenOn:Z

.field mSensorDelayInMsec:I

.field mSensorsEnabled:I

.field mSensorsUsed:I

.field private mSmartFace:Landroid/hardware/motion/MotionRecognitionSmartFace;

.field private mSupportedAppCount:I

.field private mThread:Landroid/os/HandlerThread;

.field private mWakelock:Landroid/os/PowerManager$WakeLock;

.field private mWm:Landroid/view/WindowManager;

.field private mbEnabledPanning:Z

.field private mbmultiwindow:Z

.field mfdAccint:I

.field private mrefCntEvents:[I

.field private mrefCntEvents_open:[I

.field private mrefSmartScroll:I

.field private mregisteredEvents_open:I

.field private msspenabled:Z

.field private refPanningDEnabled:I

.field private final rotationListener:Landroid/hardware/SensorEventListener;

.field private final sensorControlMotionListener:Landroid/hardware/SensorEventListener;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private final sensorMotionListener:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    sget-object v0, Landroid/hardware/motion/MotionRecognitionEngineAppId$eAPPID;->APPID_TEST:Landroid/hardware/motion/MotionRecognitionEngineAppId$eAPPID;

    invoke-virtual {v0}, Landroid/hardware/motion/MotionRecognitionEngineAppId$eAPPID;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/motion/MotionRecognitionService;->mDefaultAppId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x15

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 368
    invoke-direct {p0}, Landroid/hardware/motion/IMotionRecognitionService$Stub;-><init>()V

    .line 127
    iput v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mSupportedAppCount:I

    .line 128
    iput-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mEnListenerForYoutube:Z

    .line 129
    iput v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mPaused:I

    .line 130
    iput v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mIntentValid:I

    .line 131
    iput-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mQuickPanelOpend:Z

    .line 132
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mPowerTime:J

    .line 134
    const-string v2, "/data/log/sensorHistory"

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->FILE_SENSOR_HISTORY:Ljava/lang/String;

    .line 137
    iput-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    .line 139
    iput-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    .line 145
    iput-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    .line 147
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    .line 151
    iput-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    .line 153
    iput-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mBootCompeleted:Z

    .line 155
    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    .line 157
    iput-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mFlatEvent:Z

    .line 160
    const/16 v2, 0x1c

    iput v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    .line 162
    iput v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    .line 164
    iput v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    .line 166
    const/16 v2, 0x14

    iput v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorDelayInMsec:I

    .line 168
    iput v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mfdAccint:I

    .line 170
    iput-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    .line 178
    iput v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    .line 184
    iput-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mbmultiwindow:Z

    .line 185
    iput v4, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    .line 186
    iput-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mbEnabledPanning:Z

    .line 204
    new-instance v2, Landroid/hardware/motion/MotionRecognitionService$1;

    invoke-direct {v2, p0}, Landroid/hardware/motion/MotionRecognitionService$1;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1631
    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostMotionVal:[I

    .line 1632
    iput-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsFlat:Z

    .line 1634
    new-instance v2, Landroid/hardware/motion/MotionRecognitionService$5;

    invoke-direct {v2, p0}, Landroid/hardware/motion/MotionRecognitionService$5;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorMotionListener:Landroid/hardware/SensorEventListener;

    .line 1665
    new-instance v2, Landroid/hardware/motion/MotionRecognitionService$6;

    invoke-direct {v2, p0}, Landroid/hardware/motion/MotionRecognitionService$6;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorControlMotionListener:Landroid/hardware/SensorEventListener;

    .line 1674
    new-instance v2, Landroid/hardware/motion/MotionRecognitionService$7;

    invoke-direct {v2, p0}, Landroid/hardware/motion/MotionRecognitionService$7;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->rotationListener:Landroid/hardware/SensorEventListener;

    .line 369
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    .line 371
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "motion_recognition"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    .line 372
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 373
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 374
    .local v1, "looper_svchandler":Landroid/os/Looper;
    if-eqz v1, :cond_3

    .line 375
    new-instance v2, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-direct {v2, p0, v1}, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;-><init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    .line 381
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mPM:Landroid/os/PowerManager;

    .line 382
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mPM:Landroid/os/PowerManager;

    const-string v3, "motion_service"

    invoke-virtual {v2, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 383
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 385
    new-instance v2, Landroid/hardware/motion/MotionRecognitionService$EventPool;

    invoke-direct {v2}, Landroid/hardware/motion/MotionRecognitionService$EventPool;-><init>()V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    .line 387
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    .line 388
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->get_motion_sensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSensor:Landroid/hardware/Sensor;

    .line 389
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_0

    .line 390
    const-string v2, "MotionRecognitionService"

    const-string v3, "MotionSensor : Fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->get_motion_sensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mControlSensor:Landroid/hardware/Sensor;

    .line 393
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mControlSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_1

    .line 394
    const-string v2, "MotionRecognitionService"

    const-string v3, "Control for motion : Fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_1
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const v3, 0x10016

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mRotationSensor:Landroid/hardware/Sensor;

    .line 397
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mRotationSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_2

    .line 398
    const-string v2, "MotionRecognitionService"

    const-string v3, "Rotation Sensor : Fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_2
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.sensorhub"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    .line 401
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  SSP enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v2, Landroid/hardware/motion/MotionRecognitionService$2;

    iget-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    invoke-direct {v2, p0, p1, v3}, Landroid/hardware/motion/MotionRecognitionService$2;-><init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/content/Context;Z)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mReactiveAlert:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    .line 411
    new-instance v2, Landroid/hardware/motion/MotionRecognitionFlipCover;

    iget-boolean v3, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    invoke-direct {v2, p1, v3}, Landroid/hardware/motion/MotionRecognitionFlipCover;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mFlipCover:Landroid/hardware/motion/MotionRecognitionFlipCover;

    .line 412
    new-instance v2, Landroid/hardware/motion/MotionRecognitionGrip;

    invoke-direct {v2, p1}, Landroid/hardware/motion/MotionRecognitionGrip;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mGripMotion:Landroid/hardware/motion/MotionRecognitionGrip;

    .line 413
    new-instance v2, Landroid/hardware/motion/MotionRecognitionSAR;

    invoke-direct {v2, p1}, Landroid/hardware/motion/MotionRecognitionSAR;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;

    .line 414
    new-instance v2, Landroid/hardware/motion/MotionRecognitionService$3;

    invoke-direct {v2, p0, p1}, Landroid/hardware/motion/MotionRecognitionService$3;-><init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/content/Context;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mSmartFace:Landroid/hardware/motion/MotionRecognitionSmartFace;

    .line 436
    new-instance v2, Landroid/hardware/motion/MotionRecognitionPalmMotion;

    invoke-direct {v2, p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mPalmMotion:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    .line 438
    new-array v2, v8, [I

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents:[I

    .line 439
    new-array v2, v8, [I

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents_open:[I

    .line 440
    new-instance v2, Landroid/hardware/motion/MotionRecognitionService$4;

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-direct {v2, p0, p1, v3}, Landroid/hardware/motion/MotionRecognitionService$4;-><init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;

    .line 470
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mFlipCover:Landroid/hardware/motion/MotionRecognitionFlipCover;

    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionFlipCover;->enableFlipCover()V

    .line 473
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.multiwindow"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mbmultiwindow:Z

    .line 474
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Multi-Window enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mbmultiwindow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 478
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string v2, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    const-string v2, "android.intent.action.GRIPSENSOR_CP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    const-string v2, "android.intent.action.PROXIMITY_CP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    const-string v2, "android.intent.action.FLATMOTION_CP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    const-string v2, "android.intent.action.TURNOVERMOTION_CP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    const-string v2, "android.intent.action.SARDEVICE_CP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 499
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 501
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mWm:Landroid/view/WindowManager;

    .line 504
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 377
    :cond_3
    const-string v2, "MotionRecognitionService"

    const-string v3, " failed getting looper for service handler "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionGrip;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mGripMotion:Landroid/hardware/motion/MotionRecognitionGrip;

    return-object v0
.end method

.method static synthetic access$102(Landroid/hardware/motion/MotionRecognitionService;J)J
    .locals 0
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;
    .param p1, "x1"    # J

    .prologue
    .line 80
    iput-wide p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mPowerTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSmartFace;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSmartFace:Landroid/hardware/motion/MotionRecognitionSmartFace;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionService$EventPool;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/hardware/motion/MotionRecognitionService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(I)V

    return-void
.end method

.method static synthetic access$1500(Landroid/hardware/motion/MotionRecognitionService;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V

    return-void
.end method

.method static synthetic access$1600(Landroid/hardware/motion/MotionRecognitionService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/hardware/motion/MotionRecognitionService;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V

    return-void
.end method

.method static synthetic access$1800(Landroid/hardware/motion/MotionRecognitionService;)[I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents:[I

    return-object v0
.end method

.method static synthetic access$1900(Landroid/hardware/motion/MotionRecognitionService;)[I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents_open:[I

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSettings;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/hardware/motion/MotionRecognitionService;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    return v0
.end method

.method static synthetic access$2010(Landroid/hardware/motion/MotionRecognitionService;)I
    .locals 2
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    return v0
.end method

.method static synthetic access$2100(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->updateRegisteredEvents()V

    return-void
.end method

.method static synthetic access$2200(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->disableUnusedSensors()V

    return-void
.end method

.method static synthetic access$2300(Landroid/hardware/motion/MotionRecognitionService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mbmultiwindow:Z

    return v0
.end method

.method static synthetic access$2400(Landroid/hardware/motion/MotionRecognitionService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/hardware/motion/MotionRecognitionService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionReactiveAlert;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mReactiveAlert:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionFlipCover;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mFlipCover:Landroid/hardware/motion/MotionRecognitionFlipCover;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/hardware/motion/MotionRecognitionService;)[I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostMotionVal:[I

    return-object v0
.end method

.method static synthetic access$2900(Landroid/hardware/motion/MotionRecognitionService;IIII)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(IIII)V

    return-void
.end method

.method static synthetic access$300(Landroid/hardware/motion/MotionRecognitionService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3002(Landroid/hardware/motion/MotionRecognitionService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsFlat:Z

    return p1
.end method

.method static synthetic access$400(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->initializeMotionEngine()V

    return-void
.end method

.method static synthetic access$500(Landroid/hardware/motion/MotionRecognitionService;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    return v0
.end method

.method static synthetic access$510(Landroid/hardware/motion/MotionRecognitionService;)I
    .locals 2
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    return v0
.end method

.method static synthetic access$600(Landroid/hardware/motion/MotionRecognitionService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mbEnabledPanning:Z

    return v0
.end method

.method static synthetic access$602(Landroid/hardware/motion/MotionRecognitionService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mbEnabledPanning:Z

    return p1
.end method

.method static synthetic access$700(Landroid/hardware/motion/MotionRecognitionService;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/hardware/motion/MotionRecognitionService;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mregisteredEvents_open:I

    return v0
.end method

.method static synthetic access$900(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->finalizeMotionEngine()V

    return-void
.end method

.method private controlMotionSensor(I)Z
    .locals 5
    .param p1, "cmd"    # I

    .prologue
    .line 507
    const/4 v0, 0x0

    .line 509
    .local v0, "ret":Z
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorControlMotionListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mControlSensor:Landroid/hardware/Sensor;

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v1, v2, v3, p1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    .line 510
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 511
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorControlMotionListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 513
    :cond_0
    return v0
.end method

.method private disableUnusedSensors()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1278
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 1279
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 1280
    shl-int v2, v5, v1

    .line 1281
    .local v2, "motion_sensor":I
    invoke-direct {p0, v2, v4}, Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V

    .line 1279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1283
    .end local v2    # "motion_sensor":I
    :cond_0
    invoke-direct {p0, v4}, Landroid/hardware/motion/MotionRecognitionService;->enableAllSensors(Z)V

    .line 1299
    :cond_1
    return-void

    .line 1285
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    .line 1287
    .local v0, "bSensorsUsed":I
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;

    invoke-virtual {v3}, Landroid/hardware/motion/MotionRecognitionSettings;->getUsedSensorForEvents()I

    move-result v0

    .line 1289
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 1290
    shl-int v2, v5, v1

    .line 1291
    .restart local v2    # "motion_sensor":I
    and-int v3, v0, v2

    if-nez v3, :cond_3

    .line 1292
    invoke-direct {p0, v2}, Landroid/hardware/motion/MotionRecognitionService;->isSensorUsed(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1293
    invoke-direct {p0, v2, v4}, Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V

    .line 1294
    invoke-direct {p0, v2, v4}, Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V

    .line 1289
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private enableAllSensors(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 1269
    const/4 v2, 0x1

    shl-int v1, v2, v0

    .line 1270
    .local v1, "motion_sensor":I
    invoke-direct {p0, v1, p1}, Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V

    .line 1268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1272
    .end local v1    # "motion_sensor":I
    :cond_0
    return-void
.end method

.method private enableSensor(IZ)V
    .locals 5
    .param p1, "motion_sensor"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1189
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1262
    :cond_0
    :goto_0
    return-void

    .line 1192
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->isSensorEnabled(I)Z

    move-result v0

    if-eq p2, v0, :cond_0

    .line 1194
    if-eqz p2, :cond_3

    .line 1195
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->isSensorUsed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    if-nez v0, :cond_2

    .line 1200
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorMotionListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 1201
    const-string v0, "MotionRecognitionService"

    const-string v1, "Fail to registerListener : MotionSensor !"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1206
    :cond_2
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    .line 1211
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1213
    :pswitch_1
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z

    goto :goto_0

    .line 1217
    :pswitch_2
    const/16 v0, 0x12e

    invoke-direct {p0, v0}, Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z

    goto :goto_0

    .line 1221
    :pswitch_3
    const/16 v0, 0x130

    invoke-direct {p0, v0}, Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z

    goto :goto_0

    .line 1225
    :pswitch_4
    const/16 v0, 0x134

    invoke-direct {p0, v0}, Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z

    goto :goto_0

    .line 1232
    :cond_3
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    .line 1237
    packed-switch p1, :pswitch_data_1

    .line 1257
    :goto_1
    :pswitch_5
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    if-nez v0, :cond_0

    .line 1258
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorMotionListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 1239
    :pswitch_6
    const/16 v0, 0x12d

    invoke-direct {p0, v0}, Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z

    goto :goto_1

    .line 1243
    :pswitch_7
    const/16 v0, 0x12f

    invoke-direct {p0, v0}, Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z

    goto :goto_1

    .line 1247
    :pswitch_8
    const/16 v0, 0x131

    invoke-direct {p0, v0}, Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z

    goto :goto_1

    .line 1251
    :pswitch_9
    const/16 v0, 0x135

    invoke-direct {p0, v0}, Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z

    goto :goto_1

    .line 1211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 1237
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method private finalizeMotionEngine()V
    .locals 3

    .prologue
    .line 539
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-nez v0, :cond_0

    .line 553
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mReactiveAlert:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mReactiveAlert:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->setAccIntStatus(I)V

    .line 543
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSmartFace:Landroid/hardware/motion/MotionRecognitionSmartFace;

    sget-object v1, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->MOTION_STARTSTOP:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionSmartFace;->disableFaceDetector(Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;)V

    .line 544
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v1

    .line 545
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    .line 546
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/motion/MotionRecognitionService;->enableAllSensors(Z)V

    .line 548
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->rotationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 550
    const-string v0, "MotionRecognitionService"

    const-string v2, "  .finalizeMotionEngine"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsFlat:Z

    .line 552
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getWindowRotation()I
    .locals 3

    .prologue
    .line 575
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mWm:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    .line 576
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mWm:Landroid/view/WindowManager;

    .line 577
    :cond_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mWm:Landroid/view/WindowManager;

    if-eqz v1, :cond_1

    .line 578
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mWm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 579
    .local v0, "disp":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 581
    .end local v0    # "disp":Landroid/view/Display;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializeMotionEngine()V
    .locals 6

    .prologue
    .line 518
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v0, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;

    invoke-virtual {v0}, Landroid/hardware/motion/MotionRecognitionSettings;->isMotionEngineEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    const-string v0, "MotionRecognitionService"

    const-string v1, "  .initializeMotionEngine"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSmartFace:Landroid/hardware/motion/MotionRecognitionSmartFace;

    sget-object v1, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->MOTION_STARTSTOP:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionSmartFace;->enableFaceDetector(Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;)V

    .line 529
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v1

    .line 530
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    .line 531
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/motion/MotionRecognitionService;->enableAllSensors(Z)V

    .line 532
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->rotationListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mRotationSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x2

    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 533
    const-string v0, "MotionRecognitionService"

    const-string v2, " failed to register for rotation"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isSensorEnabled(I)Z
    .locals 2
    .param p1, "motion_sensor"    # I

    .prologue
    const/4 v0, 0x0

    .line 1164
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1166
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSensorUsed(I)Z
    .locals 2
    .param p1, "motion_sensor"    # I

    .prologue
    const/4 v0, 0x0

    .line 1155
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1157
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendBroadcastIntent(I)V
    .locals 0
    .param p1, "motion"    # I

    .prologue
    .line 786
    return-void
.end method

.method private sendMotionEvent(I)V
    .locals 1
    .param p1, "motion"    # I

    .prologue
    const/4 v0, 0x0

    .line 585
    invoke-direct {p0, p1, v0, v0, v0}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(IIII)V

    .line 586
    return-void
.end method

.method private sendMotionEvent(IIII)V
    .locals 26
    .param p1, "motion"    # I
    .param p2, "dataX"    # I
    .param p3, "dataY"    # I
    .param p4, "dataZ"    # I

    .prologue
    .line 590
    move/from16 v5, p1

    .line 591
    .local v5, "motionOrigin":I
    move/from16 v6, p2

    .line 592
    .local v6, "panningDx":I
    move/from16 v8, p3

    .line 593
    .local v8, "panningDy":I
    move/from16 v10, p4

    .line 594
    .local v10, "panningDz":I
    const/16 v20, 0x0

    .line 595
    .local v20, "walkingStatus":I
    const/4 v3, 0x1

    .line 596
    .local v3, "bSendMotion":Z
    const/16 v21, 0x0

    .line 597
    .local v21, "windowrotation":I
    if-lez p1, :cond_1

    const/16 v22, 0x78

    move/from16 v0, p1

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 599
    sparse-switch p1, :sswitch_data_0

    .line 704
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/motion/MotionRecognitionService$EventPool;->obtain()Landroid/hardware/motion/MREvent;

    move-result-object v4

    .line 706
    .local v4, "motionEvent":Landroid/hardware/motion/MREvent;
    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/hardware/motion/MREvent;->setMotion(I)V

    .line 715
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(Landroid/hardware/motion/MREvent;)V

    .line 725
    .end local v4    # "motionEvent":Landroid/hardware/motion/MREvent;
    :cond_1
    if-nez v6, :cond_2

    if-eqz v8, :cond_3

    .line 726
    :cond_2
    const/16 v16, 0x0

    .line 727
    .local v16, "tilt":I
    move v7, v6

    .line 728
    .local v7, "panningDxImage":I
    move v9, v8

    .line 729
    .local v9, "panningDyImage":I
    move v11, v10

    .line 731
    .local v11, "panningDzImage":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 736
    move/from16 v16, v8

    .line 741
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;

    move-object/from16 v22, v0

    const/16 v23, 0x3d

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/hardware/motion/MotionRecognitionSettings;->getSettingMotionSensitivity(II)I

    move-result v13

    .line 742
    .local v13, "sensitivityPanningIcon":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;

    move-object/from16 v22, v0

    const/16 v23, 0x3d

    const/16 v24, 0x2

    invoke-virtual/range {v22 .. v24}, Landroid/hardware/motion/MotionRecognitionSettings;->getSettingMotionSensitivity(II)I

    move-result v14

    .line 743
    .local v14, "sensitivityPanningImage":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;

    move-object/from16 v22, v0

    const/16 v23, 0x48

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/hardware/motion/MotionRecognitionSettings;->getSettingMotionSensitivity(II)I

    move-result v15

    .line 745
    .local v15, "sensitivityTilt":I
    add-int/lit8 v22, v13, -0x5

    mul-int v22, v22, v6

    div-int/lit8 v22, v22, 0xa

    add-int v6, v6, v22

    .line 746
    add-int/lit8 v22, v13, -0x5

    mul-int v22, v22, v8

    div-int/lit8 v22, v22, 0xa

    add-int v8, v8, v22

    .line 748
    add-int/lit8 v22, v14, -0x5

    mul-int v22, v22, v6

    div-int/lit8 v22, v22, 0xa

    add-int v7, v7, v22

    .line 749
    add-int/lit8 v22, v14, -0x5

    mul-int v22, v22, v8

    div-int/lit8 v22, v22, 0xa

    add-int v9, v9, v22

    .line 750
    add-int/lit8 v22, v14, -0x5

    mul-int v22, v22, v10

    div-int/lit8 v22, v22, 0xa

    add-int v11, v11, v22

    .line 751
    add-int/lit8 v22, v15, -0x5

    mul-int v22, v22, v16

    div-int/lit8 v22, v22, 0xa

    add-int v16, v16, v22

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/motion/MotionRecognitionService$EventPool;->obtain()Landroid/hardware/motion/MREvent;

    move-result-object v12

    .line 755
    .local v12, "panningEvent":Landroid/hardware/motion/MREvent;
    const/16 v22, 0x3d

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/hardware/motion/MREvent;->setMotion(I)V

    .line 756
    invoke-virtual {v12, v6}, Landroid/hardware/motion/MREvent;->setPanningDx(I)V

    .line 757
    invoke-virtual {v12, v8}, Landroid/hardware/motion/MREvent;->setPanningDy(I)V

    .line 758
    invoke-virtual {v12, v10}, Landroid/hardware/motion/MREvent;->setPanningDz(I)V

    .line 759
    invoke-virtual {v12, v7}, Landroid/hardware/motion/MREvent;->setPanningDxImage(I)V

    .line 760
    invoke-virtual {v12, v9}, Landroid/hardware/motion/MREvent;->setPanningDyImage(I)V

    .line 761
    invoke-virtual {v12, v11}, Landroid/hardware/motion/MREvent;->setPanningDzImage(I)V

    .line 764
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(Landroid/hardware/motion/MREvent;)V

    .line 766
    if-eqz v16, :cond_3

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/motion/MotionRecognitionService$EventPool;->obtain()Landroid/hardware/motion/MREvent;

    move-result-object v17

    .line 768
    .local v17, "tiltEvent":Landroid/hardware/motion/MREvent;
    const/16 v22, 0x48

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setMotion(I)V

    .line 769
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setTilt(I)V

    .line 770
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setWalkingStatus(I)V

    .line 771
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(Landroid/hardware/motion/MREvent;)V

    .line 776
    .end local v7    # "panningDxImage":I
    .end local v9    # "panningDyImage":I
    .end local v11    # "panningDzImage":I
    .end local v12    # "panningEvent":Landroid/hardware/motion/MREvent;
    .end local v13    # "sensitivityPanningIcon":I
    .end local v14    # "sensitivityPanningImage":I
    .end local v15    # "sensitivityTilt":I
    .end local v16    # "tilt":I
    .end local v17    # "tiltEvent":Landroid/hardware/motion/MREvent;
    :cond_3
    return-void

    .line 601
    :sswitch_0
    const/16 p1, 0x1

    .line 602
    goto/16 :goto_0

    .line 604
    :sswitch_1
    const/16 p1, 0x2

    .line 605
    goto/16 :goto_0

    .line 607
    :sswitch_2
    const/16 p1, 0x3

    .line 608
    goto/16 :goto_0

    .line 610
    :sswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mPowerTime:J

    move-wide/from16 v24, v0

    sub-long v18, v22, v24

    .line 611
    .local v18, "time":J
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-lez v22, :cond_0

    const-wide/16 v22, 0x7d0

    cmp-long v22, v18, v22

    if-gez v22, :cond_0

    .line 613
    const-string v22, "MotionRecognitionService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  .sendMotionEvent : ignore TWO_TAPPING. (time="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v3, 0x0

    .line 615
    goto/16 :goto_0

    .line 619
    .end local v18    # "time":J
    :sswitch_4
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->getWindowRotation()I

    move-result v21

    .line 620
    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 621
    const/16 p1, 0x68

    goto/16 :goto_0

    .line 622
    :cond_4
    if-nez v21, :cond_5

    .line 623
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 625
    :cond_5
    const/16 p1, 0x0

    .line 626
    goto/16 :goto_0

    .line 628
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->getWindowRotation()I

    move-result v21

    .line 629
    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 630
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 631
    :cond_6
    if-nez v21, :cond_7

    .line 632
    const/16 p1, 0x68

    goto/16 :goto_0

    .line 634
    :cond_7
    const/16 p1, 0x0

    .line 636
    goto/16 :goto_0

    .line 638
    :sswitch_6
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->getWindowRotation()I

    move-result v21

    .line 639
    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    if-nez v21, :cond_9

    .line 640
    :cond_8
    const/16 p1, 0x69

    goto/16 :goto_0

    .line 642
    :cond_9
    const/16 p1, 0x0

    .line 644
    goto/16 :goto_0

    .line 646
    :sswitch_7
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->getWindowRotation()I

    move-result v21

    .line 647
    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_a

    if-nez v21, :cond_b

    .line 648
    :cond_a
    const/16 p1, 0x6a

    goto/16 :goto_0

    .line 650
    :cond_b
    const/16 p1, 0x0

    .line 653
    goto/16 :goto_0

    .line 655
    :sswitch_8
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->getWindowRotation()I

    move-result v21

    .line 656
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 657
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 658
    :cond_c
    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 659
    const/16 p1, 0x68

    goto/16 :goto_0

    .line 661
    :cond_d
    const/16 p1, 0x0

    .line 663
    goto/16 :goto_0

    .line 665
    :sswitch_9
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->getWindowRotation()I

    move-result v21

    .line 666
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 667
    const/16 p1, 0x68

    goto/16 :goto_0

    .line 668
    :cond_e
    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 669
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 671
    :cond_f
    const/16 p1, 0x0

    .line 672
    goto/16 :goto_0

    .line 674
    :sswitch_a
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->getWindowRotation()I

    move-result v21

    .line 675
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 676
    :cond_10
    const/16 p1, 0x69

    goto/16 :goto_0

    .line 678
    :cond_11
    const/16 p1, 0x0

    .line 679
    goto/16 :goto_0

    .line 681
    :sswitch_b
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->getWindowRotation()I

    move-result v21

    .line 682
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_12

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 683
    :cond_12
    const/16 p1, 0x6a

    goto/16 :goto_0

    .line 685
    :cond_13
    const/16 p1, 0x0

    .line 686
    goto/16 :goto_0

    .line 688
    :sswitch_c
    const/4 v3, 0x0

    .line 689
    const-string v22, "MotionRecognitionService"

    const-string v23, " .received : SMART_SCROLL_CAMERA_OFF"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mSmartFace:Landroid/hardware/motion/MotionRecognitionSmartFace;

    move-object/from16 v22, v0

    sget-object v23, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->CAMERA_MOTION:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual/range {v22 .. v23}, Landroid/hardware/motion/MotionRecognitionSmartFace;->disableFaceDetector(Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;)V

    goto/16 :goto_0

    .line 693
    :sswitch_d
    const/4 v3, 0x0

    .line 694
    const-string v22, "MotionRecognitionService"

    const-string v23, " .received : SMART_SCROLL_CAMERA_ON"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mSmartFace:Landroid/hardware/motion/MotionRecognitionSmartFace;

    move-object/from16 v22, v0

    sget-object v23, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->CAMERA_MOTION:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual/range {v22 .. v23}, Landroid/hardware/motion/MotionRecognitionSmartFace;->enableFaceDetector(Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;)V

    goto/16 :goto_0

    .line 698
    :sswitch_e
    const-string v22, "MotionRecognitionService"

    const-string v23, " .received : SMART_RELAY"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 732
    .restart local v7    # "panningDxImage":I
    .restart local v9    # "panningDyImage":I
    .restart local v11    # "panningDzImage":I
    .restart local v16    # "tilt":I
    :pswitch_0
    move/from16 v16, v6

    goto/16 :goto_1

    .line 733
    :pswitch_1
    neg-int v0, v8

    move/from16 v16, v0

    goto/16 :goto_1

    .line 734
    :pswitch_2
    neg-int v0, v6

    move/from16 v16, v0

    goto/16 :goto_1

    .line 599
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2f -> :sswitch_1
        0x30 -> :sswitch_2
        0x3f -> :sswitch_0
        0x67 -> :sswitch_4
        0x68 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6a -> :sswitch_7
        0x6b -> :sswitch_8
        0x6c -> :sswitch_9
        0x6d -> :sswitch_a
        0x6e -> :sswitch_b
        0x6f -> :sswitch_c
        0x70 -> :sswitch_d
        0x71 -> :sswitch_e
    .end sparse-switch

    .line 731
    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendMotionEvent(Landroid/hardware/motion/MREvent;)V
    .locals 3
    .param p1, "motionEvent"    # Landroid/hardware/motion/MREvent;

    .prologue
    .line 556
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    .line 557
    .local v0, "motion":I
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;

    invoke-virtual {v2, v0}, Landroid/hardware/motion/MotionRecognitionSettings;->isActivatedEvent(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 566
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 567
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x55

    iput v2, v1, Landroid/os/Message;->what:I

    .line 568
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 570
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateRegisteredEvents()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 805
    const/4 v1, 0x0

    .line 806
    .local v1, "registeredEvents":I
    const/4 v2, 0x0

    .line 807
    .local v2, "registeredEvents_Open":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x15

    if-ge v0, v3, :cond_2

    .line 809
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents:[I

    aget v3, v3, v0

    if-eqz v3, :cond_0

    .line 810
    shl-int v3, v4, v0

    or-int/2addr v1, v3

    .line 811
    :cond_0
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents_open:[I

    aget v3, v3, v0

    if-eqz v3, :cond_1

    .line 812
    shl-int v3, v4, v0

    or-int/2addr v2, v3

    .line 807
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 814
    :cond_2
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mregisteredEvents_open:I

    .line 815
    const-string v3, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " open api "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mregisteredEvents_open:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;

    invoke-virtual {v3, v1, v2}, Landroid/hardware/motion/MotionRecognitionSettings;->setRegisteredEvents(II)V

    .line 818
    return-void
.end method

.method private useSensor(IZ)V
    .locals 2
    .param p1, "motion_sensor"    # I
    .param p2, "used"    # Z

    .prologue
    .line 1173
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1176
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->isSensorUsed(I)Z

    move-result v0

    if-eq p2, v0, :cond_0

    .line 1177
    if-eqz p2, :cond_2

    .line 1178
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    goto :goto_0

    .line 1180
    :cond_2
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1121
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 1123
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: can\'t dump MotionService from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " without permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    :goto_0
    return-void

    .line 1129
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1130
    .local v5, "time":J
    const-string v7, "motion_recognition"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1132
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " : mSensorsUsed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mSensorsEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1133
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " : currentTimeMillis="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1135
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1136
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " : listener count="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1138
    const/4 v1, 0x0

    .line 1139
    .local v1, "i":I
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 1140
    .local v4, "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   mListeners["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "] = mMotionSensors="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", mUseAlways="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mUseAlways:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    :try_start_1
    iget-object v7, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v7}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 1143
    .local v0, "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "                   "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    :goto_2
    move v2, v1

    .line 1145
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 1147
    .end local v4    # "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_1
    :try_start_2
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 1148
    monitor-exit v8

    goto/16 :goto_0

    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1144
    .restart local v1    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public getPickUpMotionStatus()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 797
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;

    const v4, 0x8000

    invoke-virtual {v3, v4}, Landroid/hardware/motion/MotionRecognitionSettings;->isActivatedMotion(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/hardware/motion/MotionRecognitionSettings;->isActivatedMotion(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    .line 800
    .local v0, "isEnabled":Z
    :goto_0
    const-string v3, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " pick up status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;

    invoke-virtual {v3}, Landroid/hardware/motion/MotionRecognitionSettings;->isMotionEngineEnabled()Z

    move-result v3

    if-ne v3, v2, :cond_2

    :goto_1
    return v2

    .end local v0    # "isEnabled":Z
    :cond_1
    move v0, v1

    .line 797
    goto :goto_0

    .restart local v0    # "isEnabled":Z
    :cond_2
    move v2, v1

    .line 801
    goto :goto_1
.end method

.method public getSSPstatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    .line 791
    const-string v0, "MotionRecognitionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ssp status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    return v0
.end method

.method public registerCallback(Landroid/os/IBinder;II)V
    .locals 19
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "motion_sensors"    # I
    .param p3, "motion_events"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 822
    const/4 v9, 0x0

    .line 824
    .local v9, "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    const/4 v14, 0x0

    .line 825
    .local v14, "onSmartScroll":Z
    const/4 v4, 0x0

    .line 826
    .local v4, "busemotionalways":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 827
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 828
    .local v11, "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v15, v11, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    move-object/from16 v0, p1

    if-ne v0, v15, :cond_0

    .line 829
    monitor-exit v16

    .line 964
    .end local v11    # "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_1
    :goto_0
    return-void

    .line 834
    :cond_2
    if-nez v9, :cond_c

    .line 835
    if-nez p3, :cond_3

    and-int/lit8 v15, p2, 0x2

    if-eqz v15, :cond_3

    .line 839
    move-object/from16 v0, p0

    iget v15, v0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    .line 841
    :cond_3
    const/high16 v15, 0x40000000    # 2.0f

    move/from16 v0, p2

    if-ne v0, v15, :cond_4

    .line 842
    const/4 v4, 0x1

    .line 845
    :cond_4
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/16 v15, 0x15

    if-ge v7, v15, :cond_9

    .line 846
    const/4 v15, 0x1

    shl-int v12, v15, v7

    .line 847
    .local v12, "motion_event":I
    and-int v15, v12, p3

    if-eqz v15, :cond_6

    .line 848
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents:[I

    aget v17, v15, v7

    add-int/lit8 v17, v17, 0x1

    aput v17, v15, v7

    .line 849
    const/4 v15, 0x1

    if-ne v4, v15, :cond_5

    .line 850
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents_open:[I

    aget v17, v15, v7

    add-int/lit8 v17, v17, 0x1

    aput v17, v15, v7

    .line 852
    :cond_5
    sparse-switch v12, :sswitch_data_0

    .line 845
    :cond_6
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 858
    :sswitch_0
    or-int/lit8 p2, p2, 0x1

    .line 859
    goto :goto_2

    .line 861
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;

    invoke-virtual {v15, v12}, Landroid/hardware/motion/MotionRecognitionSettings;->isActivatedMotion(I)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    if-nez v15, :cond_7

    .line 862
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mReactiveAlert:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    invoke-virtual {v15}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->enableAccINT()V

    goto :goto_2

    .line 931
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "motion_event":I
    :catchall_0
    move-exception v15

    :goto_3
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 864
    .restart local v7    # "i":I
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v12    # "motion_event":I
    :cond_7
    :try_start_1
    const-string v15, "MotionRecognitionService"

    const-string v17, " smart alert is disabled by setting or ssp is activated : "

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 869
    :sswitch_2
    move-object/from16 v0, p0

    iget v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    if-nez v15, :cond_8

    .line 870
    const/4 v14, 0x1

    .line 871
    :cond_8
    move-object/from16 v0, p0

    iget v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    .line 876
    :sswitch_3
    or-int/lit8 p2, p2, 0x3

    .line 879
    move-object/from16 v0, p0

    iget v15, v0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    goto :goto_2

    .line 889
    :sswitch_4
    or-int/lit8 p2, p2, 0x3

    .line 890
    goto :goto_2

    .line 894
    :sswitch_5
    or-int/lit8 p2, p2, 0x7

    .line 895
    goto :goto_2

    .line 897
    :sswitch_6
    const/16 p2, 0xf

    .line 898
    goto :goto_2

    .line 907
    .end local v12    # "motion_event":I
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->updateRegisteredEvents()V

    .line 909
    new-instance v10, Landroid/hardware/motion/MotionRecognitionService$Listener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/hardware/motion/MotionRecognitionService$Listener;-><init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/IBinder;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 910
    .end local v9    # "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    .local v10, "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    if-nez p1, :cond_10

    .line 911
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 915
    :goto_4
    const-string v6, ""

    .line 916
    .local v6, "client":Ljava/lang/String;
    if-eqz p1, :cond_a

    .line 917
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v15}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 920
    :try_start_3
    invoke-static/range {p1 .. p1}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v5

    .line 921
    .local v5, "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    invoke-interface {v5}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    .line 925
    .end local v5    # "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    :cond_a
    :goto_5
    :try_start_4
    const-string v15, "MotionRecognitionService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "  .registerCallback : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", motion_sensors="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", client="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v6}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/lang/Object;->notify()V

    .line 927
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mIsFlat:Z

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    .line 928
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mReactiveAlert:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mReactiveAlert:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    move-object/from16 v17, v0

    const/16 v17, 0x2d

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->setAccIntStatus(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_b
    move-object v9, v10

    .line 931
    .end local v6    # "client":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v10    # "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    .restart local v9    # "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_c
    :try_start_5
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 935
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-nez v15, :cond_11

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    if-eqz v15, :cond_11

    .line 936
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->initializeMotionEngine()V

    .line 940
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;

    invoke-virtual {v15}, Landroid/hardware/motion/MotionRecognitionSettings;->getUsedSensorForEvents()I

    move-result p2

    .line 941
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_7
    const/4 v15, 0x4

    if-ge v7, v15, :cond_12

    .line 942
    const/4 v15, 0x1

    shl-int v13, v15, v7

    .line 943
    .local v13, "motion_sensor":I
    and-int v15, v13, p2

    if-eqz v15, :cond_f

    .line 944
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 946
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v15, :cond_e

    .line 947
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V

    .line 948
    :cond_e
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 941
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 913
    .end local v9    # "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    .end local v13    # "motion_sensor":I
    .restart local v10    # "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_10
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4

    .line 931
    :catchall_1
    move-exception v15

    move-object v9, v10

    .end local v10    # "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    .restart local v9    # "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    goto/16 :goto_3

    .line 937
    .end local v7    # "i":I
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    if-nez v15, :cond_d

    const/high16 v15, 0x100000

    and-int v15, v15, p3

    if-eqz v15, :cond_d

    .line 938
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->initializeMotionEngine()V

    goto :goto_6

    .line 948
    .restart local v7    # "i":I
    .restart local v13    # "motion_sensor":I
    :catchall_2
    move-exception v15

    :try_start_8
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v15

    .line 954
    .end local v13    # "motion_sensor":I
    :cond_12
    move-object/from16 v0, p0

    iget v15, v0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    if-lez v15, :cond_13

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mbEnabledPanning:Z

    if-nez v15, :cond_13

    .line 955
    const/16 v15, 0x132

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mbEnabledPanning:Z

    .line 957
    :cond_13
    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 958
    const-string v15, "MotionRecognitionService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mrefSmartScroll : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mSmartFace:Landroid/hardware/motion/MotionRecognitionSmartFace;

    sget-object v16, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->REGISTER_LISTENER:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual/range {v15 .. v16}, Landroid/hardware/motion/MotionRecognitionSmartFace;->enableFaceDetector(Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;

    const/high16 v16, 0x80000

    invoke-virtual/range {v15 .. v16}, Landroid/hardware/motion/MotionRecognitionSettings;->isActivatedMotion(I)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 962
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mSmartFace:Landroid/hardware/motion/MotionRecognitionSmartFace;

    sget-object v16, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->SETTING:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual/range {v15 .. v16}, Landroid/hardware/motion/MotionRecognitionSmartFace;->enableFaceDetector(Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;)V

    goto/16 :goto_0

    .line 922
    .end local v9    # "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    .restart local v6    # "client":Ljava/lang/String;
    .restart local v10    # "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    :catch_0
    move-exception v15

    goto/16 :goto_5

    .line 852
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
        0x20 -> :sswitch_3
        0x40 -> :sswitch_3
        0x80 -> :sswitch_4
        0x100 -> :sswitch_4
        0x200 -> :sswitch_4
        0x400 -> :sswitch_5
        0x800 -> :sswitch_5
        0x1000 -> :sswitch_4
        0x2000 -> :sswitch_0
        0x4000 -> :sswitch_4
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x80000 -> :sswitch_2
        0x100000 -> :sswitch_5
        0x1fffff -> :sswitch_6
    .end sparse-switch
.end method

.method public resetMotionEngine()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 1112
    const-string v1, "MotionRecognitionService"

    const-string v2, "  .resetMotionEngine"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_1

    .line 1115
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x137

    invoke-direct {p0, v1}, Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMotionAngle(Landroid/os/IBinder;I)V
    .locals 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1065
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v5, :cond_0

    .line 1089
    :goto_0
    return-void

    .line 1066
    :cond_0
    const/4 v3, 0x0

    .line 1068
    .local v3, "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1069
    :try_start_0
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 1070
    .local v4, "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v5, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v5, :cond_1

    .line 1071
    move-object v3, v4

    .line 1075
    .end local v4    # "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_2
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    .local v1, "client":Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 1078
    .local v0, "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    invoke-interface {v0}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1082
    .end local v0    # "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    :goto_1
    if-eqz v3, :cond_3

    .line 1083
    add-int/lit8 v5, p2, 0x64

    :try_start_2
    invoke-direct {p0, v5}, Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z

    .line 1084
    const-string v5, "MotionRecognitionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  .setMotionAngle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", client="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_3
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 1088
    monitor-exit v6

    goto :goto_0

    .end local v1    # "client":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1079
    .restart local v1    # "client":Ljava/lang/String;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public setMotionTiltLevel(IIIIII)V
    .locals 3
    .param p1, "stopUp"    # I
    .param p2, "level1Up"    # I
    .param p3, "level2Up"    # I
    .param p4, "stopDown"    # I
    .param p5, "level1Down"    # I
    .param p6, "level2Down"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1093
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 1108
    :goto_0
    return-void

    .line 1096
    :cond_0
    const-string v0, "MotionRecognitionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const-string v0, "MotionRecognitionService"

    const-string v1, "  .does not support setMotionTiltLevel "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/os/IBinder;)V
    .locals 12
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 969
    const/4 v5, 0x0

    .line 970
    .local v5, "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    const-string v2, ""

    .line 972
    .local v2, "client":Ljava/lang/String;
    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v9

    .line 973
    :try_start_0
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 974
    .local v6, "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v8, v6, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v8, :cond_0

    .line 975
    move-object v5, v6

    .line 980
    .end local v6    # "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_1
    if-eqz v5, :cond_9

    .line 982
    iget v8, v5, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionEvents:I

    if-nez v8, :cond_2

    iget v8, v5, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    .line 983
    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    .line 984
    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    if-nez v8, :cond_2

    .line 985
    const/16 v8, 0x133

    invoke-direct {p0, v8}, Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z

    .line 988
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v8, 0x15

    if-ge v3, v8, :cond_7

    .line 989
    const/4 v8, 0x1

    shl-int v7, v8, v3

    .line 990
    .local v7, "motion_event":I
    iget v8, v5, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionEvents:I

    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    .line 991
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents:[I

    aget v10, v8, v3

    add-int/lit8 v10, v10, -0x1

    aput v10, v8, v3

    .line 992
    iget v8, v5, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    const/high16 v10, 0x40000000    # 2.0f

    and-int/2addr v8, v10

    if-eqz v8, :cond_3

    .line 993
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents_open:[I

    aget v10, v8, v3

    add-int/lit8 v10, v10, -0x1

    aput v10, v8, v3

    .line 994
    :cond_3
    sparse-switch v7, :sswitch_data_0

    .line 988
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 996
    :sswitch_0
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;

    invoke-virtual {v8}, Landroid/hardware/motion/MotionRecognitionSettings;->isMotionEngineEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    if-nez v8, :cond_5

    .line 997
    const-string v8, "MotionRecognitionService"

    const-string v10, " disable reactive alert mode "

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mReactiveAlert:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    invoke-virtual {v8}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->disableAccINT()V

    .line 999
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mFlatEvent:Z

    goto :goto_1

    .line 1053
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "motion_event":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1001
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "motion_event":I
    :cond_5
    :try_start_1
    const-string v8, "MotionRecognitionService"

    const-string v10, " smart alert is disabled by setting or ssp is activated : "

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1005
    :sswitch_1
    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    .line 1006
    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    if-nez v8, :cond_6

    .line 1007
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mSmartFace:Landroid/hardware/motion/MotionRecognitionSmartFace;

    sget-object v10, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->REGISTER_LISTENER:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual {v8, v10}, Landroid/hardware/motion/MotionRecognitionSmartFace;->disableFaceDetector(Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;)V

    .line 1012
    :cond_6
    :sswitch_2
    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    .line 1013
    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    if-nez v8, :cond_4

    .line 1014
    const/16 v8, 0x133

    invoke-direct {p0, v8}, Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z

    .line 1015
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mbEnabledPanning:Z

    goto :goto_1

    .line 1024
    .end local v7    # "motion_event":I
    :cond_7
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->updateRegisteredEvents()V

    .line 1025
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1027
    if-eqz p1, :cond_8

    .line 1028
    const/4 v8, 0x0

    invoke-interface {p1, v5, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1030
    :try_start_2
    invoke-static {p1}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v1

    .line 1031
    .local v1, "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    invoke-interface {v1}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 1035
    .end local v1    # "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    :cond_8
    :goto_2
    :try_start_3
    const-string v8, "MotionRecognitionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  .unregisterCallback : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", client="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 1039
    .end local v3    # "i":I
    :cond_9
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->disableUnusedSensors()V

    .line 1041
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_b

    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->finalizeMotionEngine()V

    .line 1053
    :cond_a
    :goto_3
    monitor-exit v9

    .line 1054
    return-void

    .line 1042
    :cond_b
    iget-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    if-nez v8, :cond_a

    .line 1043
    const/4 v0, 0x0

    .line 1044
    .local v0, "benabledSmartrelay":Z
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 1045
    .restart local v6    # "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget v8, v6, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionEvents:I

    const/high16 v10, 0x100000

    and-int/2addr v8, v10

    if-eqz v8, :cond_c

    .line 1046
    const-string v8, "MotionRecognitionService"

    const-string v10, "  SMART_RELAY is activated"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/4 v0, 0x1

    .line 1051
    .end local v6    # "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_d
    if-nez v0, :cond_a

    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->finalizeMotionEngine()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1032
    .end local v0    # "benabledSmartrelay":Z
    .restart local v3    # "i":I
    :catch_0
    move-exception v8

    goto :goto_2

    .line 994
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_2
        0x20 -> :sswitch_2
        0x40 -> :sswitch_2
        0x80000 -> :sswitch_1
    .end sparse-switch
.end method

.method public useMotionAlways(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "bUseAlways"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1059
    return-void
.end method
