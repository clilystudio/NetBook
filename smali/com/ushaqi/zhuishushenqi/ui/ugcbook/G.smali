.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/G;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/ResultStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)V
    .locals 2

    .prologue
    .line 170
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/G;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;

    .line 171
    const-string v0, "\u6b63\u5728\u4fdd\u5b58\u5230\u8349\u7a3f\u7bb1..."

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 172
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    .line 173
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->setTitle(Ljava/lang/String;)V

    .line 174
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->setDesc(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 4

    .prologue
    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/G;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;

    .line 1384
    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_1

    .line 182
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/G;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/G;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/G;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/G;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    .line 185
    :cond_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/G;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 191
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/G;->a()Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 168
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    .line 2196
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->isOk()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2197
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/G;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;

    const-string v1, "\u4fdd\u5b58\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 2199
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/G;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;

    const-string v1, "\u5df2\u4fdd\u5b58\u5230\u8349\u7a3f\u7bb1"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2200
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/G;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v5

    .line 2201
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/E;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/E;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 2202
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v6

    new-instance v0, Lcom/ushaqi/zhuishushenqi/event/J;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/G;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 2203
    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getCover()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/event/J;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2202
    invoke-virtual {v6, v0}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 2204
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/G;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->finish()V

    goto :goto_0
.end method
