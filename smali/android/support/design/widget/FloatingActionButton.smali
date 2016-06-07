.class public Landroid/support/design/widget/FloatingActionButton;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/design/widget/r;
    a = Landroid/support/design/widget/z;
.end annotation


# instance fields
.field private a:Landroid/content/res/ColorStateList;

.field private b:Landroid/graphics/PorterDuff$Mode;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/support/design/widget/H;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/graphics/Rect;

    .line 85
    sget-object v0, Landroid/support/design/R$styleable;->FloatingActionButton:[I

    sget v1, Landroid/support/design/R$style;->Widget_Design_FloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 88
    sget v0, Landroid/support/design/R$styleable;->FloatingActionButton_android_background:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 89
    sget v0, Landroid/support/design/R$styleable;->FloatingActionButton_backgroundTint:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    .line 90
    sget v0, Landroid/support/design/R$styleable;->FloatingActionButton_backgroundTintMode:I

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 1305
    sparse-switch v0, :sswitch_data_0

    .line 1317
    const/4 v0, 0x0

    .line 90
    :goto_0
    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    .line 92
    sget v0, Landroid/support/design/R$styleable;->FloatingActionButton_rippleColor:I

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButton;->d:I

    .line 93
    sget v0, Landroid/support/design/R$styleable;->FloatingActionButton_fabSize:I

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButton;->e:I

    .line 94
    sget v0, Landroid/support/design/R$styleable;->FloatingActionButton_borderWidth:I

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButton;->c:I

    .line 95
    sget v0, Landroid/support/design/R$styleable;->FloatingActionButton_elevation:I

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 96
    sget v0, Landroid/support/design/R$styleable;->FloatingActionButton_pressedTranslationZ:I

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 98
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    new-instance v0, Landroid/support/design/widget/y;

    invoke-direct {v0, p0}, Landroid/support/design/widget/y;-><init>(Landroid/support/design/widget/FloatingActionButton;)V

    .line 120
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 121
    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 122
    new-instance v2, Landroid/support/design/widget/I;

    invoke-direct {v2, p0, v0}, Landroid/support/design/widget/I;-><init>(Landroid/view/View;Landroid/support/design/widget/N;)V

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/H;

    .line 129
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroid/support/design/R$dimen;->fab_content_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 130
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->c()I

    move-result v2

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/design/widget/FloatingActionButton;->f:I

    .line 132
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/H;

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    iget v4, p0, Landroid/support/design/widget/FloatingActionButton;->d:I

    iget v5, p0, Landroid/support/design/widget/FloatingActionButton;->c:I

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/H;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    .line 134
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/H;

    invoke-virtual {v0, v6}, Landroid/support/design/widget/H;->a(F)V

    .line 135
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/H;

    invoke-virtual {v0, v7}, Landroid/support/design/widget/H;->b(F)V

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->setClickable(Z)V

    .line 138
    return-void

    .line 1307
    :sswitch_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 1309
    :sswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 1311
    :sswitch_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 1313
    :sswitch_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 1315
    :sswitch_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 123
    :cond_0
    const/16 v3, 0xc

    if-lt v2, v3, :cond_1

    .line 124
    new-instance v2, Landroid/support/design/widget/F;

    invoke-direct {v2, p0, v0}, Landroid/support/design/widget/F;-><init>(Landroid/view/View;Landroid/support/design/widget/N;)V

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/H;

    goto :goto_1

    .line 126
    :cond_1
    new-instance v2, Landroid/support/design/widget/A;

    invoke-direct {v2, p0, v0}, Landroid/support/design/widget/A;-><init>(Landroid/view/View;Landroid/support/design/widget/N;)V

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/H;

    goto :goto_1

    .line 1305
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_2
        0xe -> :sswitch_3
        0xf -> :sswitch_4
    .end sparse-switch
.end method

.method private static a(II)I
    .locals 2

    .prologue
    .line 281
    .line 282
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 283
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 284
    sparse-switch v1, :sswitch_data_0

    .line 301
    :goto_0
    :sswitch_0
    return p0

    .line 294
    :sswitch_1
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :sswitch_2
    move p0, v0

    .line 298
    goto :goto_0

    .line 284
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic a(Landroid/support/design/widget/FloatingActionButton;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic a(Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic b(Landroid/support/design/widget/FloatingActionButton;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->f:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 237
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/H;

    invoke-virtual {v0}, Landroid/support/design/widget/H;->c()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/H;

    invoke-virtual {v0}, Landroid/support/design/widget/H;->b()V

    goto :goto_0

    .line 253
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    goto :goto_0
.end method

.method final c()I
    .locals 2

    .prologue
    .line 258
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->e:I

    packed-switch v0, :pswitch_data_0

    .line 263
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->fab_size_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    return v0

    .line 260
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->fab_size_mini:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 269
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 270
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/H;

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/H;->a([I)V

    .line 271
    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 276
    invoke-super {p0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    .line 277
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/H;

    invoke-virtual {v0}, Landroid/support/design/widget/H;->a()V

    .line 278
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->c()I

    move-result v0

    .line 144
    invoke-static {v0, p1}, Landroid/support/design/widget/FloatingActionButton;->a(II)I

    move-result v1

    .line 145
    invoke-static {v0, p2}, Landroid/support/design/widget/FloatingActionButton;->a(II)I

    move-result v0

    .line 149
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 152
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setMeasuredDimension(II)V

    .line 155
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 223
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/H;

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    iget v4, p0, Landroid/support/design/widget/FloatingActionButton;->d:I

    iget v5, p0, Landroid/support/design/widget/FloatingActionButton;->c:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/H;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    .line 226
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/H;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/H;->a(Landroid/content/res/ColorStateList;)V

    .line 191
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/H;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/H;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 218
    return-void
.end method

.method public setRippleColor(I)V
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->d:I

    if-eq v0, p1, :cond_0

    .line 166
    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->d:I

    .line 167
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/H;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/H;->a(I)V

    .line 169
    :cond_0
    return-void
.end method
