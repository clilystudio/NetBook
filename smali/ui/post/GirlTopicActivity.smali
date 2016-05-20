.class public Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;
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

.field private i:Lcom/ushaqi/zhuishushenqi/ui/post/bq;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Lcom/ushaqi/zhuishushenqi/model/Account;

.field private m:Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

.field private n:[Landroid/view/View;

.field private o:[Landroid/widget/ImageView;

.field private p:[Landroid/widget/ProgressBar;

.field private q:[Landroid/widget/TextView;

.field private r:[Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:I

.field private u:Z

.field private v:Landroid/view/View$OnClickListener;

.field private w:Lcom/ushaqi/zhuishushenqi/widget/av;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 60
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->h:Ljava/util/List;

    .line 74
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->n:[Landroid/view/View;

    .line 75
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->o:[Landroid/widget/ImageView;

    .line 76
    new-array v0, v1, [Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->p:[Landroid/widget/ProgressBar;

    .line 77
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->q:[Landroid/widget/TextView;

    .line 78
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->r:[Landroid/widget/TextView;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->u:Z

    .line 316
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/bm;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bm;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->v:Landroid/view/View$OnClickListener;

    .line 462
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/bo;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bo;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->w:Lcom/ushaqi/zhuishushenqi/widget/av;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;I)I
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->t:I

    return p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)Lcom/ushaqi/zhuishushenqi/model/GirlTopic;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->m:Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;Lcom/ushaqi/zhuishushenqi/model/GirlTopic;)Lcom/ushaqi/zhuishushenqi/model/GirlTopic;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->m:Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    return-object p1
.end method

.method private a(IZ)V
    .locals 12

    .prologue
    const/high16 v11, 0x42c80000

    const/4 v10, 0x7

    const/4 v2, 0x0

    .line 333
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->m:Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->getVoteCount()I

    move-result v0

    .line 335
    if-nez p2, :cond_0

    .line 336
    add-int/lit8 v0, v0, 0x1

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->s:Landroid/widget/TextView;

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

    .line 339
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->m:Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->getVotes()[Lcom/ushaqi/zhuishushenqi/model/Vote;

    move-result-object v3

    .line 340
    array-length v4, v3

    .line 341
    new-array v5, v10, [I

    .line 342
    new-array v6, v10, [F

    move v1, v2

    .line 344
    :goto_0
    if-ge v1, v10, :cond_2

    .line 345
    if-ge v1, v4, :cond_1

    .line 346
    aget-object v7, v3, v1

    invoke-virtual {v7}, Lcom/ushaqi/zhuishushenqi/model/Vote;->getCount()I

    move-result v7

    aput v7, v5, v1

    .line 344
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    :cond_1
    aput v2, v5, v1

    goto :goto_1

    .line 352
    :cond_2
    if-nez p2, :cond_3

    .line 353
    aget v1, v5, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v5, p1

    :cond_3
    move v1, v2

    .line 355
    :goto_2
    if-ge v1, v10, :cond_6

    .line 357
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->o:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 358
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->n:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 359
    if-ne v1, p1, :cond_4

    .line 360
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->o:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    const v7, 0x7f020228

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 365
    :goto_3
    if-eqz v0, :cond_5

    .line 368
    if-ge v1, v4, :cond_5

    .line 369
    aget v3, v5, v1

    int-to-float v3, v3

    int-to-float v7, v0

    div-float/2addr v3, v7

    aput v3, v6, v1

    .line 374
    :goto_4
    aget v3, v6, v1

    mul-float/2addr v3, v11

    const/high16 v7, 0x3f000000

    add-float/2addr v3, v7

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 375
    iget-object v7, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->q:[Landroid/widget/TextView;

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

    .line 376
    iget-object v7, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->r:[Landroid/widget/TextView;

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

    .line 377
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->p:[Landroid/widget/ProgressBar;

    aget-object v3, v3, v1

    aget v7, v6, v1

    mul-float/2addr v7, v11

    float-to-int v7, v7

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 362
    :cond_4
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->o:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    const v7, 0x7f020227

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 371
    :cond_5
    const/4 v3, 0x0

    aput v3, v6, v1

    goto :goto_4

    .line 379
    :cond_6
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;IZ)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;[Lcom/ushaqi/zhuishushenqi/model/Vote;)V
    .locals 13

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x2

    const v10, 0x7f020221

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    .line 2215
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 2216
    :cond_0
    :goto_0
    return-void

    .line 2219
    :cond_1
    new-array v4, v12, [I

    fill-array-data v4, :array_0

    .line 2221
    new-array v5, v12, [Landroid/view/View;

    .line 2222
    new-array v6, v12, [Landroid/widget/ImageView;

    .line 2223
    new-array v7, v12, [Landroid/widget/TextView;

    move v3, v2

    .line 2224
    :goto_1
    if-ge v3, v12, :cond_2

    .line 2225
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    aget v8, v4, v3

    invoke-virtual {v0, v8}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    aput-object v0, v5, v3

    .line 2226
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->n:[Landroid/view/View;

    aget-object v8, v5, v3

    const v9, 0x7f0c0364

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v0, v3

    .line 2227
    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->p:[Landroid/widget/ProgressBar;

    aget-object v0, v5, v3

    const v9, 0x7f0c0366

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    aput-object v0, v8, v3

    .line 2228
    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->q:[Landroid/widget/TextView;

    aget-object v0, v5, v3

    const v9, 0x7f0c0365

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v8, v3

    .line 2229
    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->r:[Landroid/widget/TextView;

    aget-object v0, v5, v3

    const v9, 0x7f0c0367

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v8, v3

    .line 2230
    aget-object v0, v5, v3

    const v8, 0x7f0c0360

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v6, v3

    .line 2232
    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->o:[Landroid/widget/ImageView;

    aget-object v0, v5, v3

    const v9, 0x7f0c0362

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v8, v3

    .line 2233
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->o:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2234
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->o:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2235
    aget-object v0, v5, v3

    const v8, 0x7f0c0361

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v7, v3

    .line 2224
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 2239
    :cond_2
    const/4 v0, 0x0

    .line 2240
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v3

    .line 2242
    if-eqz v3, :cond_a

    .line 2243
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->m:Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->get_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/db/VoteRecord;->getVoteRecords(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2245
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 2249
    :goto_2
    array-length v5, p1

    .line 2251
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v4, v5}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->a(I)V

    .line 2253
    packed-switch v5, :pswitch_data_0

    .line 2307
    :goto_3
    if-eqz v0, :cond_0

    .line 2308
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/VoteRecord;

    iget v0, v0, Lcom/ushaqi/zhuishushenqi/db/VoteRecord;->vote_item_index:I

    .line 2309
    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->a(IZ)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 2245
    goto :goto_2

    :pswitch_0
    move v4, v2

    .line 2255
    :goto_4
    if-ge v4, v5, :cond_4

    .line 2256
    aget-object v8, v7, v4

    aget-object v9, p1, v4

    invoke-virtual {v9}, Lcom/ushaqi/zhuishushenqi/model/Vote;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2255
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2258
    :cond_4
    aget-object v4, v6, v1

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :pswitch_1
    move v4, v2

    .line 2261
    :goto_5
    if-ge v4, v5, :cond_5

    .line 2262
    aget-object v8, v7, v4

    aget-object v9, p1, v4

    invoke-virtual {v9}, Lcom/ushaqi/zhuishushenqi/model/Vote;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2261
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2264
    :cond_5
    aget-object v4, v6, v1

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2265
    aget-object v4, v6, v11

    const v5, 0x7f020222

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :pswitch_2
    move v4, v2

    .line 2268
    :goto_6
    if-ge v4, v5, :cond_6

    .line 2269
    aget-object v8, v7, v4

    aget-object v9, p1, v4

    invoke-virtual {v9}, Lcom/ushaqi/zhuishushenqi/model/Vote;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2268
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2271
    :cond_6
    aget-object v4, v6, v1

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2272
    aget-object v4, v6, v11

    const v5, 0x7f020222

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2273
    const/4 v4, 0x3

    aget-object v4, v6, v4

    const v5, 0x7f020223

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :pswitch_3
    move v4, v2

    .line 2276
    :goto_7
    if-ge v4, v5, :cond_7

    .line 2277
    aget-object v8, v7, v4

    aget-object v9, p1, v4

    invoke-virtual {v9}, Lcom/ushaqi/zhuishushenqi/model/Vote;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2276
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 2279
    :cond_7
    aget-object v4, v6, v1

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2280
    aget-object v4, v6, v11

    const v5, 0x7f020222

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2281
    const/4 v4, 0x3

    aget-object v4, v6, v4

    const v5, 0x7f020223

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2282
    const/4 v4, 0x4

    aget-object v4, v6, v4

    const v5, 0x7f020224

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :pswitch_4
    move v4, v2

    .line 2285
    :goto_8
    if-ge v4, v5, :cond_8

    .line 2286
    aget-object v8, v7, v4

    aget-object v9, p1, v4

    invoke-virtual {v9}, Lcom/ushaqi/zhuishushenqi/model/Vote;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2285
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 2288
    :cond_8
    aget-object v4, v6, v1

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2289
    aget-object v4, v6, v11

    const v5, 0x7f020222

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2290
    const/4 v4, 0x3

    aget-object v4, v6, v4

    const v5, 0x7f020223

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2291
    const/4 v4, 0x4

    aget-object v4, v6, v4

    const v5, 0x7f020224

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2292
    const/4 v4, 0x5

    aget-object v4, v6, v4

    const v5, 0x7f020225

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :pswitch_5
    move v4, v2

    .line 2295
    :goto_9
    if-ge v4, v5, :cond_9

    .line 2296
    aget-object v8, v7, v4

    aget-object v9, p1, v4

    invoke-virtual {v9}, Lcom/ushaqi/zhuishushenqi/model/Vote;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2295
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 2298
    :cond_9
    aget-object v4, v6, v1

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2299
    aget-object v4, v6, v11

    const v5, 0x7f020222

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2300
    const/4 v4, 0x3

    aget-object v4, v6, v4

    const v5, 0x7f020223

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2301
    const/4 v4, 0x4

    aget-object v4, v6, v4

    const v5, 0x7f020224

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2302
    const/4 v4, 0x5

    aget-object v4, v6, v4

    const v5, 0x7f020225

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2303
    const/4 v4, 0x6

    aget-object v4, v6, v4

    const v5, 0x7f020226

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_a
    move-object v3, v0

    move v0, v2

    goto/16 :goto_2

    .line 2219
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

    .line 2253
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

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    .line 2475
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->m:Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    if-eqz v0, :cond_0

    .line 2476
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2477
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/bq;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/bq;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->i:Lcom/ushaqi/zhuishushenqi/ui/post/bq;

    .line 2478
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->i:Lcom/ushaqi/zhuishushenqi/ui/post/bq;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->m:Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->get_id()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/bq;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;Lcom/ushaqi/zhuishushenqi/model/GirlTopic;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 60
    .line 1488
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v1

    .line 1489
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0023

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 1490
    invoke-static {p0}, Landroid/support/design/widget/am;->m(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1491
    const v2, 0x7f02006e

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageResource(I)V

    .line 1495
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0040

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1496
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

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

    .line 1497
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0047

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->getCreated()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1498
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0048

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1499
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0029

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->isOfficial()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;->setLinkifyText(Ljava/lang/String;Z)V

    .line 1500
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0053

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->s:Landroid/widget/TextView;

    .line 1501
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->s:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5171"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->getVoteCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4eba\u6295\u7968"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1502
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->j:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5171"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->getCommentCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6761\u8bc4\u8bba"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1504
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c02fd

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1506
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->u:Z

    if-eqz v2, :cond_3

    .line 1507
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getGender()Ljava/lang/String;

    move-result-object v1

    .line 1508
    const-string v2, "male"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1509
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1510
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 1534
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v1, 0x7f0c03d0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;->setPostId(Ljava/lang/String;)V

    .line 1535
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->a()V

    .line 1536
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->b()V

    .line 60
    return-void

    .line 1493
    :cond_0
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getScaleAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1511
    :cond_1
    const-string v2, "female"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1512
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1513
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1

    .line 1515
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1516
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1

    .line 1519
    :cond_3
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1520
    const-string v2, "official"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1521
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1522
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 1524
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->s(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 1525
    :cond_4
    const-string v2, "doyen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1526
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1527
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1

    .line 1529
    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)Lcom/ushaqi/zhuishushenqi/adapter/z;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->g:Lcom/ushaqi/zhuishushenqi/adapter/z;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)Lcom/ushaqi/zhuishushenqi/widget/av;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->w:Lcom/ushaqi/zhuishushenqi/widget/av;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)V
    .locals 3

    .prologue
    .line 60
    .line 3445
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3446
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->f:Landroid/view/View;

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3447
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->f:Landroid/view/View;

    const v1, 0x7f0c03a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3448
    const-string v1, "\u70b9\u51fb\u52a0\u8f7d\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3449
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->f:Landroid/view/View;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/bn;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/bn;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->p()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)Lcom/ushaqi/zhuishushenqi/model/Account;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->l:Lcom/ushaqi/zhuishushenqi/model/Account;

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->t:I

    return v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bq;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->i:Lcom/ushaqi/zhuishushenqi/ui/post/bq;

    return-object v0
.end method

.method private p()Z
    .locals 1

    .prologue
    .line 649
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 650
    if-nez v0, :cond_0

    .line 651
    const-string v0, "\u8bf7\u767b\u5f55\u540e\u518d\u64cd\u4f5c"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 652
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->startActivity(Landroid/content/Intent;)V

    .line 653
    const/4 v0, 0x0

    .line 656
    :goto_0
    return v0

    .line 655
    :cond_0
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->l:Lcom/ushaqi/zhuishushenqi/model/Account;

    .line 656
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 642
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/N;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/N;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->m:Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/util/N;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    return-void
.end method

.method protected final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->i()V

    .line 126
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/br;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/br;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/br;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    return-void
.end method

.method public final e(I)V
    .locals 3

    .prologue
    .line 544
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->m:Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    if-nez v0, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 548
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 549
    :cond_2
    if-nez p1, :cond_0

    .line 550
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/N;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/N;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->l:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->m:Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/util/N;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 662
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->f()V

    .line 663
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 664
    return-void
.end method

.method public final f(I)V
    .locals 7

    .prologue
    .line 609
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->m:Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    if-nez v0, :cond_0

    .line 610
    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 633
    :goto_0
    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->m:Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u300c"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->m:Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u300d   \u6211\u5728\u8fd9\u53d1\u73b0\u4e86\u597d\u591a\u597d\u770b\u7684\u5c0f\u8bf4\uff0c\u4f60\u4e5f\u6765\u627e\u627e\u770b\u5427"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 615
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->m:Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GirlTopic;->getShareLink()Ljava/lang/String;

    move-result-object v3

    .line 616
    const/4 v4, 0x0

    new-instance v6, Lcom/ushaqi/zhuishushenqi/ui/post/bp;

    invoke-direct {v6, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bp;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;)V

    move-object v0, p0

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/ushaqi/zhuishushenqi/util/T;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 668
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->h()V

    .line 669
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 670
    return-void
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 674
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->i()V

    .line 675
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 676
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

    .line 563
    const/4 v0, 0x0

    .line 564
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->h:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 565
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->h:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostComment;

    .line 568
    :cond_0
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    .line 569
    new-instance v2, Lcom/ushaqi/zhuishushenqi/model/Author;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/model/Author;-><init>()V

    .line 570
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/Author;->setAvatar(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/Author;->setNickname(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getLv()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->setLv(I)V

    .line 574
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/PostComment;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;-><init>()V

    .line 575
    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V

    .line 576
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setContent(Ljava/lang/String;)V

    .line 577
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setCreated(Ljava/util/Date;)V

    .line 579
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->e:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    if-eqz v2, :cond_1

    .line 580
    new-instance v2, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;-><init>()V

    .line 581
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->e:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    invoke-interface {v3}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->getFloor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;->setFloor(I)V

    .line 582
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->e:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    invoke-interface {v3}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;->setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V

    .line 583
    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setReplyTo(Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;)V

    .line 585
    :cond_1
    if-eqz v0, :cond_2

    .line 586
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getFloor()I

    move-result v0

    .line 587
    add-int/lit8 v0, v0, 0x1

    .line 588
    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setFloor(I)V

    .line 594
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->h:Ljava/util/List;

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 595
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->g:Lcom/ushaqi/zhuishushenqi/adapter/z;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/z;->a(Ljava/util/Collection;)V

    .line 597
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 598
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    const/16 v1, 0x3c

    invoke-virtual {v0, v5, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->smoothScrollToPositionFromTop(II)V

    .line 602
    :goto_1
    return-void

    .line 590
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setFloor(I)V

    goto :goto_0

    .line 600
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v0, v5}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setSelection(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f030136

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->a(I)V

    .line 90
    const-string v0, "\u5973\u751f\u533a\u8bdd\u9898\u8be6\u60c5"

    .line 1250
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->b(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extraGirlTopicId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->a:Ljava/lang/String;

    .line 95
    const v0, 0x7f0c010f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    .line 97
    const v0, 0x7f0c03ce

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->k:Landroid/view/View;

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->a(Z)V

    .line 100
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    .line 102
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0, v1, v4, v3}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 104
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c3

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;

    .line 105
    const v1, 0x7f0c028f

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->j:Landroid/widget/TextView;

    .line 106
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v1, v0, v4, v3}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 107
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;->a(Ljava/lang/String;)V

    .line 110
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011d

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->f:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addFooterView(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/z;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/z;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->g:Lcom/ushaqi/zhuishushenqi/adapter/z;

    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->g:Lcom/ushaqi/zhuishushenqi/adapter/z;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->j()V

    .line 118
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->b()V

    .line 120
    const-string v0, "community_user_gender_icon_toggle"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicActivity;->u:Z

    .line 121
    return-void
.end method
