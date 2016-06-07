.class final Lcom/ushaqi/zhuishushenqi/ui/aL;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/BookRankDetailRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/BookRankDetailActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookRankDetailActivity;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/aL;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankDetailActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookRankDetailActivity;B)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/aL;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookRankDetailActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookRankDetailRoot;
    .locals 2

    .prologue
    .line 30
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->z(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookRankDetailRoot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 34
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/aL;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookRankDetailRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 25
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/BookRankDetailRoot;

    .line 1039
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1040
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetailRoot;->getRanking()Lcom/ushaqi/zhuishushenqi/model/BookRankDetailList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aL;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankDetailActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookRankDetailActivity;->e(I)V

    .line 1042
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aL;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankDetailActivity;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/BookRankDetailActivity;->a:Lcom/ushaqi/zhuishushenqi/adapter/g;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetailRoot;->getRanking()Lcom/ushaqi/zhuishushenqi/model/BookRankDetailList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetailList;->getBooks()[Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/g;->a([Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aL;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankDetailActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookRankDetailActivity;->e(I)V

    .line 1045
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aL;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankDetailActivity;

    const v1, 0x7f050128

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0
.end method
