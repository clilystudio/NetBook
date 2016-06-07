.class public final Lcom/cocosw/bottomsheet/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cocosw/bottomsheet/h;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Landroid/content/DialogInterface$OnClickListener;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 429
    sget v1, Lcom/cocosw/bottomsheet/R$style;->BottomSheet_Dialog:I

    invoke-direct {p0, p1, v1}, Lcom/cocosw/bottomsheet/g;-><init>(Landroid/content/Context;I)V

    .line 430
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    sget v3, Lcom/cocosw/bottomsheet/R$attr;->bottomSheetStyle:I

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 432
    const/4 v2, 0x0

    :try_start_0
    sget v3, Lcom/cocosw/bottomsheet/R$style;->BottomSheet_Dialog:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/cocosw/bottomsheet/g;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1014
    if-nez p1, :cond_1

    .line 436
    :goto_0
    if-eqz v0, :cond_0

    .line 1601
    sget v0, Lcom/cocosw/bottomsheet/R$style;->BottomSheet_Dialog_Dark:I

    iput v0, p0, Lcom/cocosw/bottomsheet/g;->b:I

    .line 439
    :cond_0
    return-void

    .line 434
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 1017
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "customer_night_theme"

    .line 1018
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cocosw/bottomsheet/g;->c:Ljava/util/ArrayList;

    .line 447
    iput-object p1, p0, Lcom/cocosw/bottomsheet/g;->a:Landroid/content/Context;

    .line 448
    iput p2, p0, Lcom/cocosw/bottomsheet/g;->b:I

    .line 449
    return-void
.end method

.method static synthetic a(Lcom/cocosw/bottomsheet/g;)Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/cocosw/bottomsheet/g;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/cocosw/bottomsheet/g;)Landroid/view/View;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/cocosw/bottomsheet/g;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/cocosw/bottomsheet/g;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/cocosw/bottomsheet/g;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/cocosw/bottomsheet/g;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/cocosw/bottomsheet/g;->e:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/cocosw/bottomsheet/g;
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cocosw/bottomsheet/g;->d:Z

    .line 628
    return-object p0
.end method

.method public final a(I)Lcom/cocosw/bottomsheet/g;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 458
    .line 2464
    :try_start_0
    iget-object v0, p0, Lcom/cocosw/bottomsheet/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 2465
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 2466
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    .line 2467
    :goto_0
    if-eq v0, v7, :cond_4

    .line 2468
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2469
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2470
    const-string v2, "item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2471
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v2, "title"

    invoke-interface {v1, v0, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2472
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "icon"

    invoke-interface {v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2473
    const-string v3, "http://schemas.android.com/apk/res/android"

    const-string v4, "id"

    invoke-interface {v1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2475
    new-instance v4, Lcom/cocosw/bottomsheet/h;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/cocosw/bottomsheet/h;-><init>(B)V

    .line 2476
    const-string v5, "@"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, v3}, Lcom/cocosw/bottomsheet/h;->a(Lcom/cocosw/bottomsheet/h;I)I

    .line 2587
    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2477
    :goto_1
    invoke-static {v4, v0}, Lcom/cocosw/bottomsheet/h;->a(Lcom/cocosw/bottomsheet/h;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2478
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2479
    iget-object v0, p0, Lcom/cocosw/bottomsheet/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "@"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/cocosw/bottomsheet/h;->a(Lcom/cocosw/bottomsheet/h;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 2481
    :cond_0
    iget-object v0, p0, Lcom/cocosw/bottomsheet/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2488
    :cond_1
    :goto_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    goto :goto_0

    .line 2590
    :cond_2
    const-string v3, "@"

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2591
    iget-object v3, p0, Lcom/cocosw/bottomsheet/g;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 2482
    :cond_3
    const-string v2, "divider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2483
    new-instance v0, Lcom/cocosw/bottomsheet/h;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/cocosw/bottomsheet/h;-><init>(B)V

    .line 2484
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/cocosw/bottomsheet/h;->a:Z

    .line 2485
    iget-object v2, p0, Lcom/cocosw/bottomsheet/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2490
    :catch_0
    move-exception v0

    .line 2491
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    :cond_4
    return-object p0
.end method

.method public final a(III)Lcom/cocosw/bottomsheet/g;
    .locals 4

    .prologue
    .line 510
    new-instance v0, Lcom/cocosw/bottomsheet/h;

    iget-object v1, p0, Lcom/cocosw/bottomsheet/g;->a:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/cocosw/bottomsheet/g;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/cocosw/bottomsheet/h;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;B)V

    .line 3497
    iget-object v1, p0, Lcom/cocosw/bottomsheet/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    return-object p0
.end method

.method public final a(Landroid/content/DialogInterface$OnClickListener;)Lcom/cocosw/bottomsheet/g;
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/cocosw/bottomsheet/g;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 583
    return-object p0
.end method

.method public final b()Lcom/cocosw/bottomsheet/a;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    .line 638
    new-instance v0, Lcom/cocosw/bottomsheet/a;

    iget-object v1, p0, Lcom/cocosw/bottomsheet/g;->a:Landroid/content/Context;

    iget v2, p0, Lcom/cocosw/bottomsheet/g;->b:I

    invoke-direct {v0, v1, v2}, Lcom/cocosw/bottomsheet/a;-><init>(Landroid/content/Context;I)V

    .line 639
    invoke-static {v0, p0}, Lcom/cocosw/bottomsheet/a;->a(Lcom/cocosw/bottomsheet/a;Lcom/cocosw/bottomsheet/g;)Lcom/cocosw/bottomsheet/g;

    .line 640
    return-object v0
.end method
