.class Lcom/android/internal/telephony/cdma/CDMAPhone$SlotActiveObserver;
.super Landroid/database/ContentObserver;
.source "CDMAPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CDMAPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlotActiveObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 1

    .prologue
    .line 3352
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$SlotActiveObserver;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 3353
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3354
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 3357
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$SlotActiveObserver;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    # getter for: Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$000(Lcom/android/internal/telephony/cdma/CDMAPhone;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone1_on"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3358
    .local v0, "phone1_on":I
    const-string v1, "CDMAPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SlotActiveObserver() : phone1_on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3360
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$SlotActiveObserver;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->enableDataConnectivity()Z

    .line 3362
    :cond_0
    return-void
.end method
