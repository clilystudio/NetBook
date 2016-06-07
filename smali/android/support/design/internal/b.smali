.class final Landroid/support/design/internal/b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/internal/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/drawable/ColorDrawable;

.field private c:Z

.field private synthetic d:Landroid/support/design/internal/a;


# direct methods
.method constructor <init>(Landroid/support/design/internal/a;)V
    .locals 1

    .prologue
    .line 254
    iput-object p1, p0, Landroid/support/design/internal/b;->d:Landroid/support/design/internal/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/b;->a:Ljava/util/ArrayList;

    .line 255
    invoke-direct {p0}, Landroid/support/design/internal/b;->b()V

    .line 256
    return-void
.end method

.method private a(II)V
    .locals 3

    .prologue
    .line 403
    :goto_0
    if-ge p1, p2, :cond_2

    .line 404
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/c;

    invoke-virtual {v0}, Landroid/support/design/internal/c;->d()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 405
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 406
    iget-object v1, p0, Landroid/support/design/internal/b;->b:Landroid/graphics/drawable/ColorDrawable;

    if-nez v1, :cond_0

    .line 407
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x106000d

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Landroid/support/design/internal/b;->b:Landroid/graphics/drawable/ColorDrawable;

    .line 409
    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/b;->b:Landroid/graphics/drawable/ColorDrawable;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 403
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 412
    :cond_2
    return-void
.end method

.method private b()V
    .locals 14

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 348
    iget-boolean v0, p0, Landroid/support/design/internal/b;->c:Z

    if-eqz v0, :cond_1

    .line 400
    :cond_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 352
    const/4 v5, -0x1

    .line 355
    iget-object v0, p0, Landroid/support/design/internal/b;->d:Landroid/support/design/internal/a;

    invoke-static {v0}, Landroid/support/design/internal/a;->e(Landroid/support/design/internal/a;)Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v8, v7

    move v3, v7

    move v4, v7

    :goto_0
    if-ge v8, v9, :cond_0

    .line 356
    iget-object v0, p0, Landroid/support/design/internal/b;->d:Landroid/support/design/internal/a;

    invoke-static {v0}, Landroid/support/design/internal/a;->e(Landroid/support/design/internal/a;)Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 357
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 358
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v10

    .line 359
    invoke-interface {v10}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 360
    if-eqz v8, :cond_2

    .line 361
    iget-object v1, p0, Landroid/support/design/internal/b;->a:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/support/design/internal/b;->d:Landroid/support/design/internal/a;

    invoke-static {v6}, Landroid/support/design/internal/a;->f(Landroid/support/design/internal/a;)I

    move-result v6

    invoke-static {v6, v7}, Landroid/support/design/internal/c;->a(II)Landroid/support/design/internal/c;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_2
    iget-object v1, p0, Landroid/support/design/internal/b;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/support/design/internal/c;->a(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Landroid/support/design/internal/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 366
    invoke-interface {v10}, Landroid/view/SubMenu;->size()I

    move-result v12

    move v6, v7

    move v1, v7

    :goto_1
    if-ge v6, v12, :cond_5

    .line 367
    invoke-interface {v10, v6}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 368
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 369
    if-nez v1, :cond_3

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz v13, :cond_3

    move v1, v2

    .line 372
    :cond_3
    iget-object v13, p0, Landroid/support/design/internal/b;->a:Ljava/util/ArrayList;

    check-cast v0, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-static {v0}, Landroid/support/design/internal/c;->a(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Landroid/support/design/internal/c;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 375
    :cond_5
    if-eqz v1, :cond_6

    .line 376
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v11, v0}, Landroid/support/design/internal/b;->a(II)V

    :cond_6
    move v0, v3

    move v1, v4

    move v3, v5

    .line 355
    :goto_2
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v5, v3

    move v4, v1

    move v3, v0

    goto :goto_0

    .line 380
    :cond_7
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v6

    .line 381
    if-eq v6, v5, :cond_a

    .line 382
    iget-object v1, p0, Landroid/support/design/internal/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 383
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_9

    move v3, v2

    .line 384
    :goto_3
    if-eqz v8, :cond_b

    .line 385
    add-int/lit8 v4, v4, 0x1

    .line 386
    iget-object v1, p0, Landroid/support/design/internal/b;->a:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/design/internal/b;->d:Landroid/support/design/internal/a;

    invoke-static {v5}, Landroid/support/design/internal/a;->f(Landroid/support/design/internal/a;)I

    move-result v5

    iget-object v10, p0, Landroid/support/design/internal/b;->d:Landroid/support/design/internal/a;

    invoke-static {v10}, Landroid/support/design/internal/a;->f(Landroid/support/design/internal/a;)I

    move-result v10

    invoke-static {v5, v10}, Landroid/support/design/internal/c;->a(II)Landroid/support/design/internal/c;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    move v3, v4

    .line 393
    :goto_4
    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_8

    .line 394
    const v4, 0x106000d

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    .line 396
    :cond_8
    iget-object v4, p0, Landroid/support/design/internal/b;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/support/design/internal/c;->a(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Landroid/support/design/internal/c;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    move v1, v3

    move v3, v6

    .line 397
    goto :goto_2

    :cond_9
    move v3, v7

    .line 383
    goto :goto_3

    .line 389
    :cond_a
    if-nez v3, :cond_b

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 391
    iget-object v1, p0, Landroid/support/design/internal/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v4, v1}, Landroid/support/design/internal/b;->a(II)V

    move v1, v2

    move v3, v4

    goto :goto_4

    :cond_b
    move v1, v3

    move v3, v4

    goto :goto_4
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 415
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 416
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 417
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/c;

    .line 418
    invoke-virtual {v0}, Landroid/support/design/internal/c;->d()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 420
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 423
    :cond_1
    const-string v0, "android:menu:checked"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 424
    return-object v1
.end method

.method public final a(I)Landroid/support/design/internal/c;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/c;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 428
    const-string v0, "android:menu:checked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 429
    if-eqz v1, :cond_2

    .line 430
    iput-boolean v4, p0, Landroid/support/design/internal/b;->c:Z

    .line 431
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/c;

    .line 432
    invoke-virtual {v0}, Landroid/support/design/internal/c;->d()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    invoke-virtual {v0, v4}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 437
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/internal/b;->c:Z

    .line 438
    invoke-direct {p0}, Landroid/support/design/internal/b;->b()V

    .line 440
    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 443
    iput-boolean p1, p0, Landroid/support/design/internal/b;->c:Z

    .line 444
    return-void
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Landroid/support/design/internal/b;->a(I)Landroid/support/design/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 270
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Landroid/support/design/internal/b;->a(I)Landroid/support/design/internal/c;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroid/support/design/internal/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    const/4 v0, 0x2

    .line 286
    :goto_0
    return v0

    .line 283
    :cond_0
    invoke-virtual {v0}, Landroid/support/design/internal/c;->d()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    const/4 v0, 0x1

    goto :goto_0

    .line 286
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 292
    invoke-virtual {p0, p1}, Landroid/support/design/internal/b;->a(I)Landroid/support/design/internal/c;

    move-result-object v3

    .line 293
    invoke-virtual {p0, p1}, Landroid/support/design/internal/b;->getItemViewType(I)I

    move-result v0

    .line 294
    packed-switch v0, :pswitch_data_0

    :goto_0
    move-object v1, p2

    .line 324
    :goto_1
    return-object v1

    .line 296
    :pswitch_0
    if-nez p2, :cond_3

    .line 297
    iget-object v0, p0, Landroid/support/design/internal/b;->d:Landroid/support/design/internal/a;

    invoke-static {v0}, Landroid/support/design/internal/a;->a(Landroid/support/design/internal/a;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/design/R$layout;->design_navigation_item:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_2
    move-object v0, v1

    .line 300
    check-cast v0, Landroid/support/design/internal/NavigationMenuItemView;

    .line 301
    iget-object v2, p0, Landroid/support/design/internal/b;->d:Landroid/support/design/internal/a;

    invoke-static {v2}, Landroid/support/design/internal/a;->b(Landroid/support/design/internal/a;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/internal/NavigationMenuItemView;->a(Landroid/content/res/ColorStateList;)V

    .line 302
    iget-object v2, p0, Landroid/support/design/internal/b;->d:Landroid/support/design/internal/a;

    invoke-static {v2}, Landroid/support/design/internal/a;->c(Landroid/support/design/internal/a;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 303
    iget-object v2, p0, Landroid/support/design/internal/b;->d:Landroid/support/design/internal/a;

    invoke-static {v2}, Landroid/support/design/internal/a;->d(Landroid/support/design/internal/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/internal/b;->d:Landroid/support/design/internal/a;

    invoke-static {v2}, Landroid/support/design/internal/a;->d(Landroid/support/design/internal/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Landroid/support/design/internal/NavigationMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    invoke-virtual {v3}, Landroid/support/design/internal/c;->d()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/support/design/internal/NavigationMenuItemView;->a(Landroid/support/v7/internal/view/menu/MenuItemImpl;I)V

    goto :goto_1

    .line 303
    :cond_0
    const/4 v2, 0x0

    goto :goto_3

    .line 308
    :pswitch_1
    if-nez p2, :cond_2

    .line 309
    iget-object v0, p0, Landroid/support/design/internal/b;->d:Landroid/support/design/internal/a;

    invoke-static {v0}, Landroid/support/design/internal/a;->a(Landroid/support/design/internal/a;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/design/R$layout;->design_navigation_item_subheader:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_4
    move-object v0, v1

    .line 312
    check-cast v0, Landroid/widget/TextView;

    .line 313
    invoke-virtual {v3}, Landroid/support/design/internal/c;->d()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 316
    :pswitch_2
    if-nez p2, :cond_1

    .line 317
    iget-object v0, p0, Landroid/support/design/internal/b;->d:Landroid/support/design/internal/a;

    invoke-static {v0}, Landroid/support/design/internal/a;->a(Landroid/support/design/internal/a;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/design/R$layout;->design_navigation_item_separator:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 320
    :cond_1
    invoke-virtual {v3}, Landroid/support/design/internal/c;->b()I

    move-result v0

    invoke-virtual {v3}, Landroid/support/design/internal/c;->c()I

    move-result v1

    invoke-virtual {p2, v4, v0, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    move-object v1, p2

    goto :goto_4

    :cond_3
    move-object v1, p2

    goto :goto_2

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x3

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Landroid/support/design/internal/b;->a(I)Landroid/support/design/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/internal/c;->e()Z

    move-result v0

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Landroid/support/design/internal/b;->b()V

    .line 340
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 341
    return-void
.end method
