.class Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;
.super Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;
.source "PedometerInvenImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;,
        Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    }
.end annotation


# static fields
.field private static final LOGGING_MAX_TIME:J = 0x124f80L

.field private static final PATH_CADENCE:Ljava/lang/String; = "/shealth_cadence"

.field private static final PATH_CADENCE_ENABLE:Ljava/lang/String; = "/shealth_cadence_enable"

.field private static final PATH_CADENCE_INTERRUPT:Ljava/lang/String; = "/event_shealth_int"

.field private static final PATH_FLUSH_CADENCE:Ljava/lang/String; = "/shealth_flush_cadence"

.field private static final PATH_PREFIX:Ljava/lang/String; = "/sys/bus/iio/devices/iio:device"

.field private static final PATH_STEPCOUNT:Ljava/lang/String; = "/pedometer_steps"

.field private static final TAG:Ljava/lang/String; = "SContext.MiscProvider.PedometerInvenImpl"


# instance fields
.field private mEventThread:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

.field private final mIsBarometerAvailable:Z

.field private mIsStarted:Z

.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

.field private final mPrefix:Ljava/lang/String;

.field private mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

.field private mPrevStepCnt:J

.field private final mSensor:Landroid/hardware/Sensor;

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mTimeStamp:[J


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V

    .line 54
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z

    .line 56
    iput-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    .line 60
    iput-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mEventThread:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

    .line 62
    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    .line 66
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevStepCnt:J

    .line 68
    sget-object v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->UNKNOWN:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 405
    new-instance v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$1;

    invoke-direct {v3, p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$1;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)V

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 74
    iput-object p2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    .line 75
    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 76
    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensor:Landroid/hardware/Sensor;

    .line 77
    new-instance v3, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    invoke-direct {v3}, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;-><init>()V

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 79
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "android.hardware.sensor.barometer"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsBarometerAvailable:Z

    .line 80
    invoke-direct {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->getDeviceNode()I

    move-result v0

    .line 81
    .local v0, "node":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    .local v2, "sb":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/bus/iio/devices/iio:device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    .line 84
    return-void

    .line 62
    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$100(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    .prologue
    .line 26
    iget-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z

    return v0
.end method

.method static synthetic access$200(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    .prologue
    .line 26
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;
    .param p1, "x1"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    .prologue
    .line 26
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    return-object v0
.end method

.method static synthetic access$502(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;)Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;
    .param p1, "x1"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .prologue
    .line 26
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    return-object p1
.end method

.method private getCalcultatedData(I[J[JIJ[J)Landroid/os/Bundle;
    .locals 35
    .param p1, "mode"    # I
    .param p2, "walkCadence"    # [J
    .param p3, "runCadence"    # [J
    .param p4, "dataSize"    # I
    .param p5, "interval"    # J
    .param p7, "timeStampArray"    # [J

    .prologue
    .line 197
    new-instance v23, Landroid/os/Bundle;

    invoke-direct/range {v23 .. v23}, Landroid/os/Bundle;-><init>()V

    .line 199
    .local v23, "context":Landroid/os/Bundle;
    move/from16 v0, p4

    new-array v12, v0, [J

    .line 200
    .local v12, "totalStepCountArray":[J
    move/from16 v0, p4

    new-array v10, v0, [J

    .line 201
    .local v10, "walkFlatStepCountArray":[J
    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v33, v0

    .line 202
    .local v33, "walkUpStepCountArray":[J
    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v31, v0

    .line 203
    .local v31, "walkDownStepCountArray":[J
    move/from16 v0, p4

    new-array v11, v0, [J

    .line 204
    .local v11, "runFlatStepCountArray":[J
    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v27, v0

    .line 205
    .local v27, "runUpStepCountArray":[J
    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v25, v0

    .line 206
    .local v25, "runDownStepCountArray":[J
    move/from16 v0, p4

    new-array v13, v0, [D

    .line 207
    .local v13, "calorieArray":[D
    move/from16 v0, p4

    new-array v14, v0, [D

    .line 208
    .local v14, "distanceArray":[D
    move/from16 v0, p4

    new-array v15, v0, [D

    .line 209
    .local v15, "speedArray":[D
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v18, v0

    .line 210
    .local v18, "totalStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v16, v0

    .line 211
    .local v16, "walkFlatStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v34, v0

    .line 212
    .local v34, "walkUpStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v32, v0

    .line 213
    .local v32, "walkDownStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v17, v0

    .line 214
    .local v17, "runFlatStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v28, v0

    .line 215
    .local v28, "runUpStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v26, v0

    .line 216
    .local v26, "runDownStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [D

    move-object/from16 v19, v0

    .line 217
    .local v19, "calorieTemp":[D
    const/4 v3, 0x1

    new-array v0, v3, [D

    move-object/from16 v20, v0

    .line 218
    .local v20, "distanceTemp":[D
    const/4 v3, 0x1

    new-array v0, v3, [D

    move-object/from16 v22, v0

    .line 219
    .local v22, "walkingFrequencyTemp":[D
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v21, v0

    .line 221
    .local v21, "statusTemp":[I
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 222
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v21, v3

    .line 233
    :cond_1
    :goto_0
    const-string v3, "Mode"

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    const-string v3, "StepStatus"

    const/4 v4, 0x0

    aget v4, v21, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    const-string v3, "CalorieDiff"

    const/4 v4, 0x0

    aget-wide v4, v19, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 236
    const-string v3, "DistanceDiff"

    const/4 v4, 0x0

    aget-wide v4, v20, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 237
    const-string v3, "Speed"

    const/4 v4, 0x0

    aget-wide v4, v15, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 238
    const-string v3, "WalkingFrequency"

    const/4 v4, 0x0

    aget-wide v4, v22, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 239
    const-string v3, "TotalStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v18, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 240
    const-string v3, "WalkStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v16, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 241
    const-string v3, "WalkUpStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v34, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 242
    const-string v3, "WalkDownStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v32, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 243
    const-string v3, "RunStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v17, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 244
    const-string v3, "RunUpStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v28, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 245
    const-string v3, "RunDownStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v26, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 246
    const-string v3, "UpDownStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v34, v4

    const/4 v6, 0x0

    aget-wide v6, v32, v6

    add-long/2addr v4, v6

    const/4 v6, 0x0

    aget-wide v6, v28, v6

    add-long/2addr v4, v6

    const/4 v6, 0x0

    aget-wide v6, v26, v6

    add-long/2addr v4, v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 248
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_5

    .line 249
    const-string v3, "LoggingCount"

    move-object/from16 v0, v23

    move/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    const-string v3, "TimeStampArray"

    move-object/from16 v0, v23

    move-object/from16 v1, p7

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 251
    const-string v3, "CalorieDiffArray"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v13}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 252
    const-string v3, "DistanceDiffArray"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v14}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 253
    const-string v3, "SpeedArray"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v15}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 254
    const-string v3, "TotalStepCountDiffArray"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v12}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 255
    const-string v3, "WalkStepCountDiffArray"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 256
    const-string v3, "WalkUpStepCountDiffArray"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 257
    const-string v3, "WalkDownStepCountDiffArray"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 258
    const-string v3, "RunStepCountDiffArray"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v11}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 259
    const-string v3, "RunUpStepCountDiffArray"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 260
    const-string v3, "RunDownStepCountDiffArray"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 261
    const-string v3, "StepStatus"

    const/4 v4, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    const-wide/16 v29, 0x0

    .line 263
    .local v29, "speed":D
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, p4

    if-ge v0, v1, :cond_3

    .line 264
    aget-wide v3, v15, v24

    add-double v29, v29, v3

    .line 263
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 224
    .end local v24    # "i":I
    .end local v29    # "speed":D
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsBarometerAvailable:Z

    if-nez v3, :cond_1

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-virtual/range {v3 .. v22}, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;->native_Pedometer_getCalculate_data(I[J[JIJ[J[J[J[D[D[D[J[J[J[D[D[I[D)V

    goto/16 :goto_0

    .line 266
    .restart local v24    # "i":I
    .restart local v29    # "speed":D
    :cond_3
    if-lez p4, :cond_4

    .line 267
    move/from16 v0, p4

    int-to-double v3, v0

    div-double v29, v29, v3

    .line 269
    :cond_4
    const-string v3, "Speed"

    move-object/from16 v0, v23

    move-wide/from16 v1, v29

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 271
    .end local v24    # "i":I
    .end local v29    # "speed":D
    :cond_5
    return-object v23
.end method

.method private getDeviceNode()I
    .locals 5

    .prologue
    .line 389
    const/4 v2, 0x0

    .line 390
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 391
    .local v0, "f":Ljava/io/File;
    const/4 v1, 0x0

    .line 392
    .local v1, "node":I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 393
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2    # "sb":Ljava/lang/StringBuffer;
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 394
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    const-string v3, "/sys/bus/iio/devices/iio:device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 396
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/shealth_cadence"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .restart local v0    # "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    :cond_0
    return v1

    .line 400
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    .locals 35
    .param p1, "interruptMode"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 275
    if-nez p2, :cond_1

    sget-object v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->STOP:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v29, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    aput-wide v30, v3, v29

    .line 279
    const-string v3, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "parseCadence() : Interrupt Mode = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", mTimeStamp[0] = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget-wide v30, v30, v31

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", mTimeStamp[1] = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget-wide v30, v30, v31

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v5, 0x0

    .line 283
    .local v5, "walkStepCount":[J
    const/4 v6, 0x0

    .line 284
    .local v6, "runStepCount":[J
    const/4 v10, 0x0

    .line 285
    .local v10, "timeStamp":[J
    const-wide/16 v8, 0x0

    .line 286
    .local v8, "interval":J
    const/4 v7, 0x0

    .line 287
    .local v7, "dataSize":I
    const/4 v4, 0x0

    .line 288
    .local v4, "mode":I
    sget-object v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->STOP:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_3

    .line 289
    const/4 v4, 0x0

    .line 290
    const/4 v7, 0x1

    .line 380
    :cond_2
    :goto_1
    if-lez v7, :cond_0

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->getCalcultatedData(I[J[JIJ[J)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-interface {v0, v1, v3}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 291
    :cond_3
    sget-object v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_4

    sget-object v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->START:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_9

    .line 293
    :cond_4
    const/4 v4, 0x0

    .line 295
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevStepCnt:J

    move-wide/from16 v31, v0

    sub-long v12, v29, v31

    .line 296
    .local v12, "diffStepCnt":J
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevStepCnt:J

    .line 297
    const/4 v7, 0x1

    .line 298
    new-array v5, v7, [J

    .line 299
    new-array v6, v7, [J

    .line 301
    sget-object v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->START:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_5

    const-wide/16 v29, 0x6

    cmp-long v3, v12, v29

    if-nez v3, :cond_5

    .line 302
    const-wide/16 v8, 0x0

    goto :goto_1

    .line 304
    :cond_5
    const-wide/16 v29, 0x0

    cmp-long v3, v12, v29

    if-lez v3, :cond_2

    .line 305
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v29, 0x1

    aget-wide v29, v3, v29

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v31, 0x0

    aget-wide v31, v3, v31

    sub-long v8, v29, v31

    .line 306
    const-wide/16 v29, 0x6

    cmp-long v3, v12, v29

    if-lez v3, :cond_8

    .line 307
    sget-object v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->START:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_7

    .line 308
    const-wide/16 v12, 0x6

    .line 309
    const-wide/16 v8, 0x0

    .line 316
    :cond_6
    :goto_2
    const/4 v3, 0x0

    aput-wide v12, v5, v3

    goto/16 :goto_1

    .line 311
    :cond_7
    const-wide/16 v12, 0x1

    goto :goto_2

    .line 313
    :cond_8
    const-wide/16 v29, 0x2

    cmp-long v3, v12, v29

    if-lez v3, :cond_6

    const-wide/16 v29, 0x6

    cmp-long v3, v12, v29

    if-gez v3, :cond_6

    .line 314
    const-wide/16 v12, 0x1

    goto :goto_2

    .line 319
    .end local v12    # "diffStepCnt":J
    :cond_9
    sget-object v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_2

    .line 320
    const/4 v4, 0x1

    .line 321
    new-instance v26, Ljava/util/StringTokenizer;

    const-string v3, ","

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .local v26, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v19, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 324
    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v24

    .line 325
    .local v24, "strToken":Ljava/lang/String;
    const-string v3, "\n"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 326
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 332
    .end local v24    # "strToken":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v29, 0x3

    move/from16 v0, v29

    if-lt v3, v0, :cond_0

    .line 336
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 337
    .local v20, "start_mpu_nano_time":J
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 338
    .local v14, "end_mpu_nano_time":J
    sub-long v29, v14, v20

    const-wide/32 v31, 0xf4240

    div-long v27, v29, v31

    .line 339
    .local v27, "total_interval":J
    const-wide/32 v29, 0x124f80

    cmp-long v3, v27, v29

    if-ltz v3, :cond_c

    .line 340
    const-wide/32 v8, 0xea60

    .line 344
    :goto_4
    const/4 v3, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 345
    const/4 v3, 0x1

    if-lt v7, v3, :cond_b

    const/16 v3, 0x14

    if-le v7, v3, :cond_d

    .line 346
    :cond_b
    const-string v3, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "the size of cadence is wrong. : size = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 342
    :cond_c
    const-wide/32 v29, 0xea60

    rem-long v8, v27, v29

    goto :goto_4

    .line 350
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v29, 0x1

    aget-wide v29, v3, v29

    sub-long v31, v14, v20

    const-wide/32 v33, 0xf4240

    div-long v31, v31, v33

    sub-long v22, v29, v31

    .line 351
    .local v22, "start_time":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v29, 0x0

    aget-wide v29, v3, v29

    cmp-long v3, v22, v29

    if-gez v3, :cond_e

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v29, 0x0

    aget-wide v29, v3, v29

    const-wide/16 v31, 0x1

    add-long v22, v29, v31

    .line 354
    :cond_e
    const v3, 0xea60

    add-int/lit8 v29, v7, -0x1

    mul-int v3, v3, v29

    int-to-long v0, v3

    move-wide/from16 v29, v0

    add-long v29, v29, v22

    const-wide/32 v31, 0xea60

    div-long v29, v29, v31

    const-wide/32 v31, 0xea60

    mul-long v16, v29, v31

    .line 355
    .local v16, "end_time":J
    new-array v5, v7, [J

    .line 356
    new-array v6, v7, [J

    .line 357
    new-array v10, v7, [J

    .line 359
    add-int/lit8 v11, v7, -0x1

    .line 360
    .local v11, "count":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_5
    move/from16 v0, v18

    if-ge v0, v7, :cond_2

    .line 361
    add-int/lit8 v3, v18, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 362
    .local v25, "temp":I
    shr-int/lit8 v3, v25, 0x8

    int-to-long v0, v3

    move-wide/from16 v29, v0

    aput-wide v29, v6, v11

    .line 363
    move/from16 v0, v25

    and-int/lit16 v3, v0, 0xff

    int-to-long v0, v3

    move-wide/from16 v29, v0

    aput-wide v29, v5, v11

    .line 364
    if-nez v11, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    sget-object v29, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, v29

    if-eq v3, v0, :cond_10

    .line 365
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v29, 0x0

    aget-wide v29, v3, v29

    cmp-long v3, v22, v29

    if-gez v3, :cond_f

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v29, 0x0

    aget-wide v29, v3, v29

    const-wide/16 v31, 0x1

    add-long v29, v29, v31

    aput-wide v29, v10, v11

    .line 375
    :goto_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevStepCnt:J

    move-wide/from16 v29, v0

    aget-wide v31, v6, v11

    add-long v29, v29, v31

    aget-wide v31, v5, v11

    add-long v29, v29, v31

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevStepCnt:J

    .line 376
    add-int/lit8 v11, v11, -0x1

    .line 360
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 368
    :cond_f
    aput-wide v22, v10, v11

    goto :goto_6

    .line 370
    :cond_10
    add-int/lit8 v3, v7, -0x1

    if-ne v11, v3, :cond_11

    .line 371
    aput-wide v16, v10, v11

    goto :goto_6

    .line 373
    :cond_11
    add-int/lit8 v3, v11, 0x1

    aget-wide v29, v10, v3

    const-wide/32 v31, 0xea60

    sub-long v29, v29, v31

    aput-wide v29, v10, v11

    goto :goto_6
.end method


# virtual methods
.method register()Z
    .locals 5

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "res":Z
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mEventThread:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$1;)V

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mEventThread:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

    .line 94
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mEventThread:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

    invoke-virtual {v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->start()V

    .line 96
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z

    .line 97
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    .line 98
    const/4 v0, 0x1

    .line 100
    :cond_1
    return v0
.end method

.method requestToUpdate()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 119
    const/4 v1, 0x0

    .line 121
    .local v1, "cadFile":Ljava/io/BufferedReader;
    const/16 v6, 0x400

    :try_start_0
    new-array v0, v6, [C

    .line 122
    .local v0, "buffer":[C
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/shealth_flush_cadence"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v1    # "cadFile":Ljava/io/BufferedReader;
    .local v2, "cadFile":Ljava/io/BufferedReader;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 124
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->ready()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 125
    invoke-virtual {v2, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    .line 126
    .local v4, "len":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 127
    const/4 v6, 0x0

    add-int/lit8 v7, v4, -0x1

    invoke-static {v0, v6, v7}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "strCad":Ljava/lang/String;
    sget-object v6, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    invoke-direct {p0, v6, v5}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    .end local v4    # "len":I
    .end local v5    # "strCad":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v7, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v7, v7, v9

    aput-wide v7, v6, v10

    .line 138
    if-eqz v2, :cond_1

    .line 140
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_0
    move-object v1, v2

    .line 147
    .end local v0    # "buffer":[C
    .end local v2    # "cadFile":Ljava/io/BufferedReader;
    .restart local v1    # "cadFile":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    return-void

    .line 132
    :catch_0
    move-exception v3

    .line 133
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v7, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v7, v7, v9

    aput-wide v7, v6, v10

    .line 138
    if-eqz v1, :cond_2

    .line 140
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 141
    :catch_1
    move-exception v3

    .line 143
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 134
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 135
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v7, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v7, v7, v9

    aput-wide v7, v6, v10

    .line 138
    if-eqz v1, :cond_2

    .line 140
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 141
    :catch_3
    move-exception v3

    goto :goto_3

    .line 137
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    iget-object v7, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v8, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v8, v8, v9

    aput-wide v8, v7, v10

    .line 138
    if-eqz v1, :cond_3

    .line 140
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 137
    :cond_3
    :goto_6
    throw v6

    .line 141
    :catch_4
    move-exception v3

    .line 143
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 141
    .end local v1    # "cadFile":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[C
    .restart local v2    # "cadFile":Ljava/io/BufferedReader;
    :catch_5
    move-exception v3

    .line 143
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 137
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "cadFile":Ljava/io/BufferedReader;
    .restart local v1    # "cadFile":Ljava/io/BufferedReader;
    goto :goto_5

    .line 134
    .end local v1    # "cadFile":Ljava/io/BufferedReader;
    .restart local v2    # "cadFile":Ljava/io/BufferedReader;
    :catch_6
    move-exception v3

    move-object v1, v2

    .end local v2    # "cadFile":Ljava/io/BufferedReader;
    .restart local v1    # "cadFile":Ljava/io/BufferedReader;
    goto :goto_4

    .line 132
    .end local v1    # "cadFile":Ljava/io/BufferedReader;
    .restart local v2    # "cadFile":Ljava/io/BufferedReader;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "cadFile":Ljava/io/BufferedReader;
    .restart local v1    # "cadFile":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method setLoggingMode(Z)V
    .locals 9
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 152
    const-string v4, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setLoggingMode() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/shealth_cadence_enable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 156
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    if-eqz v3, :cond_0

    .line 158
    if-eqz p1, :cond_3

    .line 159
    const/16 v4, 0x31

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v5, v5, v7

    aput-wide v5, v4, v8

    .line 172
    if-eqz v3, :cond_1

    .line 174
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_1
    move-object v2, v3

    .line 181
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    return-void

    .line 161
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    const/16 v4, 0x30

    :try_start_3
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 166
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    iget-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v5, v5, v7

    aput-wide v5, v4, v8

    .line 172
    if-eqz v2, :cond_2

    .line 174
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 175
    :catch_1
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 167
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 169
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 171
    iget-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v5, v5, v7

    aput-wide v5, v4, v8

    .line 172
    if-eqz v2, :cond_2

    .line 174
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 175
    :catch_3
    move-exception v0

    goto :goto_4

    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_6
    iget-object v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v6, v6, v7

    aput-wide v6, v5, v8

    .line 172
    if-eqz v2, :cond_4

    .line 174
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 171
    :cond_4
    :goto_7
    throw v4

    .line 175
    :catch_4
    move-exception v0

    .line 177
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 175
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    .line 177
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 167
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 164
    :catch_7
    move-exception v0

    goto :goto_3
.end method

.method setProperty(IDD)V
    .locals 6
    .param p1, "gender"    # I
    .param p2, "height"    # D
    .param p4, "weight"    # D

    .prologue
    .line 113
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;->native_pedometer_initialize(IDD)V

    .line 114
    return-void
.end method

.method unregister()V
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z

    .line 107
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 108
    return-void
.end method
