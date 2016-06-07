.class final Lcom/cocosw/bottomsheet/c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/cocosw/bottomsheet/a;


# direct methods
.method constructor <init>(Lcom/cocosw/bottomsheet/a;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/cocosw/bottomsheet/c;->a:Lcom/cocosw/bottomsheet/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 316
    return-void
.end method

.method private a(I)Lcom/cocosw/bottomsheet/h;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/cocosw/bottomsheet/c;->a:Lcom/cocosw/bottomsheet/a;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/a;->b(Lcom/cocosw/bottomsheet/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cocosw/bottomsheet/h;

    return-object v0
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/cocosw/bottomsheet/c;->a:Lcom/cocosw/bottomsheet/a;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/a;->b(Lcom/cocosw/bottomsheet/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/cocosw/bottomsheet/c;->a(I)Lcom/cocosw/bottomsheet/h;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 251
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/cocosw/bottomsheet/c;->a(I)Lcom/cocosw/bottomsheet/h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cocosw/bottomsheet/h;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 278
    invoke-virtual {p0, p1}, Lcom/cocosw/bottomsheet/c;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_3

    .line 279
    if-nez p2, :cond_1

    .line 280
    iget-object v0, p0, Lcom/cocosw/bottomsheet/c;->a:Lcom/cocosw/bottomsheet/a;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 281
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 282
    iget-object v1, p0, Lcom/cocosw/bottomsheet/c;->a:Lcom/cocosw/bottomsheet/a;

    invoke-static {v1}, Lcom/cocosw/bottomsheet/a;->c(Lcom/cocosw/bottomsheet/a;)Lcom/cocosw/bottomsheet/g;

    move-result-object v1

    invoke-static {v1}, Lcom/cocosw/bottomsheet/g;->a(Lcom/cocosw/bottomsheet/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    sget v1, Lcom/cocosw/bottomsheet/R$layout;->bs_grid_entry:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 287
    :goto_0
    new-instance v2, Lcom/cocosw/bottomsheet/d;

    invoke-direct {v2, p0}, Lcom/cocosw/bottomsheet/d;-><init>(Lcom/cocosw/bottomsheet/c;)V

    .line 288
    sget v0, Lcom/cocosw/bottomsheet/R$id;->bs_list_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/cocosw/bottomsheet/d;->a(Lcom/cocosw/bottomsheet/d;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 289
    sget v0, Lcom/cocosw/bottomsheet/R$id;->bs_list_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/cocosw/bottomsheet/d;->a(Lcom/cocosw/bottomsheet/d;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 290
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    .line 295
    :goto_1
    invoke-direct {p0, p1}, Lcom/cocosw/bottomsheet/c;->a(I)Lcom/cocosw/bottomsheet/h;

    move-result-object v2

    .line 297
    invoke-static {v0}, Lcom/cocosw/bottomsheet/d;->a(Lcom/cocosw/bottomsheet/d;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v2}, Lcom/cocosw/bottomsheet/h;->b(Lcom/cocosw/bottomsheet/h;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    invoke-static {v2}, Lcom/cocosw/bottomsheet/h;->a(Lcom/cocosw/bottomsheet/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    .line 299
    invoke-static {v0}, Lcom/cocosw/bottomsheet/d;->b(Lcom/cocosw/bottomsheet/d;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    :goto_2
    return-object v1

    .line 285
    :cond_0
    sget v1, Lcom/cocosw/bottomsheet/R$layout;->bs_list_entry:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cocosw/bottomsheet/d;

    move-object v1, p2

    goto :goto_1

    .line 301
    :cond_2
    invoke-static {v0}, Lcom/cocosw/bottomsheet/d;->b(Lcom/cocosw/bottomsheet/d;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    invoke-static {v0}, Lcom/cocosw/bottomsheet/d;->b(Lcom/cocosw/bottomsheet/d;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v2}, Lcom/cocosw/bottomsheet/h;->a(Lcom/cocosw/bottomsheet/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 306
    :cond_3
    if-nez p2, :cond_4

    .line 307
    iget-object v0, p0, Lcom/cocosw/bottomsheet/c;->a:Lcom/cocosw/bottomsheet/a;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 308
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 309
    sget v1, Lcom/cocosw/bottomsheet/R$layout;->bs_list_divider:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 310
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    move-object v1, p2

    .line 312
    goto :goto_2
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x2

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcom/cocosw/bottomsheet/c;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
