.class public final Landroid/bluetooth/le/ScanRecord;
.super Ljava/lang/Object;
.source "ScanRecord.java"


# static fields
.field private static final DATA_TYPE_FLAGS:I = 0x1

.field private static final DATA_TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field private static final DATA_TYPE_LOCAL_NAME_SHORT:I = 0x8

.field private static final DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field private static final DATA_TYPE_SERVICE_DATA:I = 0x16

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE:I = 0x7

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL:I = 0x6

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE:I = 0x3

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL:I = 0x2

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE:I = 0x5

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL:I = 0x4

.field private static final DATA_TYPE_TX_POWER_LEVEL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ScanRecord"


# instance fields
.field private final mAdvertiseFlags:I

.field private final mDeviceName:Ljava/lang/String;

.field private final mManufacturerId:I

.field private final mManufacturerSpecificData:[B

.field private final mServiceData:[B

.field private final mServiceDataUuid:Landroid/os/ParcelUuid;

.field private final mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mTxPowerLevel:I


# direct methods
.method private constructor <init>(Ljava/util/List;Landroid/os/ParcelUuid;[BI[BIILjava/lang/String;)V
    .locals 0
    .param p2, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p3, "serviceData"    # [B
    .param p4, "manufacturerId"    # I
    .param p5, "manufacturerSpecificData"    # [B
    .param p6, "advertiseFlags"    # I
    .param p7, "txPowerLevel"    # I
    .param p8, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/os/ParcelUuid;",
            "[BI[BII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    .line 160
    iput p4, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerId:I

    .line 161
    iput-object p5, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:[B

    .line 162
    iput-object p2, p0, Landroid/bluetooth/le/ScanRecord;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 163
    iput-object p3, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:[B

    .line 164
    iput-object p8, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    .line 165
    iput p6, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    .line 166
    iput p7, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    .line 167
    return-void
.end method

.method private static extractBytes([BII)[B
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 391
    new-array v0, p2, [B

    .line 392
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    return-object v0
.end method

.method public static getManudatCount([B)I
    .locals 12
    .param p0, "scanRecord"    # [B

    .prologue
    const/4 v8, 0x0

    .line 340
    if-nez p0, :cond_1

    move v6, v8

    .line 372
    :cond_0
    :goto_0
    return v6

    .line 344
    :cond_1
    const/4 v0, 0x0

    .line 345
    .local v0, "currentPos":I
    const/4 v6, 0x0

    .line 346
    .local v6, "manuDataInstance":I
    const/4 v7, 0x0

    .local v7, "manufacturerSpecificData":[B
    move v1, v0

    .line 349
    .end local v0    # "currentPos":I
    .local v1, "currentPos":I
    :goto_1
    :try_start_0
    array-length v9, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v1, v9, :cond_2

    .line 351
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "currentPos":I
    .restart local v0    # "currentPos":I
    :try_start_1
    aget-byte v9, p0, v1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit16 v5, v9, 0xff

    .line 352
    .local v5, "length":I
    if-eqz v5, :cond_0

    .line 356
    add-int/lit8 v2, v5, -0x1

    .line 358
    .local v2, "dataLength":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "currentPos":I
    .restart local v1    # "currentPos":I
    :try_start_2
    aget-byte v9, p0, v0
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    and-int/lit16 v4, v9, 0xff

    .line 359
    .local v4, "fieldType":I
    packed-switch v4, :pswitch_data_0

    .line 367
    :goto_2
    add-int v0, v1, v2

    .end local v1    # "currentPos":I
    .restart local v0    # "currentPos":I
    move v1, v0

    .line 368
    .end local v0    # "currentPos":I
    .restart local v1    # "currentPos":I
    goto :goto_1

    .line 361
    :pswitch_0
    add-int/lit8 v6, v6, 0x1

    .line 362
    goto :goto_2

    .line 370
    .end local v2    # "dataLength":I
    .end local v4    # "fieldType":I
    .end local v5    # "length":I
    :catch_0
    move-exception v3

    move v0, v1

    .line 371
    .end local v1    # "currentPos":I
    .restart local v0    # "currentPos":I
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_3
    const-string v9, "ScanRecord"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unable to parse scan record: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 372
    goto :goto_0

    .line 370
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v3

    goto :goto_3

    .end local v0    # "currentPos":I
    .restart local v1    # "currentPos":I
    :cond_2
    move v0, v1

    .end local v1    # "currentPos":I
    .restart local v0    # "currentPos":I
    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0xff
        :pswitch_0
    .end packed-switch
.end method

.method public static getManudataList([B)Ljava/util/ArrayList;
    .locals 13
    .param p0, "scanRecord"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 291
    if-nez p0, :cond_1

    move-object v7, v9

    .line 330
    :cond_0
    :goto_0
    return-object v7

    .line 295
    :cond_1
    const/4 v0, 0x0

    .line 296
    .local v0, "currentPos":I
    const/4 v6, 0x0

    .line 297
    .local v6, "manufacturerSpecificData":[B
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "manufacturerSpecificDatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    move v1, v0

    .line 300
    .end local v0    # "currentPos":I
    .local v1, "currentPos":I
    :goto_1
    :try_start_0
    array-length v10, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v1, v10, :cond_2

    .line 302
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "currentPos":I
    .restart local v0    # "currentPos":I
    :try_start_1
    aget-byte v10, p0, v1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit16 v5, v10, 0xff

    .line 303
    .local v5, "length":I
    if-eqz v5, :cond_0

    .line 307
    add-int/lit8 v2, v5, -0x1

    .line 309
    .local v2, "dataLength":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "currentPos":I
    .restart local v1    # "currentPos":I
    :try_start_2
    aget-byte v10, p0, v0

    and-int/lit16 v4, v10, 0xff

    .line 310
    .local v4, "fieldType":I
    packed-switch v4, :pswitch_data_0

    .line 325
    :goto_2
    add-int v0, v1, v2

    .end local v1    # "currentPos":I
    .restart local v0    # "currentPos":I
    move v1, v0

    .line 326
    .end local v0    # "currentPos":I
    .restart local v1    # "currentPos":I
    goto :goto_1

    .line 312
    :pswitch_0
    invoke-static {p0, v1, v2}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v6

    .line 316
    const/4 v10, 0x0

    aget-byte v8, v6, v10

    .line 317
    .local v8, "temp":B
    const/4 v10, 0x0

    const/4 v11, 0x1

    aget-byte v11, v6, v11

    aput-byte v11, v6, v10

    .line 318
    const/4 v10, 0x1

    aput-byte v8, v6, v10

    .line 319
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 328
    .end local v2    # "dataLength":I
    .end local v4    # "fieldType":I
    .end local v5    # "length":I
    .end local v8    # "temp":B
    :catch_0
    move-exception v3

    move v0, v1

    .line 329
    .end local v1    # "currentPos":I
    .restart local v0    # "currentPos":I
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_3
    const-string v10, "ScanRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unable to parse scan record: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 330
    goto :goto_0

    .line 328
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v3

    goto :goto_3

    .end local v0    # "currentPos":I
    .restart local v1    # "currentPos":I
    :cond_2
    move v0, v1

    .end local v1    # "currentPos":I
    .restart local v0    # "currentPos":I
    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0xff
        :pswitch_0
    .end packed-switch
.end method

.method public static parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;
    .locals 22
    .param p0, "scanRecord"    # [B

    .prologue
    .line 194
    if-nez p0, :cond_0

    .line 195
    const/4 v2, 0x0

    .line 280
    :goto_0
    return-object v2

    .line 198
    :cond_0
    const/4 v11, 0x0

    .line 199
    .local v11, "currentPos":I
    const/4 v8, -0x1

    .line 200
    .local v8, "advertiseFlag":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v3, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v10, 0x0

    .line 202
    .local v10, "localName":Ljava/lang/String;
    const/high16 v9, -0x80000000

    .line 203
    .local v9, "txPowerLevel":I
    const/4 v4, 0x0

    .line 204
    .local v4, "serviceDataUuid":Landroid/os/ParcelUuid;
    const/4 v5, 0x0

    .line 205
    .local v5, "serviceData":[B
    const/4 v6, -0x1

    .line 206
    .local v6, "manufacturerId":I
    const/4 v7, 0x0

    .local v7, "manufacturerSpecificData":[B
    move v12, v11

    .line 209
    .end local v11    # "currentPos":I
    .local v12, "currentPos":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    array-length v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v12, v2, :cond_3

    .line 211
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "currentPos":I
    .restart local v11    # "currentPos":I
    :try_start_1
    aget-byte v2, p0, v12

    and-int/lit16 v0, v2, 0xff

    move/from16 v16, v0

    .line 212
    .local v16, "length":I
    if-nez v16, :cond_2

    .line 272
    .end local v16    # "length":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    const/4 v3, 0x0

    .line 275
    :cond_1
    new-instance v2, Landroid/bluetooth/le/ScanRecord;

    invoke-direct/range {v2 .. v10}, Landroid/bluetooth/le/ScanRecord;-><init>(Ljava/util/List;Landroid/os/ParcelUuid;[BI[BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v14

    .line 279
    .end local v10    # "localName":Ljava/lang/String;
    .local v14, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_3
    const-string v2, "ScanRecord"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "unable to parse scan record: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v2, 0x0

    goto :goto_0

    .line 216
    .end local v14    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v10    # "localName":Ljava/lang/String;
    .restart local v16    # "length":I
    :cond_2
    add-int/lit8 v13, v16, -0x1

    .line 218
    .local v13, "dataLength":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "currentPos":I
    .restart local v12    # "currentPos":I
    :try_start_2
    aget-byte v2, p0, v11

    and-int/lit16 v15, v2, 0xff

    .line 219
    .local v15, "fieldType":I
    sparse-switch v15, :sswitch_data_0

    .line 269
    :goto_4
    add-int v11, v12, v13

    .end local v12    # "currentPos":I
    .restart local v11    # "currentPos":I
    move v12, v11

    .line 270
    .end local v11    # "currentPos":I
    .restart local v12    # "currentPos":I
    goto :goto_1

    .line 221
    :sswitch_0
    aget-byte v2, p0, v12

    and-int/lit16 v8, v2, 0xff

    .line 222
    goto :goto_4

    .line 225
    :sswitch_1
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v2, v3}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_4

    .line 278
    .end local v10    # "localName":Ljava/lang/String;
    .end local v13    # "dataLength":I
    .end local v15    # "fieldType":I
    .end local v16    # "length":I
    :catch_1
    move-exception v14

    move v11, v12

    .end local v12    # "currentPos":I
    .restart local v11    # "currentPos":I
    goto :goto_3

    .line 230
    .end local v11    # "currentPos":I
    .restart local v10    # "localName":Ljava/lang/String;
    .restart local v12    # "currentPos":I
    .restart local v13    # "dataLength":I
    .restart local v15    # "fieldType":I
    .restart local v16    # "length":I
    :sswitch_2
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v2, v3}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_4

    .line 235
    :sswitch_3
    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v2, v3}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_4

    .line 240
    :sswitch_4
    new-instance v10, Ljava/lang/String;

    .end local v10    # "localName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([B)V

    .line 242
    .restart local v10    # "localName":Ljava/lang/String;
    goto :goto_4

    .line 244
    :sswitch_5
    aget-byte v9, p0, v12

    .line 245
    goto :goto_4

    .line 247
    :sswitch_6
    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v5

    .line 249
    const/16 v18, 0x2

    .line 250
    .local v18, "serviceUuidLength":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v12, v1}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v17

    .line 252
    .local v17, "serviceDataUuidBytes":[B
    invoke-static/range {v17 .. v17}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v4

    .line 253
    goto :goto_4

    .line 255
    .end local v17    # "serviceDataUuidBytes":[B
    .end local v18    # "serviceUuidLength":I
    :sswitch_7
    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v7

    .line 259
    const/4 v2, 0x1

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/16 v20, 0x0

    aget-byte v20, v7, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v6, v2, v20

    .line 261
    const/4 v2, 0x0

    aget-byte v19, v7, v2

    .line 262
    .local v19, "temp":B
    const/4 v2, 0x0

    const/16 v20, 0x1

    aget-byte v20, v7, v20

    aput-byte v20, v7, v2

    .line 263
    const/4 v2, 0x1

    aput-byte v19, v7, v2
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .end local v13    # "dataLength":I
    .end local v15    # "fieldType":I
    .end local v16    # "length":I
    .end local v19    # "temp":B
    :cond_3
    move v11, v12

    .end local v12    # "currentPos":I
    .restart local v11    # "currentPos":I
    goto/16 :goto_2

    .line 219
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0x16 -> :sswitch_6
        0xff -> :sswitch_7
    .end sparse-switch
.end method

.method private static parseServiceUuid([BIIILjava/util/List;)I
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "currentPos"    # I
    .param p2, "dataLength"    # I
    .param p3, "uuidLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 379
    .local p4, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_0
    if-lez p2, :cond_0

    .line 380
    invoke-static {p0, p1, p3}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 382
    .local v0, "uuidBytes":[B
    invoke-static {v0}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    sub-int/2addr p2, p3

    .line 384
    add-int/2addr p1, p3

    .line 385
    goto :goto_0

    .line 386
    .end local v0    # "uuidBytes":[B
    :cond_0
    return p1
.end method


# virtual methods
.method public getAdvertiseFlags()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerId()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerId:I

    return v0
.end method

.method public getManufacturerSpecificData()[B
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:[B

    return-object v0
.end method

.method public getServiceData()[B
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:[B

    return-object v0
.end method

.method public getServiceDataUuid()Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceDataUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public getServiceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public getTxPowerLevel()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanRecord [mAdvertiseFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceDataUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
