.class public Landroid/support/design/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/am;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/support/design/widget/am;

.field private final c:Landroid/support/design/widget/aj;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/content/res/ColorStateList;

.field private final j:I

.field private final k:I

.field private l:I

.field private final m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Lcom/arcsoft/hpay100/a/a;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/support/design/widget/au;

.field private t:Landroid/support/design/widget/au;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 225
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    .line 228
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 230
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout;->setFillViewport(Z)V

    .line 233
    new-instance v0, Landroid/support/design/widget/aj;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/aj;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    .line 234
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/TabLayout;->addView(Landroid/view/View;II)V

    .line 236
    sget-object v0, Landroid/support/design/R$styleable;->TabLayout:[I

    sget v1, Landroid/support/design/R$style;->Widget_Design_TabLayout:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 239
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/aj;->b(I)V

    .line 241
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/aj;->a(I)V

    .line 243
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabTextAppearance:I

    sget v2, Landroid/support/design/R$style;->TextAppearance_Design_Tab:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->h:I

    .line 246
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPadding:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->g:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->f:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->e:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->d:I

    .line 248
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingStart:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->d:I

    .line 250
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingTop:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->e:I

    .line 252
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingEnd:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->f:I

    .line 254
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingBottom:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->g:I

    .line 258
    iget v1, p0, Landroid/support/design/widget/TabLayout;->h:I

    invoke-direct {p0, v1}, Landroid/support/design/widget/TabLayout;->f(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    .line 260
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    .line 265
    :cond_0
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 270
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, v1}, Landroid/support/design/widget/TabLayout;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    .line 273
    :cond_1
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabMinWidth:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->k:I

    .line 274
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabMaxWidth:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->m:I

    .line 275
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabBackground:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->j:I

    .line 276
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabContentStart:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->n:I

    .line 277
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabMode:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->p:I

    .line 278
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabGravity:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->o:I

    .line 279
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 282
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->a()V

    .line 283
    return-void
.end method

.method private a(IF)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 813
    iget v1, p0, Landroid/support/design/widget/TabLayout;->p:I

    if-nez v1, :cond_1

    .line 814
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 815
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    invoke-virtual {v2}, Landroid/support/design/widget/aj;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/support/design/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 818
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 819
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 821
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, v2

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 826
    :cond_1
    return v0

    .line 815
    :cond_2
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_0

    :cond_3
    move v1, v0

    .line 818
    goto :goto_1
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->j:I

    return v0
.end method

.method private static a(II)Landroid/content/res/ColorStateList;
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1494
    new-array v0, v1, [[I

    .line 1495
    new-array v1, v1, [I

    .line 1498
    sget-object v2, Landroid/support/design/widget/TabLayout;->SELECTED_STATE_SET:[I

    aput-object v2, v0, v3

    .line 1499
    aput p1, v1, v3

    .line 1503
    sget-object v2, Landroid/support/design/widget/TabLayout;->EMPTY_STATE_SET:[I

    aput-object v2, v0, v4

    .line 1504
    aput p0, v1, v4

    .line 1507
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout;Landroid/support/design/widget/au;)Landroid/support/design/widget/au;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->t:Landroid/support/design/widget/au;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 830
    .line 831
    iget v0, p0, Landroid/support/design/widget/TabLayout;->p:I

    if-nez v0, :cond_0

    .line 833
    iget v0, p0, Landroid/support/design/widget/TabLayout;->n:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->d:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 835
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    invoke-static {v2, v0, v1, v1, v1}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 837
    iget v0, p0, Landroid/support/design/widget/TabLayout;->p:I

    packed-switch v0, :pswitch_data_0

    .line 846
    :goto_1
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->b()V

    .line 847
    return-void

    .line 839
    :pswitch_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/aj;->setGravity(I)V

    goto :goto_1

    .line 842
    :pswitch_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/design/widget/aj;->setGravity(I)V

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    .line 837
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout;I)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->b(I)V

    return-void
.end method

.method private a(Landroid/support/design/widget/am;I)V
    .locals 3

    .prologue
    .line 629
    invoke-virtual {p1, p2}, Landroid/support/design/widget/am;->a(I)V

    .line 630
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 632
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 633
    add-int/lit8 v0, p2, 0x1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 634
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/am;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/am;->a(I)V

    .line 633
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 636
    :cond_0
    return-void
.end method

.method private a(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    .prologue
    .line 669
    iget v0, p0, Landroid/support/design/widget/TabLayout;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout;->o:I

    if-nez v0, :cond_0

    .line 670
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 671
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 676
    :goto_0
    return-void

    .line 673
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 674
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->d:I

    return v0
.end method

.method static synthetic b(Landroid/support/design/widget/TabLayout;I)I
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->c(I)I

    move-result v0

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 850
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    invoke-virtual {v0}, Landroid/support/design/widget/aj;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 851
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 852
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 853
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 850
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 855
    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/an;

    .line 640
    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {v0}, Landroid/support/design/widget/an;->a()V

    .line 643
    :cond_0
    return-void
.end method

.method private c(I)I
    .locals 2

    .prologue
    .line 679
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method static synthetic c(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->e:I

    return v0
.end method

.method static synthetic c(Landroid/support/design/widget/TabLayout;I)I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->o:I

    return v0
.end method

.method static synthetic d(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->f:I

    return v0
.end method

.method private d(I)V
    .locals 8

    .prologue
    const/16 v7, 0x12c

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 734
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 768
    :goto_0
    return-void

    .line 738
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    .line 6309
    invoke-virtual {v3}, Landroid/support/design/widget/aj;->getChildCount()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 6310
    invoke-virtual {v3, v2}, Landroid/support/design/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 6311
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    if-gtz v5, :cond_3

    move v0, v1

    .line 738
    :cond_1
    if-eqz v0, :cond_4

    .line 742
    :cond_2
    invoke-virtual {p0, p1, v6, v1}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_0

    .line 6309
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 746
    :cond_4
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getScrollX()I

    move-result v0

    .line 747
    invoke-direct {p0, p1, v6}, Landroid/support/design/widget/TabLayout;->a(IF)I

    move-result v1

    .line 749
    if-eq v0, v1, :cond_6

    .line 750
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->s:Landroid/support/design/widget/au;

    if-nez v2, :cond_5

    .line 751
    invoke-static {}, Landroid/support/design/widget/aP;->a()Landroid/support/design/widget/au;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->s:Landroid/support/design/widget/au;

    .line 752
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->s:Landroid/support/design/widget/au;

    sget-object v3, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/au;->a(Landroid/view/animation/Interpolator;)V

    .line 753
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->s:Landroid/support/design/widget/au;

    invoke-virtual {v2, v7}, Landroid/support/design/widget/au;->a(I)V

    .line 754
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->s:Landroid/support/design/widget/au;

    new-instance v3, Landroid/support/design/widget/ai;

    invoke-direct {v3, p0}, Landroid/support/design/widget/ai;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/au;->a(Landroid/support/design/widget/ay;)V

    .line 762
    :cond_5
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->s:Landroid/support/design/widget/au;

    invoke-virtual {v2, v0, v1}, Landroid/support/design/widget/au;->a(II)V

    .line 763
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->s:Landroid/support/design/widget/au;

    invoke-virtual {v0}, Landroid/support/design/widget/au;->a()V

    .line 767
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    invoke-virtual {v0, p1, v7}, Landroid/support/design/widget/aj;->a(II)V

    goto :goto_0
.end method

.method static synthetic e(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->g:I

    return v0
.end method

.method private e(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 771
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    invoke-virtual {v0}, Landroid/support/design/widget/aj;->getChildCount()I

    move-result v3

    move v2, v1

    .line 772
    :goto_0
    if-ge v2, v3, :cond_1

    .line 773
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 774
    if-ne v2, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 772
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 774
    goto :goto_1

    .line 776
    :cond_1
    return-void
.end method

.method static synthetic f(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->k:I

    return v0
.end method

.method private f(I)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 1511
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/design/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1514
    :try_start_0
    sget v0, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1516
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static synthetic g(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->l:I

    return v0
.end method

.method static synthetic h(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->h:I

    return v0
.end method

.method static synthetic i(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic j(Landroid/support/design/widget/TabLayout;)Landroid/support/design/widget/au;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->t:Landroid/support/design/widget/au;

    return-object v0
.end method

.method static synthetic k(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->p:I

    return v0
.end method

.method static synthetic l(Landroid/support/design/widget/TabLayout;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/support/design/widget/TabLayout;->o:I

    return v0
.end method

.method static synthetic m(Landroid/support/design/widget/TabLayout;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->b()V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/design/widget/am;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/am;

    return-object v0
.end method

.method final a(Landroid/support/design/widget/am;)V
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/am;Z)V

    .line 780
    return-void
.end method

.method final a(Landroid/support/design/widget/am;Z)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 783
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/am;

    if-ne v0, p1, :cond_1

    .line 784
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/am;

    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {p1}, Landroid/support/design/widget/am;->a()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->d(I)V

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/support/design/widget/am;->a()I

    move-result v0

    .line 792
    :goto_1
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->e(I)V

    .line 793
    if-eqz p2, :cond_3

    .line 794
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/am;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/am;

    invoke-virtual {v2}, Landroid/support/design/widget/am;->a()I

    move-result v2

    if-ne v2, v1, :cond_5

    :cond_2
    if-eq v0, v1, :cond_5

    .line 797
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 805
    :cond_3
    :goto_2
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/am;

    .line 806
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Lcom/arcsoft/hpay100/a/a;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Lcom/arcsoft/hpay100/a/a;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/am;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/support/design/widget/am;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 791
    goto :goto_1

    .line 799
    :cond_5
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->d(I)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    .line 686
    const/16 v0, 0x30

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->c(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 687
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 699
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 701
    iget v0, p0, Landroid/support/design/widget/TabLayout;->p:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getChildCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 704
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 705
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v1

    .line 707
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 710
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v2, v3}, Landroid/support/design/widget/TabLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 712
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 713
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 719
    :cond_0
    iget v0, p0, Landroid/support/design/widget/TabLayout;->m:I

    .line 720
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v1

    const/16 v2, 0x38

    invoke-direct {p0, v2}, Landroid/support/design/widget/TabLayout;->c(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 721
    if-eqz v0, :cond_1

    if-le v0, v1, :cond_2

    :cond_1
    move v0, v1

    .line 725
    :cond_2
    iput v0, p0, Landroid/support/design/widget/TabLayout;->l:I

    .line 726
    return-void

    .line 689
    :sswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 694
    :sswitch_1
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 687
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public setOnTabSelectedListener$160fef5a(Lcom/arcsoft/hpay100/a/a;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->q:Lcom/arcsoft/hpay100/a/a;

    .line 379
    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->t:Landroid/support/design/widget/au;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->t:Landroid/support/design/widget/au;

    invoke-virtual {v0}, Landroid/support/design/widget/au;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    invoke-virtual {v0}, Landroid/support/design/widget/aj;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 304
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/aj;->a(IF)V

    .line 305
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->a(IF)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/design/widget/TabLayout;->scrollTo(II)V

    .line 308
    if-eqz p3, :cond_0

    .line 309
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->e(I)V

    goto :goto_0
.end method

.method public setTabGravity(I)V
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Landroid/support/design/widget/TabLayout;->o:I

    if-eq v0, p1, :cond_0

    .line 511
    iput p1, p0, Landroid/support/design/widget/TabLayout;->o:I

    .line 512
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->a()V

    .line 514
    :cond_0
    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Landroid/support/design/widget/TabLayout;->p:I

    if-eq p1, v0, :cond_0

    .line 489
    iput p1, p0, Landroid/support/design/widget/TabLayout;->p:I

    .line 490
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->a()V

    .line 492
    :cond_0
    return-void
.end method

.method public setTabTextColors(II)V
    .locals 1

    .prologue
    .line 548
    invoke-static {p1, p2}, Landroid/support/design/widget/TabLayout;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 549
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 531
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/content/res/ColorStateList;

    .line 1606
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    invoke-virtual {v1}, Landroid/support/design/widget/aj;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1607
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->b(I)V

    .line 1606
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 534
    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 599
    .line 2463
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    invoke-virtual {v0}, Landroid/support/design/widget/aj;->removeAllViews()V

    .line 2465
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2466
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/am;

    .line 2467
    invoke-virtual {v0, v8}, Landroid/support/design/widget/am;->a(I)V

    .line 2468
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2471
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/am;

    .line 600
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_5

    .line 3390
    new-instance v2, Landroid/support/design/widget/am;

    invoke-direct {v2, p0}, Landroid/support/design/widget/am;-><init>(Landroid/support/design/widget/TabLayout;)V

    .line 601
    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/am;->a(Ljava/lang/CharSequence;)Landroid/support/design/widget/am;

    move-result-object v2

    .line 4320
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    .line 4341
    invoke-static {v2}, Landroid/support/design/widget/am;->a(Landroid/support/design/widget/am;)Landroid/support/design/widget/TabLayout;

    move-result-object v4

    if-eq v4, p0, :cond_1

    .line 4342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5612
    :cond_1
    new-instance v4, Landroid/support/design/widget/an;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Landroid/support/design/widget/an;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;Landroid/support/design/widget/am;)V

    .line 5613
    invoke-virtual {v4, v9}, Landroid/support/design/widget/an;->setFocusable(Z)V

    .line 5615
    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->r:Landroid/view/View$OnClickListener;

    if-nez v5, :cond_2

    .line 5616
    new-instance v5, Landroid/support/design/widget/ah;

    invoke-direct {v5, p0}, Landroid/support/design/widget/ah;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v5, p0, Landroid/support/design/widget/TabLayout;->r:Landroid/view/View$OnClickListener;

    .line 5624
    :cond_2
    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/an;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4647
    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->c:Landroid/support/design/widget/aj;

    .line 5662
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5664
    invoke-direct {p0, v6}, Landroid/support/design/widget/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 4647
    invoke-virtual {v5, v4, v6}, Landroid/support/design/widget/aj;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4648
    if-eqz v3, :cond_3

    .line 4649
    invoke-virtual {v4, v9}, Landroid/support/design/widget/an;->setSelected(Z)V

    .line 4346
    :cond_3
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {p0, v2, v4}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/am;I)V

    .line 4347
    if-eqz v3, :cond_4

    .line 4348
    invoke-virtual {v2}, Landroid/support/design/widget/am;->c()V

    .line 600
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 603
    :cond_5
    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 569
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 570
    if-nez v0, :cond_0

    .line 571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ViewPager does not have a PagerAdapter set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 578
    new-instance v0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 581
    new-instance v0, Lcom/arcsoft/hpay100/a/a;

    invoke-direct {v0, p1}, Lcom/arcsoft/hpay100/a/a;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener$160fef5a(Lcom/arcsoft/hpay100/a/a;)V

    .line 584
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/am;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->b:Landroid/support/design/widget/am;

    invoke-virtual {v0}, Landroid/support/design/widget/am;->a()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 585
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/am;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/am;->c()V

    .line 587
    :cond_2
    return-void
.end method
