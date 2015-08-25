.class Lcom/samsung/android/writingbuddy/WritingBuddyImpl$WBHandler;
.super Landroid/os/Handler;
.source "WritingBuddyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WBHandler"
.end annotation


# instance fields
.field private final mWritingBuddy:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/writingbuddy/WritingBuddyImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V
    .locals 1
    .param p1, "wb"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    .line 2735
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2736
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$WBHandler;->mWritingBuddy:Ljava/lang/ref/WeakReference;

    .line 2737
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2741
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$WBHandler;->mWritingBuddy:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .line 2742
    .local v0, "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    if-eqz v0, :cond_0

    .line 2743
    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$800(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Landroid/os/Message;)V

    .line 2745
    :cond_0
    return-void
.end method
