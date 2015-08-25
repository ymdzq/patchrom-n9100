.class public Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;
.super Ljava/lang/Object;
.source "SensoryUDTSIDEngine.java"


# static fields
.field private static final MODELS_WA38:Ljava/lang/String; = "/system/wakeupdata/samsung/models_wa38.bin"

.field private static final SUBTAG:Ljava/lang/String; = "secMM: "

.field private static final TAG:Ljava/lang/String; = "SensoryUDTSIDEngine"

.field private static final UDTSID_ENROLL_CNT:S = 0x4s

.field private static final UDTSID_NUM_USERS:S = 0x5s

.field private static final UDTSIDnetfile:Ljava/lang/String; = "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_250_v5.1.1.raw"

.field private static final UDTSIDsearchfile:Ljava/lang/String; = "/system/wakeupdata/sensory/phonemeSearch_1_3.raw"

.field public static VERSION_MAJOR:I = 0x0

.field public static VERSION_MINOR:I = 0x0

.field private static m_strFPSVnet:Ljava/lang/String; = null

.field private static m_strFPSVsearch:Ljava/lang/String; = null

.field private static m_strFPSVsvsid:Ljava/lang/String; = null

.field private static m_strLanguage:Ljava/lang/String; = null

.field private static m_strResourceDir:Ljava/lang/String; = null

.field private static final udtsvsidfile:Ljava/lang/String; = "/system/wakeupdata/sensory/svsid_1_1.raw"


# instance fields
.field private m_lSessionValue:J

.field private m_lSessionValueFPSV:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVnet:Ljava/lang/String;

    .line 19
    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVsearch:Ljava/lang/String;

    .line 20
    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVsvsid:Ljava/lang/String;

    .line 22
    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    .line 23
    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    .line 33
    sput v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MAJOR:I

    .line 34
    sput v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MINOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    .line 31
    iput-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    return-void
.end method

.method private GetLanguageIndex()I
    .locals 5

    .prologue
    .line 580
    const/4 v1, 0x1

    .line 582
    .local v1, "nIndex":I
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 584
    const-string v2, "SensoryUDTSIDEngine"

    const-string v3, "GetLanguageIndex, m_strLanguage is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetLanguage(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :goto_1
    return v1

    .line 586
    :cond_0
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "ko_kr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 587
    :cond_1
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "en_us"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 588
    :cond_2
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "en_gb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    .line 589
    :cond_3
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "es_es"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    .line 590
    :cond_4
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "es_us"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x4

    goto :goto_0

    .line 591
    :cond_5
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "fr_fr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x5

    goto :goto_0

    .line 592
    :cond_6
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "de_de"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x6

    goto :goto_0

    .line 593
    :cond_7
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "it_it"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x7

    goto :goto_0

    .line 594
    :cond_8
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "zh_cn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v1, 0x8

    goto :goto_0

    .line 595
    :cond_9
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "ja_jp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v1, 0x9

    goto :goto_0

    .line 596
    :cond_a
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "ru_ru"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v1, 0xa

    goto/16 :goto_0

    .line 597
    :cond_b
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    const-string v3, "pt_br"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v1, 0xb

    goto/16 :goto_0

    .line 600
    :cond_c
    const-string v2, "SensoryUDTSIDEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetLanguageIndex, strLanguage is unknown : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private SetFPSVResource()Z
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 530
    const/16 v6, 0xc

    new-array v2, v6, [[Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "am_ko_kr.raw"

    aput-object v7, v6, v4

    const-string v7, "search_ko_kr.raw"

    aput-object v7, v6, v5

    const-string v7, "ubm_ko_kr.raw"

    aput-object v7, v6, v9

    aput-object v6, v2, v4

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "am_en_us.raw"

    aput-object v7, v6, v4

    const-string v7, "search_en_us.raw"

    aput-object v7, v6, v5

    const-string v7, "ubm_en_us.raw"

    aput-object v7, v6, v9

    aput-object v6, v2, v5

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "am_en_gb.raw"

    aput-object v7, v6, v4

    const-string v7, "search_en_gb.raw"

    aput-object v7, v6, v5

    const-string v7, "ubm_en_gb.raw"

    aput-object v7, v6, v9

    aput-object v6, v2, v9

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "am_es_es.raw"

    aput-object v7, v6, v4

    const-string v7, "search_es_es.raw"

    aput-object v7, v6, v5

    const-string v7, "ubm_es_es.raw"

    aput-object v7, v6, v9

    aput-object v6, v2, v10

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "am_es_us.raw"

    aput-object v7, v6, v4

    const-string v7, "search_es_us.raw"

    aput-object v7, v6, v5

    const-string v7, "ubm_es_us.raw"

    aput-object v7, v6, v9

    aput-object v6, v2, v11

    const/4 v6, 0x5

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_fr_fr.raw"

    aput-object v8, v7, v4

    const-string v8, "search_fr_fr.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_fr_fr.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    const/4 v6, 0x6

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_de_de.raw"

    aput-object v8, v7, v4

    const-string v8, "search_de_de.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_de_de.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    const/4 v6, 0x7

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_it_it.raw"

    aput-object v8, v7, v4

    const-string v8, "search_it_it.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_it_it.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    const/16 v6, 0x8

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_zh_cn.raw"

    aput-object v8, v7, v4

    const-string v8, "search_zh_cn.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_zh_cn.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    const/16 v6, 0x9

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_ja_jp.raw"

    aput-object v8, v7, v4

    const-string v8, "search_ja_jp.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_ja_jp.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    const/16 v6, 0xa

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_ru_ru.raw"

    aput-object v8, v7, v4

    const-string v8, "search_ru_ru.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_ru_ru.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    const/16 v6, 0xb

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "am_pt_br.raw"

    aput-object v8, v7, v4

    const-string v8, "search_pt_br.raw"

    aput-object v8, v7, v5

    const-string v8, "ubm_pt_br.raw"

    aput-object v8, v7, v9

    aput-object v7, v2, v6

    .line 546
    .local v2, "strResources":[[Ljava/lang/String;
    invoke-direct {p0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->GetLanguageIndex()I

    move-result v0

    .line 548
    .local v0, "nIndex":I
    const-string v3, "higalaxy_"

    .line 549
    .local v3, "strTrigger":Ljava/lang/String;
    sget v6, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-ne v6, v11, :cond_0

    .line 551
    const-string v3, "okgoogle_"

    .line 554
    :cond_0
    const-string v6, "SensoryUDTSIDEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FPSV recog : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v0

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v6, "SensoryUDTSIDEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FPSV search : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v0

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v6, "SensoryUDTSIDEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FPSV ubm : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v0

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    sget-object v6, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 560
    const-string v5, "SensoryUDTSIDEngine"

    const-string v6, "SetResourceforFPSV, m_strResourceDir is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :goto_0
    return v4

    .line 564
    :cond_1
    sget-object v6, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 565
    .local v1, "nLen":I
    if-lez v1, :cond_2

    sget-object v6, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_2

    .line 567
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    .line 570
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v0

    aget-object v4, v7, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVnet:Ljava/lang/String;

    .line 571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v2, v0

    aget-object v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVsearch:Ljava/lang/String;

    .line 572
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v2, v0

    aget-object v6, v6, v9

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVsvsid:Ljava/lang/String;

    move v4, v5

    .line 574
    goto/16 :goto_0
.end method

.method public static init()I
    .locals 4

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 88
    .local v1, "nResult":I
    :try_start_0
    const-string v2, "SensoryUDTSIDEngine"

    const-string v3, "Trying to load libSensoryUDTSIDEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v2, "SensoryUDTSIDEngine"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 90
    const-string v2, "SensoryUDTSIDEngine"

    const-string v3, "Loading libSensoryUDTSIDEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :goto_0
    return v1

    .line 92
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "SensoryUDTSIDEngine"

    const-string v3, "WARNING: libSensoryUDTSIDEngine Could not load libSensoryUDTSIDEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v1, -0x1

    .line 101
    goto :goto_0

    .line 97
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public native CombineModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public GetFWVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    invoke-static {}, Lcom/samsung/voiceshell/WakeUpUtils;->GetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native GetVersion()Ljava/lang/String;
.end method

.method public native GetWakeUpModel(IS)Ljava/lang/String;
.end method

.method public native SetLanguage(I)V
.end method

.method public SetResourceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "strResourceDir"    # Ljava/lang/String;
    .param p2, "strLanguage"    # Ljava/lang/String;

    .prologue
    .line 521
    sput-object p1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strResourceDir:Ljava/lang/String;

    .line 522
    sput-object p2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strLanguage:Ljava/lang/String;

    .line 523
    return-void
.end method

.method public SetSessionValueFPSV(J)V
    .locals 3
    .param p1, "lSessionValueFPSV"    # J

    .prologue
    .line 125
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: setSessionValue, trigFPSV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-wide p1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    .line 127
    return-void
.end method

.method public SetSessionValueUDT(J)V
    .locals 3
    .param p1, "lSessionValue"    # J

    .prologue
    .line 118
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: setSessionValue, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iput-wide p1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    .line 120
    return-void
.end method

.method public SetVersion(Ljava/lang/String;)V
    .locals 4
    .param p1, "strVersion"    # Ljava/lang/String;

    .prologue
    .line 499
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "str":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 503
    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :goto_0
    return-void

    .line 507
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MAJOR:I

    .line 508
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MINOR:I

    .line 510
    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MAJOR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MINOR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public native SetWakeUpMode(I)V
.end method

.method public native SetWakeUpType(I)V
.end method

.method public native checkNewRecordings(JS)I
.end method

.method public native checkNewRecordings(JSI)I
.end method

.method public checkResultEnroll(SS)I
    .locals 9
    .param p1, "enrollIdx"    # S
    .param p2, "userID"    # S

    .prologue
    const v8, 0xffff

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 211
    const/4 v2, 0x0

    .line 213
    .local v2, "recResult":I
    const/4 v1, 0x0

    .line 214
    .local v1, "nUDTResult":I
    const/4 v0, 0x0

    .line 216
    .local v0, "nFPSVResult":I
    const-string v3, "SensoryUDTSIDEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkResultEnroll, enrollIdx : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eq v3, v6, :cond_0

    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eq v3, v7, :cond_0

    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-nez v3, :cond_5

    .line 222
    :cond_0
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 224
    iget-wide v3, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getResultEnroll(JSS)I

    move-result v2

    .line 225
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v3, v8, :cond_1

    if-ne v2, v6, :cond_1

    .line 227
    const-string v3, "SensoryUDTSIDEngine"

    const-string v4, "checkResultEnroll, Set WMode to WMODE_FPSV"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sput v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    .line 229
    invoke-virtual {p0, v7}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetWakeUpMode(I)V

    .line 232
    :cond_1
    move v0, v2

    .line 235
    :cond_2
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 237
    iget-wide v3, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getResultEnroll(JSS)I

    move-result v2

    .line 238
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v3, v8, :cond_3

    if-ne v2, v6, :cond_3

    .line 240
    const-string v3, "SensoryUDTSIDEngine"

    const-string v4, "checkResultEnroll, Set WMode to WMODE_UDT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sput v6, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    .line 242
    invoke-virtual {p0, v6}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetWakeUpMode(I)V

    .line 245
    :cond_3
    move v1, v2

    .line 259
    :cond_4
    :goto_0
    const-string v3, "SensoryUDTSIDEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VSG: checkResultEnroll, ResultUDT : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ResultFPSV : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v2

    .line 248
    :cond_5
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v3, v6, :cond_6

    .line 250
    iget-wide v3, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getResultEnroll(JSS)I

    move-result v2

    .line 251
    move v1, v2

    goto :goto_0

    .line 253
    :cond_6
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v3, v7, :cond_4

    .line 255
    iget-wide v3, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getResultEnroll(JSS)I

    move-result v2

    .line 256
    move v0, v2

    goto :goto_0
.end method

.method public closeModels()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 483
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: closeModels, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trigFPSV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 486
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeRecog(J)V

    .line 487
    iput-wide v4, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    .line 490
    :cond_0
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 492
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {p0, v0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeRecog(J)V

    .line 493
    iput-wide v4, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    .line 495
    :cond_1
    return-void
.end method

.method public native closeRecog(J)V
.end method

.method public native closeSession(J)V
.end method

.method public consistencyCheckEnroll(S[SI)I
    .locals 9
    .param p1, "shUserID"    # S
    .param p2, "shProIndex"    # [S
    .param p3, "nEnrollResult"    # I

    .prologue
    const/4 v6, 0x1

    .line 267
    const/4 v1, 0x0

    .line 270
    .local v1, "nResult":I
    const-wide/16 v2, 0x0

    .line 271
    .local v2, "trig":J
    sget v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v5, v6, :cond_1

    .line 273
    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    .line 280
    :goto_0
    sget v5, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MAJOR:I

    if-gt v5, v6, :cond_2

    sget v5, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MINOR:I

    const/16 v6, 0x40

    if-gt v5, v6, :cond_2

    .line 282
    invoke-virtual {p0, v2, v3, p1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->checkNewRecordings(JS)I

    move-result v1

    .line 289
    :goto_1
    const-string v5, "SensoryUDTSIDEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secMM: consistencyCheckEnroll.result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", CommandNumber : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v5, 0x5

    if-ne v1, v5, :cond_3

    .line 293
    invoke-virtual {p0, v2, v3, p1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getFeedbackDetails(JS)[J

    move-result-object v0

    .line 295
    .local v0, "details":[J
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_2
    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    .line 297
    aget-wide v5, v0, v4

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 299
    const/4 v5, 0x0

    int-to-short v6, v4

    aput-short v6, p2, v5

    .line 302
    :cond_0
    const-string v5, "SensoryUDTSIDEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secMM: consistencyCheckEnroll, Feedback details: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v7, v0, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 277
    .end local v0    # "details":[J
    .end local v4    # "x":I
    :cond_1
    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {p0, v2, v3, p1, p3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->checkNewRecordings(JSI)I

    move-result v1

    goto :goto_1

    .line 306
    :cond_3
    return v1
.end method

.method public deleteModel(Ljava/lang/String;S)I
    .locals 5
    .param p1, "ROOT"    # Ljava/lang/String;
    .param p2, "CommandNumber"    # S

    .prologue
    .line 377
    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: deleteModel, CommandNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v0, 0x0

    .line 380
    .local v0, "nResult":I
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 382
    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "deleteModel, trig is ZERO!. need to load model"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v1, -0x1

    .line 393
    :goto_0
    return v1

    .line 386
    :cond_0
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v1, v2, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->deleteUser(JS)I

    move-result v0

    .line 387
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 389
    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "secMM: deleteModel, re-doEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {p0, p1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->doEnrollModel(Ljava/lang/String;S)I

    .line 393
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public native deleteUser(JS)I
.end method

.method public doCombineModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "recogFILE1"    # Ljava/lang/String;
    .param p2, "searchFILE1"    # Ljava/lang/String;
    .param p3, "recogFILE2"    # Ljava/lang/String;
    .param p4, "searchFILE2"    # Ljava/lang/String;
    .param p5, "saveDIR"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 334
    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "VSG: doCombineModel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v1, "/system/wakeupdata/samsung/models_wa38.bin"

    invoke-static {v1}, Lcom/samsung/voiceshell/WakeUpUtils;->IsFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v6, "wa38"

    .line 337
    .local v6, "strTarget":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 339
    .local v7, "nNullCount":I
    sget v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MAJOR:I

    if-gt v1, v3, :cond_1

    sget v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->VERSION_MINOR:I

    const/16 v2, 0x47

    if-gt v1, v2, :cond_1

    .line 341
    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "CombineModel is not supported!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :goto_1
    return v0

    .line 335
    .end local v6    # "strTarget":Ljava/lang/String;
    .end local v7    # "nNullCount":I
    :cond_0
    const-string v6, "pc36"

    goto :goto_0

    .line 345
    .restart local v6    # "strTarget":Ljava/lang/String;
    .restart local v7    # "nNullCount":I
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 347
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 349
    const-string p1, ""

    .line 350
    const-string p2, ""

    .line 353
    :cond_3
    if-eqz p3, :cond_4

    if-nez p4, :cond_5

    .line 355
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 357
    const-string p3, ""

    .line 358
    const-string p4, ""

    .line 361
    :cond_5
    if-le v7, v3, :cond_6

    .line 363
    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "File path is error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VSG: doCombineModel, recogFile1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VSG: doCombineModel, searchFile1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VSG: doCombineModel, recogFile2 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VSG: doCombineModel, searchFile2 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 371
    invoke-virtual/range {v0 .. v6}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->CombineModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1
.end method

.method public native doEnroll(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method public doEnrollModel(Ljava/lang/String;S)I
    .locals 5
    .param p1, "appDir"    # Ljava/lang/String;
    .param p2, "userIdx"    # S

    .prologue
    const/4 v4, 0x1

    .line 312
    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: doEnrollModel, CommandNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v0, ""

    .line 316
    .local v0, "strTarget":Ljava/lang/String;
    if-ne p2, v4, :cond_0

    .line 318
    const-string v1, "/system/wakeupdata/samsung/models_wa38.bin"

    invoke-static {v1}, Lcom/samsung/voiceshell/WakeUpUtils;->IsFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "wa38"

    .line 321
    :cond_0
    :goto_0
    sget v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v1, v4, :cond_2

    .line 323
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->doEnroll(JLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 327
    :goto_1
    return v1

    .line 318
    :cond_1
    const-string v0, "pc36"

    goto :goto_0

    .line 327
    :cond_2
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->doEnroll(JLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public native getFeedbackDetails(JS)[J
.end method

.method public native getPhraseQuality(JS)F
.end method

.method public native getResultEnroll(JSS)I
.end method

.method public native getResultTest(JILjava/lang/String;)I
.end method

.method public getSessionValue()J
    .locals 4

    .prologue
    .line 132
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: getSessionValue, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    return-wide v0
.end method

.method public getSessionValueFPSV()J
    .locals 4

    .prologue
    .line 140
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: getSessionValue, trigFPSV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    return-wide v0
.end method

.method public native initRecog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SSS)J
.end method

.method public native initSession()J
.end method

.method public loadModels(Ljava/lang/String;S)I
    .locals 13
    .param p1, "ROOT"    # Ljava/lang/String;
    .param p2, "CommandNumber"    # S

    .prologue
    .line 399
    const-wide/16 v10, 0x0

    .line 400
    .local v10, "UDTSIDinitRecogReturn":J
    const/4 v12, 0x0

    .line 402
    .local v12, "nResult":I
    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetFPSVResource()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    const-string v0, "SensoryUDTSIDEngine"

    const-string v1, "loadModels, Set WMode to WMODE_UDT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v0, 0x1

    sput v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    .line 406
    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    invoke-virtual {p0, v0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetWakeUpMode(I)V

    .line 408
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 410
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    iput-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    .line 411
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    .line 419
    :cond_0
    :goto_0
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadModels, m_lSessionValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_lSessionValueFPSV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 423
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: loadModels, Call initRecog, trigFPSV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    sget-object v3, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVnet:Ljava/lang/String;

    sget-object v4, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVsvsid:Ljava/lang/String;

    sget-object v5, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_strFPSVsearch:Ljava/lang/String;

    const/4 v7, 0x5

    const/4 v8, 0x4

    move-object v0, p0

    move-object v6, p1

    move v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->initRecog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SSS)J

    move-result-wide v10

    .line 426
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_5

    .line 428
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->GetRecordingMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 430
    const/4 v12, 0x1

    .line 451
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 453
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: loadModels, Call initRecog, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-string v3, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_250_v5.1.1.raw"

    const-string v4, "/system/wakeupdata/sensory/svsid_1_1.raw"

    const-string v5, "/system/wakeupdata/sensory/phonemeSearch_1_3.raw"

    const/4 v7, 0x5

    const/4 v8, 0x4

    move-object v0, p0

    move-object v6, p1

    move v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->initRecog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SSS)J

    move-result-wide v10

    .line 456
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_7

    .line 458
    invoke-static {}, Lcom/samsung/voiceshell/AudioRecordHaydn;->GetRecordingMode()I

    move-result v0

    if-nez v0, :cond_6

    .line 460
    const/4 v12, 0x1

    .line 478
    :cond_2
    :goto_2
    return v12

    .line 413
    :cond_3
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 415
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {p0, v0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeRecog(J)V

    .line 416
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    goto/16 :goto_0

    .line 434
    :cond_4
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {p0, v0, v1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->loadUsers(JS)I

    move-result v12

    goto :goto_1

    .line 439
    :cond_5
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadModels, failed to initRecog, result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CommandNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trigFPSV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    invoke-virtual {p0, v0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeRecog(J)V

    .line 443
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    .line 445
    const-string v0, "SensoryUDTSIDEngine"

    const-string v1, "loadModels, Set WMode to WMODE_UDT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v0, 0x1

    sput v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    .line 447
    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    invoke-virtual {p0, v0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetWakeUpMode(I)V

    goto/16 :goto_1

    .line 464
    :cond_6
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v0, v1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->loadUsers(JS)I

    move-result v12

    goto :goto_2

    .line 469
    :cond_7
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadModels, failed to initRecog, result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CommandNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeRecog(J)V

    .line 472
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    .line 474
    const/4 v12, 0x0

    goto/16 :goto_2
.end method

.method public native loadUsers(JS)I
.end method

.method public native pipeRecogEnroll(J[SJ)I
.end method

.method public native pipeRecogTest(J[SJ)I
.end method

.method public processEnroll([SI)I
    .locals 7
    .param p1, "recordBuffer"    # [S
    .param p2, "readLength"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 148
    const/4 v6, 0x0

    .line 150
    .local v6, "nResult":I
    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eq v0, v1, :cond_0

    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eq v0, v2, :cond_0

    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-nez v0, :cond_3

    .line 154
    :cond_0
    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 156
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    int-to-long v4, p2

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->pipeRecogEnroll(J[SJ)I

    move-result v6

    .line 159
    :cond_1
    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 161
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    int-to-long v4, p2

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->pipeRecogEnroll(J[SJ)I

    move-result v6

    .line 173
    :cond_2
    :goto_0
    return v6

    .line 164
    :cond_3
    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v0, v1, :cond_4

    .line 166
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    int-to-long v4, p2

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->pipeRecogEnroll(J[SJ)I

    move-result v6

    goto :goto_0

    .line 168
    :cond_4
    sget v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    if-ne v0, v2, :cond_2

    .line 170
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    int-to-long v4, p2

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->pipeRecogEnroll(J[SJ)I

    move-result v6

    goto :goto_0
.end method

.method public processVerify([SILjava/lang/String;[S)I
    .locals 9
    .param p1, "recordBuffer"    # [S
    .param p2, "readLength"    # I
    .param p3, "ROOT"    # Ljava/lang/String;
    .param p4, "CommandType"    # [S

    .prologue
    const/4 v8, 0x0

    .line 179
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 181
    const-string v0, "SensoryUDTSIDEngine"

    const-string v1, "secMM: processVerify , trig is ZERO, terminate to verify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/16 v6, -0xc

    .line 205
    :goto_0
    return v6

    .line 185
    :cond_0
    const/4 v6, 0x0

    .line 186
    .local v6, "iResult":I
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    int-to-long v4, p2

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->pipeRecogTest(J[SJ)I

    move-result v7

    .line 188
    .local v7, "nRecogResult":I
    const/4 v0, 0x2

    if-ne v7, v0, :cond_2

    .line 190
    const/4 v6, 0x0

    .line 192
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getResultTest(JILjava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p4, v8

    .line 193
    aget-short v0, p4, v8

    if-ltz v0, :cond_1

    .line 195
    const/4 v6, 0x1

    .line 203
    :cond_1
    :goto_1
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: processVerify, pipeRecogTest, nRecogResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public native resetRecog(J)V
.end method

.method public setSessionValue(JJ)V
    .locals 3
    .param p1, "lSessionValue"    # J
    .param p3, "lSessionValueFPSV"    # J

    .prologue
    .line 109
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: setSessionValue, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trigFPSV : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput-wide p1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    .line 112
    iput-wide p3, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValueFPSV:J

    .line 113
    return-void
.end method
