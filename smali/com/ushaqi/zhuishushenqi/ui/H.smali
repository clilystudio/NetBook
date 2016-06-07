.class final Lcom/ushaqi/zhuishushenqi/ui/H;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/BookSummary;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/H;->a:Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;B)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/H;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->o(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;->getBooks()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/H;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 72
    check-cast p1, Ljava/util/List;

    .line 1089
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1091
    if-eqz p1, :cond_1

    .line 1092
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/H;->a:Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->f()V

    .line 1097
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/H;->a:Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;)Lcom/ushaqi/zhuishushenqi/adapter/E;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/E;->a(Ljava/util/Collection;)V

    :goto_1
    return-void

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/H;->a:Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->g()V

    goto :goto_0

    .line 1099
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/H;->a:Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->h()V

    .line 1100
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/H;->a:Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;

    const v1, 0x7f05016e

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_1
.end method
