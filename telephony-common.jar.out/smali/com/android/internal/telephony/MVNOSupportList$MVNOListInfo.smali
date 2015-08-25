.class Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;
.super Ljava/lang/Object;
.source "MVNOSupportList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MVNOSupportList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MVNOListInfo"
.end annotation


# instance fields
.field private final mvnoName:Ljava/lang/String;

.field private final simIMSI:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/MVNOSupportList;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/MVNOSupportList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "simIMSI"    # Ljava/lang/String;
    .param p3, "mvnoName"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;->this$0:Lcom/android/internal/telephony/MVNOSupportList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;->simIMSI:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;->mvnoName:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getMVNOName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;->mvnoName:Ljava/lang/String;

    return-object v0
.end method

.method public getSimIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;->simIMSI:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MVNOListInfo [simIMSI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;->simIMSI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getMvnoName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;->mvnoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
