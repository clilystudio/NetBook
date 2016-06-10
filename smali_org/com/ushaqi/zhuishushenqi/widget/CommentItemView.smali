.class public Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/ushaqi/zhuishushenqi/api/b;

.field private h:Lcom/ushaqi/zhuishushenqi/model/PostComment;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->b:Z

    .line 44
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->c:Z

    .line 48
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->g:Lcom/ushaqi/zhuishushenqi/api/b;

    .line 54
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    instance-of v0, p1, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be used in TopicDetailActivity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    check-cast p1, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->d:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    .line 59
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->setHorizontalScrollBarEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->d:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a:I

    .line 63
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;)Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->d:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    return-object v0
.end method

.method private static a(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 231
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 232
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 2

    .prologue
    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p2, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u540c\u611f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8235
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    return-void

    .line 227
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;Lcom/ushaqi/zhuishushenqi/model/PostComment;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    .line 9274
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->d:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030139

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 9275
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Author;->getNickname()Ljava/lang/String;

    move-result-object v2

    .line 9276
    const v0, 0x7f0c03d4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9277
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 9278
    const v0, 0x7f0c03d5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9281
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->get_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9282
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->d:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-direct {v0, v1}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 10036
    iput-object v2, v0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 10046
    iput-object v3, v0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 9284
    const-string v1, "\u56de\u590dTA"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/widget/m;

    invoke-direct {v2, p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/m;-><init>(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;Lcom/ushaqi/zhuishushenqi/model/PostComment;)V

    .line 9285
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u5173\u95ed"

    .line 9291
    invoke-virtual {v0, v1, v4}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 9292
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    .line 9299
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 40
    return-void

    .line 9294
    :cond_0
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->d:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-direct {v0, v2}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 9295
    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->a(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u5173\u95ed"

    .line 9296
    invoke-virtual {v0, v1, v4}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 9297
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 331
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 332
    iget-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->b:Z

    if-eqz v3, :cond_0

    .line 334
    neg-int v2, v2

    move v3, v2

    move v2, v1

    .line 340
    :goto_0
    if-eqz p1, :cond_2

    .line 8348
    sub-int/2addr v2, v3

    invoke-virtual {p0, v2, v1}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->smoothScrollTo(II)V

    .line 8349
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->b:Z

    if-nez v2, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->b:Z

    .line 345
    :goto_2
    return-void

    .line 336
    :cond_0
    neg-int v2, v2

    move v3, v1

    .line 337
    goto :goto_0

    :cond_1
    move v0, v1

    .line 8349
    goto :goto_1

    .line 8353
    :cond_2
    sub-int/2addr v2, v3

    invoke-virtual {p0, v2, v1}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->scrollTo(II)V

    .line 8354
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->b:Z

    if-nez v2, :cond_3

    :goto_3
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->b:Z

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;)Lcom/ushaqi/zhuishushenqi/model/PostComment;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->h:Lcom/ushaqi/zhuishushenqi/model/PostComment;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 303
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->f:Landroid/widget/TextView;

    const v1, 0x7f0201e1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 304
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->d()Lcom/ushaqi/zhuishushenqi/model/PostComment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getLikeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 305
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->f:Landroid/widget/TextView;

    const v2, -0x29d3d4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->f:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Landroid/widget/TextView;I)V

    .line 307
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->c()V

    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->i:I

    return v0
.end method

.method private d()Lcom/ushaqi/zhuishushenqi/model/PostComment;
    .locals 1

    .prologue
    .line 321
    const v0, 0x7f0c0381

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostComment;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->b:Z

    if-nez v0, :cond_0

    .line 385
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Z)V

    .line 387
    :cond_0
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/model/PostComment;I)V
    .locals 15

    .prologue
    .line 144
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->h:Lcom/ushaqi/zhuishushenqi/model/PostComment;

    .line 145
    move/from16 v0, p2

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->i:I

    .line 146
    const v1, 0x7f0c0381

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 147
    const v2, 0x7f0c0384

    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 148
    const v3, 0x7f0c0385

    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 149
    const v4, 0x7f0c0389

    invoke-virtual {p0, v4}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 150
    const v5, 0x7f0c0386

    invoke-virtual {p0, v5}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;

    .line 151
    const v6, 0x7f0c0383

    invoke-virtual {p0, v6}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 152
    const v7, 0x7f0c0387

    invoke-virtual {p0, v7}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 153
    const v8, 0x7f0c037f

    invoke-virtual {p0, v8}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 154
    const v8, 0x7f0c038c

    invoke-virtual {p0, v8}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 155
    const v9, 0x7f0c0382

    invoke-virtual {p0, v9}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 156
    const v10, 0x7f0c0238

    invoke-virtual {p0, v10}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 157
    const v12, 0x7f0c038d

    invoke-virtual {p0, v12}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 159
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/support/design/widget/am;->m(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ushaqi/zhuishushenqi/model/Author;->getScaleAvatar()Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f02006e

    invoke-virtual {v1, v13, v14}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 165
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setTag(Ljava/lang/Object;)V

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getNickname()Ljava/lang/String;

    move-result-object v1

    .line 3235
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lv."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Author;->getLv()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4235
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getCreated()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 5235
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Author;->isOfficial()Z

    move-result v2

    invoke-virtual {v5, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;->setLinkifyText(Ljava/lang/String;Z)V

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getFloor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u697c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6235
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getReplyTo()Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 175
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v2

    .line 176
    const/4 v3, 0x0

    invoke-static {v7, v3}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Landroid/view/View;Z)V

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u56de\u590d "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Author;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;->getFloor()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u697c)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7235
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :goto_1
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getLikeCount()I

    move-result v1

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->isLikedInView()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->c()V

    .line 191
    :goto_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "community_user_gender_icon_toggle"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getGender()Ljava/lang/String;

    move-result-object v1

    .line 193
    const/4 v2, 0x0

    invoke-static {v9, v2}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Landroid/view/View;Z)V

    .line 194
    const-string v2, "male"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    const/4 v1, 0x2

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 217
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->get_id()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    .line 218
    const/4 v1, 0x1

    invoke-static {v10, v1}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Landroid/view/View;Z)V

    .line 219
    const/4 v1, 0x1

    invoke-static {v12, v1}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Landroid/view/View;Z)V

    .line 224
    :goto_4
    return-void

    .line 162
    :cond_0
    const v13, 0x7f02006e

    invoke-virtual {v1, v13}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 179
    :cond_1
    const/4 v1, 0x1

    invoke-static {v7, v1}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Landroid/view/View;Z)V

    goto :goto_1

    .line 188
    :cond_2
    invoke-direct {p0, v8, v1}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Landroid/widget/TextView;I)V

    goto :goto_2

    .line 196
    :cond_3
    const-string v2, "female"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    const/4 v1, 0x3

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_3

    .line 199
    :cond_4
    const/4 v1, 0x4

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_3

    .line 203
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getType()Ljava/lang/String;

    move-result-object v1

    .line 204
    const-string v2, "official"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 205
    const/4 v1, 0x0

    invoke-static {v9, v1}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Landroid/view/View;Z)V

    .line 206
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_3

    .line 207
    :cond_6
    const-string v2, "doyen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 208
    const/4 v1, 0x0

    invoke-static {v9, v1}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Landroid/view/View;Z)V

    .line 209
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_3

    .line 211
    :cond_7
    const/4 v1, 0x1

    invoke-static {v9, v1}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Landroid/view/View;Z)V

    goto :goto_3

    .line 221
    :cond_8
    const/4 v1, 0x0

    invoke-static {v10, v1}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Landroid/view/View;Z)V

    .line 222
    const/4 v1, 0x0

    invoke-static {v12, v1}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Landroid/view/View;Z)V

    goto :goto_4
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->b:Z

    if-nez v0, :cond_0

    .line 391
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Z)V

    .line 393
    :cond_0
    return-void
.end method

.method public final b(Lcom/ushaqi/zhuishushenqi/model/PostComment;I)V
    .locals 3

    .prologue
    .line 239
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Lcom/ushaqi/zhuishushenqi/model/PostComment;I)V

    .line 241
    const v0, 0x7f0c0388

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 242
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getLikeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6b21\u540c\u611f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 84
    :sswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->d:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->d()Lcom/ushaqi/zhuishushenqi/model/PostComment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Author;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    :sswitch_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->d:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->m()Landroid/widget/ListView;

    move-result-object v2

    move v1, v0

    .line 89
    :goto_1
    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 90
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 91
    instance-of v3, v0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    if-eqz v3, :cond_1

    if-eq v0, p0, :cond_1

    .line 92
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a()V

    .line 89
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1325
    :cond_2
    invoke-direct {p0, v5}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Z)V

    goto :goto_0

    .line 99
    :sswitch_2
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->d()Lcom/ushaqi/zhuishushenqi/model/PostComment;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->d:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->toRepliedInfo()Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->d:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->m()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->i:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->a(Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;I)V

    goto :goto_0

    .line 2310
    :sswitch_3
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    .line 2311
    if-nez v1, :cond_3

    .line 2312
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->d:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    const-string v2, "\u8bf7\u767b\u5f55\u540e\u518d\u64cd\u4f5c"

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2313
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->d:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->d:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->startActivity(Landroid/content/Intent;)V

    .line 2314
    const/4 v1, 0x0

    .line 105
    :cond_3
    if-eqz v1, :cond_0

    .line 106
    new-instance v2, Lcom/ushaqi/zhuishushenqi/widget/n;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/n;-><init>(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;B)V

    new-array v3, v3, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->d()Lcom/ushaqi/zhuishushenqi/model/PostComment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->get_id()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/widget/n;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 111
    :sswitch_4
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->d()Lcom/ushaqi/zhuishushenqi/model/PostComment;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getReplyTo()Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;

    move-result-object v1

    if-nez v1, :cond_4

    .line 117
    new-array v1, v5, [Ljava/lang/String;

    const-string v3, "\u4e3e\u62a5"

    aput-object v3, v1, v0

    move-object v0, v1

    .line 122
    :goto_2
    new-instance v1, Luk/me/lewisdeane/ldialogs/h;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->d:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-direct {v1, v3}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const-string v3, "\u66f4\u591a"

    .line 3036
    iput-object v3, v1, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 122
    new-instance v3, Lcom/ushaqi/zhuishushenqi/widget/l;

    invoke-direct {v3, p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/l;-><init>(Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;[Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/model/PostComment;)V

    .line 123
    invoke-virtual {v1, v0, v3}, Luk/me/lewisdeane/ldialogs/h;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 119
    :cond_4
    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "\u67e5\u770b\u56de\u590d\u7684\u697c\u5c42"

    aput-object v3, v1, v0

    const-string v0, "\u4e3e\u62a5"

    aput-object v0, v1, v5

    move-object v0, v1

    goto :goto_2

    .line 82
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0238 -> :sswitch_4
        0x7f0c037f -> :sswitch_1
        0x7f0c0380 -> :sswitch_0
        0x7f0c0386 -> :sswitch_1
        0x7f0c038b -> :sswitch_2
        0x7f0c038c -> :sswitch_3
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 69
    const v0, 0x7f0c0380

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f0c037f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f0c038a

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->e:Landroid/view/ViewGroup;

    .line 72
    const v0, 0x7f0c0386

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v0, 0x7f0c038b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f0c038c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->f:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v0, 0x7f0c0238

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 368
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 366
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
