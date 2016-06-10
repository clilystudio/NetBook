.class Landroid/support/v7/app/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/view/View;

.field private D:Landroid/widget/ListAdapter;

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Landroid/os/Handler;

.field private final N:Landroid/view/View$OnClickListener;

.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v7/app/B;

.field private final c:Landroid/view/Window;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/view/View;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Landroid/widget/Button;

.field private o:Ljava/lang/CharSequence;

.field private p:Landroid/os/Message;

.field private q:Landroid/widget/Button;

.field private r:Ljava/lang/CharSequence;

.field private s:Landroid/os/Message;

.field private t:Landroid/widget/Button;

.field private u:Ljava/lang/CharSequence;

.field private v:Landroid/os/Message;

.field private w:Landroid/widget/ScrollView;

.field private x:I

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/B;Landroid/view/Window;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v3, p0, Landroid/support/v7/app/d;->m:Z

    .line 89
    iput v3, p0, Landroid/support/v7/app/d;->x:I

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/d;->E:I

    .line 108
    iput v3, p0, Landroid/support/v7/app/d;->L:I

    .line 112
    new-instance v0, Landroid/support/v7/app/e;

    invoke-direct {v0, p0}, Landroid/support/v7/app/e;-><init>(Landroid/support/v7/app/d;)V

    iput-object v0, p0, Landroid/support/v7/app/d;->N:Landroid/view/View$OnClickListener;

    .line 169
    iput-object p1, p0, Landroid/support/v7/app/d;->a:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Landroid/support/v7/app/d;->b:Landroid/support/v7/app/B;

    .line 171
    iput-object p3, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    .line 172
    new-instance v0, Landroid/support/v7/app/h;

    invoke-direct {v0, p2}, Landroid/support/v7/app/h;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Landroid/support/v7/app/d;->M:Landroid/os/Handler;

    .line 174
    const/4 v0, 0x0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog:[I

    sget v2, Landroid/support/v7/appcompat/R$attr;->alertDialogStyle:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 177
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_android_layout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/d;->F:I

    .line 178
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/d;->G:I

    .line 180
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/d;->H:I

    .line 181
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/d;->I:I

    .line 182
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/d;->J:I

    .line 184
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/d;->K:I

    .line 186
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/d;I)I
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Landroid/support/v7/app/d;->E:I

    return p1
.end method

.method static synthetic a(Landroid/support/v7/app/d;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/app/d;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/app/d;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Landroid/support/v7/app/d;->D:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic a(Landroid/support/v7/app/d;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    return-object p1
.end method

.method private static a(Landroid/widget/Button;)V
    .locals 2

    .prologue
    .line 607
    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 608
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 609
    const/high16 v1, 0x3f000000

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 610
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    return-void
.end method

.method static synthetic b(Landroid/support/v7/app/d;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/app/d;->p:Landroid/os/Message;

    return-object v0
.end method

.method private static b(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    :goto_0
    return v0

    .line 194
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    move v0, v1

    .line 195
    goto :goto_0

    .line 198
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 199
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 200
    :cond_2
    if-lez v2, :cond_3

    .line 201
    add-int/lit8 v2, v2, -0x1

    .line 202
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 203
    invoke-static {v3}, Landroid/support/v7/app/d;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 208
    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v7/app/d;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/app/d;->q:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/app/d;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/app/d;->s:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/app/d;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/app/d;->t:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v7/app/d;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/app/d;->v:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/app/d;)Landroid/support/v7/app/B;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/app/d;->b:Landroid/support/v7/app/B;

    return-object v0
.end method

.method static synthetic h(Landroid/support/v7/app/d;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/app/d;->M:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Landroid/support/v7/app/d;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Landroid/support/v7/app/d;->H:I

    return v0
.end method

.method static synthetic j(Landroid/support/v7/app/d;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Landroid/support/v7/app/d;->J:I

    return v0
.end method

.method static synthetic k(Landroid/support/v7/app/d;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Landroid/support/v7/app/d;->K:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 12

    .prologue
    const/high16 v11, 0x20000

    const/4 v10, -0x1

    const/4 v3, 0x1

    const/16 v9, 0x8

    const/4 v2, 0x0

    .line 213
    iget-object v0, p0, Landroid/support/v7/app/d;->b:Landroid/support/v7/app/B;

    .line 1127
    invoke-virtual {v0}, Landroid/support/v7/app/B;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/m;->b(I)Z

    .line 1221
    iget v0, p0, Landroid/support/v7/app/d;->G:I

    .line 1227
    iget v0, p0, Landroid/support/v7/app/d;->F:I

    .line 216
    iget-object v1, p0, Landroid/support/v7/app/d;->b:Landroid/support/v7/app/B;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/B;->setContentView(I)V

    .line 1407
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1522
    iget-object v1, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    sget v4, Landroid/support/v7/appcompat/R$id;->scrollView:I

    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Landroid/support/v7/app/d;->w:Landroid/widget/ScrollView;

    .line 1523
    iget-object v1, p0, Landroid/support/v7/app/d;->w:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 1526
    iget-object v1, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v4, 0x102000b

    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v7/app/d;->B:Landroid/widget/TextView;

    .line 1527
    iget-object v1, p0, Landroid/support/v7/app/d;->B:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1531
    iget-object v1, p0, Landroid/support/v7/app/d;->e:Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    .line 1532
    iget-object v0, p0, Landroid/support/v7/app/d;->B:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/app/d;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1554
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v7/app/d;->n:Landroid/widget/Button;

    .line 1555
    iget-object v0, p0, Landroid/support/v7/app/d;->n:Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v7/app/d;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1557
    iget-object v0, p0, Landroid/support/v7/app/d;->o:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1558
    iget-object v0, p0, Landroid/support/v7/app/d;->n:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v2

    .line 1565
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v4, 0x102001a

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v7/app/d;->q:Landroid/widget/Button;

    .line 1566
    iget-object v0, p0, Landroid/support/v7/app/d;->q:Landroid/widget/Button;

    iget-object v4, p0, Landroid/support/v7/app/d;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1568
    iget-object v0, p0, Landroid/support/v7/app/d;->r:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1569
    iget-object v0, p0, Landroid/support/v7/app/d;->q:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1577
    :goto_2
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v4, 0x102001b

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v7/app/d;->t:Landroid/widget/Button;

    .line 1578
    iget-object v0, p0, Landroid/support/v7/app/d;->t:Landroid/widget/Button;

    iget-object v4, p0, Landroid/support/v7/app/d;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1580
    iget-object v0, p0, Landroid/support/v7/app/d;->u:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1581
    iget-object v0, p0, Landroid/support/v7/app/d;->t:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1589
    :goto_3
    iget-object v0, p0, Landroid/support/v7/app/d;->a:Landroid/content/Context;

    .line 2163
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 2164
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v5, Landroid/support/v7/appcompat/R$attr;->alertDialogCenterButtons:I

    invoke-virtual {v0, v5, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2165
    iget v0, v4, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_e

    move v0, v3

    .line 1589
    :goto_4
    if-eqz v0, :cond_1

    .line 1594
    if-ne v1, v3, :cond_f

    .line 1595
    iget-object v0, p0, Landroid/support/v7/app/d;->n:Landroid/widget/Button;

    invoke-static {v0}, Landroid/support/v7/app/d;->a(Landroid/widget/Button;)V

    .line 1603
    :cond_1
    :goto_5
    if-eqz v1, :cond_11

    move v4, v3

    .line 1411
    :goto_6
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1412
    iget-object v1, p0, Landroid/support/v7/app/d;->a:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v6, Landroid/support/v7/appcompat/R$styleable;->AlertDialog:[I

    sget v7, Landroid/support/v7/appcompat/R$attr;->alertDialogStyle:I

    invoke-static {v1, v5, v6, v7, v2}, Lcom/handmark/pulltorefresh/library/internal/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/handmark/pulltorefresh/library/internal/e;

    move-result-object v5

    .line 2474
    iget-object v1, p0, Landroid/support/v7/app/d;->C:Landroid/view/View;

    if-eqz v1, :cond_12

    .line 2476
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v1, v10, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2479
    iget-object v6, p0, Landroid/support/v7/app/d;->C:Landroid/view/View;

    invoke-virtual {v0, v6, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2482
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2483
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1416
    :goto_7
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1417
    if-nez v4, :cond_2

    .line 1418
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1419
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->textSpacerNoButtons:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1420
    if-eqz v0, :cond_2

    .line 1421
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1425
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1427
    iget-object v1, p0, Landroid/support/v7/app/d;->g:Landroid/view/View;

    if-eqz v1, :cond_17

    .line 1428
    iget-object v1, p0, Landroid/support/v7/app/d;->g:Landroid/view/View;

    move-object v4, v1

    .line 1436
    :goto_8
    if-eqz v4, :cond_3

    move v2, v3

    .line 1437
    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v4}, Landroid/support/v7/app/d;->b(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1438
    :cond_4
    iget-object v1, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    invoke-virtual {v1, v11, v11}, Landroid/view/Window;->setFlags(II)V

    .line 1442
    :cond_5
    if-eqz v2, :cond_19

    .line 1443
    iget-object v1, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    sget v2, Landroid/support/v7/appcompat/R$id;->custom:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1444
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1446
    iget-boolean v2, p0, Landroid/support/v7/app/d;->m:Z

    if-eqz v2, :cond_6

    .line 1447
    iget v2, p0, Landroid/support/v7/app/d;->i:I

    iget v4, p0, Landroid/support/v7/app/d;->j:I

    iget v6, p0, Landroid/support/v7/app/d;->k:I

    iget v7, p0, Landroid/support/v7/app/d;->l:I

    invoke-virtual {v1, v2, v4, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1451
    :cond_6
    iget-object v1, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    if-eqz v1, :cond_7

    .line 1452
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1458
    :cond_7
    :goto_9
    iget-object v0, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    .line 1459
    if-eqz v0, :cond_8

    iget-object v1, p0, Landroid/support/v7/app/d;->D:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_8

    .line 1460
    iget-object v1, p0, Landroid/support/v7/app/d;->D:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1461
    iget v1, p0, Landroid/support/v7/app/d;->E:I

    .line 1462
    if-ltz v1, :cond_8

    .line 1463
    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1464
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1468
    :cond_8
    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/internal/e;->b()V

    .line 218
    return-void

    .line 1534
    :cond_9
    iget-object v1, p0, Landroid/support/v7/app/d;->B:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1535
    iget-object v1, p0, Landroid/support/v7/app/d;->w:Landroid/widget/ScrollView;

    iget-object v4, p0, Landroid/support/v7/app/d;->B:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 1537
    iget-object v1, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    if-eqz v1, :cond_a

    .line 1538
    iget-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1539
    iget-object v1, p0, Landroid/support/v7/app/d;->w:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1540
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1541
    iget-object v4, p0, Landroid/support/v7/app/d;->f:Landroid/widget/ListView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1544
    :cond_a
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 1560
    :cond_b
    iget-object v0, p0, Landroid/support/v7/app/d;->n:Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v7/app/d;->o:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1561
    iget-object v0, p0, Landroid/support/v7/app/d;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v3

    .line 1562
    goto/16 :goto_1

    .line 1571
    :cond_c
    iget-object v0, p0, Landroid/support/v7/app/d;->q:Landroid/widget/Button;

    iget-object v4, p0, Landroid/support/v7/app/d;->r:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1572
    iget-object v0, p0, Landroid/support/v7/app/d;->q:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1574
    or-int/lit8 v1, v1, 0x2

    goto/16 :goto_2

    .line 1583
    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/d;->t:Landroid/widget/Button;

    iget-object v4, p0, Landroid/support/v7/app/d;->u:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1584
    iget-object v0, p0, Landroid/support/v7/app/d;->t:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1586
    or-int/lit8 v1, v1, 0x4

    goto/16 :goto_3

    :cond_e
    move v0, v2

    .line 2165
    goto/16 :goto_4

    .line 1596
    :cond_f
    const/4 v0, 0x2

    if-ne v1, v0, :cond_10

    .line 1597
    iget-object v0, p0, Landroid/support/v7/app/d;->q:Landroid/widget/Button;

    invoke-static {v0}, Landroid/support/v7/app/d;->a(Landroid/widget/Button;)V

    goto/16 :goto_5

    .line 1598
    :cond_10
    const/4 v0, 0x4

    if-ne v1, v0, :cond_1

    .line 1599
    iget-object v0, p0, Landroid/support/v7/app/d;->t:Landroid/widget/Button;

    invoke-static {v0}, Landroid/support/v7/app/d;->a(Landroid/widget/Button;)V

    goto/16 :goto_5

    :cond_11
    move v4, v2

    .line 1603
    goto/16 :goto_6

    .line 2485
    :cond_12
    iget-object v1, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    const v6, 0x1020006

    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    .line 2487
    iget-object v1, p0, Landroid/support/v7/app/d;->d:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    move v1, v3

    .line 2488
    :goto_a
    if-eqz v1, :cond_16

    .line 2490
    iget-object v0, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->alertTitle:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/d;->A:Landroid/widget/TextView;

    .line 2491
    iget-object v0, p0, Landroid/support/v7/app/d;->A:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/app/d;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2496
    iget v0, p0, Landroid/support/v7/app/d;->x:I

    if-eqz v0, :cond_14

    .line 2497
    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    iget v1, p0, Landroid/support/v7/app/d;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    :cond_13
    move v1, v2

    .line 2487
    goto :goto_a

    .line 2498
    :cond_14
    iget-object v0, p0, Landroid/support/v7/app/d;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 2499
    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v7/app/d;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 2503
    :cond_15
    iget-object v0, p0, Landroid/support/v7/app/d;->A:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iget-object v6, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2507
    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 2511
    :cond_16
    iget-object v1, p0, Landroid/support/v7/app/d;->c:Landroid/view/Window;

    sget v6, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2512
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2513
    iget-object v1, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2514
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    .line 1429
    :cond_17
    iget v1, p0, Landroid/support/v7/app/d;->h:I

    if-eqz v1, :cond_18

    .line 1430
    iget-object v1, p0, Landroid/support/v7/app/d;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1431
    iget v4, p0, Landroid/support/v7/app/d;->h:I

    invoke-virtual {v1, v4, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    .line 1432
    goto/16 :goto_8

    .line 1433
    :cond_18
    const/4 v1, 0x0

    move-object v4, v1

    goto/16 :goto_8

    .line 1455
    :cond_19
    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_9
.end method

.method public final a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 305
    if-eqz p3, :cond_0

    .line 306
    iget-object v0, p0, Landroid/support/v7/app/d;->M:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 309
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :pswitch_0
    iput-object p2, p0, Landroid/support/v7/app/d;->o:Ljava/lang/CharSequence;

    .line 313
    iput-object p4, p0, Landroid/support/v7/app/d;->p:Landroid/os/Message;

    .line 324
    :goto_0
    return-void

    .line 317
    :pswitch_1
    iput-object p2, p0, Landroid/support/v7/app/d;->r:Ljava/lang/CharSequence;

    .line 318
    iput-object p4, p0, Landroid/support/v7/app/d;->s:Landroid/os/Message;

    goto :goto_0

    .line 322
    :pswitch_2
    iput-object p2, p0, Landroid/support/v7/app/d;->u:Ljava/lang/CharSequence;

    .line 323
    iput-object p4, p0, Landroid/support/v7/app/d;->v:Landroid/os/Message;

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 356
    iput-object p1, p0, Landroid/support/v7/app/d;->y:Landroid/graphics/drawable/Drawable;

    .line 357
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/d;->x:I

    .line 359
    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 360
    if-eqz p1, :cond_1

    .line 361
    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/d;->z:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Landroid/support/v7/app/d;->C:Landroid/view/View;

    .line 242
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 231
    iput-object p1, p0, Landroid/support/v7/app/d;->d:Ljava/lang/CharSequence;

    .line 232
    iget-object v0, p0, Landroid/support/v7/app/d;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Landroid/support/v7/app/d;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 245
    iput-object p1, p0, Landroid/support/v7/app/d;->e:Ljava/lang/CharSequence;

    .line 246
    iget-object v0, p0, Landroid/support/v7/app/d;->B:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Landroid/support/v7/app/d;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/d;->w:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
