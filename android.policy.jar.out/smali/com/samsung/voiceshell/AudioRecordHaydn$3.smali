.class Lcom/samsung/voiceshell/AudioRecordHaydn$3;
.super Ljava/lang/Object;
.source "AudioRecordHaydn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/voiceshell/AudioRecordHaydn;->initThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;


# direct methods
.method constructor <init>(Lcom/samsung/voiceshell/AudioRecordHaydn;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 280
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$200(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$300(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 283
    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v13

    .line 441
    .local v13, "t":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception error in Enroll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v13    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 287
    :cond_2
    const/4 v10, 0x0

    .line 288
    .local v10, "iResult":I
    const/4 v15, 0x0

    .line 289
    .local v15, "vResult":I
    const/4 v14, 0x0

    .line 291
    .local v14, "uResult":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->frameLeftNumber:[S

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-short v3, v1, v2

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v3, v3, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I
    invoke-static {v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$500(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioRecord;->read([SII)I

    move-result v2

    # setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$402(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I

    .line 294
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->weHaveNoModel:Z
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$600(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z

    move-result v1

    if-eqz v1, :cond_6

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$700()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$800(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 343
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$800(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$800(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    .line 373
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->processedSample:I
    invoke-static {v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1100(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    add-int/2addr v2, v3

    # setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->processedSample:I
    invoke-static {v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1102(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I
    invoke-static {v4}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$900(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/voiceshell/VoiceEngine;->computeEnergyFrame([SII)I

    move-result v12

    .line 378
    .local v12, "rms":I
    const-wide v1, 0x3ff3333333333333L    # 1.2

    int-to-float v3, v12

    float-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x400dc28f5c28f5c3L    # 3.72

    sub-double/2addr v1, v3

    double-to-int v12, v1

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1200(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    if-le v12, v1, :cond_10

    .line 381
    const-wide v1, 0x3feccccccccccccdL    # 0.9

    int-to-float v3, v12

    float-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x3fb999999999999aL    # 0.1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I
    invoke-static {v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1200(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v5

    int-to-float v5, v5

    float-to-double v5, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v12, v1

    .line 385
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I
    invoke-static {v1, v12}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1202(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    const/16 v2, 0x5dc

    if-le v1, v2, :cond_5

    .line 389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1, v12}, Lcom/samsung/voiceshell/AudioRecordHaydn;->rmsSendHandlerMessage(I)V

    .line 393
    :cond_5
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    if-ge v11, v1, :cond_11

    .line 395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->temp:[S
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1300()[S

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xa0

    invoke-static {v1, v11, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 397
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->temp:[S
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1300()[S

    move-result-object v2

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->stats:[I
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1400()[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/voiceshell/VoiceEngine;->getSpectrum([S[I)I
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 401
    :goto_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->stats:[I
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1400()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->spectrumSendHandlerMessage([I)V

    .line 393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$500(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v11, v1

    goto :goto_4

    .line 297
    .end local v11    # "index":I
    .end local v12    # "rms":I
    :cond_6
    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$700()I

    move-result v1

    if-nez v1, :cond_9

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->isSensoryUDTSIDEngine:Z

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->isPipeRecogEnrollSuccess:Z

    if-nez v1, :cond_8

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->processEnroll([SI)I

    move-result v14

    .line 303
    const/4 v1, 0x2

    if-ne v14, v1, :cond_7

    .line 305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->isPipeRecogEnrollSuccess:Z

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "secMM: isPipeRecogEnrollSuccess = true"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEnroll Result : WType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", WMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 309
    :cond_7
    if-nez v14, :cond_3

    .line 311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: processEnroll uResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->isPipeRecogEnrollSuccess:Z

    goto/16 :goto_1

    .line 315
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->isSensoryUDTSIDEngine:Z

    if-nez v1, :cond_3

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/voiceshell/VoiceEngine;->store1chPCM([SI)I

    move-result v10

    .line 318
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 321
    :cond_9
    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$700()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 323
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->isSensoryUDTSIDEngine:Z

    if-eqz v1, :cond_a

    .line 325
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    sget-object v4, Lcom/samsung/voiceshell/VoiceEngine;->ROOT:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v5, v5, Lcom/samsung/voiceshell/AudioRecordHaydn;->CommandType:[S

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->processVerify([SILjava/lang/String;[S)I

    move-result v10

    goto/16 :goto_1

    .line 329
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    sget-object v4, Lcom/samsung/voiceshell/VoiceEngine;->ROOT:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v5, v5, Lcom/samsung/voiceshell/AudioRecordHaydn;->frameLeftNumber:[S

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v6, v6, Lcom/samsung/voiceshell/AudioRecordHaydn;->CommandType:[S

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/voiceshell/VoiceEngine;->processBuffer([SILjava/lang/String;[S[S)I

    move-result v10

    .line 330
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: processBuffer iResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CommandType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v3, v3, Lcom/samsung/voiceshell/AudioRecordHaydn;->CommandType:[S

    const/4 v4, 0x0

    aget-short v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 336
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$800(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: weHaveNoModel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->weHaveNoModel:Z
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$600(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", m_nRecordingMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$700()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/16 v10, -0xc

    goto/16 :goto_1

    .line 346
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$800(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    if-lez v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->isSensoryUDTSIDEngine:Z

    if-eqz v1, :cond_e

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->isNewVersionSensoryWakeUpLib:Z

    if-eqz v1, :cond_d

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-wide v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleInitReturn:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v4, v4, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I
    invoke-static {v7}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$900(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual/range {v1 .. v8}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;->phrasespotPipe(J[SJJ)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleResult:Ljava/lang/String;

    .line 351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: phrasespotPipe consoleResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v3, v3, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 355
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->ProcessShortArray([SI)I

    move-result v15

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: processBuffer vResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 359
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$800(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isCustomVoiceTalkEnable:Z
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->isNewVersionSensoryWakeUpLib:Z

    if-eqz v1, :cond_f

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-wide v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleInitReturn:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v4, v4, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I
    invoke-static {v7}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$900(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual/range {v1 .. v8}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;->phrasespotPipe(J[SJJ)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleResult:Ljava/lang/String;

    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: phrasespotPipe consoleResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v3, v3, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 368
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I
    invoke-static {v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->ProcessShortArray([SI)I

    move-result v15

    .line 369
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: processBuffer vResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 383
    .restart local v12    # "rms":I
    :cond_10
    const-wide/high16 v1, 0x3fd0000000000000L    # 0.25

    int-to-float v3, v12

    float-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I
    invoke-static {v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$1200(Lcom/samsung/voiceshell/AudioRecordHaydn;)I

    move-result v5

    int-to-float v5, v5

    float-to-double v5, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v12, v1

    goto/16 :goto_3

    .line 398
    .restart local v11    # "index":I
    :catch_1
    move-exception v9

    .line 399
    .local v9, "e":Ljava/lang/NoSuchMethodError;
    const-string v1, "test_engine"

    const-string v2, "old Binary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 404
    .end local v9    # "e":Ljava/lang/NoSuchMethodError;
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->CommandType:[S

    const/4 v3, 0x0

    aget-short v2, v2, v3

    iput-short v2, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->VerifiedCommand:S

    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleResult:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SendHandlerMessage(IS)V

    .line 409
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleResult:Ljava/lang/String;

    goto/16 :goto_0

    .line 411
    :cond_12
    const/4 v1, 0x1

    if-ne v15, v1, :cond_14

    .line 413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$100(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SendHandlerMessage(IS)V

    .line 416
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z
    invoke-static {v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$302(Lcom/samsung/voiceshell/AudioRecordHaydn;Z)Z

    goto/16 :goto_0

    .line 418
    :cond_14
    const/4 v1, 0x1

    if-ne v10, v1, :cond_16

    .line 420
    const/4 v1, 0x2

    # setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$702(I)I

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1, v10}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setAdaptation(I)I

    .line 424
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$100(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-short v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->VerifiedCommand:S

    invoke-virtual {v1, v10, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SendHandlerMessage(IS)V

    .line 427
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z
    invoke-static {v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$302(Lcom/samsung/voiceshell/AudioRecordHaydn;Z)Z

    goto/16 :goto_0

    .line 429
    :cond_16
    const/4 v1, -0x3

    if-eq v10, v1, :cond_17

    const/16 v1, -0xc

    if-ne v10, v1, :cond_0

    .line 431
    :cond_17
    const/4 v1, 0x2

    # setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$702(I)I

    .line 433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$100(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-short v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->VerifiedCommand:S

    invoke-virtual {v1, v10, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SendHandlerMessage(IS)V

    .line 436
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/voiceshell/AudioRecordHaydn$3;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z
    invoke-static {v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$302(Lcom/samsung/voiceshell/AudioRecordHaydn;Z)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method