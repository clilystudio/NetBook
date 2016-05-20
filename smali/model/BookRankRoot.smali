.class public Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private female:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;"
        }
    .end annotation
.end field

.field private male:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;"
        }
    .end annotation
.end field

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private filterMainList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;

    .line 62
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->isCollapse()Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    return-object v1
.end method

.method private filterSubList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;

    .line 72
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->isCollapse()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getFemale()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->female:Ljava/util/List;

    return-object v0
.end method

.method public getMainFemaleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->female:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->filterMainList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMainMaleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->male:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->filterMainList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMale()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->male:Ljava/util/List;

    return-object v0
.end method

.method public getSubFemaleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->female:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->filterSubList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubMaleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->male:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->filterSubList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->ok:Z

    return v0
.end method

.method public setFemale(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->female:Ljava/util/List;

    .line 40
    return-void
.end method

.method public setMale(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->male:Ljava/util/List;

    .line 32
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->ok:Z

    .line 24
    return-void
.end method
