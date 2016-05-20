.class public Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Follower;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/handmark/pulltorefresh/library/j;

.field private a:Lcom/ushaqi/zhuishushenqi/ui/post/bX;

.field private b:Lcom/ushaqi/zhuishushenqi/ui/post/bW;

.field private c:Lcom/ushaqi/zhuishushenqi/ui/post/bV;

.field private d:Lcom/ushaqi/zhuishushenqi/ui/post/bU;

.field private e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private f:Landroid/view/View;

.field private g:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/ListView;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/TextView;

.field private v:Lcom/ushaqi/zhuishushenqi/adapter/G;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private x:I

.field private y:I

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Follower;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->w:Ljava/util/List;

    .line 605
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/bT;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bT;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->B:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;I)I
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->y:I

    return p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;Lcom/ushaqi/zhuishushenqi/ui/post/bU;)Lcom/ushaqi/zhuishushenqi/ui/post/bU;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->d:Lcom/ushaqi/zhuishushenqi/ui/post/bU;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;Lcom/ushaqi/zhuishushenqi/ui/post/bV;)Lcom/ushaqi/zhuishushenqi/ui/post/bV;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->c:Lcom/ushaqi/zhuishushenqi/ui/post/bV;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;Lcom/ushaqi/zhuishushenqi/ui/post/bW;)Lcom/ushaqi/zhuishushenqi/ui/post/bW;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/post/bW;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->z:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 177
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->f:Landroid/view/View;

    const v1, 0x7f0c02d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 178
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->f:Landroid/view/View;

    const v1, 0x7f0c02da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->h:Landroid/widget/ImageView;

    .line 179
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->f:Landroid/view/View;

    const v1, 0x7f0c02d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->i:Landroid/widget/TextView;

    .line 180
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->f:Landroid/view/View;

    const v1, 0x7f0c02dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->j:Landroid/widget/TextView;

    .line 181
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->f:Landroid/view/View;

    const v1, 0x7f0c02df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->k:Landroid/widget/TextView;

    .line 182
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->f:Landroid/view/View;

    const v1, 0x7f0c02d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->n:Landroid/widget/Button;

    .line 184
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getFullAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/bY;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/bN;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bN;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V

    invoke-direct {v1, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/bY;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 196
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/bY;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 197
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->isDoyan()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->h:Landroid/widget/ImageView;

    const v1, 0x7f0202d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->n:Landroid/widget/Button;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/bO;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bO;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1218
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->f:Landroid/view/View;

    const v1, 0x7f0c02de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->m:Landroid/view/View;

    .line 1219
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->f:Landroid/view/View;

    const v1, 0x7f0c02db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->l:Landroid/view/View;

    .line 1220
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->m:Landroid/view/View;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/bP;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bP;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1241
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->l:Landroid/view/View;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/bR;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bR;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    :cond_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->isOfficial()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->h:Landroid/widget/ImageView;

    const v1, 0x7f0202d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/model/TweetsResult;)V
    .locals 5

    .prologue
    .line 401
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;->getTweets()[Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v1

    .line 402
    array-length v0, v1

    .line 403
    if-lez v0, :cond_1

    .line 404
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 405
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->setUser(Lcom/ushaqi/zhuishushenqi/model/User;)V

    .line 406
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->w:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->v:Lcom/ushaqi/zhuishushenqi/adapter/G;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->w:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Ljava/util/List;)V

    .line 410
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;Lcom/ushaqi/zhuishushenqi/model/TweetsResult;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->a(Lcom/ushaqi/zhuishushenqi/model/TweetsResult;)V

    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;I)I
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->x:I

    return p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/bW;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/post/bW;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->A:Ljava/util/List;

    return-object p1
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 284
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 286
    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 296
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 294
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/bX;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/bX;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bX;

    .line 295
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bX;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/bX;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;Lcom/ushaqi/zhuishushenqi/model/TweetsResult;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 59
    .line 7413
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    .line 7414
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->delete(Ljava/lang/String;I)V

    .line 7415
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7416
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v1}, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->save2DB(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->b()V

    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V
    .locals 3

    .prologue
    .line 59
    .line 3539
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->x:I

    .line 3540
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->z:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3541
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3542
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->j:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V
    .locals 3

    .prologue
    .line 59
    .line 4532
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->y:I

    .line 4533
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->A:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4534
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4535
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->A:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->y:I

    return v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/bU;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->d:Lcom/ushaqi/zhuishushenqi/ui/post/bU;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V
    .locals 3

    .prologue
    .line 59
    .line 5476
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5477
    const-string v0, "type"

    const-string v2, "TYPE_FOLLOWERS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5478
    const/4 v0, 0x0

    .line 5479
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->A:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 5480
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/model/Follower;

    .line 5481
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->A:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5483
    :cond_0
    const-string v2, "follows"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5484
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->z:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->x:I

    return v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/bV;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->c:Lcom/ushaqi/zhuishushenqi/ui/post/bV;

    return-object v0
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V
    .locals 3

    .prologue
    .line 59
    .line 6464
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/FollowerListActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6465
    const-string v0, "type"

    const-string v2, "TYPE_FOLLOWINGS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6466
    const/4 v0, 0x0

    .line 6467
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->z:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 6468
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/model/Follower;

    .line 6469
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->z:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 6471
    :cond_0
    const-string v2, "follows"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6472
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method static synthetic n(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    return-object v0
.end method

.method static synthetic o(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic p(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 59
    .line 6631
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6632
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6633
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6634
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 59
    return-void
.end method

.method static synthetic q(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->w:Ljava/util/List;

    return-object v0
.end method

.method static synthetic r(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic s(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/handmark/pulltorefresh/library/j;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->B:Lcom/handmark/pulltorefresh/library/j;

    return-object v0
.end method

.method static synthetic t(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V
    .locals 2

    .prologue
    .line 59
    .line 7626
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->s:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7627
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->s:Landroid/widget/TextView;

    const-string v1, "\u8fd9\u91cc\u8fd8\u6ca1\u6709\u8bdd\u9898\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method static synthetic u(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/ushaqi/zhuishushenqi/adapter/G;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->v:Lcom/ushaqi/zhuishushenqi/adapter/G;

    return-object v0
.end method

.method static synthetic v(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic w(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/bX;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bX;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 266
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    .line 1274
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->find(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1275
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1276
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/TweetCache;

    .line 1277
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->getContent()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;

    .line 1278
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->a(Lcom/ushaqi/zhuishushenqi/model/TweetsResult;)V

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->b()V

    .line 270
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 124
    const v0, 0x7f0300ab

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 126
    const v0, 0x7f0c023c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->o:Landroid/widget/RelativeLayout;

    .line 127
    const v0, 0x7f0c023e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->t:Landroid/widget/RelativeLayout;

    .line 128
    const v0, 0x7f0c02d5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->u:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->u:Landroid/widget/TextView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/bK;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bK;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v0, 0x7f0c00dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->r:Landroid/view/View;

    .line 138
    const v0, 0x7f0c00ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->s:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0c00eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 140
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 142
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->p:Landroid/widget/ListView;

    .line 143
    const v0, 0x7f0300d5

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->f:Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->f:Landroid/view/View;

    const v2, 0x7f0c00ea

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->a()V

    .line 146
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->p:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 147
    const v0, 0x7f03011d

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->q:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->p:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 151
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/bL;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bL;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 170
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/adapter/G;-><init>(Landroid/app/Activity;ZZ)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->v:Lcom/ushaqi/zhuishushenqi/adapter/G;

    .line 171
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->v:Lcom/ushaqi/zhuishushenqi/adapter/G;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->w:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Ljava/util/List;)V

    .line 172
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->p:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->v:Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 119
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 649
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 1643
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->d:Lcom/ushaqi/zhuishushenqi/ui/post/bU;

    if-eqz v0, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->d:Lcom/ushaqi/zhuishushenqi/ui/post/bU;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/bU;->cancel(Z)Z

    .line 2638
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->c:Lcom/ushaqi/zhuishushenqi/ui/post/bV;

    if-eqz v0, :cond_1

    .line 2639
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->c:Lcom/ushaqi/zhuishushenqi/ui/post/bV;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/bV;->cancel(Z)Z

    .line 652
    :cond_1
    return-void
.end method

.method public onFollowChangeEvent(Lcom/ushaqi/zhuishushenqi/event/q;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 108
    return-void
.end method

.method public onLoginedEvent(Lcom/ushaqi/zhuishushenqi/event/t;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->b()V

    .line 102
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->a()V

    .line 103
    return-void
.end method
