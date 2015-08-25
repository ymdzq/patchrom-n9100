.class public Landroid/telephony/gsm/GsmCellLocation;
.super Landroid/telephony/CellLocation;
.source "GsmCellLocation.java"


# instance fields
.field private mCid:I

.field private mLac:I

.field private mPsc:I

.field private mpsCid:I

.field private mpsLac:I

.field private mpsPsc:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 36
    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    .line 37
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    .line 38
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    .line 39
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    .line 40
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsLac:I

    .line 41
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsCid:I

    .line 42
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsPsc:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    .line 49
    const-string v0, "lac"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    .line 50
    const-string v0, "cid"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    .line 51
    const-string/jumbo v0, "psc"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    .line 52
    const-string/jumbo v0, "pslac"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsLac:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsLac:I

    .line 53
    const-string/jumbo v0, "pscid"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsCid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsCid:I

    .line 54
    const-string/jumbo v0, "pspsc"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsPsc:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsPsc:I

    .line 55
    return-void
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 189
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 163
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .local v2, "s":Landroid/telephony/gsm/GsmCellLocation;
    if-nez p1, :cond_1

    .line 172
    .end local v2    # "s":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    :goto_0
    return v3

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 172
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/gsm/GsmCellLocation;
    :cond_1
    iget v4, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/gsm/GsmCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/gsm/GsmCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/gsm/GsmCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 198
    const-string v0, "lac"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    const-string v0, "cid"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const-string/jumbo v0, "psc"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    const-string/jumbo v0, "pslac"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsLac:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    const-string/jumbo v0, "pscid"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsCid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    const-string/jumbo v0, "pspsc"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsPsc:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    return-void
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    return v0
.end method

.method public getLac()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    return v0
.end method

.method public getPsc()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    return v0
.end method

.method public getpsCid()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsCid:I

    return v0
.end method

.method public getpsLac()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsLac:I

    return v0
.end method

.method public getpsPsc()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsPsc:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 210
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsLac:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsCid:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsPsc:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLacAndCid(II)V
    .locals 0
    .param p1, "lac"    # I
    .param p2, "cid"    # I

    .prologue
    .line 141
    iput p1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    .line 142
    iput p2, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    .line 143
    return-void
.end method

.method public setPsc(I)V
    .locals 0
    .param p1, "psc"    # I

    .prologue
    .line 150
    iput p1, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    .line 151
    return-void
.end method

.method public setStateInvalid()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 112
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    .line 113
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    .line 114
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    .line 115
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsLac:I

    .line 116
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsCid:I

    .line 117
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsPsc:I

    .line 118
    return-void
.end method

.method public setpsLacAndCid(II)V
    .locals 0
    .param p1, "lac"    # I
    .param p2, "cid"    # I

    .prologue
    .line 125
    iput p1, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsLac:I

    .line 126
    iput p2, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsCid:I

    .line 127
    return-void
.end method

.method public setpsPsc(I)V
    .locals 0
    .param p1, "psc"    # I

    .prologue
    .line 134
    iput p1, p0, Landroid/telephony/gsm/GsmCellLocation;->mpsPsc:I

    .line 135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
