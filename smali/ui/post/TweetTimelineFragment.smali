.class public Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/ui/post/eb;

.field private b:Lcom/ushaqi/zhuishushenqi/ui/post/ea;

.field private c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/ushaqi/zhuishushenqi/adapter/G;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/handmark/pulltorefresh/library/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->k:Ljava/util/List;

    .line 400
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/dZ;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dZ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->l:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;Lcom/ushaqi/zhuishushenqi/ui/post/ea;)Lcom/ushaqi/zhuishushenqi/ui/post/ea;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/post/ea;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;Ljava/util/List;Lcom/ushaqi/zhuishushenqi/model/TimelineResult;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->a(Ljava/util/List;Lcom/ushaqi/zhuishushenqi/model/TimelineResult;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Lcom/ushaqi/zhuishushenqi/model/TimelineResult;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Tweet;",
            ">;",
            "Lcom/ushaqi/zhuishushenqi/model/TimelineResult;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 294
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;->getTweets()[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 295
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Tweet;

    .line 298
    invoke-static {p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->a(Ljava/util/List;Lcom/ushaqi/zhuishushenqi/model/Tweet;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 299
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->isRetween()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;->getRetweetNames()[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Names;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getRefTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->a([Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Names;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->names:[Ljava/lang/String;

    .line 302
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 305
    :cond_3
    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->h:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 156
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 157
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/eb;

    invoke-direct {v1, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/eb;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;B)V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->a:Lcom/ushaqi/zhuishushenqi/ui/post/eb;

    .line 158
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->a:Lcom/ushaqi/zhuishushenqi/ui/post/eb;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/eb;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->c()V

    .line 161
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->b()V

    goto :goto_0
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/model/TimelineResult;)V
    .locals 5

    .prologue
    .line 223
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;->getTweets()[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;

    move-result-object v1

    .line 224
    array-length v0, v1

    .line 225
    if-lez v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 227
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 228
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->setUser(Lcom/ushaqi/zhuishushenqi/model/User;)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1281
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->a(Ljava/util/List;Lcom/ushaqi/zhuishushenqi/model/TimelineResult;)Ljava/util/List;

    move-result-object v0

    .line 230
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->k:Ljava/util/List;

    .line 231
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/G;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Ljava/util/List;)V

    .line 233
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;Lcom/ushaqi/zhuishushenqi/model/TimelineResult;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->a(Lcom/ushaqi/zhuishushenqi/model/TimelineResult;)V

    return-void
.end method

.method private static a(Lcom/ushaqi/zhuishushenqi/model/Tweet;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 265
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v2

    .line 266
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getNames()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getNames()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 268
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 269
    const/4 v0, 0x1

    goto :goto_0

    .line 267
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static a(Ljava/util/List;Lcom/ushaqi/zhuishushenqi/model/Tweet;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Tweet;",
            ">;",
            "Lcom/ushaqi/zhuishushenqi/model/Tweet;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 310
    const/4 v2, 0x0

    .line 311
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Tweet;

    .line 312
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->isRetween()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getRefTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getRefTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    .line 321
    :goto_0
    return v0

    .line 316
    :cond_1
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->isRetween()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getRefTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 318
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private static a([Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Names;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 332
    if-nez p0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-object v0

    .line 335
    :cond_1
    array-length v2, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 336
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Names;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 337
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Names;->getNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 335
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/ea;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/post/ea;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 422
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 430
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->g:Landroid/widget/TextView;

    const-string v1, "\u8fd9\u91cc\u8fd8\u6ca1\u6709\u8bdd\u9898\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private b(Lcom/ushaqi/zhuishushenqi/model/TimelineResult;)V
    .locals 8

    .prologue
    .line 250
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;->getTweets()[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;

    move-result-object v1

    .line 251
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v2

    .line 252
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 253
    array-length v4, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v1, v0

    .line 254
    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->isRetween()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v6

    invoke-static {v6}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->a(Lcom/ushaqi/zhuishushenqi/model/Tweet;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 255
    new-instance v6, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;

    invoke-direct {v6}, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;-><init>()V

    .line 256
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;->setUserId(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getRefTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;->setTweetId(Ljava/lang/String;)V

    .line 258
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_1
    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;->save2DB(Ljava/util/List;)V

    .line 262
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;Lcom/ushaqi/zhuishushenqi/model/TimelineResult;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 50
    .line 2236
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    .line 2237
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->delete(Ljava/lang/String;I)V

    .line 2238
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2239
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v1}, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->save2DB(Ljava/lang/String;ILjava/lang/String;)V

    .line 2240
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;->clear(Ljava/lang/String;)V

    .line 2241
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->b(Lcom/ushaqi/zhuishushenqi/model/TimelineResult;)V

    .line 50
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 433
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 437
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->a()V

    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;Lcom/ushaqi/zhuishushenqi/model/TimelineResult;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->b(Lcom/ushaqi/zhuishushenqi/model/TimelineResult;)V

    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->c()V

    return-void
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Lcom/handmark/pulltorefresh/library/j;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->l:Lcom/handmark/pulltorefresh/library/j;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->b()V

    return-void
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Lcom/ushaqi/zhuishushenqi/adapter/G;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/G;

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/eb;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->a:Lcom/ushaqi/zhuishushenqi/ui/post/eb;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 146
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    .line 1166
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->find(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1167
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1168
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/TweetCache;

    .line 1169
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->getContent()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;

    .line 1170
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->a(Lcom/ushaqi/zhuishushenqi/model/TimelineResult;)V

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->a()V

    .line 151
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    const v0, 0x7f0300ab

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 97
    const v0, 0x7f0c00dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->f:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->f:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    const v0, 0x7f0c00ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->g:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0c00eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 101
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 103
    const v0, 0x7f0c023e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->h:Landroid/widget/RelativeLayout;

    .line 104
    const v0, 0x7f0c02d5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->i:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->i:Landroid/widget/TextView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/dW;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dW;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->d:Landroid/widget/ListView;

    .line 114
    const v0, 0x7f03011d

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->e:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 117
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/dX;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dX;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)V

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 137
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v3, v3}, Lcom/ushaqi/zhuishushenqi/adapter/G;-><init>(Landroid/app/Activity;ZZ)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/G;

    .line 138
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/G;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->k:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Ljava/util/List;)V

    .line 139
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 86
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public onLogin(Lcom/ushaqi/zhuishushenqi/event/t;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->a()V

    .line 75
    return-void
.end method
