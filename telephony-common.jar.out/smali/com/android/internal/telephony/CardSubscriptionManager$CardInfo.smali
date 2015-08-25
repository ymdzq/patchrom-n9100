.class Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
.super Ljava/lang/Object;
.source "CardSubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CardSubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CardInfo"
.end annotation


# instance fields
.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private mIccId:Ljava/lang/String;

.field private mReadIccIdInProgress:Z

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field final synthetic this$0:Lcom/android/internal/telephony/CardSubscriptionManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CardSubscriptionManager;Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 2
    .param p2, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v1, 0x0

    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->this$0:Lcom/android/internal/telephony/CardSubscriptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 82
    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 87
    :goto_0
    iput-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mIccId:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mReadIccIdInProgress:Z

    .line 89
    return-void

    .line 85
    :cond_0
    iput-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    goto :goto_0
.end method


# virtual methods
.method public getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    return-object v0
.end method

.method public isReadIccIdInProgress()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mReadIccIdInProgress:Z

    return v0
.end method

.method public setCardState(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;)V
    .locals 0
    .param p1, "cardState"    # Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 112
    return-void
.end method

.method public setIccId(Ljava/lang/String;)V
    .locals 0
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mIccId:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setReadIccIdInProgress(Z)V
    .locals 0
    .param p1, "read"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mReadIccIdInProgress:Z

    .line 124
    return-void
.end method

.method public setUiccCard(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 4
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 96
    iput-object p1, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 100
    iput-object v2, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mIccId:Ljava/lang/String;

    .line 101
    iput-boolean v3, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mReadIccIdInProgress:Z

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iput-object v2, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 105
    iput-object v2, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mIccId:Ljava/lang/String;

    .line 106
    iput-boolean v3, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mReadIccIdInProgress:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    sget-boolean v0, Lcom/android/internal/telephony/CardSubscriptionManager;->SHIP_BUILD:Z

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mUiccCard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIccId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReadIccIdInProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mReadIccIdInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mUiccCard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIccId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "******"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReadIccIdInProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->mReadIccIdInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
