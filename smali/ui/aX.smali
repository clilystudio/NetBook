.class final Lcom/ushaqi/zhuishushenqi/ui/aX;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;B)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/aX;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)V

    return-void
.end method

.method private varargs a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->c(Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/BookTagRoot;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookTagRoot;->getBooks()[Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookTagRoot;->getBooks()[Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/aX;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 93
    check-cast p1, Ljava/util/List;

    .line 1110
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1111
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    if-eqz p1, :cond_2

    .line 1113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1114
    if-lez v0, :cond_1

    .line 1115
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->f()V

    .line 1116
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1117
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1118
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Lcom/ushaqi/zhuishushenqi/ui/aV;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/aV;->a(Ljava/util/Collection;)V

    .line 1119
    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnLastItemListener(Lcom/ushaqi/zhuishushenqi/widget/av;)V

    .line 1127
    :goto_0
    return-void

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Lcom/ushaqi/zhuishushenqi/widget/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnLastItemListener(Lcom/ushaqi/zhuishushenqi/widget/av;)V

    goto :goto_0

    .line 1125
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->g()V

    goto :goto_0

    .line 1128
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->h()V

    goto :goto_0
.end method
