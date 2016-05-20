.class final Lcom/ushaqi/zhuishushenqi/ui/home/O;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/TopicSummary;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/O;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;B)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/O;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)V

    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/TopicSummary;
    .locals 1

    .prologue
    .line 373
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAll()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/O;->a:Ljava/util/List;

    .line 374
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->k()Lcom/ushaqi/zhuishushenqi/model/TopicSummary;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 378
    :goto_0
    return-object v0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/O;->a()Lcom/ushaqi/zhuishushenqi/model/TopicSummary;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 366
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/TopicSummary;

    .line 1383
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1384
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/O;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1387
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/O;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)V

    .line 1389
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TopicSummary;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1390
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/O;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1391
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/O;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1392
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/O;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 1394
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v3

    .line 1396
    new-instance v4, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;

    invoke-direct {v4}, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;-><init>()V

    .line 1397
    invoke-virtual {v4, v3}, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->setBookId(Ljava/lang/String;)V

    .line 1398
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->setTitle(Ljava/lang/String;)V

    .line 1399
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getFullCover()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->setFullCover(Ljava/lang/String;)V

    .line 1400
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/O;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1392
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1403
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/O;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/O;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;->a(Ljava/util/List;)V

    .line 366
    :cond_1
    return-void
.end method
