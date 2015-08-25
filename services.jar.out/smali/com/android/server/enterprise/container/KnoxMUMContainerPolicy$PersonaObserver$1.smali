.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->onStateChange(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

.field final synthetic val$oldState:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;II)V
    .locals 0

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iput p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    iput p3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 1107
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersonaObserver.onStateChange() inside handler state: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " old state: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v15

    .line 1110
    .local v15, "info":Landroid/content/pm/PersonaInfo;
    if-nez v15, :cond_1

    .line 1111
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to get persona info for user "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v20

    .line 1116
    .local v20, "ownerUid":I
    invoke-static/range {v20 .. v20}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1117
    .local v4, "userId":I
    iget-boolean v0, v15, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    move/from16 v18, v0

    .line 1118
    .local v18, "isUserManaged":Z
    iget-boolean v0, v15, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    move/from16 v16, v0

    .line 1119
    .local v16, "isKioskEnabled":Z
    iget-boolean v0, v15, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    move/from16 v17, v0

    .line 1121
    .local v17, "isSuperLocked":Z
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isUserManaged "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " and user-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " and isKioskEnabled-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " and isSuperLocked-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 1128
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_4

    .line 1129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    const-string v7, "com.sec.knox.containeragent.klms.created.b2c"

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;ILjava/lang/String;)V

    .line 1153
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 1154
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    if-nez v1, :cond_3

    .line 1155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;
    invoke-static {v1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1900(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v21

    .line 1156
    .local v21, "params":Lcom/sec/knox/container/ContainerCreationParams;
    if-eqz v21, :cond_3

    .line 1157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    move-object/from16 v0, v21

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->processCreationParams(Lcom/sec/knox/container/ContainerCreationParams;I)V
    invoke-static {v1, v0, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;I)V

    .line 1158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    invoke-virtual/range {v21 .. v21}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result v7

    move-object/from16 v0, v21

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V
    invoke-static {v1, v0, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;II)V

    .line 1162
    .end local v21    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->translateStatus(I)I
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2200(I)I

    move-result v5

    .line 1163
    .local v5, "tOldState":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->translateStatus(I)I
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2200(I)I

    move-result v6

    .line 1164
    .local v6, "tstate":I
    if-eq v6, v5, :cond_a

    .line 1165
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v22

    .line 1166
    .local v22, "pkgNames":[Ljava/lang/String;
    if-eqz v22, :cond_9

    .line 1167
    move-object/from16 v13, v22

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v19, v0

    .local v19, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_2
    move/from16 v0, v19

    if-ge v14, v0, :cond_a

    aget-object v2, v13, v14

    .line 1168
    .local v2, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerStateChangeIntent(Ljava/lang/String;IIII)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    .line 1167
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1131
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v5    # "tOldState":I
    .end local v6    # "tstate":I
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v19    # "len$":I
    .end local v22    # "pkgNames":[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    const-string v7, "com.sec.knox.containeragent.klms.created.b2b"

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1134
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_7

    .line 1136
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_6

    .line 1137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    const-string v7, "com.sec.knox.containeragent.klms.removed.b2c"

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1139
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    const-string v7, "com.sec.knox.containeragent.klms.removed.b2b"

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->sendIntentBroadcastForContainer(ILjava/lang/String;)V
    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1142
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    .line 1145
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    const/16 v3, 0x9

    if-eq v1, v3, :cond_2

    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$oldState:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    goto/16 :goto_1

    .line 1171
    .restart local v5    # "tOldState":I
    .restart local v6    # "tstate":I
    .restart local v22    # "pkgNames":[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v7, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v9

    move v10, v4

    move v11, v5

    move v12, v6

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerStateChangeIntent(Ljava/lang/String;IIII)V
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    .line 1176
    .end local v22    # "pkgNames":[Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->val$state:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    .line 1177
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v22

    .line 1178
    .restart local v22    # "pkgNames":[Ljava/lang/String;
    if-eqz v22, :cond_b

    .line 1179
    move-object/from16 v13, v22

    .restart local v13    # "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v19, v0

    .restart local v19    # "len$":I
    const/4 v14, 0x0

    .restart local v14    # "i$":I
    :goto_3
    move/from16 v0, v19

    if-ge v14, v0, :cond_0

    aget-object v2, v13, v14

    .line 1180
    .restart local v2    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v3

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminLockIntent(Ljava/lang/String;II)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    .line 1179
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1183
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v19    # "len$":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->mContainerId:I
    invoke-static {v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;->access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaObserver;)I

    move-result v7

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminLockIntent(Ljava/lang/String;II)V
    invoke-static {v1, v3, v7, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    goto/16 :goto_0
.end method
