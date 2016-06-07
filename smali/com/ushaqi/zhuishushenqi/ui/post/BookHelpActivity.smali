.class public Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;
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

.field private i:Lcom/ushaqi/zhuishushenqi/ui/post/ad;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Lcom/ushaqi/zhuishushenqi/model/Account;

.field private m:Lcom/ushaqi/zhuishushenqi/model/BookHelp;

.field private n:Z

.field private o:Lcom/ushaqi/zhuishushenqi/widget/av;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->h:Ljava/util/List;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->n:Z

    .line 215
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/ab;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ab;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->o:Lcom/ushaqi/zhuishushenqi/widget/av;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;)Lcom/ushaqi/zhuishushenqi/model/BookHelp;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->m:Lcom/ushaqi/zhuishushenqi/model/BookHelp;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;Lcom/ushaqi/zhuishushenqi/model/BookHelp;)Lcom/ushaqi/zhuishushenqi/model/BookHelp;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->m:Lcom/ushaqi/zhuishushenqi/model/BookHelp;

    return-object p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    .line 3228
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->m:Lcom/ushaqi/zhuishushenqi/model/BookHelp;

    if-eqz v0, :cond_0

    .line 3229
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3230
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/ad;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/ad;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->i:Lcom/ushaqi/zhuishushenqi/ui/post/ad;

    .line 3231
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->i:Lcom/ushaqi/zhuishushenqi/ui/post/ad;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->m:Lcom/ushaqi/zhuishushenqi/model/BookHelp;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookHelp;->get_id()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ad;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;Lcom/ushaqi/zhuishushenqi/model/BookHelp;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 55
    .line 2241
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookHelp;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v1

    .line 2242
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0023

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 2243
    invoke-static {p0}, Landroid/support/design/widget/am;->m(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2244
    const v2, 0x7f02006e

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageResource(I)V

    .line 2248
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0040

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2249
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

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

    .line 2250
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0047

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookHelp;->getCreated()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2251
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0048

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookHelp;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2252
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c0029

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookHelp;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->isOfficial()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/widget/LinkifyTextView;->setLinkifyText(Ljava/lang/String;Z)V

    .line 2253
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->j:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5171"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookHelp;->getCommentCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6761\u8bc4\u8bba"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2255
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v2, 0x7f0c02fd

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2257
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->n:Z

    if-eqz v2, :cond_3

    .line 2258
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getGender()Ljava/lang/String;

    move-result-object v1

    .line 2259
    const-string v2, "male"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2260
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2261
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2286
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    const v1, 0x7f0c03d0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PostAgreeView;->setPostId(Ljava/lang/String;)V

    .line 2287
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->a()V

    .line 2288
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;->b()V

    .line 55
    return-void

    .line 2246
    :cond_0
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getScaleAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2262
    :cond_1
    const-string v2, "female"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2263
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2264
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1

    .line 2266
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2267
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1

    .line 2270
    :cond_3
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getType()Ljava/lang/String;

    move-result-object v1

    .line 2271
    const-string v2, "official"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2272
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2273
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2275
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookHelp;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->s(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 2276
    :cond_4
    const-string v2, "doyen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2277
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2278
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1

    .line 2280
    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;)Lcom/ushaqi/zhuishushenqi/adapter/z;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->g:Lcom/ushaqi/zhuishushenqi/adapter/z;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;)Lcom/ushaqi/zhuishushenqi/widget/av;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->o:Lcom/ushaqi/zhuishushenqi/widget/av;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;)V
    .locals 3

    .prologue
    .line 55
    .line 4198
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4199
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->f:Landroid/view/View;

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4200
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->f:Landroid/view/View;

    const v1, 0x7f0c03a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4201
    const-string v1, "\u70b9\u51fb\u52a0\u8f7d\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4202
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->f:Landroid/view/View;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/aa;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/aa;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/ad;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->i:Lcom/ushaqi/zhuishushenqi/ui/post/ad;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 395
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/N;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/N;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->m:Lcom/ushaqi/zhuishushenqi/model/BookHelp;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookHelp;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/util/N;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method protected final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->i()V

    .line 111
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/ae;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/ae;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ae;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    return-void
.end method

.method public final e(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 296
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->m:Lcom/ushaqi/zhuishushenqi/model/BookHelp;

    if-nez v1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    if-ne p1, v0, :cond_2

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_2
    if-nez p1, :cond_0

    .line 1402
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    .line 1403
    if-nez v1, :cond_3

    .line 1404
    const-string v0, "\u8bf7\u767b\u5f55\u540e\u518d\u64cd\u4f5c"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1405
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 1406
    const/4 v0, 0x0

    .line 302
    :goto_1
    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/N;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/N;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->l:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->m:Lcom/ushaqi/zhuishushenqi/model/BookHelp;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookHelp;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/util/N;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1408
    :cond_3
    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->l:Lcom/ushaqi/zhuishushenqi/model/Account;

    goto :goto_1
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 415
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->f()V

    .line 416
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 417
    return-void
.end method

.method public final f(I)V
    .locals 7

    .prologue
    .line 361
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->m:Lcom/ushaqi/zhuishushenqi/model/BookHelp;

    if-nez v0, :cond_0

    .line 362
    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 386
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->m:Lcom/ushaqi/zhuishushenqi/model/BookHelp;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookHelp;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u300c"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->m:Lcom/ushaqi/zhuishushenqi/model/BookHelp;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookHelp;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u300d   \u6211\u5728\u8fd9\u53d1\u73b0\u4e86\u597d\u591a\u597d\u770b\u7684\u5c0f\u8bf4\uff0c\u4f60\u4e5f\u6765\u627e\u627e\u770b\u5427"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->m:Lcom/ushaqi/zhuishushenqi/model/BookHelp;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookHelp;->getShareLink()Ljava/lang/String;

    move-result-object v3

    .line 368
    const/4 v4, 0x0

    new-instance v6, Lcom/ushaqi/zhuishushenqi/ui/post/ac;

    invoke-direct {v6, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ac;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;)V

    move-object v0, p0

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/ushaqi/zhuishushenqi/util/T;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 421
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->h()V

    .line 422
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    return-void
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 427
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->i()V

    .line 428
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 429
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

    .line 315
    const/4 v0, 0x0

    .line 316
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->h:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->h:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostComment;

    .line 320
    :cond_0
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    .line 321
    new-instance v2, Lcom/ushaqi/zhuishushenqi/model/Author;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/model/Author;-><init>()V

    .line 322
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/Author;->setAvatar(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/Author;->setNickname(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getLv()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->setLv(I)V

    .line 326
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/PostComment;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/model/PostComment;-><init>()V

    .line 327
    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V

    .line 328
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setContent(Ljava/lang/String;)V

    .line 329
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setCreated(Ljava/util/Date;)V

    .line 331
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->e:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    if-eqz v2, :cond_1

    .line 332
    new-instance v2, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;-><init>()V

    .line 333
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->e:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    invoke-interface {v3}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->getFloor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;->setFloor(I)V

    .line 334
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->e:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    invoke-interface {v3}, Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;->setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V

    .line 335
    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setReplyTo(Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;)V

    .line 337
    :cond_1
    if-eqz v0, :cond_2

    .line 338
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getFloor()I

    move-result v0

    .line 339
    add-int/lit8 v0, v0, 0x1

    .line 340
    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setFloor(I)V

    .line 346
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->h:Ljava/util/List;

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->g:Lcom/ushaqi/zhuishushenqi/adapter/z;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/z;->a(Ljava/util/Collection;)V

    .line 349
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    const/16 v1, 0x3c

    invoke-virtual {v0, v5, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->smoothScrollToPositionFromTop(II)V

    .line 354
    :goto_1
    return-void

    .line 342
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->setFloor(I)V

    goto :goto_0

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v0, v5}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setSelection(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f030136

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->a(I)V

    .line 75
    const-string v0, "\u4e66\u8352\u4e92\u52a9\u533a\u8be6\u60c5"

    .line 1250
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->b(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extraBookHelpId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->a:Ljava/lang/String;

    .line 80
    const v0, 0x7f0c010f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    .line 82
    const v0, 0x7f0c03ce

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->k:Landroid/view/View;

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->a(Z)V

    .line 85
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/PostHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    .line 87
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PostHeader;

    invoke-virtual {v0, v1, v4, v3}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 89
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c3

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;

    .line 90
    const v1, 0x7f0c028f

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->j:Landroid/widget/TextView;

    .line 91
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v1, v0, v4, v3}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 92
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/HotCommentView;->a(Ljava/lang/String;)V

    .line 95
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011d

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->f:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addFooterView(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/z;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/z;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->g:Lcom/ushaqi/zhuishushenqi/adapter/z;

    .line 100
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->g:Lcom/ushaqi/zhuishushenqi/adapter/z;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->j()V

    .line 103
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->b()V

    .line 105
    const-string v0, "community_user_gender_icon_toggle"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->n:Z

    .line 106
    return-void
.end method
