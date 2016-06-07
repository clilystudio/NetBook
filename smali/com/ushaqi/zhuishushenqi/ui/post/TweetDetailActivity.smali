.class public Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;
.source "SourceFile"


# instance fields
.field private A:Lcom/ushaqi/zhuishushenqi/widget/av;

.field private f:Lcom/ushaqi/zhuishushenqi/adapter/z;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/PostComment;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/ushaqi/zhuishushenqi/ui/post/dy;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;

.field private l:Landroid/widget/TextView;

.field private m:[Landroid/view/View;

.field private n:[Landroid/widget/ImageView;

.field private o:[Landroid/widget/ProgressBar;

.field private p:[Landroid/widget/TextView;

.field private q:[Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Lcom/ushaqi/zhuishushenqi/model/Account;

.field private t:Lcom/ushaqi/zhuishushenqi/model/TweetResult;

.field private u:Ljava/lang/String;

.field private v:Lcom/ushaqi/zhuishushenqi/widget/SendView;

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 68
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->g:Ljava/util/List;

    .line 83
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->m:[Landroid/view/View;

    .line 84
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->n:[Landroid/widget/ImageView;

    .line 85
    new-array v0, v1, [Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->o:[Landroid/widget/ProgressBar;

    .line 86
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->p:[Landroid/widget/TextView;

    .line 87
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->q:[Landroid/widget/TextView;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->y:Z

    .line 105
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/dt;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dt;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->z:Landroid/view/View$OnClickListener;

    .line 763
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/dv;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dv;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->A:Lcom/ushaqi/zhuishushenqi/widget/av;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->w:I

    return p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "TWEET_ID"

    .line 120
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "TWEET_ID"

    .line 125
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "TWEET_TYPE"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;Lcom/ushaqi/zhuishushenqi/model/TweetResult;)Lcom/ushaqi/zhuishushenqi/model/TweetResult;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->t:Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->x:Ljava/lang/String;

    return-object p1
.end method

.method private a(IZ)V
    .locals 12

    .prologue
    const/high16 v11, 0x42c80000    # 100.0f

    const/4 v10, 0x7

    const/4 v2, 0x0

    .line 539
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->t:Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getVoteCount()I

    move-result v0

    .line 541
    if-nez p2, :cond_0

    .line 542
    add-int/lit8 v0, v0, 0x1

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->r:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5171"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4eba\u6295\u7968"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->t:Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getVotes()[Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;

    move-result-object v3

    .line 546
    array-length v4, v3

    .line 547
    new-array v5, v10, [I

    .line 548
    new-array v6, v10, [F

    move v1, v2

    .line 550
    :goto_0
    if-ge v1, v10, :cond_2

    .line 551
    if-ge v1, v4, :cond_1

    .line 552
    aget-object v7, v3, v1

    iget v7, v7, Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;->count:I

    aput v7, v5, v1

    .line 550
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 554
    :cond_1
    aput v2, v5, v1

    goto :goto_1

    .line 558
    :cond_2
    if-nez p2, :cond_3

    .line 559
    aget v1, v5, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v5, p1

    :cond_3
    move v1, v2

    .line 561
    :goto_2
    if-ge v1, v10, :cond_6

    .line 563
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->n:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 564
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->m:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 565
    if-ne v1, p1, :cond_4

    .line 566
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->n:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    const v7, 0x7f020228

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 571
    :goto_3
    if-eqz v0, :cond_5

    .line 574
    if-ge v1, v4, :cond_5

    .line 575
    aget v3, v5, v1

    int-to-float v3, v3

    int-to-float v7, v0

    div-float/2addr v3, v7

    aput v3, v6, v1

    .line 580
    :goto_4
    aget v3, v6, v1

    mul-float/2addr v3, v11

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v3, v7

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 581
    iget-object v7, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->p:[Landroid/widget/TextView;

    aget-object v7, v7, v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget v9, v5, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u7968"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v7, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->q:[Landroid/widget/TextView;

    aget-object v7, v7, v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "%"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->o:[Landroid/widget/ProgressBar;

    aget-object v3, v3, v1

    aget v7, v6, v1

    mul-float/2addr v7, v11

    float-to-int v7, v7

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 568
    :cond_4
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->n:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    const v7, 0x7f020227

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 577
    :cond_5
    const/4 v3, 0x0

    aput v3, v6, v1

    goto :goto_4

    .line 585
    :cond_6
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;IZ)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;[Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;)V
    .locals 13

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x2

    const v10, 0x7f020221

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    .line 4440
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 4441
    :cond_0
    :goto_0
    return-void

    .line 4444
    :cond_1
    new-array v4, v12, [I

    fill-array-data v4, :array_0

    .line 4446
    new-array v5, v12, [Landroid/view/View;

    .line 4447
    new-array v6, v12, [Landroid/widget/ImageView;

    .line 4448
    new-array v7, v12, [Landroid/widget/TextView;

    move v3, v2

    .line 4449
    :goto_1
    if-ge v3, v12, :cond_2

    .line 4450
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    aget v8, v4, v3

    invoke-virtual {v0, v8}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    aput-object v0, v5, v3

    .line 4451
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->m:[Landroid/view/View;

    aget-object v8, v5, v3

    const v9, 0x7f0c0364

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v0, v3

    .line 4452
    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->o:[Landroid/widget/ProgressBar;

    aget-object v0, v5, v3

    const v9, 0x7f0c0366

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    aput-object v0, v8, v3

    .line 4453
    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->p:[Landroid/widget/TextView;

    aget-object v0, v5, v3

    const v9, 0x7f0c0365

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v8, v3

    .line 4454
    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->q:[Landroid/widget/TextView;

    aget-object v0, v5, v3

    const v9, 0x7f0c0367

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v8, v3

    .line 4455
    aget-object v0, v5, v3

    const v8, 0x7f0c0360

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v6, v3

    .line 4457
    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->n:[Landroid/widget/ImageView;

    aget-object v0, v5, v3

    const v9, 0x7f0c0362

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v8, v3

    .line 4458
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->n:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 4459
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->n:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4460
    aget-object v0, v5, v3

    const v8, 0x7f0c0361

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v7, v3

    .line 4449
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 4464
    :cond_2
    const/4 v0, 0x0

    .line 4465
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v3

    .line 4467
    if-eqz v3, :cond_a

    .line 4468
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->t:Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/db/VoteRecord;->getVoteRecords(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 4470
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 4474
    :goto_2
    array-length v5, p1

    .line 4476
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v4, v5}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->a(I)V

    .line 4478
    packed-switch v5, :pswitch_data_0

    .line 4532
    :goto_3
    if-eqz v0, :cond_0

    .line 4533
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/VoteRecord;

    iget v0, v0, Lcom/ushaqi/zhuishushenqi/db/VoteRecord;->vote_item_index:I

    .line 4534
    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->a(IZ)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 4470
    goto :goto_2

    :pswitch_0
    move v4, v2

    .line 4480
    :goto_4
    if-ge v4, v5, :cond_4

    .line 4481
    aget-object v8, v7, v4

    aget-object v9, p1, v4

    iget-object v9, v9, Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;->content:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4480
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 4483
    :cond_4
    aget-object v4, v6, v1

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :pswitch_1
    move v4, v2

    .line 4486
    :goto_5
    if-ge v4, v5, :cond_5

    .line 4487
    aget-object v8, v7, v4

    aget-object v9, p1, v4

    iget-object v9, v9, Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;->content:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4486
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 4489
    :cond_5
    aget-object v4, v6, v1

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4490
    aget-object v4, v6, v11

    const v5, 0x7f020222

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :pswitch_2
    move v4, v2

    .line 4493
    :goto_6
    if-ge v4, v5, :cond_6

    .line 4494
    aget-object v8, v7, v4

    aget-object v9, p1, v4

    iget-object v9, v9, Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;->content:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4493
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 4496
    :cond_6
    aget-object v4, v6, v1

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4497
    aget-object v4, v6, v11

    const v5, 0x7f020222

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4498
    const/4 v4, 0x3

    aget-object v4, v6, v4

    const v5, 0x7f020223

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :pswitch_3
    move v4, v2

    .line 4501
    :goto_7
    if-ge v4, v5, :cond_7

    .line 4502
    aget-object v8, v7, v4

    aget-object v9, p1, v4

    iget-object v9, v9, Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;->content:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4501
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 4504
    :cond_7
    aget-object v4, v6, v1

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4505
    aget-object v4, v6, v11

    const v5, 0x7f020222

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4506
    const/4 v4, 0x3

    aget-object v4, v6, v4

    const v5, 0x7f020223

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4507
    const/4 v4, 0x4

    aget-object v4, v6, v4

    const v5, 0x7f020224

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :pswitch_4
    move v4, v2

    .line 4510
    :goto_8
    if-ge v4, v5, :cond_8

    .line 4511
    aget-object v8, v7, v4

    aget-object v9, p1, v4

    iget-object v9, v9, Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;->content:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4510
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 4513
    :cond_8
    aget-object v4, v6, v1

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4514
    aget-object v4, v6, v11

    const v5, 0x7f020222

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4515
    const/4 v4, 0x3

    aget-object v4, v6, v4

    const v5, 0x7f020223

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4516
    const/4 v4, 0x4

    aget-object v4, v6, v4

    const v5, 0x7f020224

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4517
    const/4 v4, 0x5

    aget-object v4, v6, v4

    const v5, 0x7f020225

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :pswitch_5
    move v4, v2

    .line 4520
    :goto_9
    if-ge v4, v5, :cond_9

    .line 4521
    aget-object v8, v7, v4

    aget-object v9, p1, v4

    iget-object v9, v9, Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;->content:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4520
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 4523
    :cond_9
    aget-object v4, v6, v1

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4524
    aget-object v4, v6, v11

    const v5, 0x7f020222

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4525
    const/4 v4, 0x3

    aget-object v4, v6, v4

    const v5, 0x7f020223

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4526
    const/4 v4, 0x4

    aget-object v4, v6, v4

    const v5, 0x7f020224

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4527
    const/4 v4, 0x5

    aget-object v4, v6, v4

    const v5, 0x7f020225

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4528
    const/4 v4, 0x6

    aget-object v4, v6, v4

    const v5, 0x7f020226

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_a
    move-object v3, v0

    move v0, v2

    goto/16 :goto_2

    .line 4444
    :array_0
    .array-data 4
        0x7f0c004c
        0x7f0c004d
        0x7f0c004e
        0x7f0c004f
        0x7f0c0050
        0x7f0c0051
        0x7f0c0052
    .end array-data

    .line 4478
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Z
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->q()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/Account;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->s:Lcom/ushaqi/zhuishushenqi/model/Account;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->u:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;Lcom/ushaqi/zhuishushenqi/model/TweetResult;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 68
    .line 3824
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v2

    .line 3825
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v3

    .line 3826
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 3827
    invoke-static {p0}, Landroid/support/design/widget/am;->m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3828
    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageResource(I)V

    .line 3832
    :goto_0
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/dw;

    invoke-direct {v1, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/dw;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;Lcom/ushaqi/zhuishushenqi/model/User;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3841
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v1, 0x7f0c0040

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3842
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v1, 0x7f0c02ff

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "lv."

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/User;->getLv()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3843
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v1, 0x7f0c0047

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getCreated()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3845
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v1, 0x7f0c0048

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3846
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v4, 0x7f0c0053

    invoke-virtual {v1, v4}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->r:Landroid/widget/TextView;

    .line 3847
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->r:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5171"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->t:Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getVoteCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u4eba\u6295\u7968"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3848
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->u:Ljava/lang/String;

    const-string v4, "ARTICLE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3849
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3850
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3855
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v1, 0x7f0c0029

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/User;->isOfficial()Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;->setLinkifyText(Ljava/lang/String;Z)V

    .line 3856
    const v0, 0x7f0c028f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u5171"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->t:Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getCommented()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u6761\u8bc4\u8bba"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3858
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v1, 0x7f0c02fd

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3860
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->y:Z

    if-eqz v1, :cond_4

    .line 3862
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/User;->getGender()Ljava/lang/String;

    move-result-object v1

    .line 3863
    const-string v2, "male"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3864
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3865
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 3889
    :goto_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v1, 0x7f0c03d0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;->setPostId(Ljava/lang/String;)V

    .line 3890
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->a()V

    .line 3891
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->b()V

    .line 68
    return-void

    .line 3830
    :cond_0
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/User;->getFullAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3852
    :cond_1
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 3866
    :cond_2
    const-string v2, "female"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3867
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3868
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_2

    .line 3870
    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3871
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_2

    .line 3875
    :cond_4
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/User;->getType()Ljava/lang/String;

    move-result-object v1

    .line 3876
    const-string v2, "official"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3877
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3878
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 3880
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->s(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 3881
    :cond_5
    const-string v2, "doyen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3882
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3883
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_2

    .line 3885
    :cond_6
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/TweetResult;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->t:Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->w:I

    return v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->p()V

    return-void
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)V
    .locals 1

    .prologue
    .line 68
    .line 3376
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->v:Lcom/ushaqi/zhuishushenqi/widget/SendView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SendView;->a()V

    .line 68
    return-void
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    .line 4776
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->t:Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    if-eqz v0, :cond_0

    .line 4777
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4778
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4779
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/dy;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/dy;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->h:Lcom/ushaqi/zhuishushenqi/ui/post/dy;

    .line 4780
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->h:Lcom/ushaqi/zhuishushenqi/ui/post/dy;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->t:Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/dy;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)V
    .locals 2

    .prologue
    .line 68
    .line 5653
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5654
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->t:Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/model/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5655
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->p()V

    .line 68
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Lcom/ushaqi/zhuishushenqi/widget/av;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->A:Lcom/ushaqi/zhuishushenqi/widget/av;

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Lcom/ushaqi/zhuishushenqi/adapter/z;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->f:Lcom/ushaqi/zhuishushenqi/adapter/z;

    return-object v0
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/dy;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->h:Lcom/ushaqi/zhuishushenqi/ui/post/dy;

    return-object v0
.end method

.method static synthetic n(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 68
    .line 5786
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->t:Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    if-eqz v0, :cond_1

    .line 5787
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5788
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/dy;

    invoke-direct {v0, p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/dy;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->h:Lcom/ushaqi/zhuishushenqi/ui/post/dy;

    .line 5789
    const-string v0, ""

    .line 5790
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5791
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostComment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->get_id()Ljava/lang/String;

    move-result-object v0

    .line 5793
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->h:Lcom/ushaqi/zhuishushenqi/ui/post/dy;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->t:Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/dy;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    :cond_1
    return-void
.end method

.method private p()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 664
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->k:Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;->setAgree(Z)V

    .line 665
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02025f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 666
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 667
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 668
    return-void
.end method

.method private q()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 947
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->s:Lcom/ushaqi/zhuishushenqi/model/Account;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->s:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 957
    :goto_0
    return v0

    .line 950
    :cond_0
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    .line 951
    if-nez v1, :cond_1

    .line 952
    const-string v0, "\u8bf7\u767b\u5f55\u540e\u518d\u64cd\u4f5c"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 953
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 954
    const/4 v0, 0x0

    goto :goto_0

    .line 956
    :cond_1
    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->s:Lcom/ushaqi/zhuishushenqi/model/Account;

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/ushaqi/zhuishushenqi/model/Account;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 215
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/dD;

    const v1, 0x7f05013e

    invoke-direct {v0, p0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/dD;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;Landroid/app/Activity;I)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/dD;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 216
    return-void
.end method

.method protected final a(Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 200
    invoke-virtual {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->g(Ljava/lang/String;)V

    .line 2384
    invoke-static {p0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 202
    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x200

    if-le v1, v2, :cond_1

    .line 206
    const v0, 0x7f0500c1

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 209
    :cond_1
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/dB;

    const v2, 0x7f05013e

    invoke-direct {v1, p0, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/dB;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;Landroid/app/Activity;I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 210
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-interface {p1}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->getCommentId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object p2, v2, v0

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/dB;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 902
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/N;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/N;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->t:Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ushaqi/zhuishushenqi/util/N;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 903
    return-void
.end method

.method protected final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 381
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->i()V

    .line 382
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/dz;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/dz;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/dz;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 383
    return-void
.end method

.method public final e(I)V
    .locals 3

    .prologue
    .line 802
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->t:Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    if-nez v0, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    if-nez p1, :cond_2

    .line 807
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/N;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/N;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->s:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->t:Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/util/N;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 812
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 813
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 963
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->f()V

    .line 964
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 965
    return-void
.end method

.method public final f(I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 910
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->t:Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    if-nez v0, :cond_0

    .line 911
    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 941
    :goto_0
    return-void

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->t:Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v0

    .line 919
    const-string v1, "ARTICLE"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 920
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 922
    :goto_1
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getShareLinkUrl()Ljava/lang/String;

    move-result-object v3

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u52a8\u6001\uff1a\u300c"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u300d\uff0c\u86ee\u6709\u610f\u601d\u7684\uff0c\u4f60\u600e\u4e48\u770b\uff1f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 924
    new-instance v6, Lcom/ushaqi/zhuishushenqi/ui/post/dx;

    invoke-direct {v6, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dx;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)V

    move-object v0, p0

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/ushaqi/zhuishushenqi/util/T;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_0

    :cond_1
    move-object v1, v4

    goto :goto_1
.end method

.method public final j()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final o()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 720
    const/4 v0, 0x0

    .line 721
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->g:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 722
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->g:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostComment;

    .line 724
    :cond_0
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    .line 725
    new-instance v2, Lcom/ushaqi/zhuishushenqi/model/Author;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/model/Author;-><init>()V

    .line 726
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/Author;->setAvatar(Ljava/lang/String;)V

    .line 727
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/Author;->setNickname(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getLv()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->setLv(I)V

    .line 731
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/PostComment;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;-><init>()V

    .line 732
    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V

    .line 734
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setContent(Ljava/lang/String;)V

    .line 735
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setCreated(Ljava/util/Date;)V

    .line 736
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->e:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    if-eqz v2, :cond_1

    .line 737
    new-instance v2, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;-><init>()V

    .line 738
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->e:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    invoke-interface {v3}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->getFloor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;->setFloor(I)V

    .line 739
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->e:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    invoke-interface {v3}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;->setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V

    .line 740
    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setReplyTo(Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;)V

    .line 742
    :cond_1
    if-eqz v0, :cond_2

    .line 743
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getFloor()I

    move-result v0

    .line 744
    add-int/lit8 v0, v0, 0x1

    .line 745
    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setFloor(I)V

    .line 749
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->x:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->set_id(Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->g:Ljava/util/List;

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 752
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->f:Lcom/ushaqi/zhuishushenqi/adapter/z;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/z;->a(Ljava/util/Collection;)V

    .line 753
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 754
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    const/16 v1, 0x3c

    invoke-virtual {v0, v5, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->smoothScrollToPositionFromTop(II)V

    .line 758
    :goto_1
    return-void

    .line 747
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setFloor(I)V

    goto :goto_0

    .line 756
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v0, v5}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setSelection(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const v0, 0x7f030136

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->a(I)V

    .line 132
    const-string v0, "\u52a8\u6001\u8be6\u60c5"

    .line 1250
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->b(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TWEET_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->a:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TWEET_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->u:Ljava/lang/String;

    .line 138
    const v0, 0x7f0c03ce

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->i:Landroid/view/View;

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->a(Z)V

    .line 141
    const v0, 0x7f0c010f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    .line 142
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    .line 143
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->a(Z)V

    .line 145
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0, v1, v4, v3}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 147
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v1, 0x7f0c03d0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->k:Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;

    .line 148
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v1, 0x7f0c03d1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->l:Landroid/widget/TextView;

    .line 149
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02025d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 151
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->l:Landroid/widget/TextView;

    const-string v1, "\u8f6c\u53d1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->k:Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/du;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/du;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c3

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;

    .line 174
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v1, v0, v4, v3}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 175
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;->a(Ljava/lang/String;)V

    .line 178
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011d

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->j:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addFooterView(Landroid/view/View;)V

    .line 180
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/z;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/z;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->f:Lcom/ushaqi/zhuishushenqi/adapter/z;

    .line 183
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->f:Lcom/ushaqi/zhuishushenqi/adapter/z;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    const v0, 0x7f0c0473

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/SendView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->v:Lcom/ushaqi/zhuishushenqi/widget/SendView;

    .line 188
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->b()V

    .line 190
    const-string v0, "community_user_gender_icon_toggle"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->y:Z

    .line 191
    return-void
.end method
