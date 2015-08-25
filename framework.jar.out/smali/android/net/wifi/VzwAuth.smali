.class public Landroid/net/wifi/VzwAuth;
.super Ljava/lang/Object;
.source "VzwAuth.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field public final TYPE_EUIMID:I

.field public final TYPE_MEID:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "VzwAuth"

    iput-object v0, p0, Landroid/net/wifi/VzwAuth;->TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/wifi/VzwAuth;->TYPE_EUIMID:I

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/VzwAuth;->TYPE_MEID:I

    .line 55
    iput-object p1, p0, Landroid/net/wifi/VzwAuth;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private check3GCombo()Z
    .locals 7

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "b3g4g":Z
    iget-object v4, p0, Landroid/net/wifi/VzwAuth;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/net/wifi/VzwAuth;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 176
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v1

    .line 177
    .local v1, "lteOnCdma":I
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    .line 178
    .local v3, "type":I
    iget-object v4, p0, Landroid/net/wifi/VzwAuth;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check3GCombo: lteonCdma :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 182
    const/4 v0, 0x1

    .line 190
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/net/wifi/VzwAuth;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check3GCombo: b3g4g :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return v0

    .line 185
    :cond_1
    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    const/16 v4, 0xc

    if-eq v3, v4, :cond_2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    .line 188
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEsnMeid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Landroid/net/wifi/VzwAuth;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/wifi/VzwAuth;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 216
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getEuimid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 226
    :try_start_0
    const-string v2, "ril.euimid"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "strEuimid":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 229
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/VzwAuth;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEuimid : strEuimid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-object v1

    .line 231
    .end local v1    # "strEuimid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 232
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/net/wifi/VzwAuth;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEuimid : Ex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v1, "0123456789abcd"

    .restart local v1    # "strEuimid":Ljava/lang/String;
    goto :goto_0
.end method

.method private getMDN()Ljava/lang/String;
    .locals 5

    .prologue
    .line 197
    iget-object v2, p0, Landroid/net/wifi/VzwAuth;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "WifiService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Landroid/net/wifi/VzwAuth;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/wifi/VzwAuth;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 201
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v0, ""

    .line 202
    .local v0, "mdn":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 203
    iget-object v2, p0, Landroid/net/wifi/VzwAuth;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMDN MDN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Landroid/net/wifi/VzwAuth;->TAG:Ljava/lang/String;

    const-string v3, "getMDN empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v0, "0123456789"

    .line 209
    :cond_0
    return-object v0
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 155
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_1

    .line 157
    aget-byte v5, p0, v2

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v1, v5, 0xf

    .line 158
    .local v1, "halfbyte":I
    const/4 v3, 0x0

    .local v3, "twohalves":I
    move v4, v3

    .line 160
    .end local v3    # "twohalves":I
    .local v4, "twohalves":I
    :goto_1
    if-ltz v1, :cond_0

    const/16 v5, 0x9

    if-gt v1, v5, :cond_0

    .line 161
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 164
    :goto_2
    aget-byte v5, p0, v2

    and-int/lit8 v1, v5, 0xf

    .line 166
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "twohalves":I
    .restart local v3    # "twohalves":I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v3    # "twohalves":I
    .restart local v4    # "twohalves":I
    :cond_0
    add-int/lit8 v5, v1, -0xa

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 168
    .end local v1    # "halfbyte":I
    .end local v4    # "twohalves":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .restart local v1    # "halfbyte":I
    .restart local v3    # "twohalves":I
    :cond_2
    move v4, v3

    .end local v3    # "twohalves":I
    .restart local v4    # "twohalves":I
    goto :goto_1
.end method


# virtual methods
.method public encryptSha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 145
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 146
    .local v1, "md":Ljava/security/MessageDigest;
    const/16 v2, 0x28

    new-array v0, v2, [B

    .line 147
    .local v0, "hash":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 148
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/net/wifi/VzwAuth;->toHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 8

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "deviceType":I
    iget-object v5, p0, Landroid/net/wifi/VzwAuth;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/net/wifi/VzwAuth;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 280
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    .line 281
    .local v4, "type":I
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v1

    .line 282
    .local v1, "lteOnCdma":I
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    .line 283
    .local v2, "phoneType":I
    iget-object v5, p0, Landroid/net/wifi/VzwAuth;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDeviceType: lteonCdma :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    .line 288
    const/4 v0, 0x3

    .line 302
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 290
    :cond_1
    const/16 v5, 0xd

    if-ne v4, v5, :cond_2

    .line 292
    const/4 v0, 0x4

    goto :goto_0

    .line 294
    :cond_2
    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    const/4 v5, 0x6

    if-eq v4, v5, :cond_3

    const/16 v5, 0xc

    if-eq v4, v5, :cond_3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    .line 297
    :cond_3
    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    .line 298
    const/4 v0, 0x1

    goto :goto_0

    .line 300
    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 6

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "mac":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/wifi/VzwAuth;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 257
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_0

    .line 259
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 260
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 264
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/VzwAuth;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMacAddress : MAC Address:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Landroid/net/wifi/VzwAuth;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEuimid : ModelName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getVZWPassword()Ljava/lang/String;
    .locals 14

    .prologue
    .line 83
    const-string v9, "abcd"

    .line 90
    .local v9, "password":Ljava/lang/String;
    iget-object v11, p0, Landroid/net/wifi/VzwAuth;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.READ_PHONE_STATE"

    const-string v13, "WifiService"

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Landroid/net/wifi/VzwAuth;->getMDN()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "mdn":Ljava/lang/String;
    iget-object v11, p0, Landroid/net/wifi/VzwAuth;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "makeVZWPassword: mdn obtained: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v3, ""

    .line 95
    .local v3, "esn_Meid_euimid":Ljava/lang/String;
    invoke-direct {p0}, Landroid/net/wifi/VzwAuth;->check3GCombo()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 97
    invoke-direct {p0}, Landroid/net/wifi/VzwAuth;->getEuimid()Ljava/lang/String;

    move-result-object v3

    .line 104
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 105
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v10

    .line 106
    .local v10, "z":Ljava/util/TimeZone;
    invoke-virtual {v10}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    .line 107
    .local v6, "offset":I
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 108
    invoke-virtual {v10}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v11

    add-int/2addr v6, v11

    .line 110
    :cond_0
    div-int/lit16 v11, v6, 0x3e8

    div-int/lit8 v11, v11, 0x3c

    div-int/lit8 v7, v11, 0x3c

    .line 111
    .local v7, "offsetHrs":I
    div-int/lit16 v11, v6, 0x3e8

    div-int/lit8 v11, v11, 0x3c

    rem-int/lit8 v8, v11, 0x3c

    .line 112
    .local v8, "offsetMins":I
    const/16 v11, 0xb

    neg-int v12, v7

    invoke-virtual {v0, v11, v12}, Ljava/util/Calendar;->add(II)V

    .line 113
    const/16 v11, 0xc

    neg-int v12, v8

    invoke-virtual {v0, v11, v12}, Ljava/util/Calendar;->add(II)V

    .line 114
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v11, "MMddyyyy"

    invoke-direct {v4, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 115
    .local v4, "ft":Ljava/text/SimpleDateFormat;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 117
    iget-object v11, p0, Landroid/net/wifi/VzwAuth;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "makeVZWPassword: MDN:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ESN_MEID:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v11, p0, Landroid/net/wifi/VzwAuth;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "makeVZWPassword: PWD b4 encryption: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v2, ""

    .line 123
    .local v2, "encryptPass":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v9}, Landroid/net/wifi/VzwAuth;->encryptSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    iget-object v11, p0, Landroid/net/wifi/VzwAuth;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "makeVZWPassword: PWD aftr encryption: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_1
    return-object v2

    .line 101
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "encryptPass":Ljava/lang/String;
    .end local v4    # "ft":Ljava/text/SimpleDateFormat;
    .end local v6    # "offset":I
    .end local v7    # "offsetHrs":I
    .end local v8    # "offsetMins":I
    .end local v10    # "z":Ljava/util/TimeZone;
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/VzwAuth;->getEsnMeid()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 126
    .restart local v0    # "c":Ljava/util/Calendar;
    .restart local v2    # "encryptPass":Ljava/lang/String;
    .restart local v4    # "ft":Ljava/text/SimpleDateFormat;
    .restart local v6    # "offset":I
    .restart local v7    # "offsetHrs":I
    .restart local v8    # "offsetMins":I
    .restart local v10    # "z":Ljava/util/TimeZone;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 129
    iget-object v11, p0, Landroid/net/wifi/VzwAuth;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "makeVZWPassword: Exception caught: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getVZWUserName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    const-string v1, ""

    .line 65
    .local v1, "strUsrName":Ljava/lang/String;
    invoke-direct {p0}, Landroid/net/wifi/VzwAuth;->getMDN()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "mdn":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    const-string v2, ""

    .line 71
    :goto_0
    return-object v2

    .line 70
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VzW3652987!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@hds.vzw3g.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 71
    goto :goto_0
.end method
