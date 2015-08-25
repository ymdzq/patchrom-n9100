.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickshotConcept"
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FRONT:I = 0x1

.field private static final QUICKSHOT_POLICY_AM_WAKE_UP:I = 0x4

.field private static final QUICKSHOT_POLICY_DISMISS_KEYGUARD:I = 0x8

.field private static final QUICKSHOT_POLICY_FRONT_CAMERA:I = 0x10

.field private static final QUICKSHOT_POLICY_LAUNCH:I = 0x1

.field private static final QUICKSHOT_POLICY_NOTHING:I = 0x0

.field private static final QUICKSHOT_POLICY_PM_WAKE_UP:I = 0x2

.field private static final REAR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Quickshot"


# instance fields
.field private final CNAME_CAMCORDER:Landroid/content/ComponentName;

.field private final CNAME_CAMERA:Landroid/content/ComponentName;

.field private final CNAME_LAUNCHER:Landroid/content/ComponentName;

.field private final mCameraIntent:Landroid/content/Intent;

.field private final mCameraSecureIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .locals 3

    .prologue
    .line 4269
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4265
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->CNAME_CAMERA:Landroid/content/ComponentName;

    .line 4266
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camcorder"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->CNAME_CAMCORDER:Landroid/content/ComponentName;

    .line 4267
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.launcher"

    const-string v2, "com.android.launcher2.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->CNAME_LAUNCHER:Landroid/content/ComponentName;

    .line 4270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->mCameraIntent:Landroid/content/Intent;

    .line 4271
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->mCameraIntent:Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4272
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->mCameraIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4273
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->mCameraIntent:Landroid/content/Intent;

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4274
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->mCameraIntent:Landroid/content/Intent;

    const-string v1, "launchMode"

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4275
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->mCameraIntent:Landroid/content/Intent;

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4278
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->mCameraIntent:Landroid/content/Intent;

    const-string v1, "quickaccess"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4280
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->mCameraIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->mCameraSecureIntent:Landroid/content/Intent;

    .line 4281
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->mCameraSecureIntent:Landroid/content/Intent;

    const-string v1, "launchMode"

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4282
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;

    .prologue
    .line 4248
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;

    .prologue
    .line 4248
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->mCameraSecureIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;

    .prologue
    .line 4248
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->mCameraIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;
    .param p1, "x1"    # I

    .prologue
    .line 4248
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->handleEvent(I)Z

    move-result v0

    return v0
.end method

.method private determinePolicy(I)I
    .locals 9
    .param p1, "keyCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 4285
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-boolean v6, v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mQuickshotEnable:Z

    if-nez v6, :cond_0

    .line 4287
    const-string v6, "Quickshot"

    const-string v7, "determinePolicy: camera_quick_access feature off"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4373
    :goto_0
    return v2

    .line 4292
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 4294
    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 4296
    const-string v6, "Quickshot"

    const-string v7, "determinePolicy: componentName is null."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4302
    :cond_1
    const/4 v5, 0x0

    .line 4304
    .local v5, "policy":I
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    .line 4305
    .local v4, "isScreenOn":Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->CNAME_CAMERA:Landroid/content/ComponentName;

    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->CNAME_CAMCORDER:Landroid/content/ComponentName;

    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 4306
    .local v2, "isCameraTop":Z
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->CNAME_LAUNCHER:Landroid/content/ComponentName;

    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 4309
    .local v3, "isLauncherTop":Z
    const-string v6, "Quickshot"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "determinePolicy: topActivity= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isCameraTop="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isLauncherTop="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isScreenOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4315
    const-string v6, "Quickshot"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "determinePolicy: mKeyguardDelegate.isShowing()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v8, v8, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mKeyguardDelegate.isShowingAndNotHidden()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v8, v8, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4319
    if-eqz v2, :cond_c

    .line 4320
    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v6

    if-nez v6, :cond_4

    move v2, v5

    .line 4321
    goto/16 :goto_0

    .line 4324
    :cond_4
    or-int/lit8 v5, v5, 0x4

    .line 4326
    if-nez v4, :cond_5

    .line 4327
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v6

    if-nez v6, :cond_5

    .line 4333
    :cond_5
    or-int/lit8 v5, v5, 0x8

    .line 4336
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4337
    or-int/lit8 v5, v5, 0x1

    .line 4345
    :cond_6
    :goto_1
    const/16 v6, 0x123

    if-ne p1, v6, :cond_7

    .line 4346
    or-int/lit8 v5, v5, 0x10

    .line 4350
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4351
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_8

    .line 4352
    const-string v6, " QUICKSHOT_POLICY_LAUNCH"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4354
    :cond_8
    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_9

    .line 4355
    const-string v6, " QUICKSHOT_POLICY_PM_WAKE_UP"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4357
    :cond_9
    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_a

    .line 4358
    const-string v6, " QUICKSHOT_POLICY_AM_WAKE_UP"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4360
    :cond_a
    and-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_b

    .line 4361
    const-string v6, " QUICKSHOT_POLICY_DISMISS_KEYGUARD"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4364
    :cond_b
    and-int/lit8 v6, v5, 0x10

    if-eqz v6, :cond_e

    .line 4365
    const-string v6, " QUICKSHOT_POLICY_FRONT_CAMERA"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4370
    :goto_2
    const-string v6, "Quickshot"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "determinePolicy: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 4373
    goto/16 :goto_0

    .line 4339
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_c
    if-eqz v4, :cond_d

    if-nez v3, :cond_d

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4340
    :cond_d
    or-int/lit8 v5, v5, 0x1

    .line 4342
    or-int/lit8 v5, v5, 0xc

    goto :goto_1

    .line 4367
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_e
    const-string v6, " QUICKSHOT_POLICY_REAR_CAMERA"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private handleEvent(I)Z
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 4378
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->determinePolicy(I)I

    move-result v0

    .line 4380
    .local v0, "policy":I
    const-string v1, "Quickshot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEvent: policy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4382
    if-eqz v0, :cond_0

    .line 4383
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$1;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4453
    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismissKeyguardLw()V
    .locals 2

    .prologue
    .line 4457
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 4458
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept$2;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$QuickshotConcept;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4470
    :cond_0
    return-void
.end method
