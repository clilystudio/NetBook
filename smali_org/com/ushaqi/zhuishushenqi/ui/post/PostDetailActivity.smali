.class public Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;
.source "SourceFile"


# instance fields
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

.field private h:Lcom/ushaqi/zhuishushenqi/ui/post/cv;

.field private i:[Landroid/view/View;

.field private j:[Landroid/widget/ImageView;

.field private k:[Landroid/widget/ProgressBar;

.field private l:[Landroid/widget/TextView;

.field private m:[Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Lcom/ushaqi/zhuishushenqi/model/Account;

.field private r:Lcom/ushaqi/zhuishushenqi/model/Post;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:I

.field private v:Z

.field private w:Lcom/ushaqi/zhuishushenqi/widget/av;

.field private x:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x7

    .line 65
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->g:Ljava/util/List;

    .line 71
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->i:[Landroid/view/View;

    .line 72
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->j:[Landroid/widget/ImageView;

    .line 73
    new-array v0, v1, [Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->k:[Landroid/widget/ProgressBar;

    .line 74
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->l:[Landroid/widget/TextView;

    .line 75
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->m:[Landroid/widget/TextView;

    .line 85
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->t:Z

    .line 88
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->v:Z

    .line 359
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/cr;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/cr;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->w:Lcom/ushaqi/zhuishushenqi/widget/av;

    .line 402
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/cs;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/cs;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->x:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;I)I
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->u:I

    return p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "PostBookId"

    .line 92
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "post_type_key"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/Post;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/Post;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;Lcom/ushaqi/zhuishushenqi/model/Post;)Lcom/ushaqi/zhuishushenqi/model/Post;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/Post;

    return-object p1
.end method

.method private a(IZ)V
    .locals 12

    .prologue
    const/high16 v11, 0x42c80000

    const/4 v10, 0x7

    const/4 v2, 0x0

    .line 590
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/Post;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Post;->getVoteCount()I

    move-result v0

    .line 592
    if-nez p2, :cond_0

    .line 593
    add-int/lit8 v0, v0, 0x1

    .line 595
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->n:Landroid/widget/TextView;

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

    .line 596
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/Post;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Post;->getVotes()[Lcom/ushaqi/zhuishushenqi/model/Vote;

    move-result-object v3

    .line 597
    array-length v4, v3

    .line 598
    new-array v5, v10, [I

    .line 599
    new-array v6, v10, [F

    move v1, v2

    .line 601
    :goto_0
    if-ge v1, v10, :cond_2

    .line 602
    if-ge v1, v4, :cond_1

    .line 603
    aget-object v7, v3, v1

    invoke-virtual {v7}, Lcom/ushaqi/zhuishushenqi/model/Vote;->getCount()I

    move-result v7

    aput v7, v5, v1

    .line 601
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    :cond_1
    aput v2, v5, v1

    goto :goto_1

    .line 609
    :cond_2
    if-nez p2, :cond_3

    .line 610
    aget v1, v5, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v5, p1

    :cond_3
    move v1, v2

    .line 612
    :goto_2
    if-ge v1, v10, :cond_6

    .line 614
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->j:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 615
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->i:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 616
    if-ne v1, p1, :cond_4

    .line 617
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->j:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    const v7, 0x7f020228

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 622
    :goto_3
    if-eqz v0, :cond_5

    .line 625
    if-ge v1, v4, :cond_5

    .line 626
    aget v3, v5, v1

    int-to-float v3, v3

    int-to-float v7, v0

    div-float/2addr v3, v7

    aput v3, v6, v1

    .line 631
    :goto_4
    aget v3, v6, v1

    mul-float/2addr v3, v11

    const/high16 v7, 0x3f000000

    add-float/2addr v3, v7

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 632
    iget-object v7, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->l:[Landroid/widget/TextView;

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

    .line 633
    iget-object v7, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->m:[Landroid/widget/TextView;

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

    .line 634
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->k:[Landroid/widget/ProgressBar;

    aget-object v3, v3, v1

    aget v7, v6, v1

    mul-float/2addr v7, v11

    float-to-int v7, v7

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 612
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 619
    :cond_4
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->j:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    const v7, 0x7f020227

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 628
    :cond_5
    const/4 v3, 0x0

    aput v3, v6, v1

    goto :goto_4

    .line 636
    :cond_6
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;IZ)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;[Lcom/ushaqi/zhuishushenqi/model/Vote;)V
    .locals 13

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x2

    const v10, 0x7f020221

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    .line 1488
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 1489
    :cond_0
    :goto_0
    return-void

    .line 1492
    :cond_1
    new-array v4, v12, [I

    fill-array-data v4, :array_0

    .line 1494
    new-array v5, v12, [Landroid/view/View;

    .line 1495
    new-array v6, v12, [Landroid/widget/ImageView;

    .line 1496
    new-array v7, v12, [Landroid/widget/TextView;

    move v3, v2

    .line 1497
    :goto_1
    if-ge v3, v12, :cond_2

    .line 1498
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    aget v8, v4, v3

    invoke-virtual {v0, v8}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    aput-object v0, v5, v3

    .line 1499
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->i:[Landroid/view/View;

    aget-object v8, v5, v3

    const v9, 0x7f0c0364

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v0, v3

    .line 1500
    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->k:[Landroid/widget/ProgressBar;

    aget-object v0, v5, v3

    const v9, 0x7f0c0366

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    aput-object v0, v8, v3

    .line 1501
    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->l:[Landroid/widget/TextView;

    aget-object v0, v5, v3

    const v9, 0x7f0c0365

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v8, v3

    .line 1502
    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->m:[Landroid/widget/TextView;

    aget-object v0, v5, v3

    const v9, 0x7f0c0367

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v8, v3

    .line 1503
    aget-object v0, v5, v3

    const v8, 0x7f0c0360

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v6, v3

    .line 1505
    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->j:[Landroid/widget/ImageView;

    aget-object v0, v5, v3

    const v9, 0x7f0c0362

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v8, v3

    .line 1506
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->j:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1507
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->j:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1508
    aget-object v0, v5, v3

    const v8, 0x7f0c0361

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v7, v3

    .line 1497
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 1512
    :cond_2
    const/4 v0, 0x0

    .line 1513
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v3

    .line 1515
    if-eqz v3, :cond_b

    .line 1516
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/Post;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Post;->get_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/db/VoteRecord;->getVoteRecords(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1518
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 1522
    :goto_2
    array-length v5, p1

    .line 1523
    if-lez v5, :cond_4

    move v4, v1

    :goto_3
    iput-boolean v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->t:Z

    .line 1524
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v4, v5}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->a(I)V

    .line 1526
    packed-switch v5, :pswitch_data_0

    .line 1580
    :goto_4
    if-eqz v0, :cond_0

    .line 1581
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/VoteRecord;

    iget v0, v0, Lcom/ushaqi/zhuishushenqi/db/VoteRecord;->vote_item_index:I

    .line 1582
    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a(IZ)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 1518
    goto :goto_2

    :cond_4
    move v4, v2

    .line 1523
    goto :goto_3

    :pswitch_0
    move v4, v2

    .line 1528
    :goto_5
    if-ge v4, v5, :cond_5

    .line 1529
    aget-object v8, v7, v4

    aget-object v9, p1, v4

    invoke-virtual {v9}, Lcom/ushaqi/zhuishushenqi/model/Vote;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1528
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1531
    :cond_5
    aget-object v4, v6, v1

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :pswitch_1
    move v4, v2

    .line 1534
    :goto_6
    if-ge v4, v5, :cond_6

    .line 1535
    aget-object v8, v7, v4

    aget-object v9, p1, v4

    invoke-virtual {v9}, Lcom/ushaqi/zhuishushenqi/model/Vote;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1534
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1537
    :cond_6
    aget-object v4, v6, v1

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1538
    aget-object v4, v6, v11

    const v5, 0x7f020222

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :pswitch_2
    move v4, v2

    .line 1541
    :goto_7
    if-ge v4, v5, :cond_7

    .line 1542
    aget-object v8, v7, v4

    aget-object v9, p1, v4

    invoke-virtual {v9}, Lcom/ushaqi/zhuishushenqi/model/Vote;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1541
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1544
    :cond_7
    aget-object v4, v6, v1

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1545
    aget-object v4, v6, v11

    const v5, 0x7f020222

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1546
    const/4 v4, 0x3

    aget-object v4, v6, v4

    const v5, 0x7f020223

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :pswitch_3
    move v4, v2

    .line 1549
    :goto_8
    if-ge v4, v5, :cond_8

    .line 1550
    aget-object v8, v7, v4

    aget-object v9, p1, v4

    invoke-virtual {v9}, Lcom/ushaqi/zhuishushenqi/model/Vote;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1549
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1552
    :cond_8
    aget-object v4, v6, v1

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1553
    aget-object v4, v6, v11

    const v5, 0x7f020222

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1554
    const/4 v4, 0x3

    aget-object v4, v6, v4

    const v5, 0x7f020223

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1555
    const/4 v4, 0x4

    aget-object v4, v6, v4

    const v5, 0x7f020224

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    :pswitch_4
    move v4, v2

    .line 1558
    :goto_9
    if-ge v4, v5, :cond_9

    .line 1559
    aget-object v8, v7, v4

    aget-object v9, p1, v4

    invoke-virtual {v9}, Lcom/ushaqi/zhuishushenqi/model/Vote;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1558
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1561
    :cond_9
    aget-object v4, v6, v1

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1562
    aget-object v4, v6, v11

    const v5, 0x7f020222

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1563
    const/4 v4, 0x3

    aget-object v4, v6, v4

    const v5, 0x7f020223

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1564
    const/4 v4, 0x4

    aget-object v4, v6, v4

    const v5, 0x7f020224

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1565
    const/4 v4, 0x5

    aget-object v4, v6, v4

    const v5, 0x7f020225

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    :pswitch_5
    move v4, v2

    .line 1568
    :goto_a
    if-ge v4, v5, :cond_a

    .line 1569
    aget-object v8, v7, v4

    aget-object v9, p1, v4

    invoke-virtual {v9}, Lcom/ushaqi/zhuishushenqi/model/Vote;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1568
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1571
    :cond_a
    aget-object v4, v6, v1

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1572
    aget-object v4, v6, v11

    const v5, 0x7f020222

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1573
    const/4 v4, 0x3

    aget-object v4, v6, v4

    const v5, 0x7f020223

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1574
    const/4 v4, 0x4

    aget-object v4, v6, v4

    const v5, 0x7f020224

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1575
    const/4 v4, 0x5

    aget-object v4, v6, v4

    const v5, 0x7f020225

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1576
    const/4 v4, 0x6

    aget-object v4, v6, v4

    const v5, 0x7f020226

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    :cond_b
    move-object v3, v0

    move v0, v2

    goto/16 :goto_2

    .line 1492
    nop

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

    .line 1526
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

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    .line 2372
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/Post;

    if-eqz v0, :cond_0

    .line 2373
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->p:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2374
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/cv;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/cv;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->h:Lcom/ushaqi/zhuishushenqi/ui/post/cv;

    .line 2375
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->h:Lcom/ushaqi/zhuishushenqi/ui/post/cv;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/Post;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Post;->get_id()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/cv;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;Lcom/ushaqi/zhuishushenqi/model/Post;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 65
    .line 1421
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Post;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v1

    .line 1422
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0023

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 1423
    invoke-static {p0}, Landroid/support/design/widget/am;->m(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1424
    const v2, 0x7f02006e

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageResource(I)V

    .line 1428
    :goto_0
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/ct;

    invoke-direct {v2, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ct;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;Lcom/ushaqi/zhuishushenqi/model/Author;)V

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1434
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0040

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1435
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c02ff

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lv."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getLv()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1436
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0047

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Post;->getCreated()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1438
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0048

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1439
    const-string v2, "game"

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1440
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1444
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0029

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Post;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->isOfficial()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;->setLinkifyText(Ljava/lang/String;Z)V

    .line 1445
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0053

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->n:Landroid/widget/TextView;

    .line 1446
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->n:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5171"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Post;->getVoteCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4eba\u6295\u7968"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1447
    const v0, 0x7f0c028f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5171"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Post;->getCommentCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6761\u8bc4\u8bba"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1449
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c02fd

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1451
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->v:Z

    if-eqz v2, :cond_4

    .line 1452
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getGender()Ljava/lang/String;

    move-result-object v1

    .line 1453
    const-string v2, "male"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1454
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1455
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 1479
    :goto_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v1, 0x7f0c03d0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;->setPostId(Ljava/lang/String;)V

    .line 1480
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->a()V

    .line 1481
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->b()V

    .line 65
    return-void

    .line 1426
    :cond_0
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getScaleAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1442
    :cond_1
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Post;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1456
    :cond_2
    const-string v2, "female"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1457
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1458
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_2

    .line 1460
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1461
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_2

    .line 1464
    :cond_4
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1465
    const-string v2, "official"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1466
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1467
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 1469
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Post;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->s(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 1470
    :cond_5
    const-string v2, "doyen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1471
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1472
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_2

    .line 1474
    :cond_6
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Lcom/ushaqi/zhuishushenqi/adapter/z;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->f:Lcom/ushaqi/zhuishushenqi/adapter/z;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Lcom/ushaqi/zhuishushenqi/widget/av;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->w:Lcom/ushaqi/zhuishushenqi/widget/av;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->p:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)V
    .locals 3

    .prologue
    .line 65
    .line 3237
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->p:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3238
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->p:Landroid/view/View;

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3239
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->p:Landroid/view/View;

    const v1, 0x7f0c03a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3240
    const-string v1, "\u70b9\u51fb\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3241
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->p:Landroid/view/View;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/cq;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/cq;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->u:I

    return v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/Account;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->q:Lcom/ushaqi/zhuishushenqi/model/Account;

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/cv;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->h:Lcom/ushaqi/zhuishushenqi/ui/post/cv;

    return-object v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->p()Z

    move-result v0

    return v0
.end method

.method private p()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 705
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->q:Lcom/ushaqi/zhuishushenqi/model/Account;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->q:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 715
    :goto_0
    return v0

    .line 708
    :cond_0
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    .line 709
    if-nez v1, :cond_1

    .line 710
    const-string v0, "\u8bf7\u767b\u5f55\u540e\u518d\u64cd\u4f5c"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 711
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 712
    const/4 v0, 0x0

    goto :goto_0

    .line 714
    :cond_1
    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->q:Lcom/ushaqi/zhuishushenqi/model/Account;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 645
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/N;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/N;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/Post;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Post;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/util/N;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    return-void
.end method

.method protected final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->i()V

    .line 144
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/cw;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/cw;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/cw;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 145
    return-void
.end method

.method public final e(I)V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/Post;

    if-nez v0, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    if-nez p1, :cond_2

    .line 389
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/N;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/N;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->q:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/Post;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Post;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/util/N;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 721
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->f()V

    .line 722
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->o:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 723
    return-void
.end method

.method public final f(I)V
    .locals 7

    .prologue
    .line 653
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/Post;

    if-nez v0, :cond_0

    .line 654
    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 699
    :goto_0
    return-void

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/Post;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Post;->getBook()Lcom/ushaqi/zhuishushenqi/model/PostBook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PostBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 658
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/Post;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Post;->getBook()Lcom/ushaqi/zhuishushenqi/model/PostBook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PostBook;->getFullCover()Ljava/lang/String;

    move-result-object v4

    .line 659
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/Post;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Post;->getShareLink()Ljava/lang/String;

    move-result-object v3

    .line 662
    const-string v0, "ramble"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 663
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/Post;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Post;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 664
    const/4 v4, 0x0

    .line 666
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->t:Z

    if-eqz v0, :cond_1

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u6295\u7968\uff1a\u300c"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/Post;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Post;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u300d\uff0c\u6211\u6295\u4e86\uff0c\u86ee\u6709\u610f\u601d\u7684\uff0c\u4f60\u600e\u4e48\u770b\uff1f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 681
    :goto_1
    new-instance v6, Lcom/ushaqi/zhuishushenqi/ui/post/cu;

    invoke-direct {v6, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/cu;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)V

    move-object v0, p0

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/ushaqi/zhuishushenqi/util/T;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_0

    .line 669
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u8bdd\u9898\uff1a\u300c"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/Post;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Post;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u300d\uff0c\u86ee\u6709\u610f\u601d\u7684\uff0c\u4f60\u600e\u4e48\u770b\uff1f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 675
    :cond_2
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->t:Z

    if-eqz v0, :cond_3

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u7684\u6295\u7968\uff1a\u300c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/Post;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Post;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u300d\uff0c\u6211\u6295\u4e86\uff0c\u86ee\u6709\u610f\u601d\u7684\uff0c\u4f60\u600e\u4e48\u770b\uff1f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 678
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u7684\u8bdd\u9898\uff1a\u300c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->r:Lcom/ushaqi/zhuishushenqi/model/Post;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Post;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u300d\uff0c\u86ee\u6709\u610f\u601d\u7684\uff0c\u4f60\u600e\u4e48\u770b\uff1f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a:Ljava/lang/String;

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

    .line 318
    const/4 v0, 0x0

    .line 319
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->g:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->g:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostComment;

    .line 322
    :cond_0
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    .line 323
    new-instance v2, Lcom/ushaqi/zhuishushenqi/model/Author;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/model/Author;-><init>()V

    .line 324
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/Author;->setAvatar(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/Author;->setNickname(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getLv()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->setLv(I)V

    .line 329
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/PostComment;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;-><init>()V

    .line 330
    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V

    .line 331
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setContent(Ljava/lang/String;)V

    .line 332
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setCreated(Ljava/util/Date;)V

    .line 333
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->e:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    if-eqz v2, :cond_1

    .line 334
    new-instance v2, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;-><init>()V

    .line 335
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->e:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    invoke-interface {v3}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->getFloor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;->setFloor(I)V

    .line 336
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->e:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    invoke-interface {v3}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;->setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V

    .line 337
    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setReplyTo(Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;)V

    .line 339
    :cond_1
    if-eqz v0, :cond_2

    .line 340
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getFloor()I

    move-result v0

    .line 341
    add-int/lit8 v0, v0, 0x1

    .line 342
    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setFloor(I)V

    .line 347
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->g:Ljava/util/List;

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->f:Lcom/ushaqi/zhuishushenqi/adapter/z;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/z;->a(Ljava/util/Collection;)V

    .line 349
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    const/16 v1, 0x3c

    invoke-virtual {v0, v5, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->smoothScrollToPositionFromTop(II)V

    .line 354
    :goto_1
    return-void

    .line 344
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setFloor(I)V

    goto :goto_0

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v0, v5}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setSelection(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f030136

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a(I)V

    .line 99
    const-string v0, "\u8be6\u60c5"

    .line 1250
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->b(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a:Ljava/lang/String;

    .line 104
    const-string v0, "ramble"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->s:Ljava/lang/String;

    .line 112
    :goto_0
    const v0, 0x7f0c03ce

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->o:Landroid/view/View;

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a(Z)V

    .line 115
    const v0, 0x7f0c010f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    .line 117
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    .line 119
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0, v1, v4, v3}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 121
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c3

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;

    .line 123
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v1, v0, v4, v3}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 124
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;->a(Ljava/lang/String;)V

    .line 127
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011d

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->p:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addFooterView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->p:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/z;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/z;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->f:Lcom/ushaqi/zhuishushenqi/adapter/z;

    .line 132
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->f:Lcom/ushaqi/zhuishushenqi/adapter/z;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->j()V

    .line 136
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->b()V

    .line 138
    const-string v0, "community_user_gender_icon_toggle"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->v:Z

    .line 139
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PostBookId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "post_type_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->s:Ljava/lang/String;

    goto/16 :goto_0
.end method
