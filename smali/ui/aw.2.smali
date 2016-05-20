.class public final Lcom/ushaqi/zhuishushenqi/ui/aw;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:[Ljava/lang/String;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 344
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/aw;->c:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 345
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aw;->a:Landroid/view/LayoutInflater;

    .line 346
    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/aw;->b:[Ljava/lang/String;

    .line 347
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aw;->b:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aw;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 361
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 367
    if-nez p2, :cond_1

    .line 368
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ax;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/ax;-><init>(Lcom/ushaqi/zhuishushenqi/ui/aw;)V

    .line 369
    if-nez p1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aw;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030088

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 374
    :goto_0
    const v0, 0x7f0c01fa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/ushaqi/zhuishushenqi/ui/ax;->a:Landroid/widget/TextView;

    .line 375
    const v0, 0x7f0c01fb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/ushaqi/zhuishushenqi/ui/ax;->b:Landroid/widget/ImageView;

    .line 376
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    .line 380
    :goto_1
    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/ui/ax;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/aw;->b:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/aw;->c:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/aw;->b:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/ui/ax;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/aw;->c:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b009d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 383
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ax;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    :goto_2
    return-object v1

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aw;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030086

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 378
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/ax;

    move-object v1, p2

    goto :goto_1

    .line 385
    :cond_2
    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/ui/ax;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/aw;->c:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;

    const v4, 0x1010098

    invoke-static {v3, v4}, Landroid/support/design/widget/am;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 386
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ax;->b:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
