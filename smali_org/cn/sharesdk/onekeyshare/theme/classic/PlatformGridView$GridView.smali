.class Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private beans:[Ljava/lang/Object;

.field private callback:Landroid/view/View$OnClickListener;

.field private lines:I

.field private platformAdapter:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)V
    .locals 1

    .prologue
    .line 355
    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;
    invoke-static {p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->access$800(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 356
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->platformAdapter:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;

    .line 357
    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->callback:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->access$900(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->callback:Landroid/view/View$OnClickListener;

    .line 358
    return-void
.end method

.method private getIcon(Lcn/sharesdk/framework/Platform;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 455
    if-nez p1, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-object v0

    .line 459
    :cond_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    .line 460
    if-eqz v1, :cond_0

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "logo_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 466
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getName(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 470
    if-nez p1, :cond_0

    .line 471
    const-string v0, ""

    .line 483
    :goto_0
    return-object v0

    .line 474
    :cond_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 475
    if-nez v0, :cond_1

    .line 476
    const-string v0, ""

    goto :goto_0

    .line 479
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 480
    if-lez v0, :cond_2

    .line 481
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 483
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getView(ILandroid/view/View$OnClickListener;Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x2

    .line 411
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v0, v0, p1

    instance-of v0, v0, Lcn/sharesdk/framework/Platform;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcn/sharesdk/framework/Platform;

    invoke-direct {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getIcon(Lcn/sharesdk/framework/Platform;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 413
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcn/sharesdk/framework/Platform;

    invoke-direct {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getName(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 421
    :goto_0
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 422
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 424
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 425
    const/4 v4, 0x5

    invoke-static {p3, v4}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v4

    .line 426
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 427
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 428
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 430
    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 431
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 432
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 434
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 436
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 437
    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 438
    const/high16 v3, 0x41600000

    invoke-virtual {v0, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 439
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 440
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 441
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 443
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 444
    const/high16 v5, 0x3f800000

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 445
    invoke-virtual {v3, v4, v8, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 446
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 449
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    return-object v2

    .line 416
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcn/sharesdk/onekeyshare/CustomerLogo;

    iget-object v1, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->enableLogo:Landroid/graphics/Bitmap;

    .line 417
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcn/sharesdk/onekeyshare/CustomerLogo;

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->label:Ljava/lang/String;

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 418
    goto :goto_0
.end method

.method private init()V
    .locals 12

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 367
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v5

    .line 368
    invoke-virtual {p0, v1, v5, v1, v5}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->setPadding(IIII)V

    .line 369
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->setOrientation(I)V

    .line 371
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    if-nez v0, :cond_1

    move v0, v1

    .line 372
    :goto_0
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->platformAdapter:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;
    invoke-static {v2}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->access$800(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    move-result-object v2

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I
    invoke-static {v2}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$400(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I

    move-result v6

    .line 373
    div-int v2, v0, v6

    .line 374
    rem-int v3, v0, v6

    if-lez v3, :cond_0

    .line 375
    add-int/lit8 v2, v2, 0x1

    .line 377
    :cond_0
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 379
    const/high16 v3, 0x3f800000

    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v1

    .line 380
    :goto_1
    iget v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->lines:I

    if-ge v3, v4, :cond_4

    .line 381
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v8, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 382
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    invoke-virtual {v8, v5, v1, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 384
    invoke-virtual {p0, v8}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->addView(Landroid/view/View;)V

    .line 386
    if-ge v3, v2, :cond_3

    move v4, v1

    .line 390
    :goto_2
    if-ge v4, v6, :cond_3

    .line 391
    mul-int v9, v3, v6

    add-int/2addr v9, v4

    .line 392
    if-lt v9, v0, :cond_2

    .line 393
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 394
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 390
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 371
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    array-length v0, v0

    goto :goto_0

    .line 399
    :cond_2
    iget-object v10, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->callback:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {p0, v9, v10, v11}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getView(ILandroid/view/View$OnClickListener;Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 400
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v9, v11, v9

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 401
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 380
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 405
    :cond_4
    return-void
.end method


# virtual methods
.method public setData(I[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 361
    iput p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->lines:I

    .line 362
    iput-object p2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    .line 363
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->init()V

    .line 364
    return-void
.end method
