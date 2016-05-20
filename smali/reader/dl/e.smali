.class final Lcom/ushaqi/zhuishushenqi/reader/dl/e;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

.field private b:I

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;Lcom/ushaqi/zhuishushenqi/model/ChapterLink;I)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    .line 311
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->a:Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    .line 312
    iput p3, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->b:I

    .line 313
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 305
    .line 2317
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->f(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Lcom/ushaqi/zhuishushenqi/reader/f;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->a:Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/f;->a(Lcom/ushaqi/zhuishushenqi/model/ChapterLink;I)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    move-result-object v0

    .line 2319
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->d(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;

    move-result-object v1

    .line 2320
    if-eqz v1, :cond_0

    .line 2321
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->g(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->setProgress(I)V

    .line 2322
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->save()Ljava/lang/Long;

    .line 305
    :cond_0
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 305
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    .line 1329
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1331
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->b(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SerDlCurrentCount"

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->g(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1332
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->b(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SerDlChapterCount"

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->h(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1333
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->b(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "bookId"

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->d(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1335
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->i(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)I

    .line 1337
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;)I

    move-result v1

    .line 1338
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->j(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)I

    move-result v2

    if-ne v2, v0, :cond_4

    if-le v1, v0, :cond_4

    .line 1339
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->k(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V

    .line 1340
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u6d41\u91cf\u4e0b\u81ea\u52a8\u6682\u505c\u7f13\u5b58\uff0c\u8fde\u63a5 Wi-Fi \u7ee7\u7eed\u6216\u624b\u52a8\u5f00\u59cb\u7f13\u5b58"

    invoke-static {v2, v3}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1348
    :goto_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v2, v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->b(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;I)I

    .line 1351
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->getChapter()Lcom/ushaqi/zhuishushenqi/model/Chapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1352
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->getChapter()Lcom/ushaqi/zhuishushenqi/model/Chapter;

    move-result-object v1

    .line 1354
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->getBody()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1355
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->getLink()Ljava/lang/String;

    move-result-object v2

    .line 1357
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->b(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "SerDlLink"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1358
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->l(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V

    .line 1360
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->m(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1361
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    sget-object v4, Lcom/ushaqi/zhuishushenqi/util/I;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;Ljava/lang/String;)Ljava/lang/String;

    .line 1363
    :cond_0
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->d(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->m(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2, v1}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/model/Chapter;)Z

    .line 1366
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->c(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V

    .line 1368
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->n(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->g(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)I

    move-result v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->h(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 1369
    :cond_2
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/I;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/I;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 1370
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->g(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->c(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;I)I

    :cond_3
    :goto_1
    return-void

    .line 1341
    :cond_4
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->t(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1342
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->e(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V

    .line 1343
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->b(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;Z)Z

    goto/16 :goto_0

    .line 1345
    :cond_5
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->k(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V

    .line 1346
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u7f13\u5b58\u6682\u505c\uff0c\u8fde\u63a5\u7f51\u7edc\u540e\u7ee7\u7eed\u4e0b\u8f7d"

    invoke-static {v2, v3}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1372
    :cond_6
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->h(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_7

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->h(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    .line 1373
    :cond_7
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->g(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)I

    move-result v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->n(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)I

    move-result v2

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_3

    .line 1374
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/I;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/I;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 1375
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->c:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->g(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->c(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;I)I

    goto :goto_1
.end method
