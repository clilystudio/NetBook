.class public Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;
.source "SourceFile"


# instance fields
.field private f:Landroid/view/View;

.field private g:Lcom/ushaqi/zhuishushenqi/adapter/z;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/PostComment;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/ushaqi/zhuishushenqi/ui/post/cD;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/ushaqi/zhuishushenqi/model/Account;

.field private m:Lcom/ushaqi/zhuishushenqi/model/Review;

.field private n:Z

.field private o:Lcom/ushaqi/zhuishushenqi/widget/SendView;

.field private p:Z

.field private q:Lcom/ushaqi/zhuishushenqi/widget/av;

.field private r:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->h:Ljava/util/List;

    .line 79
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->n:Z

    .line 82
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->p:Z

    .line 510
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/cz;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/cz;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->q:Lcom/ushaqi/zhuishushenqi/widget/av;

    .line 687
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/cB;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/cB;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->r:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;Lcom/ushaqi/zhuishushenqi/model/Review;)Lcom/ushaqi/zhuishushenqi/model/Review;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->m:Lcom/ushaqi/zhuishushenqi/model/Review;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)V
    .locals 1

    .prologue
    .line 66
    .line 3161
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->o:Lcom/ushaqi/zhuishushenqi/widget/SendView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SendView;->a()V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;Lcom/ushaqi/zhuishushenqi/model/Tweet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 66
    .line 5627
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    .line 5628
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0023

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 5629
    invoke-static {p0}, Landroid/support/design/widget/am;->m(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5630
    const v2, 0x7f02006e

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageResource(I)V

    .line 5634
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0040

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5635
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c02ff

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lv."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getLv()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5636
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0047

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getCreated()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5637
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0048

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5638
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0029

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;->setLinkifyText(Ljava/lang/String;Z)V

    .line 5639
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5171"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getCommented()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6761\u8bc4\u8bba"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5640
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c01e5

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getBook()Lcom/ushaqi/zhuishushenqi/model/Book;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Book;->getCover()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;)V

    .line 5641
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c01e6

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getBook()Lcom/ushaqi/zhuishushenqi/model/Book;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5643
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c01e7

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;

    .line 5644
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getScore()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->setValue(I)V

    .line 5646
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c02fd

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 5648
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->p:Z

    if-eqz v2, :cond_4

    .line 5649
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getGender()Ljava/lang/String;

    move-result-object v1

    .line 5650
    const-string v2, "male"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5651
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5652
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 5676
    :goto_1
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->n:Z

    if-nez v0, :cond_0

    .line 5677
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v1, 0x7f0c01e8

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->m:Lcom/ushaqi/zhuishushenqi/model/Review;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->setPost(Lcom/ushaqi/zhuishushenqi/model/Review;)V

    .line 5679
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v1, 0x7f0c01e4

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5680
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->a()V

    .line 5681
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->b()V

    .line 66
    return-void

    .line 5632
    :cond_1
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getFullAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5653
    :cond_2
    const-string v2, "female"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5654
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5655
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1

    .line 5657
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5658
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1

    .line 5661
    :cond_4
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getType()Ljava/lang/String;

    move-result-object v1

    .line 5662
    const-string v2, "official"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5663
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5664
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 5666
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->s(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 5667
    :cond_5
    const-string v2, "doyen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5668
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5669
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1

    .line 5671
    :cond_6
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    .line 3520
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->n:Z

    if-eqz v0, :cond_2

    .line 3543
    const/4 v0, 0x0

    .line 3544
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3545
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostComment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->get_id()Ljava/lang/String;

    move-result-object v0

    .line 3547
    :cond_0
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/cF;

    invoke-direct {v1, p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/cF;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;B)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->a:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/cF;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3521
    :cond_1
    :goto_0
    return-void

    .line 4531
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->m:Lcom/ushaqi/zhuishushenqi/model/Review;

    if-eqz v0, :cond_1

    .line 4532
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4533
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/cD;

    invoke-direct {v0, p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/cD;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->i:Lcom/ushaqi/zhuishushenqi/ui/post/cD;

    .line 4534
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->i:Lcom/ushaqi/zhuishushenqi/ui/post/cD;

    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->m:Lcom/ushaqi/zhuishushenqi/model/Review;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Review;->get_id()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/cD;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;Lcom/ushaqi/zhuishushenqi/model/Review;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 66
    .line 6556
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Review;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v1

    .line 6557
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0023

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 6558
    invoke-static {p0}, Landroid/support/design/widget/am;->m(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6559
    const v2, 0x7f02006e

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageResource(I)V

    .line 6569
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0040

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6570
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

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

    .line 6571
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0047

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Review;->getCreated()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6572
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0048

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Review;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6573
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0029

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Review;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->isOfficial()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;->setLinkifyText(Ljava/lang/String;Z)V

    .line 6574
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5171"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Review;->getCommentCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6761\u8bc4\u8bba"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6575
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c01e5

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Review;->getBook()Lcom/ushaqi/zhuishushenqi/model/ReviewBook;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/ReviewBook;->getFullCover()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;)V

    .line 6576
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c01e6

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Review;->getBook()Lcom/ushaqi/zhuishushenqi/model/ReviewBook;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/ReviewBook;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6578
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c01e7

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;

    .line 6579
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Review;->getRating()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->setValue(I)V

    .line 6581
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c02fd

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 6583
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->p:Z

    if-eqz v2, :cond_3

    .line 6585
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getGender()Ljava/lang/String;

    move-result-object v1

    .line 6586
    const-string v2, "male"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6587
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6588
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 6613
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v1, 0x7f0c01e8

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->m:Lcom/ushaqi/zhuishushenqi/model/Review;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostUsefulView;->setPost(Lcom/ushaqi/zhuishushenqi/model/Review;)V

    .line 6615
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v1, 0x7f0c01e4

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6616
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->a()V

    .line 6617
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->b()V

    .line 66
    return-void

    .line 6561
    :cond_0
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getScaleAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 6562
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/cA;

    invoke-direct {v2, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/cA;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;Lcom/ushaqi/zhuishushenqi/model/Author;)V

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 6589
    :cond_1
    const-string v2, "female"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6590
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6591
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1

    .line 6593
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6594
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1

    .line 6598
    :cond_3
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getType()Ljava/lang/String;

    move-result-object v1

    .line 6599
    const-string v2, "official"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6600
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6601
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 6603
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Review;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->s(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 6604
    :cond_4
    const-string v2, "doyen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6605
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6606
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1

    .line 6608
    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)Lcom/ushaqi/zhuishushenqi/widget/av;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->q:Lcom/ushaqi/zhuishushenqi/widget/av;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)Lcom/ushaqi/zhuishushenqi/adapter/z;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->g:Lcom/ushaqi/zhuishushenqi/adapter/z;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)V
    .locals 3

    .prologue
    .line 66
    .line 5493
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5494
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->f:Landroid/view/View;

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5495
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->f:Landroid/view/View;

    const v1, 0x7f0c03a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5496
    const-string v1, "\u70b9\u51fb\u52a0\u8f7d\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5497
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->f:Landroid/view/View;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/cy;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/cy;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)Lcom/ushaqi/zhuishushenqi/model/Review;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->m:Lcom/ushaqi/zhuishushenqi/model/Review;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/cD;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->i:Lcom/ushaqi/zhuishushenqi/ui/post/cD;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/ushaqi/zhuishushenqi/model/Account;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->n:Z

    if-nez v0, :cond_0

    .line 155
    invoke-super {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->a(Lcom/ushaqi/zhuishushenqi/model/Account;Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/cI;

    const v1, 0x7f05013e

    invoke-direct {v0, p0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/cI;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;Landroid/app/Activity;I)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/cI;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected final a(Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->n:Z

    if-nez v0, :cond_1

    .line 136
    invoke-super {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->a(Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;Ljava/lang/String;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->g(Ljava/lang/String;)V

    .line 2384
    invoke-static {p0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x200

    if-le v1, v2, :cond_2

    .line 144
    const v0, 0x7f0500c1

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 147
    :cond_2
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/cH;

    const v2, 0x7f05013e

    invoke-direct {v1, p0, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/cH;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;Landroid/app/Activity;I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 148
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-interface {p1}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->getCommentId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object p2, v2, v0

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/cH;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 755
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/N;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/N;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->m:Lcom/ushaqi/zhuishushenqi/model/Review;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Review;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/util/N;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method protected final b()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 323
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->i()V

    .line 324
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->n:Z

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/cE;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/cE;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;B)V

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/cE;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/cG;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/cG;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;B)V

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/cG;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final e(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 736
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->m:Lcom/ushaqi/zhuishushenqi/model/Review;

    if-nez v1, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    if-ne p1, v0, :cond_2

    .line 740
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 741
    :cond_2
    if-nez p1, :cond_0

    .line 2762
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    .line 2763
    if-nez v1, :cond_3

    .line 2764
    const-string v0, "\u8bf7\u767b\u5f55\u540e\u518d\u64cd\u4f5c"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2765
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 2766
    const/4 v0, 0x0

    .line 742
    :goto_1
    if-eqz v0, :cond_0

    .line 743
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/N;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/N;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->l:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->m:Lcom/ushaqi/zhuishushenqi/model/Review;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Review;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/util/N;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2768
    :cond_3
    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->l:Lcom/ushaqi/zhuishushenqi/model/Account;

    goto :goto_1
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 775
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->f()V

    .line 776
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 777
    return-void
.end method

.method public final f(I)V
    .locals 7

    .prologue
    .line 706
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->m:Lcom/ushaqi/zhuishushenqi/model/Review;

    if-nez v0, :cond_0

    .line 707
    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 732
    :goto_0
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->m:Lcom/ushaqi/zhuishushenqi/model/Review;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Review;->getBook()Lcom/ushaqi/zhuishushenqi/model/ReviewBook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ReviewBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 711
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->m:Lcom/ushaqi/zhuishushenqi/model/Review;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Review;->getBook()Lcom/ushaqi/zhuishushenqi/model/ReviewBook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ReviewBook;->getFullCover()Ljava/lang/String;

    move-result-object v4

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u7684\u4e66\u8bc4\uff1a\u300c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->m:Lcom/ushaqi/zhuishushenqi/model/Review;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Review;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u300d\uff0c \u697c\u4e3b\u4f60\u5199\u7684\u8fd9\u4e48\u8d5e\uff0c\u4f60\u7684\u5c0f\u4f19\u4f34\u77e5\u9053\u5417\uff1f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 713
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->m:Lcom/ushaqi/zhuishushenqi/model/Review;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Review;->getShareLink()Ljava/lang/String;

    move-result-object v3

    .line 714
    new-instance v6, Lcom/ushaqi/zhuishushenqi/ui/post/cC;

    invoke-direct {v6, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/cC;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)V

    move-object v0, p0

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/ushaqi/zhuishushenqi/util/T;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 781
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->h()V

    .line 782
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 783
    return-void
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 787
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->i()V

    .line 788
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 789
    return-void
.end method

.method protected final o()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 343
    const/4 v0, 0x0

    .line 344
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->h:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->h:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostComment;

    .line 347
    :cond_0
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    .line 348
    new-instance v2, Lcom/ushaqi/zhuishushenqi/model/Author;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/model/Author;-><init>()V

    .line 349
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/Author;->setAvatar(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/Author;->setNickname(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getLv()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->setLv(I)V

    .line 353
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/PostComment;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;-><init>()V

    .line 354
    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V

    .line 355
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setContent(Ljava/lang/String;)V

    .line 356
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setCreated(Ljava/util/Date;)V

    .line 358
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->e:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    if-eqz v2, :cond_1

    .line 359
    new-instance v2, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;-><init>()V

    .line 360
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->e:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    invoke-interface {v3}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->getFloor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;->setFloor(I)V

    .line 361
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->e:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    invoke-interface {v3}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;->setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V

    .line 362
    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setReplyTo(Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;)V

    .line 364
    :cond_1
    if-eqz v0, :cond_2

    .line 365
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getFloor()I

    move-result v0

    .line 366
    add-int/lit8 v0, v0, 0x1

    .line 367
    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setFloor(I)V

    .line 372
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->h:Ljava/util/List;

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->g:Lcom/ushaqi/zhuishushenqi/adapter/z;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/z;->a(Ljava/util/Collection;)V

    .line 374
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 375
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    const/16 v1, 0x3c

    invoke-virtual {v0, v5, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->smoothScrollToPositionFromTop(II)V

    .line 379
    :goto_1
    return-void

    .line 369
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setFloor(I)V

    goto :goto_0

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v0, v5}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setSelection(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v2, 0x7f0c01e8

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f030136

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->a(I)V

    .line 88
    const-string v0, "\u4e66\u8bc4\u8be6\u60c5"

    .line 1250
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->b(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_TYPE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    const-string v1, "BOOK_COMMENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->n:Z

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extraReviewId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->a:Ljava/lang/String;

    .line 96
    const v0, 0x7f0c010f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    .line 98
    const v0, 0x7f0c03ce

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->j:Landroid/view/View;

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->a(Z)V

    .line 101
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    .line 102
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    .line 2057
    const v1, 0x7f0c01e4

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    .line 2064
    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    .line 2071
    const v1, 0x7f0c03d0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->n:Z

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->a(Z)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0, v1, v5, v3}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 112
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c3

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;

    .line 113
    const v1, 0x7f0c028f

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->k:Landroid/widget/TextView;

    .line 114
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v1, v0, v5, v3}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 115
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;->a(Ljava/lang/String;)V

    .line 118
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011d

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->f:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addFooterView(Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 122
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/z;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/z;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->g:Lcom/ushaqi/zhuishushenqi/adapter/z;

    .line 123
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->g:Lcom/ushaqi/zhuishushenqi/adapter/z;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    const v0, 0x7f0c0473

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/SendView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->o:Lcom/ushaqi/zhuishushenqi/widget/SendView;

    .line 127
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->j()V

    .line 128
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->b()V

    .line 130
    const-string v0, "community_user_gender_icon_toggle"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->p:Z

    .line 131
    return-void
.end method
