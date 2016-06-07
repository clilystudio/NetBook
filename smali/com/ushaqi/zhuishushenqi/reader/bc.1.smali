.class final Lcom/ushaqi/zhuishushenqi/reader/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 2326
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bc;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2329
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bc;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->k()I

    move-result v0

    .line 2330
    if-nez p2, :cond_2

    .line 2331
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/bc;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const/16 v4, 0x32

    invoke-static {v3, v4}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I

    .line 2338
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/bc;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getOnShelf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2339
    :goto_1
    if-nez v2, :cond_1

    .line 2340
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bc;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ad(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 2342
    :cond_1
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bc;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ah(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2344
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/dl/a;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bc;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/dl/a;-><init>(Landroid/app/Activity;)V

    .line 2345
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/MyApplication;->e()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/bc;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/bc;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->d()[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2346
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bc;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/bc;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ai(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/dl/a;->a(Ljava/lang/String;II)V

    .line 2347
    return-void

    .line 2332
    :cond_2
    if-ne p2, v2, :cond_3

    .line 2333
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/bc;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/bc;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->f()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I

    goto :goto_0

    .line 2334
    :cond_3
    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    .line 2336
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bc;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/bc;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->f()I

    move-result v3

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I

    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v1

    .line 2338
    goto :goto_1
.end method
