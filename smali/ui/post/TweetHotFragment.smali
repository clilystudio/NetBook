.class public Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/ui/post/dI;

.field private b:Lcom/ushaqi/zhuishushenqi/ui/post/dH;

.field private c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/ushaqi/zhuishushenqi/adapter/G;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/handmark/pulltorefresh/library/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->i:Ljava/util/List;

    .line 239
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/dG;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dG;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->j:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;Lcom/ushaqi/zhuishushenqi/ui/post/dH;)Lcom/ushaqi/zhuishushenqi/ui/post/dH;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/post/dH;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/dI;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/dI;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dI;

    .line 111
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dI;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/dI;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    return-void
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;)V
    .locals 6

    .prologue
    .line 171
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;->getTweets()[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;

    move-result-object v1

    .line 172
    array-length v0, v1

    .line 173
    if-lez v0, :cond_1

    .line 174
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 175
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->setUser(Lcom/ushaqi/zhuishushenqi/model/User;)V

    .line 176
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->i:Ljava/util/List;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->h:Lcom/ushaqi/zhuishushenqi/adapter/G;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Ljava/util/List;)V

    .line 180
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->a(Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;)V

    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/dH;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/post/dH;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 40
    .line 2183
    const-string v0, "zhuishushenqi_hot_user_id"

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->delete(Ljava/lang/String;I)V

    .line 2184
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2185
    const-string v1, "zhuishushenqi_hot_user_id"

    invoke-static {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->save2DB(Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->a()V

    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 40
    .line 1265
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1266
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1267
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 40
    return-void
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Lcom/handmark/pulltorefresh/library/j;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->j:Lcom/handmark/pulltorefresh/library/j;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)V
    .locals 2

    .prologue
    .line 40
    .line 2260
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2261
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->g:Landroid/widget/TextView;

    const-string v1, "\u70ed\u95e8\u8d44\u6e90\u9700\u8981\u4f60\u7684\u52a0\u5165,\u624d\u4f1a\u66f4\u7cbe\u5f69!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Lcom/ushaqi/zhuishushenqi/adapter/G;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->h:Lcom/ushaqi/zhuishushenqi/adapter/G;

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/dI;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dI;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1115
    const-string v0, "zhuishushenqi_hot_user_id"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->find(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1116
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1117
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/TweetCache;

    .line 1118
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->getContent()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;

    .line 1119
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->a(Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;)V

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->a()V

    .line 107
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 64
    const v0, 0x7f0300ab

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    const v0, 0x7f0c00dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->f:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->f:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    const v0, 0x7f0c00ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->g:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0c00eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 71
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->d:Landroid/widget/ListView;

    .line 72
    const v0, 0x7f03011d

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->e:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 75
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/dE;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dE;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)V

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 95
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v4, v3}, Lcom/ushaqi/zhuishushenqi/adapter/G;-><init>(Landroid/app/Activity;ZZ)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->h:Lcom/ushaqi/zhuishushenqi/adapter/G;

    .line 96
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->h:Lcom/ushaqi/zhuishushenqi/adapter/G;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->i:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Ljava/util/List;)V

    .line 97
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->h:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    return-object v1
.end method
