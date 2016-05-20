.class public Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/widget/ListView;

.field private k:Lcom/ushaqi/zhuishushenqi/adapter/W;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;

.field private s:Lcom/ushaqi/zhuishushenqi/model/Author;

.field private t:Landroid/view/View$OnClickListener;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 122
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/j;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/j;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->t:Landroid/view/View$OnClickListener;

    .line 429
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;Lcom/ushaqi/zhuishushenqi/model/Author;)Lcom/ushaqi/zhuishushenqi/model/Author;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->s:Lcom/ushaqi/zhuishushenqi/model/Author;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;)Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->w:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;)V
    .locals 3

    .prologue
    .line 309
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->e(I)V

    .line 310
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v0

    .line 311
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->getBooks()[Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;

    move-result-object v1

    .line 312
    if-eqz v1, :cond_0

    array-length v1, v1

    if-nez v1, :cond_4

    .line 313
    :cond_0
    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Author;->getScaleAvatar()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->y:Ljava/lang/String;

    .line 319
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->getShareLink()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->x:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->u:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->getDesc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->v:Ljava/lang/String;

    .line 322
    if-eqz v0, :cond_2

    .line 323
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->g:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Author;->getScaleAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Author;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :cond_2
    invoke-static {}, Landroid/support/design/widget/am;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?sharer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->x:Ljava/lang/String;

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->getCreated()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/p;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/p;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 345
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->getCollectorCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->k:Lcom/ushaqi/zhuishushenqi/adapter/W;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->getBooks()[Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/W;->a([Ljava/lang/Object;)V

    .line 348
    return-void

    .line 317
    :cond_4
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->getBooks()[Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;->getBook()Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->getFullCover()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->y:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;I)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->e(I)V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->p:Z

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->e(I)V

    .line 262
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/r;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/r;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->o:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/r;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 263
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)V
    .locals 10

    .prologue
    .line 52
    .line 1412
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;

    if-eqz v0, :cond_2

    .line 2351
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    .line 2352
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;

    .line 2380
    new-instance v2, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;-><init>()V

    .line 2381
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->setTitle(Ljava/lang/String;)V

    .line 2382
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->setDesc(Ljava/lang/String;)V

    .line 2383
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2384
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->getBooks()[Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;

    move-result-object v4

    .line 2385
    array-length v5, v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 2386
    new-instance v7, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    invoke-direct {v7}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;-><init>()V

    .line 2387
    invoke-virtual {v6}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;->getBook()Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;

    move-result-object v8

    .line 2388
    invoke-virtual {v6}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;->getComment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->setAppendComment(Ljava/lang/String;)V

    .line 2389
    invoke-virtual {v8}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->get_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->setId(Ljava/lang/String;)V

    .line 2390
    invoke-virtual {v8}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->getCover()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->setCover(Ljava/lang/String;)V

    .line 2391
    invoke-virtual {v8}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->setTitle(Ljava/lang/String;)V

    .line 2392
    invoke-virtual {v8}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->getAuthor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->setAuthor(Ljava/lang/String;)V

    .line 2393
    invoke-virtual {v8}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->getLatelyFollower()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->setLatelyFollower(I)V

    .line 2394
    invoke-virtual {v8}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->getWordCount()J

    move-result-wide v8

    long-to-int v6, v8

    invoke-virtual {v7, v6}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->setWordCount(I)V

    .line 2395
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2397
    :cond_0
    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->setBooks(Ljava/util/List;)V

    .line 2352
    iput-object v2, v1, Lcom/ushaqi/zhuishushenqi/MyApplication;->a:Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    .line 1414
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1415
    const-string v1, "ugc_id"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1416
    const-string v1, "is_draft"

    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->q:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1417
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->s:Lcom/ushaqi/zhuishushenqi/model/Author;

    if-eqz v1, :cond_1

    .line 1418
    const-string v1, "my_author"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->s:Lcom/ushaqi/zhuishushenqi/model/Author;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1420
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1421
    :goto_1
    return-void

    .line 1422
    :cond_2
    const-string v0, "\u4e66\u5355\u4fe1\u606f\u672a\u52a0\u8f7d\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;)V

    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    .line 3384
    invoke-static {p0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 2406
    if-eqz v0, :cond_0

    .line 2407
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/q;

    invoke-direct {v1, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/q;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;B)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->o:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/q;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->i:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private e(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 463
    packed-switch p1, :pswitch_data_0

    .line 480
    :goto_0
    return-void

    .line 465
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 470
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 475
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)V
    .locals 2

    .prologue
    .line 52
    .line 4207
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/cb;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/n;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/n;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/cb;-><init>(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/ui/cd;)V

    .line 4227
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/cb;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 52
    return-void
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->j:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Lcom/ushaqi/zhuishushenqi/adapter/W;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->k:Lcom/ushaqi/zhuishushenqi/adapter/W;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->q:Z

    return v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->t:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    .prologue
    .line 237
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->w:Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->x:Ljava/lang/String;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->y:Ljava/lang/String;

    new-instance v6, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/o;

    invoke-direct {v6, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/o;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)V

    move-object v0, p0

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/ushaqi/zhuishushenqi/util/T;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/framework/PlatformActionListener;)V

    .line 255
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 455
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 460
    :goto_0
    return-void

    .line 457
    :pswitch_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->b()V

    goto :goto_0

    .line 455
    :pswitch_data_0
    .packed-switch 0x7f0c016e
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f030062

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->setContentView(I)V

    .line 85
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->o:Ljava/lang/String;

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "my_list"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->p:Z

    .line 94
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_draft"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->q:Z

    .line 96
    const-string v1, "\u4e66\u5355\u8be6\u60c5"

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->p:Z

    if-eqz v0, :cond_1

    const-string v0, "\u7f16\u8f91"

    :goto_1
    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/i;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/i;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)V

    invoke-virtual {p0, v1, v0, v3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 1133
    const v0, 0x7f0c003c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->j:Landroid/widget/ListView;

    .line 1134
    const v0, 0x7f0c00dd

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->l:Landroid/view/View;

    .line 1135
    const v0, 0x7f0c016e

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->m:Landroid/view/View;

    .line 1136
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->m:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1138
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030175

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1139
    const v0, 0x7f0c0023

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->g:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 1140
    const v0, 0x7f0c048d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->a:Landroid/widget/TextView;

    .line 1141
    const v0, 0x7f0c048c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->b:Landroid/widget/TextView;

    .line 1142
    const v0, 0x7f0c0488

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->c:Landroid/widget/TextView;

    .line 1143
    const v0, 0x7f0c0489

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->e:Landroid/widget/TextView;

    .line 1144
    const v0, 0x7f0c048e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->f:Landroid/widget/TextView;

    .line 1146
    const v0, 0x7f0c048a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->i:Landroid/widget/ImageButton;

    .line 1147
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->i:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1149
    const v0, 0x7f0c048b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->h:Landroid/widget/TextView;

    .line 1150
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->h:Landroid/widget/TextView;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/k;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/k;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1157
    const v0, 0x7f0c016f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->n:Landroid/view/View;

    .line 1158
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->n:Landroid/view/View;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/l;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/l;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1165
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1166
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/W;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/W;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->k:Lcom/ushaqi/zhuishushenqi/adapter/W;

    .line 1167
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->k:Lcom/ushaqi/zhuishushenqi/adapter/W;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1168
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030176

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1169
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1171
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/m;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/m;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "modify_update"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    .line 110
    if-eqz v0, :cond_4

    .line 111
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "my_author"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/model/Author;

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->s:Lcom/ushaqi/zhuishushenqi/model/Author;

    .line 1356
    new-instance v3, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;

    invoke-direct {v3}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;-><init>()V

    .line 1357
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->setTitle(Ljava/lang/String;)V

    .line 1358
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->setDesc(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v4

    .line 1360
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;

    move v1, v2

    .line 1361
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1362
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 1363
    new-instance v2, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;-><init>()V

    .line 1364
    new-instance v6, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;

    invoke-direct {v6}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;-><init>()V

    .line 1365
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->set_id(Ljava/lang/String;)V

    .line 1366
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getCover()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->setCover(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->setTitle(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getAuthor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->setAuthor(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getLatelyFollower()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->setLatelyFollower(I)V

    .line 1370
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getWordCount()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->setWordCount(J)V

    .line 1371
    invoke-virtual {v2, v6}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;->setBook(Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;)V

    .line 1372
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getAppendComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;->setComment(Ljava/lang/String;)V

    .line 1373
    aput-object v2, v5, v1

    .line 1361
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "book_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->o:Ljava/lang/String;

    goto/16 :goto_0

    .line 96
    :cond_1
    const-string v0, "\u6536\u85cf"

    goto/16 :goto_1

    .line 1375
    :cond_2
    invoke-virtual {v3, v5}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->setBooks([Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;)V

    .line 112
    iput-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;

    .line 113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->s:Lcom/ushaqi/zhuishushenqi/model/Author;

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->s:Lcom/ushaqi/zhuishushenqi/model/Author;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;)V

    .line 120
    :goto_3
    return-void

    .line 118
    :cond_4
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->b()V

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onDestroy()V

    .line 268
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method public onUgcDraftEvent(Lcom/ushaqi/zhuishushenqi/event/E;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->finish()V

    .line 485
    return-void
.end method
