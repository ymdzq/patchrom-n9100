.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;
.source "ActivityTrackerBatchRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$1;,
        Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;
    }
.end annotation


# static fields
.field private static CHECK_PERIOD:J = 0x0L

.field private static DEFAULT_ACTIVITY_RECORDING_PERIOD:I = 0x0

.field private static final DEFAULT_BATCHING_PERIOD:I = 0x4b0


# instance fields
.field private final mBatchingPeriod:I

.field private final mListActivityInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const v0, 0x1b7740

    sput v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->DEFAULT_ACTIVITY_RECORDING_PERIOD:I

    .line 51
    const-wide/16 v0, 0x4e20

    sput-wide v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->CHECK_PERIOD:J

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 54
    const/16 v0, 0x4b0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mBatchingPeriod:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    .line 83
    return-void
.end method

.method private getMostActivity()I
    .locals 13

    .prologue
    .line 187
    iget-object v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 190
    .local v5, "size":I
    const/4 v4, 0x1

    .line 193
    .local v4, "retActivity":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 195
    if-lez v5, :cond_0

    .line 197
    iget-object v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v9, v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    sget-wide v11, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->CHECK_PERIOD:J

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    .line 199
    iget-object v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget v4, v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    .line 233
    :cond_0
    :goto_0
    return v4

    .line 201
    :cond_1
    const-wide/16 v6, 0x0

    .line 202
    .local v6, "sumDuration":J
    add-int/lit8 v1, v5, -0x1

    .line 203
    .local v1, "i":I
    const/4 v3, 0x0

    .line 204
    .local v3, "maxWeight":F
    const/4 v2, 0x1

    .line 205
    .local v2, "k":I
    add-int/lit8 v0, v5, -0x1

    .line 207
    .local v0, "actIndex":I
    :goto_1
    const-wide/16 v9, 0x7530

    cmp-long v9, v6, v9

    if-gtz v9, :cond_4

    if-ltz v1, :cond_4

    .line 210
    iget-object v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v9, v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    const-wide/16 v11, 0xbb8

    cmp-long v9, v9, v11

    if-gez v9, :cond_2

    .line 211
    add-int/lit8 v1, v1, -0x1

    .line 212
    goto :goto_1

    .line 215
    :cond_2
    iget-object v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v9, v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    int-to-long v11, v2

    div-long/2addr v9, v11

    long-to-float v8, v9

    .line 216
    .local v8, "weight":F
    cmpg-float v9, v3, v8

    if-gez v9, :cond_3

    .line 217
    move v3, v8

    .line 218
    move v0, v1

    .line 219
    add-int/lit8 v2, v2, 0x1

    .line 222
    :cond_3
    iget-object v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v9, v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    add-long/2addr v6, v9

    .line 223
    add-int/lit8 v1, v1, -0x1

    .line 224
    goto :goto_1

    .line 227
    .end local v8    # "weight":F
    :cond_4
    iget-object v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget v4, v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    goto :goto_0
.end method

.method private updateActivityInfo([I[J[II)V
    .locals 14
    .param p1, "activityType"    # [I
    .param p2, "duration"    # [J
    .param p3, "accuracy"    # [I
    .param p4, "totalCnt"    # I

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getTimeStamp()J

    move-result-wide v7

    .line 242
    .local v7, "timeStamp":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move/from16 v0, p4

    if-ge v1, v0, :cond_5

    .line 245
    aget v9, p1, v1

    if-eqz v9, :cond_0

    aget v9, p3, v1

    if-nez v9, :cond_1

    .line 242
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_1
    iget-object v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 254
    .local v4, "size":I
    if-eqz v4, :cond_2

    .line 255
    aget v10, p1, v1

    iget-object v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget v9, v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    if-ne v10, v9, :cond_2

    .line 256
    iget-object v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v10, v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    aget-wide v12, p2, v1

    add-long/2addr v10, v12

    iput-wide v10, v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    goto :goto_1

    .line 262
    :cond_2
    new-instance v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    const/4 v9, 0x0

    invoke-direct {v2, p0, v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;-><init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$1;)V

    .line 263
    .local v2, "info":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;
    aget v9, p1, v1

    iput v9, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    .line 264
    iget v9, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    .line 265
    const/4 v9, 0x1

    iput v9, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->activityType:I

    .line 268
    :cond_3
    aget-wide v9, p2, v1

    iput-wide v9, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->duration:J

    .line 269
    aget v9, p3, v1

    iput v9, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->accuracy:I

    .line 270
    if-nez v1, :cond_4

    .line 271
    iput-wide v7, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->timestamp:J

    .line 275
    :goto_2
    iget-object v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 273
    :cond_4
    add-int/lit8 v9, v1, -0x1

    aget-wide v9, p2, v9

    add-long/2addr v9, v7

    iput-wide v9, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->timestamp:J

    goto :goto_2

    .line 279
    .end local v2    # "info":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;
    .end local v4    # "size":I
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget v11, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->DEFAULT_ACTIVITY_RECORDING_PERIOD:I

    int-to-long v11, v11

    sub-long v5, v9, v11

    .line 283
    .local v5, "startTime":J
    const/4 v1, 0x0

    :goto_3
    iget-object v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_6

    .line 284
    iget-object v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;

    iget-wide v9, v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner$ActivityInfo;->timestamp:J

    cmp-long v9, v9, v5

    if-ltz v9, :cond_7

    .line 289
    :cond_6
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4
    if-ge v3, v1, :cond_8

    .line 290
    iget-object v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 289
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 283
    .end local v3    # "j":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 292
    .restart local v3    # "j":I
    :cond_8
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 327
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->mListActivityInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 328
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->clear()V

    .line 329
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 314
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 315
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->disable()V

    .line 316
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 302
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 303
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->enable()V

    .line 304
    return-void
.end method

.method protected final getBatchingPeriod()I
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x4b0

    return v0
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_BATCH:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OperationMode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TimeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Count"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ActivityType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Accuracy"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MostActivity"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 363
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getModeType()B
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x2

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 339
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 351
    return-object p0
.end method

.method protected final parseData([BI)I
    .locals 11
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v8, -0x1

    .line 141
    move v5, p2

    .line 143
    .local v5, "tmpNext":I
    array-length v9, p1

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_0

    .line 144
    sget-object v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v6, v8

    .line 181
    :goto_0
    return v6

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "names":[Ljava/lang/String;
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "tmpNext":I
    .local v6, "tmpNext":I
    aget-byte v7, p1, v5

    .line 151
    .local v7, "totalCnt":I
    if-gtz v7, :cond_1

    .line 152
    sget-object v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_BATCH_DATA_COUNT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v5, v6

    .end local v6    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    move v6, v8

    .line 153
    goto :goto_0

    .line 155
    .end local v5    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-virtual {v9, v10, v7}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 157
    new-array v1, v7, [I

    .line 158
    .local v1, "activityType":[I
    new-array v0, v7, [I

    .line 159
    .local v0, "accuracy":[I
    new-array v2, v7, [J

    .line 161
    .local v2, "duration":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v7, :cond_3

    .line 162
    array-length v9, p1

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x5

    if-gez v9, :cond_2

    .line 163
    sget-object v9, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v5, v6

    .end local v6    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    move v6, v8

    .line 164
    goto :goto_0

    .line 167
    .end local v5    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    :cond_2
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v9, p1, v6

    aput v9, v1, v3

    .line 168
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    aget-byte v9, p1, v5

    aput v9, v0, v3

    .line 169
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v9, p1, v6

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    aget-byte v10, p1, v5

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v9, v10

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v10, p1, v6

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v9, v10

    int-to-long v9, v9

    aput-wide v9, v2, v3

    .line 161
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    .end local v5    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    goto :goto_1

    .line 174
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v9, v4, v9

    invoke-virtual {v8, v9, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 175
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x4

    aget-object v9, v4, v9

    invoke-virtual {v8, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 176
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x5

    aget-object v9, v4, v9

    invoke-virtual {v8, v9, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 178
    invoke-direct {p0, v1, v2, v0, v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->updateActivityInfo([I[J[II)V

    .line 179
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v8

    const/4 v9, 0x6

    aget-object v9, v4, v9

    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchRunner;->getMostActivity()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    move v5, v6

    .line 181
    .end local v6    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    goto/16 :goto_0
.end method
