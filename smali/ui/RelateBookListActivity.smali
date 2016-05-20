.class public Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/cQ;


# instance fields
.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "RelateBookRoot"

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "book_list_title"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "bookId"

    invoke-virtual {v0, v1, p3}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "entrancePosition"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "RelateBookRoot"

    .line 45
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "book_list_title"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "entrancePosition"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "IS_BFD_RECOMMEND"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;)V
    .locals 5

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->e(I)V

    .line 98
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;->getBooks()Ljava/util/List;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 1134
    new-instance v3, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;

    invoke-direct {v3}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;-><init>()V

    .line 1135
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->set_id(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->setAuthor(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getCover()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->setCover(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getLatelyFollower()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->setLatelyFollower(I)V

    .line 1139
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getRetentionRatio()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->setRetentionRatio(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getShortIntro()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->setShortIntro(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->setTitle(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getCat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->setCat(Ljava/lang/String;)V

    .line 101
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->a:Lcom/ushaqi/zhuishushenqi/adapter/g;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/g;->a(Ljava/util/Collection;)V

    .line 104
    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 71
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->a:Lcom/ushaqi/zhuishushenqi/adapter/g;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/g;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->a:Lcom/ushaqi/zhuishushenqi/adapter/g;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;

    .line 74
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->b:Z

    if-eqz v2, :cond_2

    .line 75
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->get_id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rec_C6613205_93B6_61A6_9FEC_180B70F91B94"

    invoke-static {p0, v2, v3}, Lcom/arcsoft/hpay100/a/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->c:I

    if-ne v2, v1, :cond_1

    .line 77
    const-string v1, "book_info_recommend_click"

    const-string v2, "bfd"

    invoke-static {p0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v1, 0x3

    .line 92
    :goto_0
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    :cond_0
    return-void

    .line 80
    :cond_1
    const-string v1, "page_footing_recommend_click"

    const-string v2, "bfd"

    invoke-static {p0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x4

    goto :goto_0

    .line 84
    :cond_2
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->c:I

    if-ne v2, v1, :cond_3

    .line 85
    const-string v2, "book_info_recommend_click"

    const-string v3, "zhuishu"

    invoke-static {p0, v2, v3}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_3
    const-string v1, "page_footing_recommend_click"

    const-string v2, "zhuishu"

    invoke-static {p0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;[Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 108
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;->isOk()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;->getBooks()Ljava/util/List;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2122
    new-instance v3, Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2123
    array-length v4, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, p2, v1

    .line 2124
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 2125
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2126
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2123
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p1, v3}, Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;->setBooks(Ljava/util/List;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->a(Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;)V

    .line 119
    :goto_2
    return-void

    .line 114
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->e(I)V

    goto :goto_2

    .line 117
    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->e(I)V

    goto :goto_2
.end method

.method protected final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "entrancePosition"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->c:I

    .line 51
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RelateBookRoot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->a(Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;)V

    .line 54
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IS_BFD_RECOMMEND"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->b:Z

    .line 66
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bookId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->e(I)V

    .line 60
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/cM;

    invoke-direct {v1, p0, p0}, Lcom/ushaqi/zhuishushenqi/reader/cM;-><init>(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/reader/cQ;)V

    .line 61
    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/cM;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->b:Z

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->e(I)V

    goto :goto_0
.end method
