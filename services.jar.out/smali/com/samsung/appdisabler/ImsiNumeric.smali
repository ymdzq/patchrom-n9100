.class public Lcom/samsung/appdisabler/ImsiNumeric;
.super Ljava/lang/Object;
.source "ImsiNumeric.java"


# instance fields
.field private imsiNumericBase:Ljava/lang/String;

.field private imsiRangeEnd:Ljava/lang/String;

.field private imsiRangeStart:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiNumericBase:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImsiNumericBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiNumericBase:Ljava/lang/String;

    return-object v0
.end method

.method public getImsiRangeEnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    goto :goto_0
.end method

.method public getImsiRangeStart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    return-object v0
.end method

.method public setImsiNumericBase(Ljava/lang/String;)Z
    .locals 1
    .param p1, "imsiNumericBase"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiNumericBase:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 23
    iput-object p1, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiNumericBase:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    .line 27
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImsiRangeEnd(Ljava/lang/String;)Z
    .locals 1
    .param p1, "imsiRangeEnd"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 52
    iput-object p1, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImsiRangeStart(Ljava/lang/String;)Z
    .locals 1
    .param p1, "imsiRangeStart"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 37
    iput-object p1, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "imsiNumericBase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiNumericBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "imsiRangeStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsiRangeEnd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeEnd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsiRangeEnd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public validate()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiNumericBase:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/appdisabler/ImsiNumeric;->imsiRangeStart:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
