.class Landroid/media/FocusRequester;
.super Ljava/lang/Object;
.source "FocusRequester.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"


# instance fields
.field private final mCallingUid:I

.field private final mClientId:Ljava/lang/String;

.field private mDeathHandler:Landroid/media/MediaFocusControl$AudioFocusDeathHandler;

.field private mFocusChanged:Z

.field private final mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private final mFocusGainRequest:I

.field private mFocusLossReceived:I

.field private final mPackageName:Ljava/lang/String;

.field private final mSourceRef:Landroid/os/IBinder;

.field private final mStreamType:I


# direct methods
.method constructor <init>(IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Landroid/media/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;I)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "focusRequest"    # I
    .param p3, "afl"    # Landroid/media/IAudioFocusDispatcher;
    .param p4, "source"    # Landroid/os/IBinder;
    .param p5, "id"    # Ljava/lang/String;
    .param p6, "hdlr"    # Landroid/media/MediaFocusControl$AudioFocusDeathHandler;
    .param p7, "pn"    # Ljava/lang/String;
    .param p8, "uid"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Landroid/media/FocusRequester;->mStreamType:I

    .line 66
    iput-object p3, p0, Landroid/media/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 67
    iput-object p4, p0, Landroid/media/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 68
    iput-object p5, p0, Landroid/media/FocusRequester;->mClientId:Ljava/lang/String;

    .line 69
    iput-object p6, p0, Landroid/media/FocusRequester;->mDeathHandler:Landroid/media/MediaFocusControl$AudioFocusDeathHandler;

    .line 70
    iput-object p7, p0, Landroid/media/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 71
    iput p8, p0, Landroid/media/FocusRequester;->mCallingUid:I

    .line 72
    iput p2, p0, Landroid/media/FocusRequester;->mFocusGainRequest:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/FocusRequester;->mFocusChanged:Z

    .line 77
    return-void
.end method

.method private static focusChangeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "focus"    # I

    .prologue
    .line 137
    packed-switch p0, :pswitch_data_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[invalid focus change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 139
    :pswitch_0
    const-string v0, "none"

    goto :goto_0

    .line 141
    :pswitch_1
    const-string v0, "GAIN"

    goto :goto_0

    .line 143
    :pswitch_2
    const-string v0, "GAIN_TRANSIENT"

    goto :goto_0

    .line 145
    :pswitch_3
    const-string v0, "GAIN_TRANSIENT_MAY_DUCK"

    goto :goto_0

    .line 147
    :pswitch_4
    const-string v0, "GAIN_TRANSIENT_EXCLUSIVE"

    goto :goto_0

    .line 149
    :pswitch_5
    const-string v0, "LOSS"

    goto :goto_0

    .line 151
    :pswitch_6
    const-string v0, "LOSS_TRANSIENT"

    goto :goto_0

    .line 153
    :pswitch_7
    const-string v0, "LOSS_TRANSIENT_CAN_DUCK"

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private focusGainToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Landroid/media/FocusRequester;->mFocusGainRequest:I

    invoke-static {v0}, Landroid/media/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private focusLossForGainRequest(I)I
    .locals 3
    .param p1, "gainRequest"    # I

    .prologue
    const/4 v1, -0x2

    const/4 v0, -0x1

    .line 202
    packed-switch p1, :pswitch_data_0

    .line 232
    :goto_0
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focusLossForGainRequest() for invalid focus request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x0

    :goto_1
    :pswitch_0
    return v0

    .line 204
    :pswitch_1
    iget v2, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    packed-switch v2, :pswitch_data_1

    .line 213
    :pswitch_2
    iget v2, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    packed-switch v2, :pswitch_data_2

    .line 222
    :pswitch_3
    iget v2, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    packed-switch v2, :pswitch_data_3

    goto :goto_0

    .line 225
    :pswitch_4
    const/4 v0, -0x3

    goto :goto_1

    :pswitch_5
    move v0, v1

    .line 217
    goto :goto_1

    :pswitch_6
    move v0, v1

    .line 227
    goto :goto_1

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 204
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 213
    :pswitch_data_2
    .packed-switch -0x3
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 222
    :pswitch_data_3
    .packed-switch -0x3
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private focusLossToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    invoke-static {v0}, Landroid/media/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- pack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- gain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/FocusRequester;->focusGainToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- loss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/FocusRequester;->focusLossToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/FocusRequester;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/FocusRequester;->mStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/media/FocusRequester;->release()V

    .line 192
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 193
    return-void
.end method

.method getGainRequest()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Landroid/media/FocusRequester;->mFocusGainRequest:I

    return v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/media/FocusRequester;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getStreamType()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Landroid/media/FocusRequester;->mStreamType:I

    return v0
.end method

.method getUserId()I
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Landroid/media/FocusRequester;->mCallingUid:I

    const v1, 0x186a0

    div-int/2addr v0, v1

    return v0
.end method

.method handleExternalFocusGain(I)V
    .locals 1
    .param p1, "focusGain"    # I

    .prologue
    .line 238
    invoke-direct {p0, p1}, Landroid/media/FocusRequester;->focusLossForGainRequest(I)I

    move-result v0

    .line 239
    .local v0, "focusLoss":I
    invoke-virtual {p0, v0}, Landroid/media/FocusRequester;->handleFocusLoss(I)V

    .line 240
    return-void
.end method

.method handleFocusGain(I)V
    .locals 3
    .param p1, "focusGain"    # I

    .prologue
    .line 244
    :try_start_0
    iget-object v1, p0, Landroid/media/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Landroid/media/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    iget-object v2, p0, Landroid/media/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V

    .line 251
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    .line 253
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/FocusRequester;->mFocusChanged:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    const-string v2, "Failure to signal gain of audio focus due to: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method handleFocusLoss(I)V
    .locals 3
    .param p1, "focusLoss"    # I

    .prologue
    .line 262
    :try_start_0
    iget v1, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    if-eq p1, v1, :cond_1

    .line 263
    iget-object v1, p0, Landroid/media/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Landroid/media/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    iget-object v2, p0, Landroid/media/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V

    .line 270
    :cond_0
    iput p1, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_1
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    const-string v2, "Failure to signal loss of audio focus due to:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method hasSameBinder(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "ib"    # Landroid/os/IBinder;

    .prologue
    .line 92
    iget-object v0, p0, Landroid/media/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasSameClient(Ljava/lang/String;)Z
    .locals 3
    .param p1, "otherClient"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 85
    :try_start_0
    iget-object v2, p0, Landroid/media/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method hasSamePackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pack"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 97
    :try_start_0
    iget-object v2, p0, Landroid/media/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 99
    :cond_0
    :goto_0
    return v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method hasSameUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 104
    iget v0, p0, Landroid/media/FocusRequester;->mCallingUid:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFocusChanged()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/media/FocusRequester;->mFocusChanged:Z

    return v0
.end method

.method isGainLoss()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    return v0
.end method

.method release()V
    .locals 4

    .prologue
    .line 180
    :try_start_0
    iget-object v1, p0, Landroid/media/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/FocusRequester;->mDeathHandler:Landroid/media/MediaFocusControl$AudioFocusDeathHandler;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Landroid/media/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/media/FocusRequester;->mDeathHandler:Landroid/media/MediaFocusControl$AudioFocusDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 182
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/FocusRequester;->mDeathHandler:Landroid/media/MediaFocusControl$AudioFocusDeathHandler;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "MediaFocusControl"

    const-string v2, "FocusRequester.release() hit "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method resetFocusChanged()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/FocusRequester;->mFocusChanged:Z

    .line 133
    return-void
.end method
