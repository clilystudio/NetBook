.class final Lcom/ushaqi/zhuishushenqi/reader/J;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/o;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/o;Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;)V
    .locals 0

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/J;->b:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    .line 1034
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/J;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    .line 1035
    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;
    .locals 4

    .prologue
    .line 1041
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1045
    :goto_0
    return-object v0

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1045
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1029
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/reader/J;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;

    move-result-object v0

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 0

    .prologue
    .line 1067
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/a/e;->onCancelled()V

    .line 1070
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1029
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;

    .line 2050
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 2054
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2055
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/J;->b:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->b(Lcom/ushaqi/zhuishushenqi/reader/o;)Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->q()Lcom/ushaqi/zhuishushenqi/reader/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/K;->a()Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;->getChapterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/J;->b:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/J;->b:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->b(Lcom/ushaqi/zhuishushenqi/reader/o;)Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->q()Lcom/ushaqi/zhuishushenqi/reader/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/K;->a()Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 2057
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;->getChapterId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/J;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2059
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/J;->b:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/J;->b:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/J;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    .line 2060
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/J;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    .line 2059
    invoke-static {v1, v0, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/model/Chapter;)Z

    .line 1029
    :cond_0
    return-void
.end method
