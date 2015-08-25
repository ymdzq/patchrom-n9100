.class public Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;
.super Landroid/hardware/scontext/provider/caeprovider/CaeProvider;
.source "ActivityNotificationImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContext.CaeProvider.ActivityNotificationImpl"


# instance fields
.field private mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/scontext/SContextService$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

.field private mIsActionListMade:Z

.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private mSavedEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    const/4 v1, 0x0

    .line 56
    const/16 v0, 0x1b

    invoke-direct {p0, p1, v0, p2}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V

    .line 44
    iput-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    iput-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mSavedEventList:Ljava/util/ArrayList;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mIsActionListMade:Z

    .line 58
    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->getManager()Landroid/hardware/contextaware/ContextAwareManager;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    .line 59
    iput-object p2, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    .line 60
    return-void
.end method


# virtual methods
.method public add()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    return-void
.end method

.method public addAction(Landroid/hardware/scontext/SContextService$Listener;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "listener"    # Landroid/hardware/scontext/SContextService$Listener;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 103
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mIsActionListMade:Z

    .line 104
    const-string v5, "activity_notification_activity_filter"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 105
    .local v0, "actions":[I
    const/4 v3, 0x0

    .line 106
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 107
    iget-object v5, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v6, v0, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    iget-object v5, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v6, v0, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 117
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    :goto_1
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v5, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v6, v0, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    iget-object v5, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    const/16 v7, 0x25

    aget v8, v0, v1

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 115
    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->add()V

    goto :goto_1

    .line 120
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mIsActionListMade:Z

    .line 121
    iget-object v5, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mSavedEventList:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 123
    iget-object v5, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mSavedEventList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 124
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Bundle;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 126
    .local v4, "next":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    const/16 v6, 0x1b

    invoke-interface {v5, v6, v4}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_2

    .line 128
    .end local v4    # "next":Landroid/os/Bundle;
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mSavedEventList:Ljava/util/ArrayList;

    .line 130
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Bundle;>;"
    :cond_3
    return-void
.end method

.method public getActionListener(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/scontext/SContextService$Listener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 82
    return-void
.end method

.method public removeAction(Landroid/hardware/scontext/SContextService$Listener;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "listener"    # Landroid/hardware/scontext/SContextService$Listener;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 139
    const-string v4, "activity_notification_activity_filter"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 140
    .local v0, "actions":[I
    const/4 v3, 0x0

    .line 141
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 142
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 143
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 144
    .local v1, "activityUsed":I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 145
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    const/16 v6, 0x25

    aget v7, v0, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 149
    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->remove()V

    .line 150
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 153
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 156
    .end local v1    # "activityUsed":I
    :cond_1
    return-void
.end method

.method public saveEvent(Landroid/hardware/scontext/SContextEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    .line 170
    const-string v2, "SContext.CaeProvider.ActivityNotificationImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveEvent() : mIsActionListMade = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mIsActionListMade:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-boolean v2, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mIsActionListMade:Z

    if-nez v2, :cond_1

    .line 172
    iget-object v2, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mSavedEventList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mSavedEventList:Ljava/util/ArrayList;

    .line 175
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getActivityNotificationContext()Landroid/hardware/scontext/SContextActivityNotification;

    move-result-object v1

    .line 176
    .local v1, "noti":Landroid/hardware/scontext/SContextActivityNotification;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v0, "context":Landroid/os/Bundle;
    const-string v2, "TimeStamp"

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextActivityNotification;->getTimeStamp()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 178
    const-string v2, "ActivityType"

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextActivityNotification;->getStatus()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    const-string v2, "Accuracy"

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextActivityNotification;->getAccuracy()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    iget-object v2, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mSavedEventList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    const-string v2, "SContext.CaeProvider.ActivityNotificationImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveEvent() : add action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ActivityType"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v0    # "context":Landroid/os/Bundle;
    .end local v1    # "noti":Landroid/hardware/scontext/SContextActivityNotification;
    :cond_1
    return-void
.end method

.method public setProperty(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "service"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 94
    return-void
.end method
