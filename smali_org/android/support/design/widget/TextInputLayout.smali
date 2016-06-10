.class public Landroid/support/design/widget/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Ljava/lang/CharSequence;

.field private c:Z

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:I

.field private g:I

.field private final h:Landroid/support/design/widget/k;

.field private final i:Landroid/os/Handler;

.field private j:Landroid/support/design/widget/au;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v2, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    invoke-virtual {p0, v6}, Landroid/support/design/widget/TextInputLayout;->setOrientation(I)V

    .line 98
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TextInputLayout;->setWillNotDraw(Z)V

    .line 100
    new-instance v0, Landroid/support/design/widget/k;

    invoke-direct {v0, p0}, Landroid/support/design/widget/k;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    .line 101
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Landroid/support/design/widget/ao;

    invoke-direct {v1, p0}, Landroid/support/design/widget/ao;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/os/Handler;

    .line 113
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/k;->a(Landroid/view/animation/Interpolator;)V

    .line 114
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/k;->b(Landroid/view/animation/Interpolator;)V

    .line 115
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/support/design/widget/k;->d(I)V

    .line 117
    sget-object v0, Landroid/support/design/R$styleable;->TextInputLayout:[I

    sget v1, Landroid/support/design/R$style;->Widget_Design_TextInputLayout:I

    invoke-virtual {p1, p2, v0, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 119
    sget v0, Landroid/support/design/R$styleable;->TextInputLayout_android_hint:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->b:Ljava/lang/CharSequence;

    .line 121
    sget v0, Landroid/support/design/R$styleable;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 123
    if-eq v0, v2, :cond_0

    .line 124
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/k;->e(I)V

    .line 127
    :cond_0
    sget v0, Landroid/support/design/R$styleable;->TextInputLayout_errorTextAppearance:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->e:I

    .line 128
    sget v0, Landroid/support/design/R$styleable;->TextInputLayout_errorEnabled:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 1397
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1398
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x101009a

    invoke-virtual {v3, v4, v0, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1399
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 130
    :goto_0
    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->f:I

    .line 131
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    invoke-virtual {v0}, Landroid/support/design/widget/k;->e()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->g:I

    .line 133
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    iget v3, p0, Landroid/support/design/widget/TextInputLayout;->f:I

    invoke-virtual {v0, v3}, Landroid/support/design/widget/k;->a(I)V

    .line 134
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    iget v3, p0, Landroid/support/design/widget/TextInputLayout;->f:I

    invoke-virtual {v0, v3}, Landroid/support/design/widget/k;->b(I)V

    .line 136
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    if-eqz v2, :cond_1

    .line 139
    invoke-virtual {p0, v6}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 142
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    .line 145
    invoke-static {p0, v6}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 149
    :cond_2
    new-instance v0, Landroid/support/design/widget/at;

    invoke-direct {v0, p0, v5}, Landroid/support/design/widget/at;-><init>(Landroid/support/design/widget/TextInputLayout;B)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 150
    return-void

    .line 1401
    :cond_3
    const v0, -0xff01

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/design/widget/TextInputLayout;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private a(F)V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/support/design/widget/au;

    if-nez v0, :cond_1

    .line 380
    invoke-static {}, Landroid/support/design/widget/aP;->a()Landroid/support/design/widget/au;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/support/design/widget/au;

    .line 381
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/support/design/widget/au;

    sget-object v1, Landroid/support/design/widget/a;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/au;->a(Landroid/view/animation/Interpolator;)V

    .line 382
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/support/design/widget/au;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/au;->a(I)V

    .line 383
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/support/design/widget/au;

    new-instance v1, Landroid/support/design/widget/as;

    invoke-direct {v1, p0}, Landroid/support/design/widget/as;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/au;->a(Landroid/support/design/widget/ay;)V

    .line 392
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/support/design/widget/au;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    invoke-virtual {v1}, Landroid/support/design/widget/k;->a()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/au;->a(FF)V

    .line 393
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/support/design/widget/au;

    invoke-virtual {v0}, Landroid/support/design/widget/au;->a()V

    .line 394
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/support/design/widget/au;

    invoke-virtual {v0}, Landroid/support/design/widget/au;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Landroid/support/design/widget/au;

    invoke-virtual {v0}, Landroid/support/design/widget/au;->e()V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/design/widget/TextInputLayout;Z)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000

    const/4 v4, 0x0

    .line 228
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 229
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    .line 231
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    iget v3, p0, Landroid/support/design/widget/TextInputLayout;->f:I

    invoke-virtual {v1, v3}, Landroid/support/design/widget/k;->b(I)V

    .line 232
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    if-eqz v2, :cond_2

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->g:I

    :goto_1
    invoke-virtual {v3, v1}, Landroid/support/design/widget/k;->a(I)V

    .line 235
    if-nez v0, :cond_0

    if-eqz v2, :cond_4

    .line 2363
    :cond_0
    if-eqz p1, :cond_3

    .line 2364
    invoke-direct {p0, v5}, Landroid/support/design/widget/TextInputLayout;->a(F)V

    .line 2372
    :goto_2
    return-void

    .line 228
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    :cond_2
    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->f:I

    goto :goto_1

    .line 2366
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    invoke-virtual {v0, v5}, Landroid/support/design/widget/k;->b(F)V

    goto :goto_2

    .line 2371
    :cond_4
    if-eqz p1, :cond_5

    .line 2372
    invoke-direct {p0, v4}, Landroid/support/design/widget/TextInputLayout;->a(F)V

    goto :goto_2

    .line 2374
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/k;->b(F)V

    goto :goto_2
.end method

.method static synthetic b(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/k;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    return-object v0
.end method

.method static synthetic d(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 154
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 155
    check-cast v0, Landroid/widget/EditText;

    .line 2165
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 2166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "We already have an EditText, can only have one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2168
    :cond_0
    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    .line 2171
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/k;->a(F)V

    .line 2174
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    new-instance v1, Landroid/support/design/widget/ap;

    invoke-direct {v1, p0}, Landroid/support/design/widget/ap;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2190
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->f:I

    .line 2194
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    new-instance v1, Landroid/support/design/widget/aq;

    invoke-direct {v1, p0}, Landroid/support/design/widget/aq;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2202
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2203
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 2205
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2208
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2210
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v3

    invoke-static {v0, v1, v4, v2, v3}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 2215
    :cond_2
    invoke-direct {p0, v4}, Landroid/support/design/widget/TextInputLayout;->a(Z)V

    .line 2219
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2220
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 2221
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    invoke-virtual {v2}, Landroid/support/design/widget/k;->b()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2222
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 156
    invoke-super {p0, p1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 337
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 338
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/k;->a(Landroid/graphics/Canvas;)V

    .line 339
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 343
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 345
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLeft()I

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 347
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getRight()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 349
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBottom()I

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/support/design/widget/k;->a(IIII)V

    .line 355
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingTop()I

    move-result v3

    sub-int v4, p5, p3

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/support/design/widget/k;->b(IIII)V

    .line 358
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    invoke-virtual {v0}, Landroid/support/design/widget/k;->c()V

    .line 360
    :cond_0
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v2, 0x0

    .line 297
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->c:Z

    if-nez v0, :cond_1

    .line 298
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 303
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 306
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 307
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 310
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 332
    :cond_2
    :goto_1
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 317
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 318
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/ar;

    invoke-direct {v1, p0}, Landroid/support/design/widget/ar;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_1
.end method

.method public setErrorEnabled(Z)V
    .locals 5

    .prologue
    .line 267
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->c:Z

    if-eq v0, p1, :cond_1

    .line 268
    if-eqz p1, :cond_2

    .line 269
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/TextView;

    .line 270
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 271
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->addView(Landroid/view/View;)V

    .line 274
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 283
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->c:Z

    .line 285
    :cond_1
    return-void

    .line 280
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->removeView(Landroid/view/View;)V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 255
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->b:Ljava/lang/CharSequence;

    .line 256
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/support/design/widget/k;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/k;->a(Ljava/lang/CharSequence;)V

    .line 258
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->sendAccessibilityEvent(I)V

    .line 259
    return-void
.end method
