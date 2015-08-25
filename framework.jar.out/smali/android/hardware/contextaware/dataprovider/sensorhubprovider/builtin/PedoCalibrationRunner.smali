.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "PedoCalibrationRunner.java"

# interfaces
.implements Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;
    }
.end annotation


# instance fields
.field private final mGpsPositionManager:Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;

.field private mScaleFactor:[B


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 79
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;

    invoke-direct {v0, p2, p3, p0}, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;)V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner;->mGpsPositionManager:Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;

    .line 81
    return-void
.end method

.method private sendDataToSensorHub()V
    .locals 4

    .prologue
    .line 440
    const/16 v0, 0x17

    const/16 v1, 0x2e

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner;->mScaleFactor:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 444
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    .line 384
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 385
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 386
    return-void
.end method

.method public final disable()V
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 372
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner;->mGpsPositionManager:Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->disable()V

    .line 374
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 375
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 356
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 357
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 359
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOCALIBRATION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 270
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MessageType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "StepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "StepLength"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ScaleFactor"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ScaleFactorCount"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ScaleFactorArray"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 116
    .local v0, "packet":[B
    aput-byte v2, v0, v2

    .line 117
    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 119
    return-object v0
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 133
    .local v0, "packet":[B
    aput-byte v2, v0, v2

    .line 134
    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 136
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 397
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 398
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0x2e

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 332
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 344
    return-object p0
.end method

.method public final parse([BI)I
    .locals 14
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 147
    move/from16 v9, p2

    .line 149
    .local v9, "tmpNext":I
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "names":[Ljava/lang/String;
    array-length v11, p1

    sub-int/2addr v11, v9

    add-int/lit8 v11, v11, -0x1

    if-gez v11, :cond_0

    .line 154
    sget-object v11, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v11}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 155
    const/4 v11, -0x1

    .line 257
    :goto_0
    return v11

    .line 158
    :cond_0
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "tmpNext":I
    .local v10, "tmpNext":I
    aget-byte v4, p1, v9

    .line 160
    .local v4, "msgType":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "msgType:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 162
    const/4 v11, 0x1

    if-ne v4, v11, :cond_2

    .line 163
    array-length v11, p1

    sub-int/2addr v11, v10

    add-int/lit8 v11, v11, -0x1

    if-gez v11, :cond_1

    .line 164
    sget-object v11, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v11}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 165
    const/4 v9, -0x1

    move v11, v9

    move v9, v10

    .end local v10    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    goto :goto_0

    .line 168
    .end local v9    # "tmpNext":I
    .restart local v10    # "tmpNext":I
    :cond_1
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    aget-byte v11, p1, v10

    int-to-long v1, v11

    .line 169
    .local v1, "gpsOnTime":J
    iget-object v11, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner;->mGpsPositionManager:Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;

    const-wide/16 v12, 0x3e8

    mul-long/2addr v12, v1

    invoke-virtual {v11, v12, v13}, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->setGpsUpdateTime(J)V

    .line 170
    iget-object v11, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner;->mGpsPositionManager:Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;

    invoke-virtual {v11}, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->enable()V

    .end local v1    # "gpsOnTime":J
    :goto_1
    move v11, v9

    .line 257
    goto :goto_0

    .line 172
    .end local v9    # "tmpNext":I
    .restart local v10    # "tmpNext":I
    :cond_2
    const/4 v11, 0x2

    if-ne v4, v11, :cond_4

    .line 173
    array-length v11, p1

    sub-int/2addr v11, v10

    add-int/lit8 v11, v11, -0x1

    if-gez v11, :cond_3

    .line 174
    sget-object v11, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v11}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 175
    const/4 v9, -0x1

    move v11, v9

    move v9, v10

    .end local v10    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    goto :goto_0

    .line 178
    .end local v9    # "tmpNext":I
    .restart local v10    # "tmpNext":I
    :cond_3
    add-int/lit8 v9, v10, 0x1

    .line 179
    .end local v10    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    iget-object v11, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner;->mGpsPositionManager:Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;

    invoke-virtual {v11}, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->disable()V

    goto :goto_1

    .line 181
    .end local v9    # "tmpNext":I
    .restart local v10    # "tmpNext":I
    :cond_4
    const/4 v11, 0x3

    if-ne v4, v11, :cond_6

    .line 187
    array-length v11, p1

    sub-int/2addr v11, v10

    const/16 v12, 0xc

    if-ge v11, v12, :cond_5

    .line 188
    sget-object v11, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v11}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 189
    const/4 v9, -0x1

    move v11, v9

    move v9, v10

    .end local v10    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    goto :goto_0

    .line 192
    .end local v9    # "tmpNext":I
    .restart local v10    # "tmpNext":I
    :cond_5
    const/4 v11, 0x4

    new-array v11, v11, [B

    const/4 v12, 0x0

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    aget-byte v13, p1, v10

    aput-byte v13, v11, v12

    const/4 v12, 0x1

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v10    # "tmpNext":I
    aget-byte v13, p1, v9

    aput-byte v13, v11, v12

    const/4 v12, 0x2

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    aget-byte v13, p1, v10

    aput-byte v13, v11, v12

    const/4 v12, 0x3

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v10    # "tmpNext":I
    aget-byte v13, p1, v9

    aput-byte v13, v11, v12

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 199
    .local v7, "stepCount":I
    const/4 v11, 0x4

    new-array v11, v11, [B

    const/4 v12, 0x0

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    aget-byte v13, p1, v10

    aput-byte v13, v11, v12

    const/4 v12, 0x1

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v10    # "tmpNext":I
    aget-byte v13, p1, v9

    aput-byte v13, v11, v12

    const/4 v12, 0x2

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    aget-byte v13, p1, v10

    aput-byte v13, v11, v12

    const/4 v12, 0x3

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v10    # "tmpNext":I
    aget-byte v13, p1, v9

    aput-byte v13, v11, v12

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float v8, v11, v12

    .line 206
    .local v8, "stepLength":F
    const/4 v11, 0x4

    new-array v11, v11, [B

    const/4 v12, 0x0

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    aget-byte v13, p1, v10

    aput-byte v13, v11, v12

    const/4 v12, 0x1

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v10    # "tmpNext":I
    aget-byte v13, p1, v9

    aput-byte v13, v11, v12

    const/4 v12, 0x2

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    aget-byte v13, p1, v10

    aput-byte v13, v11, v12

    const/4 v12, 0x3

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v10    # "tmpNext":I
    aget-byte v13, p1, v9

    aput-byte v13, v11, v12

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float v6, v11, v12

    .line 213
    .local v6, "scaleFactor":F
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v11

    sget-object v12, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->MessageType:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->val:I
    invoke-static {v12}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v5, v12

    invoke-virtual {v11, v12, v4}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 214
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v11

    sget-object v12, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->StepCount:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->val:I
    invoke-static {v12}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v5, v12

    invoke-virtual {v11, v12, v7}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 215
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v11

    sget-object v12, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->StepLength:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->val:I
    invoke-static {v12}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v5, v12

    invoke-virtual {v11, v12, v8}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 216
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v11

    sget-object v12, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->ScaleFactor:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->val:I
    invoke-static {v12}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v5, v12

    invoke-virtual {v11, v12, v6}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 218
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move v9, v10

    .line 220
    .end local v10    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    goto/16 :goto_1

    .end local v6    # "scaleFactor":F
    .end local v7    # "stepCount":I
    .end local v8    # "stepLength":F
    .end local v9    # "tmpNext":I
    .restart local v10    # "tmpNext":I
    :cond_6
    const/4 v11, 0x4

    if-ne v4, v11, :cond_a

    .line 221
    const/4 v0, 0x0

    .line 224
    .local v0, "dataCount":I
    array-length v11, p1

    sub-int/2addr v11, v10

    add-int/lit8 v11, v11, -0x1

    if-gez v11, :cond_7

    .line 225
    sget-object v11, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v11}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 226
    const/4 v9, -0x1

    move v11, v9

    move v9, v10

    .end local v10    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    goto/16 :goto_0

    .line 229
    .end local v9    # "tmpNext":I
    .restart local v10    # "tmpNext":I
    :cond_7
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    aget-byte v0, p1, v10

    .line 232
    array-length v11, p1

    sub-int/2addr v11, v9

    mul-int/lit8 v12, v0, 0x4

    if-ge v11, v12, :cond_8

    .line 233
    sget-object v11, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v11}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 234
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 237
    :cond_8
    new-array v6, v0, [F

    .line 239
    .local v6, "scaleFactor":[F
    const/4 v3, 0x0

    .local v3, "i":I
    move v10, v9

    .end local v9    # "tmpNext":I
    .restart local v10    # "tmpNext":I
    :goto_2
    if-ge v3, v0, :cond_9

    .line 240
    const/4 v11, 0x4

    new-array v11, v11, [B

    const/4 v12, 0x0

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    aget-byte v13, p1, v10

    aput-byte v13, v11, v12

    const/4 v12, 0x1

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v10    # "tmpNext":I
    aget-byte v13, p1, v9

    aput-byte v13, v11, v12

    const/4 v12, 0x2

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    aget-byte v13, p1, v10

    aput-byte v13, v11, v12

    const/4 v12, 0x3

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v10    # "tmpNext":I
    aget-byte v13, p1, v9

    aput-byte v13, v11, v12

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float/2addr v11, v12

    aput v11, v6, v3

    .line 239
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 248
    :cond_9
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v11

    sget-object v12, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->MessageType:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->val:I
    invoke-static {v12}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v5, v12

    invoke-virtual {v11, v12, v4}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 249
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v11

    sget-object v12, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->ScaleFactorCount:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->val:I
    invoke-static {v12}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v5, v12

    invoke-virtual {v11, v12, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 250
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v11

    sget-object v12, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->ScaleFactorArray:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;

    # getter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->val:I
    invoke-static {v12}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;->access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner$ContextValIndex;)I

    move-result v12

    aget-object v12, v5, v12

    invoke-virtual {v11, v12, v6}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 252
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .end local v0    # "dataCount":I
    .end local v3    # "i":I
    .end local v6    # "scaleFactor":[F
    :cond_a
    move v9, v10

    .end local v10    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    goto/16 :goto_1
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 5
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    .line 291
    const/4 v1, 0x1

    .line 293
    .local v1, "result":Z
    const/16 v4, 0x3e

    if-ne p1, v4, :cond_4

    .line 294
    const-string v4, "Scale Factor Property"

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 296
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 299
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 300
    :cond_0
    const-string/jumbo v4, "value is null"

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 320
    .end local v2    # "str":Ljava/lang/String;
    :goto_0
    return v3

    .line 304
    .restart local v2    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 306
    .local v0, "dataPacket":[B
    if-eqz v0, :cond_2

    array-length v4, v0

    if-gtz v4, :cond_3

    .line 307
    :cond_2
    sget-object v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LENGTH_ZERO:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    invoke-static {v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_3
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iput-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner;->mScaleFactor:[B

    .line 314
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner;->sendDataToSensorHub()V

    .end local v0    # "dataPacket":[B
    .end local v2    # "str":Ljava/lang/String;
    :goto_1
    move v3, v1

    .line 320
    goto :goto_0

    .line 318
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateCurrentPosition(I[IDDDDFFI)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "utcTime"    # [I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "distance"    # D
    .param p11, "speed"    # F
    .param p12, "accuracy"    # F
    .param p13, "satelliteCount"    # I

    .prologue
    .line 406
    const-string/jumbo v9, "updateCurrentPosition"

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 407
    const-wide v9, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v9, p3

    double-to-int v5, v9

    .line 408
    .local v5, "lat":I
    const-wide v9, 0x412e848000000000L    # 1000000.0

    mul-double v9, v9, p5

    double-to-int v6, v9

    .line 409
    .local v6, "lon":I
    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double v9, v9, p7

    double-to-int v2, v9

    .line 410
    .local v2, "alt":I
    move/from16 v0, p12

    float-to-int v9, v0

    int-to-byte v1, v9

    .line 412
    .local v1, "acc":B
    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v9, v9, p11

    float-to-int v7, v9

    .line 414
    .local v7, "speedInt":I
    const/4 v8, 0x1

    .line 416
    .local v8, "typeB":B
    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double v9, v9, p9

    double-to-int v4, v9

    .line 418
    .local v4, "dist":I
    const/16 v9, 0x16

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 420
    .local v3, "data":Ljava/nio/ByteBuffer;
    const/4 v9, 0x4

    invoke-static {v5, v9}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 421
    const/4 v9, 0x4

    invoke-static {v6, v9}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 422
    const/4 v9, 0x4

    invoke-static {v2, v9}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 423
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 424
    const/4 v9, 0x0

    aget v9, p2, v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 425
    const/4 v9, 0x1

    aget v9, p2, v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 426
    const/4 v9, 0x2

    aget v9, p2, v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 427
    const/4 v9, 0x1

    move/from16 v0, p13

    invoke-static {v0, v9}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 428
    const/4 v9, 0x2

    invoke-static {v7, v9}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 429
    const/4 v9, 0x2

    invoke-static {v4, v9}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 430
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 433
    const/16 v9, 0x16

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedoCalibrationRunner;->sendCommonValueToSensorHub(B[B)Z

    .line 436
    return-void
.end method
