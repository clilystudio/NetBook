.class final Lcom/ushaqi/zhuishushenqi/reader/bA;
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
        "Lcom/ushaqi/zhuishushenqi/model/TocSummary;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bA;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;B)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/bA;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/TocSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 265
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/reader/bA;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 265
    check-cast p1, Ljava/util/List;

    .line 1285
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1286
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bA;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1289
    if-eqz p1, :cond_1

    .line 1290
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bA;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->k(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->a()V

    .line 1291
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bA;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    .line 1293
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bA;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->k(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->b()V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/a/e;->onPreExecute()V

    .line 270
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bA;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->k(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;->c()V

    .line 271
    return-void
.end method
