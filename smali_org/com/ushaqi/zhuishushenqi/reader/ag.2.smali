.class public final Lcom/ushaqi/zhuishushenqi/reader/ag;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/reader/af;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/Reader;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;)V
    .locals 0

    .prologue
    .line 933
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ag;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ushaqi/zhuishushenqi/reader/af;)V
    .locals 0

    .prologue
    .line 968
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ag;->a:Lcom/ushaqi/zhuishushenqi/reader/af;

    .line 969
    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 933
    .line 2939
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ag;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ag;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->m(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/model/Toc;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    .line 2940
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ag;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2941
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ag;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ag;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->b(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/model/Toc;)V

    .line 2943
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ag;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 933
    return-object v0

    .line 2943
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 933
    check-cast p1, Ljava/lang/Boolean;

    .line 1948
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1949
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1950
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ag;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ag;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Toc;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Ljava/lang/String;)Ljava/lang/String;

    .line 1951
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ag;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ag;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Toc;->getChapters()[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;)V

    .line 1952
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ag;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1953
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ag;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    .line 1954
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ag;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setMaxIndex(I)V

    goto :goto_0

    .line 1957
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ag;->a:Lcom/ushaqi/zhuishushenqi/reader/af;

    if-eqz v0, :cond_1

    .line 1958
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1959
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ag;->a:Lcom/ushaqi/zhuishushenqi/reader/af;

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/af;->a()V

    .line 1964
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ag;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/reader/ag;)Lcom/ushaqi/zhuishushenqi/reader/ag;

    .line 933
    return-void

    .line 1961
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ag;->a:Lcom/ushaqi/zhuishushenqi/reader/af;

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/af;->b()V

    goto :goto_1
.end method
