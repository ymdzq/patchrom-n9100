.class public Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;
.super Ljava/lang/Object;
.source "MultiSimLockInfoResult.java"


# static fields
.field private static final LOCK_ACL:I = 0xb

.field private static final LOCK_CORP_PERS:I = 0x8

.field private static final LOCK_FD:I = 0x4

.field private static final LOCK_NETWORK_PERS:I = 0x5

.field private static final LOCK_NETWORK_SUBSET_PERS:I = 0x6

.field private static final LOCK_PH_FSIM:I = 0x2

.field private static final LOCK_PH_SIM:I = 0x1

.field private static final LOCK_PIN2:I = 0x9

.field private static final LOCK_PUK2:I = 0xa

.field private static final LOCK_READY:I = 0x0

.field private static final LOCK_SIM:I = 0x3

.field private static final LOCK_SP_PERS:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "MultiSimLockInfoResult"

.field private static final NOT_NEED:I = 0x0

.field private static final NO_SIM:I = 0x80

.field private static final PERM_BLOCKED:I = 0x5

.field private static final PIN:I = 0x1

.field private static final PIN2:I = 0x3

.field private static final PIN2_DISABLE:I = 0x6

.field private static final PUK:I = 0x2

.field private static final PUK2:I = 0x4

.field static Pin2_Retry:I

.field static Pin2_Retry_1:I

.field static Pin_Retry:I

.field static Pin_Retry_1:I

.field static Puk2_Retry:I

.field static Puk2_Retry_1:I

.field static Puk_Retry:I

.field static Puk_Retry_1:I

.field static isPermBlocked:I

.field static lockKey:I

.field static lockPin2Key:I

.field static lockPinKey:I

.field static lockType:I

.field static numRetry:I

.field static num_lock_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->num_lock_type:I

    .line 48
    sput v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockType:I

    .line 49
    sput v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockKey:I

    .line 50
    sput v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:I

    .line 51
    sput v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:I

    .line 52
    sput v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->numRetry:I

    .line 53
    sput v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:I

    .line 54
    sput v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry:I

    .line 55
    sput v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry:I

    .line 56
    sput v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:I

    .line 57
    sput v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->isPermBlocked:I

    .line 60
    sput v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry_1:I

    .line 61
    sput v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry_1:I

    .line 62
    sput v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry_1:I

    .line 63
    sput v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry_1:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "simSlot"    # I
    .param p2, "num_lock_type"    # I
    .param p3, "lockType"    # I
    .param p4, "lockKey"    # I
    .param p5, "numRetry"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->preSimLockInfoResult(IIII)V

    .line 70
    if-nez p1, :cond_0

    .line 71
    invoke-direct {p0, p3, p4, p5}, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->postSimLockInfoResult(III)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-direct {p0, p3, p4, p5, p1}, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->postSimLockInfoResult_1(IIII)V

    goto :goto_0
.end method

.method private postSimLockInfoResult(III)V
    .locals 3
    .param p1, "lockType"    # I
    .param p2, "lockKey"    # I
    .param p3, "numRetry"    # I

    .prologue
    const/4 v1, 0x0

    .line 91
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 92
    sput p3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:I

    .line 149
    :goto_0
    return-void

    .line 95
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 98
    :pswitch_0
    sput p3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:I

    .line 99
    sput p2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:I

    .line 100
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT_NEED numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :pswitch_1
    sput p3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:I

    .line 105
    sput p2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:I

    .line 106
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :pswitch_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 112
    sput v1, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:I

    .line 113
    sput v1, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry:I

    .line 114
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->isPermBlocked:I

    .line 115
    sput p2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:I

    .line 123
    :cond_1
    :goto_1
    const-string v0, "MultiSimLockInfoResult"

    const-string v1, "Permernet blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 118
    sput v1, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry:I

    .line 119
    sput v1, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:I

    .line 120
    sput p2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:I

    goto :goto_1

    .line 127
    :pswitch_3
    sput p3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry:I

    .line 128
    sput p2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:I

    .line 129
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :pswitch_4
    sput p3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry:I

    .line 135
    sput p2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:I

    .line 136
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 140
    :pswitch_5
    sput p3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:I

    .line 141
    sput p2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:I

    .line 142
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private postSimLockInfoResult_1(IIII)V
    .locals 4
    .param p1, "lockType"    # I
    .param p2, "lockKey"    # I
    .param p3, "numRetry"    # I
    .param p4, "simslot"    # I

    .prologue
    const/4 v3, 0x0

    .line 153
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postSimLockInfoResult_1 simslot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 155
    sput p3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry_1:I

    .line 203
    :goto_0
    return-void

    .line 158
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 161
    :pswitch_0
    sput p3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry_1:I

    .line 162
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT_NEED numRetry1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :pswitch_1
    sput p3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry_1:I

    .line 166
    sput p2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:I

    .line 167
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN numRetry1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :pswitch_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 172
    sput v3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry_1:I

    .line 173
    sput v3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry_1:I

    .line 174
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->isPermBlocked:I

    .line 175
    sput p2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:I

    .line 181
    :cond_1
    :goto_1
    const-string v0, "MultiSimLockInfoResult"

    const-string v1, "Permernet blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 177
    sput v3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry_1:I

    .line 178
    sput v3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry_1:I

    .line 179
    sput p2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:I

    goto :goto_1

    .line 184
    :pswitch_3
    sput p3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry_1:I

    .line 185
    sput p2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:I

    .line 186
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK numRetry1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    :pswitch_4
    sput p3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry_1:I

    .line 191
    sput p2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:I

    .line 192
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN2 numRetry1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 195
    :pswitch_5
    sput p3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry_1:I

    .line 196
    sput p2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:I

    .line 197
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK2 numRetry1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private preSimLockInfoResult(IIII)V
    .locals 3
    .param p1, "num_lock_type"    # I
    .param p2, "lockType"    # I
    .param p3, "lockKey"    # I
    .param p4, "numRetry"    # I

    .prologue
    .line 79
    sput p1, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->num_lock_type:I

    .line 80
    sput p2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockType:I

    .line 81
    sput p3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockKey:I

    .line 82
    sput p4, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->numRetry:I

    .line 83
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lockType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lock_key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", numRetry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method


# virtual methods
.method public getLockKey(I)I
    .locals 1
    .param p1, "simslot"    # I

    .prologue
    .line 372
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockKey:I

    return v0
.end method

.method public getLockPin2Key()I
    .locals 1

    .prologue
    .line 348
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:I

    return v0
.end method

.method public getLockPin2Key(I)I
    .locals 1
    .param p1, "simslot"    # I

    .prologue
    .line 381
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:I

    return v0
.end method

.method public getLockPinKey()I
    .locals 1

    .prologue
    .line 344
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:I

    return v0
.end method

.method public getLockPinKey(I)I
    .locals 1
    .param p1, "simslot"    # I

    .prologue
    .line 377
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:I

    return v0
.end method

.method public getPin2Retry()I
    .locals 1

    .prologue
    .line 357
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry:I

    return v0
.end method

.method public getPin2Retry(I)I
    .locals 3
    .param p1, "simslot"    # I

    .prologue
    .line 397
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 398
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getPinRetry .SIMSLOT2  PIN2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry_1:I

    .line 404
    :goto_0
    return v0

    .line 402
    :cond_0
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getPinRetry .SIMSLOT1 PIN2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry:I

    goto :goto_0
.end method

.method public getPinRetry()I
    .locals 1

    .prologue
    .line 352
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:I

    return v0
.end method

.method public getPinRetry(I)I
    .locals 3
    .param p1, "simslot"    # I

    .prologue
    .line 386
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 387
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getPinRetry PIN numRetry 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry_1:I

    .line 391
    :goto_0
    return v0

    .line 390
    :cond_0
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getPinRetry PIN numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:I

    goto :goto_0
.end method

.method public getPuk2Retry()I
    .locals 1

    .prologue
    .line 367
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:I

    return v0
.end method

.method public getPuk2Retry(I)I
    .locals 1
    .param p1, "simslot"    # I

    .prologue
    .line 418
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 419
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry_1:I

    .line 421
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:I

    goto :goto_0
.end method

.method public getPukRetry()I
    .locals 1

    .prologue
    .line 362
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry:I

    return v0
.end method

.method public getPukRetry(I)I
    .locals 1
    .param p1, "simslot"    # I

    .prologue
    .line 409
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 410
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry_1:I

    .line 412
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry:I

    goto :goto_0
.end method

.method public isSimBlocked()I
    .locals 1

    .prologue
    .line 429
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->isPermBlocked:I

    return v0
.end method

.method public setLockInfoResult(IIII)V
    .locals 4
    .param p1, "Pin_Retry"    # I
    .param p2, "Puk_Retry"    # I
    .param p3, "Pin2_Retry"    # I
    .param p4, "Puk2_Retry"    # I

    .prologue
    const/4 v3, -0x1

    .line 228
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pin_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Puk_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Pin2_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Puk2_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    if-eq p1, v3, :cond_0

    .line 232
    sput p1, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:I

    .line 235
    :cond_0
    if-eq p2, v3, :cond_1

    .line 237
    sput p2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry:I

    .line 240
    :cond_1
    if-eq p3, v3, :cond_2

    .line 242
    sput p3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry:I

    .line 245
    :cond_2
    if-eq p4, v3, :cond_3

    .line 247
    sput p4, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:I

    .line 249
    :cond_3
    return-void
.end method

.method public setLockInfoResult(IIIII)V
    .locals 4
    .param p1, "simslot"    # I
    .param p2, "Pin_Retry"    # I
    .param p3, "Puk_Retry"    # I
    .param p4, "Pin2_Retry"    # I
    .param p5, "Puk2_Retry"    # I

    .prologue
    const/4 v3, -0x1

    .line 254
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pin_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Puk_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Pin2_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Puk2_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-nez p1, :cond_1

    .line 258
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->setLockInfoResult(IIII)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    if-eq p2, v3, :cond_2

    .line 263
    sput p2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry_1:I

    .line 266
    :cond_2
    if-eq p3, v3, :cond_3

    .line 268
    sput p3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry_1:I

    .line 271
    :cond_3
    if-eq p4, v3, :cond_4

    .line 273
    sput p4, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry_1:I

    .line 276
    :cond_4
    if-eq p5, v3, :cond_0

    .line 278
    sput p5, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry_1:I

    goto :goto_0
.end method

.method public setLockInfoResult(IIIIII)V
    .locals 4
    .param p1, "Pin_Retry"    # I
    .param p2, "Puk_Retry"    # I
    .param p3, "Pin2_Retry"    # I
    .param p4, "Puk2_Retry"    # I
    .param p5, "lockKey"    # I
    .param p6, "lockKey2"    # I

    .prologue
    const/4 v3, -0x1

    .line 285
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pin_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Puk_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Pin2_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Puk2_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lockKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lockKey2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-eq p1, v3, :cond_0

    .line 289
    sput p1, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:I

    .line 292
    :cond_0
    if-eq p2, v3, :cond_1

    .line 294
    sput p2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry:I

    .line 297
    :cond_1
    if-eq p3, v3, :cond_2

    .line 299
    sput p3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry:I

    .line 302
    :cond_2
    if-eq p4, v3, :cond_3

    .line 304
    sput p4, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:I

    .line 306
    :cond_3
    sput p5, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:I

    .line 307
    sput p6, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:I

    .line 308
    return-void
.end method

.method public setLockInfoResult(IIIIIII)V
    .locals 7
    .param p1, "simslot"    # I
    .param p2, "Pin_Retry"    # I
    .param p3, "Puk_Retry"    # I
    .param p4, "Pin2_Retry"    # I
    .param p5, "Puk2_Retry"    # I
    .param p6, "lockKey"    # I
    .param p7, "lockKey2"    # I

    .prologue
    const/4 v3, -0x1

    .line 312
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pin_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Puk_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Pin2_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Puk2_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lockKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lockKey2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    if-nez p1, :cond_0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 316
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->setLockInfoResult(IIIIII)V

    .line 340
    :goto_0
    return-void

    .line 318
    :cond_0
    if-eq p2, v3, :cond_1

    .line 320
    sput p2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry_1:I

    .line 323
    :cond_1
    if-eq p3, v3, :cond_2

    .line 325
    sput p3, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry_1:I

    .line 328
    :cond_2
    if-eq p4, v3, :cond_3

    .line 330
    sput p4, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry_1:I

    .line 333
    :cond_3
    if-eq p5, v3, :cond_4

    .line 335
    sput p5, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry_1:I

    .line 337
    :cond_4
    sput p6, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:I

    .line 338
    sput p7, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:I

    goto :goto_0
.end method

.method setLockInfoResult(ILcom/android/internal/telephony/uicc/SimLockInfoResult;)V
    .locals 4
    .param p1, "simslot"    # I
    .param p2, "simLockInfoResult"    # Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    .prologue
    .line 214
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setLockInfoResult simslot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-nez p1, :cond_0

    .line 217
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->setLockInfoResult(Lcom/android/internal/telephony/uicc/SimLockInfoResult;)V

    .line 224
    :goto_0
    return-void

    .line 219
    :cond_0
    iget v0, p2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->num_lock_type:I

    iget v1, p2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockType:I

    iget v2, p2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    iget v3, p2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->preSimLockInfoResult(IIII)V

    .line 221
    iget v0, p2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockType:I

    iget v1, p2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    iget v2, p2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->postSimLockInfoResult_1(IIII)V

    goto :goto_0
.end method

.method setLockInfoResult(Lcom/android/internal/telephony/uicc/SimLockInfoResult;)V
    .locals 4
    .param p1, "simLockInfoResult"    # Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    .prologue
    .line 206
    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->num_lock_type:I

    iget v1, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockType:I

    iget v2, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    iget v3, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->preSimLockInfoResult(IIII)V

    .line 208
    iget v0, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockType:I

    iget v1, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    iget v2, p1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->postSimLockInfoResult(III)V

    .line 210
    return-void
.end method
