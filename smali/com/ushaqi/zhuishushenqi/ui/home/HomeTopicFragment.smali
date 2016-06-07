.class public Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;
.super Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Lcom/ushaqi/zhuishushenqi/api/b;

.field private b:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->e:Ljava/util/List;

    .line 314
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->a:Lcom/ushaqi/zhuishushenqi/api/b;

    .line 366
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 232
    const v0, 0x7f0c0286

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CommunitySection;

    .line 233
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "switch_news"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "FRIST_RUN_POST"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/CommunitySection;->a(Z)V

    .line 235
    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/CommunitySection;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    :goto_0
    const v0, 0x7f0c0287

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    const v0, 0x7f0c0288

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    const v0, 0x7f0c0289

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    const v0, 0x7f0c028a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    return-void

    .line 237
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/CommunitySection;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->d()V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 228
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/home/O;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/home/O;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/O;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 229
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method public static b()Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;-><init>()V

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 302
    if-nez p1, :cond_0

    .line 303
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/home/P;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/home/P;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/P;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 312
    :goto_0
    return-void

    .line 305
    :cond_0
    const-string v0, "female"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f05011b

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->e:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->b:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->b:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 177
    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 1374
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAll()Ljava/util/List;

    move-result-object v0

    .line 1422
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1424
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 1425
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1428
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1429
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->c()V

    .line 214
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 215
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->d:Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->d:Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;->a(Ljava/util/List;)V

    .line 219
    :cond_1
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->a(Ljava/lang/String;)V

    .line 220
    return-void

    .line 1432
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->c()V

    return-void
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->d:Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-string v0, "home_topic"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 94
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->b:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->c:Landroid/widget/ListView;

    .line 95
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->c:Landroid/widget/ListView;

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 96
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300bf

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->f:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->f:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 98
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->a(Landroid/view/View;)V

    .line 100
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->b:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/home/L;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/L;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)V

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 111
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->c:Landroid/widget/ListView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/home/N;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/N;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 128
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->d:Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;

    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->d:Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1186
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAll()Ljava/util/List;

    move-result-object v0

    .line 1187
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 1190
    new-instance v3, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;

    invoke-direct {v3}, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;-><init>()V

    .line 1191
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->setBookId(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->setTitle(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getFullCover()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->setFullCover(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {v3, v1}, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->setPostCount(I)V

    .line 1195
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->d:Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;->a(Ljava/util/List;)V

    .line 1199
    const/4 v0, 0x1

    .line 133
    :goto_1
    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->b:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 138
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 1201
    goto :goto_1

    .line 136
    :cond_2
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onBookAdded(Lcom/ushaqi/zhuishushenqi/event/c;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->d()V

    .line 161
    return-void
.end method

.method public onBookRemoved(Lcom/ushaqi/zhuishushenqi/event/h;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->d()V

    .line 166
    return-void
.end method

.method public onBookShelfRefresh(Lcom/ushaqi/zhuishushenqi/event/BookShelfRefreshEvent;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->d()V

    .line 171
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 288
    :goto_0
    return-void

    .line 251
    :pswitch_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "enter_home_topic"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "FRIST_RUN_POST"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 254
    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "FRIST_RUN_POST"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 256
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/event/o;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/event/o;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 258
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 262
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 267
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 272
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 277
    :pswitch_4
    invoke-static {}, Landroid/support/design/widget/am;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getGender()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 282
    const-string v1, "KEY_SOURCE"

    sget-object v2, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;->HOME:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x7f0c0286
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 85
    const v0, 0x7f0300ae

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 86
    const v0, 0x7f0c0243

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->b:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 87
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->b:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 88
    return-object v1
.end method

.method public onEnterTweet(Lcom/ushaqi/zhuishushenqi/event/o;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->a(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;->onPause()V

    .line 155
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;->onResume()V

    .line 143
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->d:Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;->notifyDataSetChanged()V

    .line 145
    return-void
.end method
