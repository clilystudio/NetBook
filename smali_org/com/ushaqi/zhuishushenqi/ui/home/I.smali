.class final Lcom/ushaqi/zhuishushenqi/ui/home/I;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1790
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/I;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    .line 1791
    const v0, 0x7f050160

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1792
    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1797
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->ac(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;

    move-result-object v0

    .line 1798
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;->isOk()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1799
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;->getBooks()[Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 1800
    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->create(Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;)V

    .line 1801
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->get_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/arcsoft/hpay100/a/a;->u(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1799
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1805
    :catch_0
    move-exception v0

    .line 1806
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1808
    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1788
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/home/I;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1788
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;

    .line 2813
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2814
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/I;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    :goto_0
    return-void

    .line 2816
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/I;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;I)V

    goto :goto_0
.end method
