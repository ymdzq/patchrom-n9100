.class final Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;
.super Ljava/lang/Object;
.source "MotionRecognitionPalmMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionPalmMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GestureSurfaceTouch"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "baseContext"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    .line 117
    return-void
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string v2, "TRUE"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 179
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method


# virtual methods
.method public onInitSweep(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public onPalm(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 155
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->g_IsBootCompleted:Z
    invoke-static {}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$400()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const-string v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    # setter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->g_IsBootCompleted:Z
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$402(Z)Z

    .line 157
    :cond_0
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->g_IsBootCompleted:Z
    invoke-static {}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PALM_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "statusIntent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 166
    .end local v0    # "statusIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 162
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .restart local v0    # "statusIntent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public onSweepDown(I)Z
    .locals 5
    .param p1, "direction"    # I

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "callTouchLock":I
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->g_IsBootCompleted:Z
    invoke-static {}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$400()Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    const-string v2, "sys.boot_completed"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    # setter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->g_IsBootCompleted:Z
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$402(Z)Z

    .line 127
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_touch_lock"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 131
    :goto_0
    if-nez v0, :cond_1

    .line 132
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->g_IsBootCompleted:Z
    invoke-static {}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$400()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SWEEP_RIGHT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, "statusIntent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 135
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    const-string v3, "com.android.server.palmMotion"

    const-string v4, "PALM"

    invoke-static {v2, v3, v4}, Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v1    # "statusIntent":Landroid/content/Intent;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    return v2

    .line 136
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->g_IsBootCompleted:Z
    invoke-static {}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$400()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SWEEP_LEFT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .restart local v1    # "statusIntent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 139
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    const-string v3, "com.android.server.palmMotion"

    const-string v4, "PALM"

    invoke-static {v2, v3, v4}, Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 140
    .end local v1    # "statusIntent":Landroid/content/Intent;
    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->g_IsBootCompleted:Z
    invoke-static {}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SWEEP_DOWN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .restart local v1    # "statusIntent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 128
    .end local v1    # "statusIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
