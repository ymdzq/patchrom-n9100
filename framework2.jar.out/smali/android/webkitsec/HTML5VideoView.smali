.class public Landroid/webkitsec/HTML5VideoView;
.super Ljava/lang/Object;
.source "HTML5VideoView.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/HTML5VideoView$TimeupdateTask;
    }
.end annotation


# static fields
.field protected static final COOKIE:Ljava/lang/String; = "Cookie"

.field protected static final HIDE_URL_LOGS:Ljava/lang/String; = "x-hide-urls-from-log"

.field protected static final LOGTAG:Ljava/lang/String; = "HTML5VideoView"

.field static final STATE_INITIALIZED:I = 0x0

.field static final STATE_PLAYING:I = 0x3

.field static final STATE_PREPARED:I = 0x2

.field static final STATE_PREPARING:I = 0x1

.field static final STATE_RELEASED:I = 0x5

.field static final STATE_RESETTED:I = 0x4

.field private static final TIMEUPDATE_PERIOD:I = 0xfa

.field protected static mCurrentState:I

.field protected static mPlayer:Landroid/media/MediaPlayer;

.field protected static mTimer:Ljava/util/Timer;


# instance fields
.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRegisteredListener:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field protected mPauseDuringPreparing:Z

.field public mPlayerBuffering:Z

.field protected mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

.field protected mSaveSeekTime:I

.field private mSkipPrepare:Z

.field private mStartWhenPrepared:Z

.field protected mUri:Landroid/net/Uri;

.field protected mVideoLayerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    .line 83
    const/4 v0, -0x1

    sput v0, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-boolean v1, p0, Landroid/webkitsec/HTML5VideoView;->mSkipPrepare:Z

    .line 101
    iput-boolean v1, p0, Landroid/webkitsec/HTML5VideoView;->mIsRegisteredListener:Z

    .line 102
    new-instance v0, Landroid/webkitsec/HTML5VideoView$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/HTML5VideoView$1;-><init>(Landroid/webkitsec/HTML5VideoView;)V

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 447
    iput-boolean v1, p0, Landroid/webkitsec/HTML5VideoView;->mPlayerBuffering:Z

    .line 474
    iput-boolean v1, p0, Landroid/webkitsec/HTML5VideoView;->mStartWhenPrepared:Z

    .line 283
    return-void
.end method

.method protected static generateHeaders(Ljava/lang/String;Landroid/webkitsec/HTML5VideoViewProxy;)Ljava/util/Map;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "proxy"    # Landroid/webkitsec/HTML5VideoViewProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkitsec/HTML5VideoViewProxy;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    invoke-virtual {p1}, Landroid/webkitsec/HTML5VideoViewProxy;->getWebView()Landroid/webkitsec/WebViewClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->isPrivateBrowsingEnabled()Z

    move-result v2

    .line 288
    .local v2, "isPrivate":Z
    invoke-static {}, Landroid/webkitsec/CookieManager;->getInstance()Landroid/webkitsec/CookieManager;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Landroid/webkitsec/CookieManager;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "cookieValue":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 290
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 291
    const-string v3, "Cookie"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_0
    if-eqz v2, :cond_1

    .line 294
    const-string/jumbo v3, "x-hide-urls-from-log"

    const-string/jumbo v4, "true"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_1
    return-object v1
.end method

.method public static release()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 223
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget v0, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    if-eq v0, v1, :cond_0

    .line 224
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 225
    const/4 v0, 0x0

    sput-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    .line 227
    :cond_0
    sput v1, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    .line 228
    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 4

    .prologue
    .line 502
    const-string v1, "HTML5VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abandonAudioFocus() called. videoView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoView;->createAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 504
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 507
    :cond_0
    return-void
.end method

.method public createAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 512
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decideDisplayMode()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public deleteSurfaceTexture()V
    .locals 0

    .prologue
    .line 440
    return-void
.end method

.method public enterFullScreenVideoState(ILandroid/webkitsec/HTML5VideoViewProxy;Landroid/webkitsec/WebViewClassic;)V
    .locals 0
    .param p1, "layerId"    # I
    .param p2, "proxy"    # Landroid/webkitsec/HTML5VideoViewProxy;
    .param p3, "webView"    # Landroid/webkitsec/WebViewClassic;

    .prologue
    .line 426
    return-void
.end method

.method public fullScreenExited()Z
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 189
    sget v0, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 190
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    const/4 v0, 0x3

    .line 383
    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 181
    sget v0, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 182
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPauseDuringPreparing()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Landroid/webkitsec/HTML5VideoView;->mPauseDuringPreparing:Z

    return v0
.end method

.method public getPlayerBuffering()Z
    .locals 1

    .prologue
    .line 450
    iget-boolean v0, p0, Landroid/webkitsec/HTML5VideoView;->mPlayerBuffering:Z

    return v0
.end method

.method public getReadyToUseSurfTex()Z
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public getStartWhenPrepared()Z
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Landroid/webkitsec/HTML5VideoView;->mStartWhenPrepared:Z

    return v0
.end method

.method public getTextureName()I
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoLayerId()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Landroid/webkitsec/HTML5VideoView;->mVideoLayerId:I

    return v0
.end method

.method public init(IIZ)V
    .locals 3
    .param p1, "videoLayerId"    # I
    .param p2, "position"    # I
    .param p3, "skipPrepare"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 266
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    .line 268
    sput v1, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    .line 270
    :cond_0
    iput-boolean p3, p0, Landroid/webkitsec/HTML5VideoView;->mSkipPrepare:Z

    .line 272
    iget-boolean v0, p0, Landroid/webkitsec/HTML5VideoView;->mSkipPrepare:Z

    if-nez v0, :cond_1

    .line 273
    sput v1, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    .line 275
    :cond_1
    iput-object v2, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    .line 276
    iput p1, p0, Landroid/webkitsec/HTML5VideoView;->mVideoLayerId:I

    .line 277
    iput p2, p0, Landroid/webkitsec/HTML5VideoView;->mSaveSeekTime:I

    .line 278
    sput-object v2, Landroid/webkitsec/HTML5VideoView;->mTimer:Ljava/util/Timer;

    .line 279
    iput-boolean v1, p0, Landroid/webkitsec/HTML5VideoView;->mPauseDuringPreparing:Z

    .line 280
    return-void
.end method

.method public isFullScreenMode()Z
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 203
    sget v0, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReleased()Z
    .locals 2

    .prologue
    .line 231
    sget v0, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 249
    packed-switch p1, :pswitch_data_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 252
    :pswitch_0
    const-string v0, "HTML5VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAudioFocusChange() called. videoView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "HTML5VideoView"

    const-string/jumbo v1, "onAudioFocusChange() - pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {p0, v0}, Landroid/webkitsec/HTML5VideoView;->pauseAndDispatch(Landroid/webkitsec/HTML5VideoViewProxy;)V

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 402
    const/4 v0, 0x2

    sput v0, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    .line 403
    iget v0, p0, Landroid/webkitsec/HTML5VideoView;->mSaveSeekTime:I

    invoke-virtual {p0, v0}, Landroid/webkitsec/HTML5VideoView;->seekTo(I)V

    .line 404
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/HTML5VideoViewProxy;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 407
    :cond_0
    iget-boolean v0, p0, Landroid/webkitsec/HTML5VideoView;->mPauseDuringPreparing:Z

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {p0, v0}, Landroid/webkitsec/HTML5VideoView;->pauseAndDispatch(Landroid/webkitsec/HTML5VideoViewProxy;)V

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HTML5VideoView;->mPauseDuringPreparing:Z

    .line 411
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 159
    const-string v0, "HTML5VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pause() called. videoView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoView;->abandonAudioFocus()V

    .line 161
    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 167
    :cond_0
    :goto_0
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 168
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 169
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 170
    const/4 v0, 0x0

    sput-object v0, Landroid/webkitsec/HTML5VideoView;->mTimer:Ljava/util/Timer;

    .line 174
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/webkitsec/HTML5VideoView;->mIsRegisteredListener:Z

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoView;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HTML5VideoView;->mIsRegisteredListener:Z

    .line 178
    :cond_2
    return-void

    .line 163
    :cond_3
    sget v0, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    if-ne v0, v3, :cond_0

    .line 164
    iput-boolean v3, p0, Landroid/webkitsec/HTML5VideoView;->mPauseDuringPreparing:Z

    goto :goto_0
.end method

.method public pauseAndDispatch(Landroid/webkitsec/HTML5VideoViewProxy;)V
    .locals 0
    .param p1, "proxy"    # Landroid/webkitsec/HTML5VideoViewProxy;

    .prologue
    .line 415
    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoView;->pause()V

    .line 416
    if-eqz p1, :cond_0

    .line 417
    invoke-virtual {p1}, Landroid/webkitsec/HTML5VideoViewProxy;->dispatchOnPaused()V

    .line 419
    :cond_0
    return-void
.end method

.method public prepareDataAndDisplayMode(Landroid/webkitsec/HTML5VideoViewProxy;)V
    .locals 0
    .param p1, "proxy"    # Landroid/webkitsec/HTML5VideoViewProxy;

    .prologue
    .line 362
    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoView;->decideDisplayMode()V

    .line 364
    invoke-virtual {p0, p1}, Landroid/webkitsec/HTML5VideoView;->setOnCompletionListener(Landroid/webkitsec/HTML5VideoViewProxy;)V

    .line 365
    invoke-virtual {p0, p1}, Landroid/webkitsec/HTML5VideoView;->setOnPreparedListener(Landroid/webkitsec/HTML5VideoViewProxy;)V

    .line 366
    invoke-virtual {p0, p1}, Landroid/webkitsec/HTML5VideoView;->setOnErrorListener(Landroid/webkitsec/HTML5VideoViewProxy;)V

    .line 367
    invoke-virtual {p0, p1}, Landroid/webkitsec/HTML5VideoView;->setOnInfoListener(Landroid/webkitsec/HTML5VideoViewProxy;)V

    .line 369
    invoke-virtual {p0, p1}, Landroid/webkitsec/HTML5VideoView;->prepareDataCommon(Landroid/webkitsec/HTML5VideoViewProxy;)V

    .line 370
    return-void
.end method

.method public prepareDataCommon(Landroid/webkitsec/HTML5VideoViewProxy;)V
    .locals 5
    .param p1, "proxy"    # Landroid/webkitsec/HTML5VideoViewProxy;

    .prologue
    .line 325
    iget-boolean v1, p0, Landroid/webkitsec/HTML5VideoView;->mSkipPrepare:Z

    if-nez v1, :cond_0

    .line 327
    :try_start_0
    sget-object v1, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 328
    sget-object v1, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/webkitsec/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoView;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Landroid/webkitsec/HTML5VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 329
    sget-object v1, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 337
    :goto_0
    const/4 v1, 0x1

    sput v1, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    .line 347
    :goto_1
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 332
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 334
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 335
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 342
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    sget v1, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 343
    sget-object v1, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v1}, Landroid/webkitsec/HTML5VideoView;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 345
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkitsec/HTML5VideoView;->mSkipPrepare:Z

    goto :goto_1
.end method

.method public reprepareData(Landroid/webkitsec/HTML5VideoViewProxy;)V
    .locals 1
    .param p1, "proxy"    # Landroid/webkitsec/HTML5VideoViewProxy;

    .prologue
    .line 351
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 352
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 353
    invoke-virtual {p0, p1}, Landroid/webkitsec/HTML5VideoView;->prepareDataCommon(Landroid/webkitsec/HTML5VideoViewProxy;)V

    .line 356
    :cond_0
    return-void
.end method

.method public requestAudioFocus()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 488
    const-string v4, "HTML5VideoView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestAudioFocus() called. proxy = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v4, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v4}, Landroid/webkitsec/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_1

    .line 498
    :cond_0
    :goto_0
    return v3

    .line 492
    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoView;->createAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 493
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 496
    const-string v4, "HTML5VideoView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requested AudioFocus. videoView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v4, 0x3

    invoke-virtual {v0, p0, v4, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 498
    .local v1, "result":I
    if-ne v1, v2, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 211
    sget v0, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    if-ge v0, v1, :cond_0

    .line 212
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 214
    :cond_0
    sput v1, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    .line 215
    return-void
.end method

.method public seekTo(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 196
    sget v0, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 197
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 200
    :goto_0
    return-void

    .line 199
    :cond_0
    iput p1, p0, Landroid/webkitsec/HTML5VideoView;->mSaveSeekTime:I

    goto :goto_0
.end method

.method public setOnCompletionListener(Landroid/webkitsec/HTML5VideoViewProxy;)V
    .locals 1
    .param p1, "proxy"    # Landroid/webkitsec/HTML5VideoViewProxy;

    .prologue
    .line 308
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 309
    return-void
.end method

.method public setOnErrorListener(Landroid/webkitsec/HTML5VideoViewProxy;)V
    .locals 1
    .param p1, "proxy"    # Landroid/webkitsec/HTML5VideoViewProxy;

    .prologue
    .line 312
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 313
    return-void
.end method

.method public setOnInfoListener(Landroid/webkitsec/HTML5VideoViewProxy;)V
    .locals 1
    .param p1, "proxy"    # Landroid/webkitsec/HTML5VideoViewProxy;

    .prologue
    .line 321
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 322
    return-void
.end method

.method public setOnPreparedListener(Landroid/webkitsec/HTML5VideoViewProxy;)V
    .locals 1
    .param p1, "proxy"    # Landroid/webkitsec/HTML5VideoViewProxy;

    .prologue
    .line 316
    iput-object p1, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    .line 317
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 318
    return-void
.end method

.method public setPlayerBuffering(Z)V
    .locals 0
    .param p1, "playerBuffering"    # Z

    .prologue
    .line 454
    iput-boolean p1, p0, Landroid/webkitsec/HTML5VideoView;->mPlayerBuffering:Z

    .line 455
    invoke-virtual {p0, p1}, Landroid/webkitsec/HTML5VideoView;->switchProgressView(Z)V

    .line 456
    return-void
.end method

.method public setStartWhenPrepared(Z)V
    .locals 0
    .param p1, "willPlay"    # Z

    .prologue
    .line 477
    iput-boolean p1, p0, Landroid/webkitsec/HTML5VideoView;->mStartWhenPrepared:Z

    .line 478
    return-void
.end method

.method public setVideoURI(Ljava/lang/String;Landroid/webkitsec/HTML5VideoViewProxy;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "proxy"    # Landroid/webkitsec/HTML5VideoViewProxy;

    .prologue
    .line 302
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mUri:Landroid/net/Uri;

    .line 303
    invoke-static {p1, p2}, Landroid/webkitsec/HTML5VideoView;->generateHeaders(Ljava/lang/String;Landroid/webkitsec/HTML5VideoViewProxy;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mHeaders:Ljava/util/Map;

    .line 304
    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .param p1, "volume"    # F

    .prologue
    .line 236
    sget v0, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 237
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 239
    :cond_0
    return-void
.end method

.method public showControllerInFullScreen()V
    .locals 0

    .prologue
    .line 485
    return-void
.end method

.method public start()V
    .locals 9

    .prologue
    const-wide/16 v2, 0xfa

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 118
    const-string v0, "HTML5VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start() called. videoView = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoView;->abandonAudioFocus()V

    .line 120
    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoView;->requestAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    sget v0, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 124
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Landroid/webkitsec/HTML5VideoView;->mTimer:Ljava/util/Timer;

    .line 127
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mTimer:Ljava/util/Timer;

    new-instance v1, Landroid/webkitsec/HTML5VideoView$TimeupdateTask;

    iget-object v4, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-direct {v1, v4}, Landroid/webkitsec/HTML5VideoView$TimeupdateTask;-><init>(Landroid/webkitsec/HTML5VideoViewProxy;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 130
    :cond_0
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 131
    invoke-virtual {p0, v7}, Landroid/webkitsec/HTML5VideoView;->setPlayerBuffering(Z)V

    .line 149
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_2

    .line 150
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 152
    :cond_2
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoView;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1, v8}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 154
    iput-boolean v8, p0, Landroid/webkitsec/HTML5VideoView;->mIsRegisteredListener:Z

    .line 156
    :cond_3
    :goto_0
    return-void

    .line 136
    :cond_4
    const-string v0, "HTML5VideoView"

    const-string/jumbo v1, "start() - requestAudioFocus() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkitsec/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040bf5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 142
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoViewProxy;->getWebView()Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebChromeClient()Landroid/webkitsec/WebChromeClient;

    move-result-object v6

    .line 143
    .local v6, "client":Landroid/webkitsec/WebChromeClient;
    if-eqz v6, :cond_3

    .line 144
    invoke-virtual {v6}, Landroid/webkitsec/WebChromeClient;->onHideCustomView()V

    goto :goto_0
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    .line 218
    sget v0, Landroid/webkitsec/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 219
    sget-object v0, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 221
    :cond_0
    return-void
.end method

.method protected switchProgressView(Z)V
    .locals 0
    .param p1, "playerBuffering"    # Z

    .prologue
    .line 461
    return-void
.end method
