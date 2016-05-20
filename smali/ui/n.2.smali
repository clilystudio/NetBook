.class public final Lcom/ushaqi/zhuishushenqi/ui/n;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 439
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/n;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 440
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/n;->b:Landroid/view/LayoutInflater;

    .line 441
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/n;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/n;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 455
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 461
    if-nez p2, :cond_0

    .line 462
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/p;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/n;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-direct {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/p;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    .line 463
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/n;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f03006e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 464
    const v0, 0x7f0c01b1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/p;->a:Landroid/widget/TextView;

    .line 465
    const v0, 0x7f0c01b3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/p;->b:Landroid/widget/TextView;

    .line 466
    const v0, 0x7f0c01b2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/p;->c:Landroid/widget/ImageView;

    .line 467
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 471
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/n;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 472
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/p;->a:Landroid/widget/TextView;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/p;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/n;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 475
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/p;->c:Landroid/widget/ImageView;

    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 484
    :goto_1
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/o;

    invoke-direct {v0, p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/o;-><init>(Lcom/ushaqi/zhuishushenqi/ui/n;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    return-object p2

    .line 469
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/p;

    move-object v1, v0

    goto :goto_0

    .line 477
    :cond_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/p;->c:Landroid/widget/ImageView;

    const v2, 0x7f020062

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 479
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/p;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    .line 481
    :cond_2
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/p;->c:Landroid/widget/ImageView;

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
