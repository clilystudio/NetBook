.class final Lcom/ushaqi/zhuishushenqi/ui/aW;
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
    .line 133
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/aW;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;B)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/aW;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)V

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
    .line 138
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aW;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/aW;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->c(Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/BookTagRoot;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookTagRoot;->getBooks()[Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookTagRoot;->getBooks()[Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/aW;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 133
    check-cast p1, Ljava/util/List;

    .line 1150
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1151
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aW;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    if-eqz p1, :cond_1

    .line 1153
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aW;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->f()V

    .line 1154
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1155
    if-lez v0, :cond_0

    .line 1156
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aW;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1157
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aW;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Lcom/ushaqi/zhuishushenqi/ui/aV;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/aW;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/aV;->a(Ljava/util/Collection;)V

    .line 1158
    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aW;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aW;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Lcom/ushaqi/zhuishushenqi/widget/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnLastItemListener(Lcom/ushaqi/zhuishushenqi/widget/av;)V

    .line 1166
    :goto_0
    return-void

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aW;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnLastItemListener(Lcom/ushaqi/zhuishushenqi/widget/av;)V

    goto :goto_0

    .line 1167
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aW;->a:Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
