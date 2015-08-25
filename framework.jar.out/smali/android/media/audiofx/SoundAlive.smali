.class public Landroid/media/audiofx/SoundAlive;
.super Landroid/media/audiofx/AudioEffect;
.source "SoundAlive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/SoundAlive$1;,
        Landroid/media/audiofx/SoundAlive$Settings;,
        Landroid/media/audiofx/SoundAlive$BaseParameterListener;,
        Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final EFFECT_TYPE_SOUNDALIVE:Ljava/util/UUID;

.field public static final PARAM_BAND_FREQ_RANGE:I = 0x4

.field public static final PARAM_BAND_LEVEL:I = 0x2

.field public static final PARAM_CENTER_FREQ:I = 0x3

.field public static final PARAM_CURRENT_PRESET:I = 0x6

.field public static final PARAM_GET_BAND:I = 0x5

.field public static final PARAM_GET_NUM_OF_PRESETS:I = 0x7

.field public static final PARAM_GET_PRESET_NAME:I = 0x8

.field public static final PARAM_HMT:I = 0xc

.field public static final PARAM_LEVEL_RANGE:I = 0x1

.field public static final PARAM_NUM_BANDS:I = 0x0

.field private static final PARAM_PROPERTIES:I = 0x9

.field public static final PARAM_SQUAREUI_POSITION:I = 0xb

.field public static final PARAM_STRENGTH:I = 0xa

.field public static final PARAM_STRING_SIZE_MAX:I = 0x20

.field private static final TAG:Ljava/lang/String; = "SoundAlive"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/SoundAlive$BaseParameterListener;

.field private mNumBands:S

.field private mNumPresets:I

.field private mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mPresetNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "c4da1d1f-7cdf-42e2-ba60-efc7eb3508a3"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/SoundAlive;->EFFECT_TYPE_SOUNDALIVE:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 9
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 164
    sget-object v5, Landroid/media/audiofx/SoundAlive;->EFFECT_TYPE_SOUNDALIVE:Ljava/util/UUID;

    sget-object v6, Landroid/media/audiofx/SoundAlive;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v5, v6, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 121
    iput-short v7, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    .line 135
    iput-object v8, p0, Landroid/media/audiofx/SoundAlive;->mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    .line 140
    iput-object v8, p0, Landroid/media/audiofx/SoundAlive;->mBaseParamListener:Landroid/media/audiofx/SoundAlive$BaseParameterListener;

    .line 145
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Landroid/media/audiofx/SoundAlive;->mParamListenerLock:Ljava/lang/Object;

    .line 166
    if-nez p2, :cond_0

    .line 167
    const-string v5, "SoundAlive"

    const-string v6, "WARNING: attaching an SoundAlive to global output mix is deprecated!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroid/media/audiofx/SoundAlive;->getNumberOfBands()S

    .line 172
    invoke-virtual {p0}, Landroid/media/audiofx/SoundAlive;->getNumberOfPresets()S

    move-result v5

    iput v5, p0, Landroid/media/audiofx/SoundAlive;->mNumPresets:I

    .line 174
    iget v5, p0, Landroid/media/audiofx/SoundAlive;->mNumPresets:I

    if-eqz v5, :cond_2

    .line 175
    iget v5, p0, Landroid/media/audiofx/SoundAlive;->mNumPresets:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Landroid/media/audiofx/SoundAlive;->mPresetNames:[Ljava/lang/String;

    .line 176
    const/16 v5, 0x20

    new-array v4, v5, [B

    .line 177
    .local v4, "value":[B
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 178
    .local v3, "param":[I
    const/16 v5, 0x8

    aput v5, v3, v7

    .line 179
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Landroid/media/audiofx/SoundAlive;->mNumPresets:I

    if-ge v1, v5, :cond_2

    .line 180
    const/4 v5, 0x1

    aput v1, v3, v5

    .line 181
    invoke-virtual {p0, v3, v4}, Landroid/media/audiofx/SoundAlive;->getParameter([I[B)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 182
    const/4 v2, 0x0

    .line 183
    .local v2, "length":I
    :goto_1
    aget-byte v5, v4, v2

    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 185
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/media/audiofx/SoundAlive;->mPresetNames:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "ISO-8859-1"

    invoke-direct {v6, v4, v7, v2, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "SoundAlive"

    const-string v6, "preset name decode error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 191
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "param":[I
    .end local v4    # "value":[B
    :cond_2
    return-void
.end method

.method static synthetic access$000(Landroid/media/audiofx/SoundAlive;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/SoundAlive;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/SoundAlive;)Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/SoundAlive;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    return-object v0
.end method


# virtual methods
.method public getBand(I)S
    .locals 5
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 325
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 326
    .local v0, "param":[I
    new-array v1, v4, [S

    .line 328
    .local v1, "result":[S
    const/4 v2, 0x5

    aput v2, v0, v3

    .line 329
    aput p1, v0, v4

    .line 330
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 332
    aget-short v2, v1, v3

    return v2
.end method

.method public getBandFreqRange(S)[I
    .locals 4
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 306
    new-array v0, v2, [I

    .line 307
    .local v0, "param":[I
    new-array v1, v2, [I

    .line 308
    .local v1, "result":[I
    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v0, v2

    .line 309
    const/4 v2, 0x1

    aput p1, v0, v2

    .line 310
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 312
    return-object v1
.end method

.method public getBandLevel(S)S
    .locals 5
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 262
    new-array v0, v4, [I

    .line 263
    .local v0, "param":[I
    new-array v1, v2, [S

    .line 265
    .local v1, "result":[S
    aput v4, v0, v3

    .line 266
    aput p1, v0, v2

    .line 267
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 269
    aget-short v2, v1, v3

    return v2
.end method

.method public getBandLevelRange()[S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v1, 0x2

    new-array v0, v1, [S

    .line 225
    .local v0, "result":[S
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SoundAlive;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 226
    return-object v0
.end method

.method public getCenterFreq(S)I
    .locals 5
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 284
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 285
    .local v0, "param":[I
    new-array v1, v4, [I

    .line 287
    .local v1, "result":[I
    const/4 v2, 0x3

    aput v2, v0, v3

    .line 288
    aput p1, v0, v4

    .line 289
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 291
    aget v2, v1, v3

    return v2
.end method

.method public getCurrentPreset()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 344
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 345
    .local v0, "result":[S
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SoundAlive;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 346
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getNumberOfBands()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
    iget-short v2, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    if-eqz v2, :cond_0

    .line 203
    iget-short v2, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    .line 210
    :goto_0
    return v2

    .line 205
    :cond_0
    new-array v0, v4, [I

    .line 206
    .local v0, "param":[I
    aput v3, v0, v3

    .line 207
    new-array v1, v4, [S

    .line 208
    .local v1, "result":[S
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 209
    aget-short v2, v1, v3

    iput-short v2, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    .line 210
    iget-short v2, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    goto :goto_0
.end method

.method public getNumberOfPresets()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 373
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 374
    .local v0, "result":[S
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SoundAlive;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 375
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getParameter(I[B)I
    .locals 2
    .param p1, "param"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 640
    invoke-virtual {p0, p1}, Landroid/media/audiofx/SoundAlive;->intToByteArray(I)[B

    move-result-object v0

    .line 641
    .local v0, "p":[B
    invoke-super {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v1

    return v1
.end method

.method public getPresetName(S)Ljava/lang/String;
    .locals 1
    .param p1, "preset"    # S

    .prologue
    .line 388
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/media/audiofx/SoundAlive;->mNumPresets:I

    if-ge p1, v0, :cond_0

    .line 389
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mPresetNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 391
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getProperties()Landroid/media/audiofx/SoundAlive$Settings;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 654
    iget-short v3, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x4

    new-array v1, v3, [B

    .line 655
    .local v1, "param":[B
    const/16 v3, 0x9

    invoke-virtual {p0, v3, v1}, Landroid/media/audiofx/SoundAlive;->getParameter(I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 656
    new-instance v2, Landroid/media/audiofx/SoundAlive$Settings;

    invoke-direct {v2}, Landroid/media/audiofx/SoundAlive$Settings;-><init>()V

    .line 657
    .local v2, "settings":Landroid/media/audiofx/SoundAlive$Settings;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/SoundAlive;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/SoundAlive$Settings;->curPreset:S

    .line 658
    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/SoundAlive;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/SoundAlive$Settings;->numBands:S

    .line 659
    iget-short v3, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    new-array v3, v3, [S

    iput-object v3, v2, Landroid/media/audiofx/SoundAlive$Settings;->bandLevels:[S

    .line 660
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-short v3, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    if-ge v0, v3, :cond_0

    .line 661
    iget-object v3, v2, Landroid/media/audiofx/SoundAlive$Settings;->bandLevels:[S

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, v1, v4}, Landroid/media/audiofx/SoundAlive;->byteArrayToShort([BI)S

    move-result v4

    aput-short v4, v3, v0

    .line 660
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    :cond_0
    return-object v2
.end method

.method public getRoundedStrength(S)S
    .locals 5
    .param p1, "type"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 429
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 430
    .local v0, "param":[I
    new-array v1, v4, [S

    .line 432
    .local v1, "result":[S
    const/16 v2, 0xa

    aput v2, v0, v3

    .line 433
    aput p1, v0, v4

    .line 435
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 436
    aget-short v2, v1, v3

    return v2
.end method

.method public setBandLevel(SS)V
    .locals 5
    .param p1, "band"    # S
    .param p2, "level"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 242
    new-array v0, v4, [I

    .line 243
    .local v0, "param":[I
    new-array v1, v3, [S

    .line 245
    .local v1, "value":[S
    aput v4, v0, v2

    .line 246
    aput p1, v0, v3

    .line 247
    aput-short p2, v1, v2

    .line 248
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->setParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 249
    return-void
.end method

.method public setHMT(II)V
    .locals 5
    .param p1, "band"    # I
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 466
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 467
    .local v0, "param":[I
    new-array v1, v4, [I

    .line 469
    .local v1, "value":[I
    const/16 v2, 0xc

    aput v2, v0, v3

    .line 470
    aput p1, v0, v4

    .line 471
    aput p2, v1, v3

    .line 473
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->setParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 474
    return-void
.end method

.method public setParameterListener(Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    .prologue
    .line 539
    iget-object v1, p0, Landroid/media/audiofx/SoundAlive;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 540
    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    if-nez v0, :cond_0

    .line 541
    iput-object p1, p0, Landroid/media/audiofx/SoundAlive;->mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    .line 542
    new-instance v0, Landroid/media/audiofx/SoundAlive$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/SoundAlive$BaseParameterListener;-><init>(Landroid/media/audiofx/SoundAlive;Landroid/media/audiofx/SoundAlive$1;)V

    iput-object v0, p0, Landroid/media/audiofx/SoundAlive;->mBaseParamListener:Landroid/media/audiofx/SoundAlive$BaseParameterListener;

    .line 543
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mBaseParamListener:Landroid/media/audiofx/SoundAlive$BaseParameterListener;

    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 545
    :cond_0
    monitor-exit v1

    .line 546
    return-void

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setProperties(Landroid/media/audiofx/SoundAlive$Settings;)V
    .locals 7
    .param p1, "settings"    # Landroid/media/audiofx/SoundAlive$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 676
    iget-short v2, p1, Landroid/media/audiofx/SoundAlive$Settings;->numBands:S

    iget-object v3, p1, Landroid/media/audiofx/SoundAlive$Settings;->bandLevels:[S

    array-length v3, v3

    if-ne v2, v3, :cond_0

    iget-short v2, p1, Landroid/media/audiofx/SoundAlive$Settings;->numBands:S

    iget-short v3, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    if-eq v2, v3, :cond_1

    .line 678
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settings invalid band count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-short v4, p1, Landroid/media/audiofx/SoundAlive$Settings;->numBands:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 681
    :cond_1
    new-array v2, v6, [[B

    iget-short v3, p1, Landroid/media/audiofx/SoundAlive$Settings;->curPreset:S

    invoke-virtual {p0, v3}, Landroid/media/audiofx/SoundAlive;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v4

    iget-short v3, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    invoke-virtual {p0, v3}, Landroid/media/audiofx/SoundAlive;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->concatArrays([[B)[B

    move-result-object v1

    .line 683
    .local v1, "param":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-short v2, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    if-ge v0, v2, :cond_2

    .line 684
    new-array v2, v6, [[B

    aput-object v1, v2, v4

    iget-object v3, p1, Landroid/media/audiofx/SoundAlive$Settings;->bandLevels:[S

    aget-short v3, v3, v0

    invoke-virtual {p0, v3}, Landroid/media/audiofx/SoundAlive;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->concatArrays([[B)[B

    move-result-object v1

    .line 683
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 687
    :cond_2
    const/16 v2, 0x9

    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/SoundAlive;->setParameter(I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 688
    return-void
.end method

.method public setSquarePostion(II)V
    .locals 5
    .param p1, "Sqrow"    # I
    .param p2, "Sqcol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 450
    new-array v0, v4, [I

    .line 451
    .local v0, "param":[I
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 453
    .local v1, "value":[I
    const/16 v2, 0xb

    aput v2, v0, v3

    .line 455
    aput p1, v1, v3

    .line 456
    aput p2, v1, v4

    .line 458
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->setParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 459
    return-void
.end method

.method public setStrength(SS)V
    .locals 5
    .param p1, "type"    # S
    .param p2, "strength"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 409
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 410
    .local v0, "param":[I
    new-array v1, v4, [S

    .line 412
    .local v1, "value":[S
    const/16 v2, 0xa

    aput v2, v0, v3

    .line 413
    aput p1, v0, v4

    .line 414
    aput-short p2, v1, v3

    .line 416
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->setParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 417
    return-void
.end method

.method public usePreset(S)V
    .locals 1
    .param p1, "preset"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 360
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/SoundAlive;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 361
    return-void
.end method
