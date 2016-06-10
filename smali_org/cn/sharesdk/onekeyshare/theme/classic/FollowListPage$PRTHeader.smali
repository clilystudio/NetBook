.class Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private ivArrow:Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$RotateImageView;

.field private pbRefreshing:Landroid/widget/ProgressBar;

.field private tvHeader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 360
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 361
    invoke-virtual {p0, v4}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->setOrientation(I)V

    .line 363
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 364
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 366
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 367
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    new-instance v1, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$RotateImageView;

    invoke-direct {v1, p1}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$RotateImageView;

    .line 370
    const-string v1, "ssdk_oks_ptr_ptr"

    invoke-static {p1, v1}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 371
    if-lez v1, :cond_0

    .line 372
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$RotateImageView;

    invoke-virtual {v2, v1}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$RotateImageView;->setImageResource(I)V

    .line 374
    :cond_0
    const/16 v1, 0x20

    invoke-static {p1, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v1

    .line 375
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 376
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 377
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$RotateImageView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    .line 380
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 383
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->tvHeader:Landroid/widget/TextView;

    .line 384
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->tvHeader:Landroid/widget/TextView;

    const/high16 v2, 0x41900000

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 385
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->tvHeader:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 386
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v1

    .line 387
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 388
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->tvHeader:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 389
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 391
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 392
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    return-void
.end method


# virtual methods
.method public onPullDown(I)V
    .locals 4

    .prologue
    const/16 v1, 0xb4

    const/16 v3, 0x64

    const/4 v0, 0x0

    .line 396
    if-le p1, v3, :cond_1

    .line 397
    add-int/lit8 v2, p1, -0x64

    mul-int/lit16 v2, v2, 0xb4

    div-int/lit8 v2, v2, 0x14

    .line 398
    if-le v2, v1, :cond_4

    .line 401
    :goto_0
    if-gez v1, :cond_3

    .line 404
    :goto_1
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$RotateImageView;

    invoke-virtual {v1, v0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$RotateImageView;->setRotation(I)V

    .line 409
    :goto_2
    if-ge p1, v3, :cond_2

    .line 410
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pull_to_refresh"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 411
    if-lez v0, :cond_0

    .line 412
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 420
    :cond_0
    :goto_3
    return-void

    .line 406
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$RotateImageView;

    invoke-virtual {v1, v0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$RotateImageView;->setRotation(I)V

    goto :goto_2

    .line 415
    :cond_2
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "release_to_refresh"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 416
    if-lez v0, :cond_0

    .line 417
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public onRequest()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$RotateImageView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 425
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "refreshing"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 426
    if-lez v0, :cond_0

    .line 427
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 429
    :cond_0
    return-void
.end method

.method public reverse()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$RotateImageView;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$RotateImageView;->setRotation(I)V

    .line 434
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$RotateImageView;->setVisibility(I)V

    .line 435
    return-void
.end method
