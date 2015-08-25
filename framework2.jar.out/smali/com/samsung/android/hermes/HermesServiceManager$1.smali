.class Lcom/samsung/android/hermes/HermesServiceManager$1;
.super Lcom/samsung/android/hermes/IKerykeionCallBack$Stub;
.source "HermesServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hermes/HermesServiceManager;->analysis(ILjava/lang/Object;I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hermes/HermesServiceManager;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$svc:Lcom/samsung/android/hermes/IKerykeion;

.field final synthetic val$type:I

.field final synthetic val$uniqueId:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/samsung/android/hermes/HermesServiceManager;Lcom/samsung/android/hermes/IKerykeion;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/samsung/android/hermes/HermesServiceManager$1;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    iput-object p2, p0, Lcom/samsung/android/hermes/HermesServiceManager$1;->val$svc:Lcom/samsung/android/hermes/IKerykeion;

    iput-object p3, p0, Lcom/samsung/android/hermes/HermesServiceManager$1;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/hermes/HermesServiceManager$1;->val$uniqueId:Ljava/lang/Object;

    iput p5, p0, Lcom/samsung/android/hermes/HermesServiceManager$1;->val$type:I

    invoke-direct {p0}, Lcom/samsung/android/hermes/IKerykeionCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hermes/KerykeionResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hermes/KerykeionResult;>;"
    iget-object v7, p0, Lcom/samsung/android/hermes/HermesServiceManager$1;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    iget-object v7, v7, Lcom/samsung/android/hermes/HermesServiceManager;->mIHermesCallBack:Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;

    if-eqz v7, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 210
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/hermes/HermesServiceManager$1;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    iget-object v7, v7, Lcom/samsung/android/hermes/HermesServiceManager;->mIHermesCallBack:Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;->onCompleted(Ljava/lang/Object;)V

    .line 211
    iget-object v7, p0, Lcom/samsung/android/hermes/HermesServiceManager$1;->val$svc:Lcom/samsung/android/hermes/IKerykeion;

    iget-object v8, p0, Lcom/samsung/android/hermes/HermesServiceManager$1;->val$key:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/samsung/android/hermes/IKerykeion;->stop(Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void

    .line 215
    :cond_1
    new-instance v4, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;

    iget-object v7, p0, Lcom/samsung/android/hermes/HermesServiceManager$1;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-direct {v4, v7}, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;-><init>(Lcom/samsung/android/hermes/HermesServiceManager;)V

    .line 216
    .local v4, "lResult":Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;
    iget-object v7, p0, Lcom/samsung/android/hermes/HermesServiceManager$1;->val$uniqueId:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Integer;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/hermes/HermesServiceManager$1;->val$uniqueId:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    # invokes: Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->setId(I)V
    invoke-static {v4, v7}, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->access$000(Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;I)V

    .line 218
    iget v7, p0, Lcom/samsung/android/hermes/HermesServiceManager$1;->val$type:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_2

    iget v7, p0, Lcom/samsung/android/hermes/HermesServiceManager$1;->val$type:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_6

    .line 220
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v0, "destResults":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hermes/KerykeionResult;>;"
    const-string v5, ""

    .line 223
    .local v5, "original":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hermes/KerykeionResult;

    .line 224
    .local v3, "kR":Lcom/samsung/android/hermes/KerykeionResult;
    sget-object v7, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Original:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v3}, Lcom/samsung/android/hermes/KerykeionResult;->getResultType()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 225
    invoke-virtual {v3}, Lcom/samsung/android/hermes/KerykeionResult;->getSrc()Ljava/lang/String;

    move-result-object v5

    .line 227
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 216
    .end local v0    # "destResults":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hermes/KerykeionResult;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "kR":Lcom/samsung/android/hermes/KerykeionResult;
    .end local v5    # "original":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 229
    .restart local v0    # "destResults":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hermes/KerykeionResult;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "original":Ljava/lang/String;
    :cond_5
    # invokes: Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->setData(Ljava/lang/Object;)V
    invoke-static {v4, v0}, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->access$100(Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;Ljava/lang/Object;)V

    .line 232
    iget-object v7, p0, Lcom/samsung/android/hermes/HermesServiceManager$1;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    const/4 v8, 0x1

    # invokes: Lcom/samsung/android/hermes/HermesServiceManager;->extractEvent(Ljava/util/List;Ljava/lang/String;I)Ljava/lang/Object;
    invoke-static {v7, p1, v5, v8}, Lcom/samsung/android/hermes/HermesServiceManager;->access$200(Lcom/samsung/android/hermes/HermesServiceManager;Ljava/util/List;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    .line 234
    .local v1, "event":Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;
    # invokes: Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->setEvent(Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;)V
    invoke-static {v4, v1}, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->access$300(Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;)V

    .line 237
    .end local v0    # "destResults":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hermes/KerykeionResult;>;"
    .end local v1    # "event":Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "original":Ljava/lang/String;
    :cond_6
    iget v7, p0, Lcom/samsung/android/hermes/HermesServiceManager$1;->val$type:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_a

    .line 238
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hermes/KerykeionResult;

    .line 241
    .restart local v3    # "kR":Lcom/samsung/android/hermes/KerykeionResult;
    invoke-virtual {v3}, Lcom/samsung/android/hermes/KerykeionResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 242
    invoke-virtual {v3}, Lcom/samsung/android/hermes/KerykeionResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 244
    :cond_8
    invoke-virtual {v3}, Lcom/samsung/android/hermes/KerykeionResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/Integer;

    if-eqz v7, :cond_7

    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Color:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/samsung/android/hermes/KerykeionResult;->getResult()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 249
    .end local v3    # "kR":Lcom/samsung/android/hermes/KerykeionResult;
    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->setData(Ljava/lang/Object;)V
    invoke-static {v4, v7}, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->access$100(Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;Ljava/lang/Object;)V

    .line 252
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    iget-object v7, p0, Lcom/samsung/android/hermes/HermesServiceManager$1;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    iget-object v7, v7, Lcom/samsung/android/hermes/HermesServiceManager;->mIHermesCallBack:Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;

    if-eqz v7, :cond_b

    .line 253
    # getter for: Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hermes/HermesServiceManager;->access$400()Ljava/lang/String;

    move-result-object v7

    const-string v8, "-----------------Complete callback----------------"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v7, p0, Lcom/samsung/android/hermes/HermesServiceManager$1;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    iget-object v7, v7, Lcom/samsung/android/hermes/HermesServiceManager;->mIHermesCallBack:Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;

    invoke-interface {v7, v4}, Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;->onCompleted(Ljava/lang/Object;)V

    .line 257
    :cond_b
    iget-object v7, p0, Lcom/samsung/android/hermes/HermesServiceManager$1;->val$svc:Lcom/samsung/android/hermes/IKerykeion;

    iget-object v8, p0, Lcom/samsung/android/hermes/HermesServiceManager$1;->val$key:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/samsung/android/hermes/IKerykeion;->stop(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
