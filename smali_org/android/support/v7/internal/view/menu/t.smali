.class final Landroid/support/v7/internal/view/menu/t;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field private b:I

.field private synthetic c:Landroid/support/v7/internal/view/menu/s;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/s;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 1

    .prologue
    .line 339
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/t;->c:Landroid/support/v7/internal/view/menu/s;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 337
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/view/menu/t;->b:I

    .line 340
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 341
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/t;->a()V

    .line 342
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/t;)Landroid/support/v7/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 382
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->c:Landroid/support/v7/internal/view/menu/s;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/s;->c(Landroid/support/v7/internal/view/menu/s;)Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->o()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v2

    .line 383
    if-eqz v2, :cond_1

    .line 384
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->c:Landroid/support/v7/internal/view/menu/s;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/s;->c(Landroid/support/v7/internal/view/menu/s;)Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->m()Ljava/util/ArrayList;

    move-result-object v3

    .line 385
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 386
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 387
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 388
    if-ne v0, v2, :cond_0

    .line 389
    iput v1, p0, Landroid/support/v7/internal/view/menu/t;->b:I

    .line 395
    :goto_1
    return-void

    .line 386
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 394
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/view/menu/t;->b:I

    goto :goto_1
.end method


# virtual methods
.method public final a(I)Landroid/support/v7/internal/view/menu/MenuItemImpl;
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->c:Landroid/support/v7/internal/view/menu/s;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/s;->a(Landroid/support/v7/internal/view/menu/s;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->m()Ljava/util/ArrayList;

    move-result-object v0

    .line 356
    :goto_0
    iget v1, p0, Landroid/support/v7/internal/view/menu/t;->b:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/v7/internal/view/menu/t;->b:I

    if-lt p1, v1, :cond_0

    .line 357
    add-int/lit8 p1, p1, 0x1

    .line 359
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    return-object v0

    .line 354
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->j()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->c:Landroid/support/v7/internal/view/menu/s;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/s;->a(Landroid/support/v7/internal/view/menu/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->m()Ljava/util/ArrayList;

    move-result-object v0

    .line 347
    :goto_0
    iget v1, p0, Landroid/support/v7/internal/view/menu/t;->b:I

    if-gez v1, :cond_1

    .line 348
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 350
    :goto_1
    return v0

    .line 345
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->j()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/t;->a(I)Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 365
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 369
    if-nez p2, :cond_1

    .line 370
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->c:Landroid/support/v7/internal/view/menu/s;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/s;->b(Landroid/support/v7/internal/view/menu/s;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/internal/view/menu/s;->a:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 373
    check-cast v0, Landroid/support/v7/internal/view/menu/x;

    .line 374
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/t;->c:Landroid/support/v7/internal/view/menu/s;

    iget-boolean v2, v2, Landroid/support/v7/internal/view/menu/s;->b:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 375
    check-cast v2, Landroid/support/v7/internal/view/menu/ListMenuItemView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 377
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/t;->a(I)Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Landroid/support/v7/internal/view/menu/x;->a(Landroid/support/v7/internal/view/menu/MenuItemImpl;I)V

    .line 378
    return-object v1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/t;->a()V

    .line 400
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 401
    return-void
.end method
