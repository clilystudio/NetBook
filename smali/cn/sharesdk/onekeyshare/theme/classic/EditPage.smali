.class public Lcn/sharesdk/onekeyshare/theme/classic/EditPage;
.super Lcn/sharesdk/onekeyshare/EditPageFakeActivity;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DIM_COLOR:I = 0x7f323232

.field private static final MAX_TEXT_COUNT:I = 0x8c


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private etContent:Landroid/widget/EditText;

.field private image:Landroid/graphics/Bitmap;

.field private imgInfo:Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

.field private ivImage:Landroid/widget/ImageView;

.field private ivPin:Landroid/widget/ImageView;

.field private llBody:Landroid/widget/LinearLayout;

.field private llPlat:Landroid/widget/LinearLayout;

.field private llTitle:Lcn/sharesdk/framework/TitleLayout;

.field private platformList:[Lcn/sharesdk/framework/Platform;

.field private progressBar:Landroid/widget/ProgressBar;

.field private rlPage:Landroid/widget/RelativeLayout;

.field private rlThumb:Landroid/widget/RelativeLayout;

.field private tvCounter:Landroid/widget/TextView;

.field private views:[Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)[Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic access$002(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;[Lcn/sharesdk/framework/Platform;)[Lcn/sharesdk/framework/Platform;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    return-object p1
.end method

.method static synthetic access$100(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Ljava/util/List;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->image:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Ljava/util/List;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llPlat:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->genBackground()V

    return-void
.end method

.method static synthetic access$1600(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1700(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->imgInfo:Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    return-object v0
.end method

.method static synthetic access$502(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->imgInfo:Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->removeImage(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$800(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Ljava/util/List;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    return-object v0
.end method

.method private genBackground()V
    .locals 4

    .prologue
    .line 520
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x7f323232

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;

    .line 521
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->backgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 523
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->backgroundView:Landroid/view/View;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->backgroundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->backgroundView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 524
    const/16 v1, 0x14

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 525
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 526
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getAtLine(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 9

    .prologue
    const/high16 v8, -0x1000000

    const/high16 v5, 0x41900000    # 18.0f

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 394
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->isShowAtUserLayout(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    const/4 v0, 0x0

    .line 447
    :goto_0
    return-object v0

    .line 397
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 398
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 400
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 401
    const/16 v2, 0x53

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 402
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 403
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    new-instance v1, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;

    invoke-direct {v1, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 420
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v3, "btn_back_nor"

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 421
    if-lez v2, :cond_1

    .line 422
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 424
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v2

    .line 425
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 427
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getAtUserButtonText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v2

    .line 429
    invoke-virtual {v1, v7, v7, v7, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 430
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 431
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 433
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 435
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 436
    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 437
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 438
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v3, "list_friends"

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 439
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 443
    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 444
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private getBodyBottom()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 366
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 367
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getAtLine(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 376
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    .line 377
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    const-string v2, "140"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    const v2, -0x303031

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 379
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 380
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 381
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 383
    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 384
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    return-object v1
.end method

.method private getImagePin()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 501
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    .line 502
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v1, "pin"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 503
    if-lez v0, :cond_0

    .line 504
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v0

    .line 507
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x24

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v1

    .line 508
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 510
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 511
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 512
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 513
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getMainBody()Landroid/widget/LinearLayout;
    .locals 7

    .prologue
    const/4 v4, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, -0x2

    .line 241
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 242
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 243
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 245
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 246
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v2

    .line 247
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 248
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 251
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 253
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 254
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    .line 258
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 259
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->shareParamMap:Ljava/util/HashMap;

    const-string v4, "text"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 262
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 264
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 265
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getThumbView()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 269
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getBodyBottom()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    return-object v0
.end method

.method private getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 534
    if-nez p1, :cond_0

    .line 535
    const-string v0, ""

    .line 539
    :goto_0
    return-object v0

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 539
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPageBody()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, -0x2

    .line 214
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    .line 215
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 216
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v1, "edittext_back"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 217
    if-lez v0, :cond_0

    .line 218
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 221
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 223
    const/4 v1, 0x5

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 224
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 225
    const/4 v1, 0x7

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 226
    iget-boolean v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->dialogMode:Z

    if-nez v1, :cond_1

    .line 227
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v1

    .line 230
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 231
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getMainBody()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getSep()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPlatformList()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getPageTitle()Lcn/sharesdk/framework/TitleLayout;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 185
    new-instance v0, Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/framework/TitleLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    .line 186
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/TitleLayout;->setId(I)V

    .line 191
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v0}, Lcn/sharesdk/framework/TitleLayout;->getBtnBack()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v1, "multi_share"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 193
    if-lez v0, :cond_0

    .line 194
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v0}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v1, "share"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 198
    if-lez v0, :cond_1

    .line 199
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 201
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v0}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 204
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 205
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 206
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 207
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/TitleLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    return-object v0
.end method

.method private getPageView()Landroid/widget/RelativeLayout;
    .locals 5

    .prologue
    .line 157
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    .line 158
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-boolean v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->dialogMode:Z

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 161
    const v1, -0x3fcdcdce

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 162
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v1

    .line 163
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1000
    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->l(Landroid/content/Context;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 163
    shl-int/lit8 v3, v1, 0x1

    sub-int/2addr v2, v3

    .line 164
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 166
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 167
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 168
    const/16 v1, 0xd

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 169
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 172
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPageTitle()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 173
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPageBody()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 174
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getImagePin()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 180
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    return-object v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPageTitle()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 177
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPageBody()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 178
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getImagePin()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private getPlatLogo(Lcn/sharesdk/framework/Platform;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 648
    if-nez p1, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-object v0

    .line 652
    :cond_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    .line 653
    if-eqz v1, :cond_0

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logo_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 658
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 659
    if-lez v1, :cond_0

    .line 660
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getPlatformList()Landroid/widget/LinearLayout;
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 462
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 463
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 465
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 468
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v3, "share_to"

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 469
    if-lez v2, :cond_0

    .line 470
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 472
    :cond_0
    const v2, -0x303031

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 473
    const/4 v2, 0x1

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 474
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v2

    .line 475
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 477
    const/16 v4, 0x10

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 478
    invoke-virtual {v3, v2, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 479
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 482
    new-instance v1, Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 483
    invoke-virtual {v1, v6}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 484
    invoke-virtual {v1, v6}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 485
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 487
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 488
    invoke-virtual {v1, v3}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 491
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llPlat:Landroid/widget/LinearLayout;

    .line 492
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llPlat:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llPlat:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 496
    return-object v0
.end method

.method private getSep()Landroid/view/View;
    .locals 4

    .prologue
    .line 451
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 452
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 453
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v1

    .line 454
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 456
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    return-object v0
.end method

.method private getThumbView()Landroid/widget/RelativeLayout;
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 276
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    .line 277
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 278
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x52

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v0

    .line 279
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x62

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v1

    .line 280
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 282
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    .line 285
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v1, "btn_back_nor"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 286
    if-lez v0, :cond_0

    .line 287
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 290
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 292
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v0

    .line 293
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 294
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x4a

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v0

    .line 295
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 297
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v2

    .line 298
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v3

    .line 299
    invoke-virtual {v1, v6, v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 300
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    new-instance v4, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$2;

    invoke-direct {v4, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$2;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 312
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v4, 0x18

    invoke-static {v1, v4}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v1

    .line 313
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->progressBar:Landroid/widget/ProgressBar;

    .line 314
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v1, v1, v1, v1}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 315
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 317
    invoke-virtual {v1, v6, v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 318
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 321
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 322
    new-instance v1, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$3;

    invoke-direct {v1, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$3;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v2, "img_cancel"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 331
    if-lez v1, :cond_1

    .line 332
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v1

    .line 335
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 337
    const/16 v1, 0xb

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 338
    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 339
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 342
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->haveImage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 343
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 345
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 689
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 691
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :goto_0
    return-void

    .line 692
    :catch_0
    move-exception v0

    .line 693
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private showThumb()V
    .locals 1

    .prologue
    .line 349
    new-instance v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;

    invoke-direct {v0, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->initImageList(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;)Z

    .line 363
    return-void
.end method


# virtual methods
.method public afterPlatformListGot()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v2, 0x0

    .line 596
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    if-nez v0, :cond_1

    move v1, v2

    .line 597
    :goto_0
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    .line 599
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v3, 0x18

    invoke-static {v0, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v5

    .line 600
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 601
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v3, 0x9

    invoke-static {v0, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v7

    .line 602
    invoke-virtual {v6, v2, v2, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 603
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 605
    const/16 v0, 0x33

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move v4, v2

    move v0, v2

    .line 607
    :goto_1
    if-ge v4, v1, :cond_3

    .line 608
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v9, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 609
    invoke-virtual {v9, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    add-int/lit8 v3, v1, -0x1

    if-lt v4, v3, :cond_0

    .line 611
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    :cond_0
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llPlat:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 614
    invoke-virtual {v9, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 617
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 618
    iget-object v10, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v10, v10, v4

    invoke-direct {p0, v10}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPlatLogo(Lcn/sharesdk/framework/Platform;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 619
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    invoke-virtual {v9, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 623
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    new-instance v10, Landroid/view/View;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v10, v3, v4

    .line 624
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v3, v3, v4

    const v10, -0x30000001

    invoke-virtual {v3, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 625
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v3, v3, v4

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v10

    .line 627
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v3, v0

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform;

    .line 628
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 629
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v0, v0, v4

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move v0, v4

    :goto_3
    move v3, v0

    .line 632
    goto :goto_2

    .line 596
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    array-length v0, v0

    move v1, v0

    goto/16 :goto_0

    .line 633
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v0, v0, v4

    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v0, v0, v4

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 607
    add-int/lit8 v4, v4, 0x1

    move v0, v3

    goto/16 :goto_1

    .line 638
    :cond_3
    const-wide/16 v8, 0x14d

    new-instance v1, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$6;

    invoke-direct {v1, p0, v0, v5, v7}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$6;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;III)V

    invoke-static {v2, v8, v9, v1}, Lcom/mob/tools/b/j;->a(IJLandroid/os/Handler$Callback;)Z

    .line 645
    return-void

    :cond_4
    move v0, v3

    goto :goto_3
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 678
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 668
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 543
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getBtnBack()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 544
    const/4 v1, 0x0

    .line 545
    :goto_0
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 546
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 547
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v0, v1, v0

    .line 553
    :goto_1
    if-eqz v0, :cond_0

    .line 554
    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->finish()V

    .line 592
    :cond_1
    :goto_2
    return-void

    .line 545
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    :cond_3
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 561
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 562
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->shareParamMap:Ljava/util/HashMap;

    const-string v3, "text"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v0

    .line 565
    :goto_3
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 566
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    .line 567
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 571
    :cond_5
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 572
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->setResultAndFinish()V

    goto :goto_2

    .line 574
    :cond_6
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v2, "select_one_plat_at_least"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 575
    if-lez v1, :cond_1

    .line 576
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 582
    :cond_7
    instance-of v1, p1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_8

    .line 583
    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_2

    .line 587
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_9

    .line 588
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 590
    :cond_9
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_a
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const v2, 0x7f323232

    .line 703
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 704
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 705
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->hideSoftInput()V

    .line 706
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 707
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 709
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 710
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$7;

    invoke-direct {v1, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$7;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 729
    :goto_0
    return-void

    .line 717
    :cond_0
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->hideSoftInput()V

    .line 718
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 719
    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 721
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 722
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$8;

    invoke-direct {v1, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$8;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->shareParamMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->finish()V

    .line 154
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->genBackground()V

    .line 116
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPageView()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 118
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->showThumb()V

    .line 121
    new-instance v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    .line 153
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->start()V

    goto :goto_0
.end method

.method public onFinish()Z
    .locals 1

    .prologue
    .line 698
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->hideSoftInput()V

    .line 699
    invoke-super {p0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onResult(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 681
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getJoinSelectedUser(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 682
    if-eqz v0, :cond_0

    .line 683
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 685
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    .line 671
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    rsub-int v0, v0, 0x8c

    .line 672
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    if-lez v0, :cond_0

    const v0, -0x303031

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 674
    return-void

    .line 673
    :cond_0
    const/high16 v0, -0x10000

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->setActivity(Landroid/app/Activity;)V

    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 100
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 101
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method
