.class Lcom/movial/ipphone/IPPhone$1;
.super Landroid/os/Handler;
.source "IPPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IPPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/IPPhone;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/IPPhone;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 174
    :try_start_0
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 271
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 176
    :pswitch_1
    iget v9, p1, Landroid/os/Message;->arg2:I

    if-gez v9, :cond_1

    .line 177
    const-string v9, "IPPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "msg.arg2 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/util/AndroidRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v3

    .line 259
    .local v3, "e":Landroid/util/AndroidRuntimeException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, "exceptionMessage":Ljava/lang/String;
    const-string v9, "This message is already in use"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 262
    const-string v9, "IPPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignored: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/movial/ipphone/IPPhone;->access$300(Lcom/movial/ipphone/IPPhone;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 265
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;
    invoke-static {v9}, Lcom/movial/ipphone/IPPhone;->access$700(Lcom/movial/ipphone/IPPhone;)Landroid/os/RegistrantList;

    move-result-object v9

    new-instance v10, Landroid/os/AsyncResult;

    invoke-direct {v10, v8, v8, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v9, v10}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 181
    .end local v3    # "e":Landroid/util/AndroidRuntimeException;
    .end local v4    # "exceptionMessage":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;
    invoke-static {v9}, Lcom/movial/ipphone/IPPhone;->access$000(Lcom/movial/ipphone/IPPhone;)[Landroid/os/Message;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    aget-object v9, v9, v10

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;
    invoke-static {v9}, Lcom/movial/ipphone/IPPhone;->access$000(Lcom/movial/ipphone/IPPhone;)[Landroid/os/Message;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v9

    if-nez v9, :cond_3

    .line 182
    :cond_2
    const-string v9, "IPPhone"

    const-string v10, "No pending CF request"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 185
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 186
    .local v5, "m":Landroid/os/Message;
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;
    invoke-static {v9}, Lcom/movial/ipphone/IPPhone;->access$000(Lcom/movial/ipphone/IPPhone;)[Landroid/os/Message;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    aget-object v9, v9, v10

    invoke-virtual {v5, v9}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 187
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;
    invoke-static {v9}, Lcom/movial/ipphone/IPPhone;->access$000(Lcom/movial/ipphone/IPPhone;)[Landroid/os/Message;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 188
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_4

    new-instance v3, Ljava/lang/Exception;

    const-string v9, "setCallForward Failed"

    invoke-direct {v3, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 189
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v9, 0x0

    invoke-static {v5, v9, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 190
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    move-object v3, v8

    .line 188
    goto :goto_1

    .line 194
    .end local v5    # "m":Landroid/os/Message;
    :pswitch_2
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;
    invoke-static {v9}, Lcom/movial/ipphone/IPPhone;->access$000(Lcom/movial/ipphone/IPPhone;)[Landroid/os/Message;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    aget-object v5, v9, v10

    .line 195
    .restart local v5    # "m":Landroid/os/Message;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v9

    if-nez v9, :cond_6

    .line 196
    :cond_5
    const-string v9, "IPPhone"

    const-string v10, "No pending Call Waiting request"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 199
    :cond_6
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_7

    new-instance v3, Ljava/lang/Exception;

    const-string v9, "setCallWaiting Failed"

    invoke-direct {v3, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 200
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v9, 0x0

    invoke-static {v5, v9, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 201
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 202
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_0

    .line 203
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    iget-object v10, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mCallWaitingOnPregress:Z
    invoke-static {v10}, Lcom/movial/ipphone/IPPhone;->access$200(Lcom/movial/ipphone/IPPhone;)Z

    move-result v10

    # setter for: Lcom/movial/ipphone/IPPhone;->mCallWaitingDone:Z
    invoke-static {v9, v10}, Lcom/movial/ipphone/IPPhone;->access$102(Lcom/movial/ipphone/IPPhone;Z)Z

    goto/16 :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    move-object v3, v8

    .line 199
    goto :goto_2

    .line 208
    .end local v5    # "m":Landroid/os/Message;
    :pswitch_3
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;
    invoke-static {v9}, Lcom/movial/ipphone/IPPhone;->access$000(Lcom/movial/ipphone/IPPhone;)[Landroid/os/Message;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    aget-object v5, v9, v10

    .line 214
    .restart local v5    # "m":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 215
    .local v2, "data":Landroid/os/Bundle;
    if-eqz v2, :cond_8

    .line 216
    const-string v9, "reason"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, "reason":Ljava/lang/String;
    const-string v9, "IPPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reason to clear pending MMIs:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-eqz v6, :cond_8

    const-string v9, "terminateAll"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 219
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/movial/ipphone/IPPhone;->access$300(Lcom/movial/ipphone/IPPhone;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 221
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;
    invoke-static {v9}, Lcom/movial/ipphone/IPPhone;->access$400(Lcom/movial/ipphone/IPPhone;)Landroid/os/RegistrantList;

    move-result-object v9

    new-instance v10, Landroid/os/AsyncResult;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v9, v10}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 222
    const-string v9, "IPPhone"

    const-string v10, "cleared pending MMIs because of terminateAllSessions. Possibly the user turned off Wifi immediately after dialing USSD"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 226
    .end local v6    # "reason":Ljava/lang/String;
    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v9

    if-nez v9, :cond_a

    .line 227
    :cond_9
    const-string v9, "IPPhone"

    const-string v10, "No pending USSD request"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 230
    :cond_a
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_b

    new-instance v3, Ljava/lang/Exception;

    const-string v9, "send USSD Failed"

    invoke-direct {v3, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 231
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v9, 0x0

    invoke-static {v5, v9, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 232
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Landroid/util/AndroidRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_b
    move-object v3, v8

    .line 230
    goto :goto_3

    .line 237
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v5    # "m":Landroid/os/Message;
    :pswitch_4
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 238
    .local v1, "bundle":Landroid/os/Bundle;
    const-class v9, Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 239
    const-string v9, "ussd"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 240
    .local v7, "ussdString":Ljava/lang/String;
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    const/4 v10, 0x0

    # invokes: Lcom/movial/ipphone/IPPhone;->onIncomingUSSD(ILjava/lang/String;)V
    invoke-static {v9, v10, v7}, Lcom/movial/ipphone/IPPhone;->access$500(Lcom/movial/ipphone/IPPhone;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/util/AndroidRuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 241
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v7    # "ussdString":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 242
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v9, "IPPhone"

    const-string v10, "error parsing USSD"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 247
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :pswitch_5
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    const/4 v10, 0x5

    const/4 v11, 0x0

    # invokes: Lcom/movial/ipphone/IPPhone;->showDialog(II)V
    invoke-static {v9, v10, v11}, Lcom/movial/ipphone/IPPhone;->access$600(Lcom/movial/ipphone/IPPhone;II)V
    :try_end_3
    .catch Landroid/util/AndroidRuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 267
    .local v3, "e":Landroid/util/AndroidRuntimeException;
    .restart local v4    # "exceptionMessage":Ljava/lang/String;
    :cond_c
    const-string v8, "IPPhone"

    const-string v9, "different exception than message is already in use. So throwing it back"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v8, Landroid/util/AndroidRuntimeException;

    invoke-direct {v8, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
