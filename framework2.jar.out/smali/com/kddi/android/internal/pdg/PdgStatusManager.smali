.class public final Lcom/kddi/android/internal/pdg/PdgStatusManager;
.super Ljava/lang/Object;
.source "PdgStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "PdgStatusManager() start"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 62
    const-string v0, "PdgStatusManager() end"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static getPrivacyData(Landroid/content/Context;Ljava/lang/String;I)Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dataType"    # I

    .prologue
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "int getPrivacyData( "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ) start"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 67
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 68
    :cond_0
    const-string/jumbo v1, "parameter error: package name is not set."

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 69
    const-string v1, "int getPrivacyData() end / return = null"

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 70
    const/4 v5, 0x0

    .line 121
    :goto_0
    return-object v5

    .line 72
    :cond_1
    if-ltz p2, :cond_2

    const/4 v1, 0x2

    move/from16 v0, p2

    if-le v0, v1, :cond_3

    .line 73
    :cond_2
    const-string/jumbo v1, "parameter error: data type is out of range."

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 74
    const-string v1, "int getPrivacyData() end / return = null"

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 75
    const/4 v5, 0x0

    goto :goto_0

    .line 78
    :cond_3
    const/4 v14, 0x0

    .line 79
    .local v14, "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    const/4 v11, 0x0

    .line 81
    .local v11, "cur":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 82
    .local v2, "uri":Landroid/net/Uri;
    if-nez p2, :cond_6

    .line 83
    :try_start_0
    const-string v1, "content://com.kddi.android.pdg.read_only/pdg_status/contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 90
    :cond_4
    :goto_1
    if-eqz v2, :cond_a

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packagename=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 93
    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_a

    .line 94
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    .line 95
    .local v13, "next":Z
    if-eqz v13, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_a

    .line 96
    const-string/jumbo v1, "setting_state"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 97
    .local v7, "settingState":I
    const-string v1, "auth_state"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 98
    .local v8, "authState":I
    const-string v1, "access_time"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 99
    .local v9, "accessTime":J
    if-ltz v7, :cond_a

    const/4 v1, 0x2

    if-gt v7, v1, :cond_a

    if-ltz v8, :cond_a

    const/4 v1, 0x2

    if-gt v8, v1, :cond_a

    .line 103
    new-instance v5, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;-><init>(Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v4    # "selection":Ljava/lang/String;
    .end local v7    # "settingState":I
    .end local v8    # "authState":I
    .end local v9    # "accessTime":J
    .end local v13    # "next":Z
    .end local v14    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    .local v5, "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    :goto_2
    if-eqz v11, :cond_5

    .line 117
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_5
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "int getPrivacyData() end / return = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    .end local v5    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    .restart local v14    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    :cond_6
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_7

    .line 85
    :try_start_1
    const-string v1, "content://com.kddi.android.pdg.read_only/pdg_status/location"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_1

    .line 86
    :cond_7
    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_4

    .line 87
    const-string v1, "content://com.kddi.android.pdg.read_only/pdg_status/uim"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto/16 :goto_1

    .line 112
    :catch_0
    move-exception v12

    .line 113
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    if-eqz v11, :cond_8

    .line 117
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v5, v14

    .line 119
    .end local v14    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    .restart local v5    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    goto :goto_3

    .line 116
    .end local v5    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v14    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_9

    .line 117
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_9
    throw v1

    :cond_a
    move-object v5, v14

    .end local v14    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    .restart local v5    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    goto :goto_2
.end method
