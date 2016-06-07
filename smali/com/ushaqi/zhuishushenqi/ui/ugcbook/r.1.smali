.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/r;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/r;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;B)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/r;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;
    .locals 3

    .prologue
    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/r;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/r;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    .line 1384
    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_1

    .line 282
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v0, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->C(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    .line 285
    :cond_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->U(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 290
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 274
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/r;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 274
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;

    .line 2295
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 2297
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;->getBookList()Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2298
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;->getBookList()Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;

    move-result-object v0

    .line 2299
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/r;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;)Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;

    .line 2300
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/r;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;Lcom/ushaqi/zhuishushenqi/model/Author;)Lcom/ushaqi/zhuishushenqi/model/Author;

    .line 2301
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/r;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;)V

    .line 2302
    :goto_0
    return-void

    .line 2303
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/r;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;I)V

    goto :goto_0
.end method
