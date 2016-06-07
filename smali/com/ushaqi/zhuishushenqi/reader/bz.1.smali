.class final Lcom/ushaqi/zhuishushenqi/reader/bz;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/MenuAd;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bz;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;B)V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/bz;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)V

    return-void
.end method

.method private static varargs a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/MenuAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->i()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 343
    :goto_0
    return-object v0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 334
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/reader/bz;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 334
    check-cast p1, Ljava/util/List;

    .line 1348
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1349
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bz;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bz;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1354
    :cond_0
    :goto_0
    return-void

    .line 1353
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1354
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bz;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->l(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)V

    goto :goto_0

    .line 1358
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bz;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1359
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1360
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bz;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->m(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1361
    const v1, 0x7f0c0034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bz;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->m(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1363
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/a;->a()Lcom/ushaqi/zhuishushenqi/util/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/util/a;->a(Ljava/util/List;)Z

    .line 1364
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bz;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->n(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)V

    goto :goto_0
.end method
