.class public abstract Lcom/android/internal/telephony/IntRangeManager;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IntRangeManager$ClientRange;,
        Lcom/android/internal/telephony/IntRangeManager$IntRange;
    }
.end annotation


# static fields
.field private static final INITIAL_CLIENTS_ARRAY_SIZE:I = 0x4


# instance fields
.field private mRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IntRangeManager$IntRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    .line 181
    return-void
.end method

.method private populateAllClientRanges()V
    .locals 9

    .prologue
    .line 685
    iget-object v6, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 686
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 687
    iget-object v6, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 689
    .local v5, "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v6, v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 690
    .local v0, "clientLen":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 691
    iget-object v6, v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 692
    .local v4, "nextRange":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    iget v7, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 690
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 686
    .end local v4    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 695
    .end local v0    # "clientLen":I
    .end local v2    # "j":I
    .end local v5    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_1
    return-void
.end method

.method private populateAllRanges()V
    .locals 5

    .prologue
    .line 672
    iget-object v2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 674
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 675
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 676
    .local v0, "currRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v2, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    iget v3, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    goto :goto_0

    .line 678
    .end local v0    # "currRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract addRange(IIZ)V
.end method

.method public clearRanges()V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 703
    return-void
.end method

.method public declared-synchronized disableRange(IILjava/lang/String;)Z
    .locals 22
    .param p1, "startId"    # I
    .param p2, "endId"    # I
    .param p3, "client"    # Ljava/lang/String;

    .prologue
    .line 459
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 462
    .local v11, "len":I
    if-nez p1, :cond_4

    const/16 v20, 0x3e7

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 464
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 465
    .local v12, "mRangesTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_2

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 467
    .local v17, "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 468
    .local v4, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 469
    .local v7, "crLength":I
    const/4 v6, 0x0

    .local v6, "crIndex":I
    :goto_1
    if-ge v6, v7, :cond_0

    .line 470
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 471
    .local v5, "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p1

    if-lt v0, v1, :cond_1

    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    if-gt v0, v1, :cond_1

    iget-object v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 475
    add-int/lit8 v9, v9, -0x1

    .line 465
    .end local v5    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 469
    .restart local v5    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 480
    .end local v4    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v5    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v6    # "crIndex":I
    .end local v7    # "crLength":I
    .end local v17    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_2
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v20

    if-eqz v20, :cond_3

    .line 481
    const/16 v20, 0x1

    .line 627
    .end local v12    # "mRangesTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    :goto_2
    monitor-exit p0

    return v20

    .line 484
    .restart local v12    # "mRangesTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 486
    const/16 v20, 0x0

    goto :goto_2

    .line 491
    .end local v9    # "i":I
    .end local v12    # "mRangesTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    if-ge v9, v11, :cond_17

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 493
    .restart local v17    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 494
    const/16 v20, 0x0

    goto :goto_2

    .line 495
    :cond_5
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v20, v0

    move/from16 v0, p2

    move/from16 v1, v20

    if-gt v0, v1, :cond_16

    .line 498
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 501
    .restart local v4    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 502
    .restart local v7    # "crLength":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_8

    .line 503
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 504
    .restart local v5    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_7

    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_7

    iget-object v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 509
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 512
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 513
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 516
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 526
    .end local v5    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_8
    const/high16 v10, -0x80000000

    .line 527
    .local v10, "largestEndId":I
    const/16 v19, 0x0

    .line 530
    .local v19, "updateStarted":Z
    const/4 v6, 0x0

    .restart local v6    # "crIndex":I
    :goto_4
    if-ge v6, v7, :cond_16

    .line 531
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 532
    .restart local v5    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_14

    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_14

    iget-object v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 534
    add-int/lit8 v20, v7, -0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_b

    .line 535
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v10, :cond_9

    .line 538
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 539
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 542
    :cond_9
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 543
    move-object/from16 v0, v17

    iput v10, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 545
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 547
    :cond_a
    invoke-virtual {v4, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 548
    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 549
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 557
    :cond_b
    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$IntRange;I)V

    .line 559
    .local v18, "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    if-nez v6, :cond_d

    .line 565
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    move/from16 v16, v0

    .line 566
    .local v16, "nextStartId":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 567
    const/16 v19, 0x1

    .line 568
    move/from16 v0, v16

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 571
    :cond_c
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v20

    iget v10, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    .line 578
    .end local v16    # "nextStartId":I
    :cond_d
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v13, "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    move-object/from16 v8, v18

    .line 581
    .local v8, "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v15, v6, 0x1

    .local v15, "nextIndex":I
    :goto_5
    if-ge v15, v7, :cond_11

    .line 582
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 583
    .local v14, "nextCr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    move/from16 v20, v0

    add-int/lit8 v21, v10, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_f

    .line 584
    const/16 v19, 0x1

    .line 585
    iput v10, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 586
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    new-instance v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .end local v8    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, p0

    invoke-direct {v8, v0, v14}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 594
    .restart local v8    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :goto_6
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v0, v10, :cond_e

    .line 595
    iget v10, v14, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    .line 581
    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 589
    :cond_f
    iget v0, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v20, v0

    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_10

    .line 590
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 592
    :cond_10
    iget-object v0, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 459
    .end local v4    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v5    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v6    # "crIndex":I
    .end local v7    # "crLength":I
    .end local v8    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v9    # "i":I
    .end local v10    # "largestEndId":I
    .end local v11    # "len":I
    .end local v13    # "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v14    # "nextCr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v15    # "nextIndex":I
    .end local v17    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v18    # "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v19    # "updateStarted":Z
    :catchall_0
    move-exception v20

    monitor-exit p0

    throw v20

    .line 600
    .restart local v4    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .restart local v5    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .restart local v6    # "crIndex":I
    .restart local v7    # "crLength":I
    .restart local v8    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v9    # "i":I
    .restart local v10    # "largestEndId":I
    .restart local v11    # "len":I
    .restart local v13    # "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .restart local v15    # "nextIndex":I
    .restart local v17    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v18    # "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v19    # "updateStarted":Z
    :cond_11
    move/from16 v0, p2

    if-ge v10, v0, :cond_12

    .line 601
    const/16 v19, 0x1

    .line 602
    :try_start_2
    iput v10, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 604
    :cond_12
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v13}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 609
    if-eqz v19, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v20

    if-nez v20, :cond_13

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 613
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 616
    :cond_13
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 619
    .end local v8    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v13    # "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v15    # "nextIndex":I
    .end local v18    # "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_14
    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v0, v10, :cond_15

    .line 620
    iget v10, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 530
    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 491
    .end local v4    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v5    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v6    # "crIndex":I
    .end local v7    # "crLength":I
    .end local v10    # "largestEndId":I
    .end local v19    # "updateStarted":Z
    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 627
    .end local v17    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_17
    const/16 v20, 0x0

    goto/16 :goto_2
.end method

.method public declared-synchronized enableRange(IILjava/lang/String;)Z
    .locals 24
    .param p1, "startId"    # I
    .param p2, "endId"    # I
    .param p3, "client"    # Ljava/lang/String;

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 196
    .local v14, "len":I
    if-nez p1, :cond_4

    const/16 v21, 0x3e7

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 197
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v14, :cond_3

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 199
    .local v17, "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 200
    .local v5, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 201
    .local v8, "crLength":I
    const/4 v7, 0x0

    .local v7, "crIndex":I
    :goto_1
    if-ge v7, v8, :cond_2

    .line 202
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 203
    .local v6, "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    iget-object v0, v6, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v21

    if-eqz v21, :cond_0

    .line 205
    const/16 v21, 0x1

    .line 444
    .end local v5    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v6    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v7    # "crIndex":I
    .end local v8    # "crLength":I
    .end local v11    # "i":I
    .end local v17    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :goto_2
    monitor-exit p0

    return v21

    .line 207
    .restart local v5    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .restart local v6    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .restart local v7    # "crIndex":I
    .restart local v8    # "crLength":I
    .restart local v11    # "i":I
    .restart local v17    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_0
    const/16 v21, 0x0

    goto :goto_2

    .line 201
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 197
    .end local v6    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 211
    .end local v5    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v7    # "crIndex":I
    .end local v8    # "crLength":I
    .end local v17    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_3
    const/16 v21, 0x1

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    const/16 v21, 0x1

    goto :goto_2

    .line 218
    .end local v11    # "i":I
    :cond_4
    if-nez v14, :cond_6

    .line 219
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    const/16 v21, 0x1

    goto :goto_2

    .line 223
    :cond_5
    const/16 v21, 0x0

    goto :goto_2

    .line 227
    :cond_6
    const/16 v18, 0x0

    .local v18, "startIndex":I
    :goto_3
    move/from16 v0, v18

    if-ge v0, v14, :cond_25

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 229
    .restart local v17    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v21, v0

    move/from16 v0, p1

    move/from16 v1, v21

    if-lt v0, v1, :cond_7

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v21, v0

    move/from16 v0, p2

    move/from16 v1, v21

    if-gt v0, v1, :cond_7

    .line 234
    new-instance v21, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 235
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 236
    :cond_7
    add-int/lit8 v21, p1, -0x1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 239
    move/from16 v15, p2

    .line 240
    .local v15, "newRangeEndId":I
    const/16 v16, 0x0

    .line 241
    .local v16, "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v21, v18, 0x1

    move/from16 v0, v21

    if-ge v0, v14, :cond_8

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    add-int/lit8 v22, v18, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    check-cast v16, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 243
    .restart local v16    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    move/from16 v1, p2

    if-gt v0, v1, :cond_a

    .line 245
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v21, v0

    move/from16 v0, p2

    move/from16 v1, v21

    if-gt v0, v1, :cond_8

    .line 247
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v21, v0

    add-int/lit8 v15, v21, -0x1

    .line 254
    :cond_8
    :goto_4
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 255
    move/from16 v0, p2

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 256
    new-instance v21, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 259
    if-eqz v16, :cond_9

    .line 260
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 262
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 263
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 267
    :cond_9
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 251
    :cond_a
    const/16 v16, 0x0

    goto :goto_4

    .line 269
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 271
    .end local v15    # "newRangeEndId":I
    .end local v16    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_c
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v21, v0

    move/from16 v0, p1

    move/from16 v1, v21

    if-ge v0, v1, :cond_1a

    .line 275
    add-int/lit8 v21, p2, 0x1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    .line 278
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 280
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 282
    :cond_d
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 284
    :cond_e
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v21, v0

    move/from16 v0, p2

    move/from16 v1, v21

    if-gt v0, v1, :cond_10

    .line 287
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 288
    move/from16 v0, p1

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 289
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v23 .. v27}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v21 .. v23}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 290
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 292
    :cond_f
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 296
    :cond_10
    add-int/lit8 v9, v18, 0x1

    .local v9, "endIndex":I
    :goto_5
    if-ge v9, v14, :cond_17

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 298
    .local v10, "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v21, p2, 0x1

    iget v0, v10, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    .line 301
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 302
    move/from16 v0, p1

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 303
    move/from16 v0, p2

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 305
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v23 .. v27}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v21 .. v23}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 311
    add-int/lit8 v12, v18, 0x1

    .line 312
    .local v12, "joinIndex":I
    move v11, v12

    .restart local v11    # "i":I
    :goto_6
    if-ge v11, v9, :cond_11

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 315
    .local v13, "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 318
    .end local v13    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_11
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 320
    .end local v11    # "i":I
    .end local v12    # "joinIndex":I
    :cond_12
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 322
    :cond_13
    iget v0, v10, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v21, v0

    move/from16 v0, p2

    move/from16 v1, v21

    if-gt v0, v1, :cond_16

    .line 326
    iget v0, v10, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 327
    move/from16 v0, p1

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 328
    iget v0, v10, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 330
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v23 .. v27}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v21 .. v23}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 336
    add-int/lit8 v12, v18, 0x1

    .line 337
    .restart local v12    # "joinIndex":I
    move v11, v12

    .restart local v11    # "i":I
    :goto_7
    if-gt v11, v9, :cond_14

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 339
    .restart local v13    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 337
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 342
    .end local v13    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_14
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 344
    .end local v11    # "i":I
    .end local v12    # "joinIndex":I
    :cond_15
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 296
    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 351
    .end local v10    # "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_17
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 352
    move/from16 v0, p1

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 353
    move/from16 v0, p2

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 355
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v23 .. v27}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v21 .. v23}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 361
    add-int/lit8 v12, v18, 0x1

    .line 362
    .restart local v12    # "joinIndex":I
    move v11, v12

    .restart local v11    # "i":I
    :goto_8
    if-ge v11, v14, :cond_18

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 365
    .restart local v13    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 362
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 368
    .end local v13    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_18
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 370
    .end local v11    # "i":I
    .end local v12    # "joinIndex":I
    :cond_19
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 373
    .end local v9    # "endIndex":I
    :cond_1a
    add-int/lit8 v21, p1, 0x1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_24

    .line 375
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v21, v0

    move/from16 v0, p2

    move/from16 v1, v21

    if-gt v0, v1, :cond_1b

    .line 378
    new-instance v21, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 379
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 383
    :cond_1b
    move/from16 v9, v18

    .line 384
    .restart local v9    # "endIndex":I
    add-int/lit8 v19, v18, 0x1

    .local v19, "testIndex":I
    :goto_9
    move/from16 v0, v19

    if-ge v0, v14, :cond_1c

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 386
    .local v20, "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v21, p2, 0x1

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1d

    .line 393
    .end local v20    # "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_1c
    move/from16 v0, v18

    if-ne v9, v0, :cond_1f

    .line 397
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p2

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v21

    if-eqz v21, :cond_1e

    .line 398
    move/from16 v0, p2

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 399
    new-instance v21, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 400
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 389
    .restart local v20    # "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_1d
    move/from16 v9, v19

    .line 384
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    .line 402
    .end local v20    # "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_1e
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 406
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 411
    .restart local v10    # "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v10, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v21, v0

    move/from16 v0, p2

    move/from16 v1, v21

    if-gt v0, v1, :cond_20

    iget v0, v10, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v21, v0

    add-int/lit8 v15, v21, -0x1

    .line 414
    .restart local v15    # "newRangeEndId":I
    :goto_a
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v21

    if-eqz v21, :cond_23

    .line 415
    iget v0, v10, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v21, v0

    move/from16 v0, p2

    move/from16 v1, v21

    if-gt v0, v1, :cond_21

    iget v15, v10, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 416
    :goto_b
    move-object/from16 v0, v17

    iput v15, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 418
    new-instance v21, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 424
    add-int/lit8 v12, v18, 0x1

    .line 425
    .restart local v12    # "joinIndex":I
    move v11, v12

    .restart local v11    # "i":I
    :goto_c
    if-gt v11, v9, :cond_22

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 427
    .restart local v13    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 425
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .end local v11    # "i":I
    .end local v12    # "joinIndex":I
    .end local v13    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v15    # "newRangeEndId":I
    :cond_20
    move/from16 v15, p2

    .line 411
    goto :goto_a

    .restart local v15    # "newRangeEndId":I
    :cond_21
    move/from16 v15, p2

    .line 415
    goto :goto_b

    .line 430
    .restart local v11    # "i":I
    .restart local v12    # "joinIndex":I
    :cond_22
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 432
    .end local v11    # "i":I
    .end local v12    # "joinIndex":I
    :cond_23
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 227
    .end local v9    # "endIndex":I
    .end local v10    # "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v15    # "newRangeEndId":I
    .end local v19    # "testIndex":I
    :cond_24
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 440
    .end local v17    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_25
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v21

    if-eqz v21, :cond_26

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 444
    :cond_26
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 194
    .end local v14    # "len":I
    .end local v18    # "startIndex":I
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21
.end method

.method protected abstract finishUpdate()Z
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected abstract startUpdate()V
.end method

.method protected tryAddRanges(IIZ)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "endId"    # I
    .param p3, "selected"    # Z

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 653
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    .line 655
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 656
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v0

    return v0
.end method

.method public updateRanges()Z
    .locals 1

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 639
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    .line 640
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v0

    return v0
.end method
