.class final Lcom/ushaqi/zhuishushenqi/adapter/S;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/PostPublish;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/adapter/G;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/adapter/G;)V
    .locals 0

    .prologue
    .line 697
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/S;->a:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 3

    .prologue
    .line 703
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 707
    :goto_0
    return-object v0

    .line 704
    :catch_0
    move-exception v0

    .line 705
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 707
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 697
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/adapter/S;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 697
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    .line 1712
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/S;->a:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->b(Lcom/ushaqi/zhuishushenqi/adapter/G;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/S;->a:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->f()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/S;->a:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->c(Lcom/ushaqi/zhuishushenqi/adapter/G;)Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1716
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/S;->a:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->notifyDataSetChanged()V

    .line 1717
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/S;->a:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/adapter/G;Landroid/view/View;)Landroid/view/View;

    .line 1718
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/S;->a:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/G;->d(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;)Lcom/ushaqi/zhuishushenqi/model/Tweet;

    .line 697
    :cond_0
    return-void
.end method
