.class final Lcom/ushaqi/zhuishushenqi/reader/bY;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bY;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;B)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/bY;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)V

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
    .line 222
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

    .line 226
    :goto_0
    return-object v0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/reader/bY;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 217
    check-cast p1, Ljava/util/List;

    .line 1231
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1232
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bY;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1236
    if-eqz p1, :cond_2

    .line 1238
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1239
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bY;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;I)V

    .line 1240
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bY;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;Ljava/util/List;)V

    .line 1241
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bY;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->c(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)Lcom/ushaqi/zhuishushenqi/adapter/B;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/B;->a(Ljava/util/Collection;)V

    .line 1243
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bY;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;I)V

    goto :goto_0

    .line 1248
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bY;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;I)V

    goto :goto_0
.end method
