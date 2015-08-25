.class public Landroid/os/dar/column/Table;
.super Ljava/lang/Object;
.source "Table.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KnoxDBKeyStore.Table"


# instance fields
.field columns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/dar/column/Column;",
            ">;"
        }
    .end annotation
.end field

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "argURI"    # Landroid/net/Uri;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Landroid/os/dar/column/Table;->uri:Landroid/net/Uri;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/dar/column/Table;->columns:Ljava/util/ArrayList;

    .line 20
    return-void
.end method


# virtual methods
.method public addColumn(Landroid/os/dar/column/Column;)V
    .locals 3
    .param p1, "c"    # Landroid/os/dar/column/Column;

    .prologue
    .line 32
    iget-object v0, p1, Landroid/os/dar/column/Column;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/dar/column/Table;->searchColumn(Ljava/lang/String;)Landroid/os/dar/column/Column;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    const-string v0, "KnoxDBKeyStore.Table"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new columnd added > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/dar/column/Column;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Landroid/os/dar/column/Table;->columns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    return-void
.end method

.method public addColumn(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sensitive"    # Z

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 25
    .local v0, "attr":I
    if-eqz p2, :cond_0

    .line 26
    sget v1, Landroid/os/dar/column/Column;->ATTR_SENSITIVE:I

    or-int/2addr v0, v1

    .line 28
    :cond_0
    new-instance v1, Landroid/os/dar/column/Column;

    iget-object v2, p0, Landroid/os/dar/column/Table;->uri:Landroid/net/Uri;

    invoke-direct {v1, v2, p1, v0}, Landroid/os/dar/column/Column;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/os/dar/column/Table;->addColumn(Landroid/os/dar/column/Column;)V

    .line 29
    return-void
.end method

.method public dump()V
    .locals 4

    .prologue
    .line 53
    iget-object v2, p0, Landroid/os/dar/column/Table;->columns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    :cond_0
    return-void

    .line 57
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/os/dar/column/Table;->columns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 58
    iget-object v2, p0, Landroid/os/dar/column/Table;->columns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/dar/column/Column;

    .line 59
    .local v0, "c":Landroid/os/dar/column/Column;
    const-string v2, "KnoxDBKeyStore.Table"

    invoke-virtual {v0}, Landroid/os/dar/column/Column;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public searchColumn(Ljava/lang/String;)Landroid/os/dar/column/Column;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 40
    iget-object v3, p0, Landroid/os/dar/column/Table;->columns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 49
    :cond_0
    :goto_0
    return-object v0

    .line 43
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Landroid/os/dar/column/Table;->columns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 44
    iget-object v3, p0, Landroid/os/dar/column/Table;->columns:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/dar/column/Column;

    .line 45
    .local v0, "c":Landroid/os/dar/column/Column;
    invoke-virtual {v0}, Landroid/os/dar/column/Column;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "c":Landroid/os/dar/column/Column;
    :cond_2
    move-object v0, v2

    .line 49
    goto :goto_0
.end method
