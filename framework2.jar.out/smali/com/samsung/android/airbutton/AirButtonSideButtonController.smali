.class public Lcom/samsung/android/airbutton/AirButtonSideButtonController;
.super Ljava/lang/Object;
.source "AirButtonSideButtonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;
    }
.end annotation


# static fields
.field private static mUspLevel:I

.field private static sGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

.field private static sKeyguardManager:Landroid/app/KeyguardManager;


# instance fields
.field private final BTN_PRESS_TIME_LIMIT:I

.field private final TAG:Ljava/lang/String;

.field private mBlockLongPress:Z

.field private mIsHoverEnter:Z

.field private mOldSideBtnState:I

.field private mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

.field private mSideBtnPressedTime:J

.field private mWasTouchDowned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 31
    sput-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sKeyguardManager:Landroid/app/KeyguardManager;

    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mUspLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "AirButtonSideButtonController"

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->TAG:Ljava/lang/String;

    .line 20
    const/16 v0, 0x320

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->BTN_PRESS_TIME_LIMIT:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    .line 27
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mIsHoverEnter:Z

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    .line 38
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    .line 39
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "AirButtonSideButtonController"

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->TAG:Ljava/lang/String;

    .line 20
    const/16 v0, 0x320

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->BTN_PRESS_TIME_LIMIT:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    .line 27
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mIsHoverEnter:Z

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    .line 38
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    .line 39
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    .line 49
    if-eqz p1, :cond_2

    .line 50
    sget-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    if-nez v0, :cond_0

    .line 51
    const-string/jumbo v0, "spengestureservice"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SpenGestureManager;

    sput-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 52
    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_1

    .line 53
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sput-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sKeyguardManager:Landroid/app/KeyguardManager;

    .line 55
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mUspLevel:I

    .line 57
    :cond_2
    return-void
.end method


# virtual methods
.method public isKeyguardVisible()Z
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "AirButtonSideButtonController"

    const-string v1, "isKeyguardSecure : true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 65
    const/4 v3, 0x0

    .line 67
    .local v3, "result":Z
    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    .line 70
    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mIsHoverEnter:Z

    if-eqz v4, :cond_3

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    .line 73
    .local v0, "currentSideBtnState":I
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    if-eq v4, v0, :cond_1

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    .line 75
    const-string v4, "AirButtonSideButtonController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Btn pressed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    if-eq v4, v0, :cond_2

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 80
    .local v1, "currentTime":J
    const-string v4, "AirButtonSideButtonController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time differences = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    sub-long v6, v1, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-wide v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x320

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 83
    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    if-eqz v4, :cond_2

    .line 84
    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    invoke-interface {v4, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;->onSideButtonClicked(Landroid/view/MotionEvent;)V

    .line 85
    const/4 v3, 0x1

    .line 90
    .end local v1    # "currentTime":J
    :cond_2
    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    .line 93
    .end local v0    # "currentSideBtnState":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 109
    :cond_4
    :goto_0
    :pswitch_0
    return v3

    .line 95
    :pswitch_1
    invoke-virtual {p0, v9}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->resetVariables(Z)V

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    goto :goto_0

    .line 99
    :pswitch_2
    iget-boolean v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mIsHoverEnter:Z

    if-nez v4, :cond_4

    .line 100
    invoke-virtual {p0, v9}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->resetVariables(Z)V

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    goto :goto_0

    .line 105
    :pswitch_3
    invoke-virtual {p0, v8}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->resetVariables(Z)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onHoverForGA(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v12, 0x320

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 113
    const/4 v4, 0x0

    .line 115
    .local v4, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 132
    :goto_0
    :pswitch_0
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    if-ne v5, v11, :cond_1

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    .line 135
    .local v1, "currentSideBtnState":I
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    if-eq v5, v1, :cond_4

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    .line 137
    iput-boolean v9, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    .line 138
    const-string v5, "AirButtonSideButtonController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Btn pressed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    :goto_1
    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    .line 183
    .end local v1    # "currentSideBtnState":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    .line 184
    iput-boolean v9, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    .line 186
    :cond_2
    return v4

    .line 117
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    .line 118
    iget v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3

    .line 119
    iput-boolean v9, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    .line 120
    :cond_3
    iput-boolean v9, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    .line 122
    const-string v5, "AirButtonSideButtonController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hover entered = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    .restart local v1    # "currentSideBtnState":I
    :cond_4
    iget v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 140
    iget v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    if-eq v5, v1, :cond_7

    .line 141
    iget-boolean v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    if-eqz v5, :cond_6

    .line 142
    iput-boolean v9, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    .line 155
    :cond_5
    :goto_2
    iput-boolean v9, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    goto :goto_1

    .line 144
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 145
    .local v2, "currentTime":J
    const-string v5, "AirButtonSideButtonController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Click] Time differences = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    sub-long v7, v2, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-wide v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    sub-long v5, v2, v5

    cmp-long v5, v5, v12

    if-gez v5, :cond_5

    .line 148
    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    if-eqz v5, :cond_5

    .line 149
    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    invoke-interface {v5, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;->onSideButtonClicked(Landroid/view/MotionEvent;)V

    .line 150
    const/4 v4, 0x1

    goto :goto_2

    .line 156
    .end local v2    # "currentTime":J
    :cond_7
    sget v5, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mUspLevel:I

    if-ne v5, v11, :cond_0

    .line 157
    iget-boolean v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    if-nez v5, :cond_0

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 160
    .restart local v2    # "currentTime":J
    iget-wide v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    sub-long v5, v2, v5

    cmp-long v5, v5, v12

    if-ltz v5, :cond_0

    .line 161
    const-string v5, "AirButtonSideButtonController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Long Press] Time differences = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    sub-long v7, v2, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iput-boolean v10, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "blockLaunchGAB":Z
    sget-object v5, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    if-eqz v5, :cond_8

    sget-object v5, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v9, v6, v7}, Lcom/samsung/android/smartclip/SpenGestureManager;->getAirButtonHitTest(III)I

    move-result v5

    if-ne v5, v10, :cond_8

    .line 166
    const-string v5, "AirButtonSideButtonController"

    const-string v6, "hit test"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x1

    .line 170
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->isKeyguardVisible()Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    if-eqz v5, :cond_0

    .line 171
    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    invoke-interface {v5, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;->onSideButtonClicked(Landroid/view/MotionEvent;)V

    .line 172
    const/4 v4, 0x1

    .line 173
    goto/16 :goto_1

    .line 115
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchDownForGA(I)V
    .locals 2
    .param p1, "buttonState"    # I

    .prologue
    .line 190
    const-string v0, "AirButtonSideButtonController"

    const-string/jumbo v1, "onTouchDownForGA"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    goto :goto_0
.end method

.method public onTouchUpForGA(I)V
    .locals 0
    .param p1, "buttonState"    # I

    .prologue
    .line 199
    return-void
.end method

.method public resetVariables(Z)V
    .locals 2
    .param p1, "isHoverEnter"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mIsHoverEnter:Z

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    .line 204
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    .line 205
    return-void
.end method

.method public setOnSideButtonClickedListener(Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    .line 229
    return-void
.end method
