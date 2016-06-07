.class public final Landroid/support/v7/internal/widget/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/D;


# instance fields
.field private a:Landroid/support/v7/widget/Toolbar;

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Z

.field private i:Ljava/lang/CharSequence;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private l:Landroid/view/Window$Callback;

.field private m:Z

.field private n:Landroid/support/v7/widget/ActionMenuPresenter;

.field private o:I

.field private final p:Landroid/support/v7/internal/widget/Y;

.field private q:I

.field private r:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x1

    sget v1, Landroid/support/v7/appcompat/R$string;->abc_action_bar_up_description:I

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_ab_back_mtrl_am_alpha:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v7/internal/widget/aa;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V

    .line 89
    return-void
.end method

.method private constructor <init>(Landroid/support/v7/widget/Toolbar;ZII)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput v1, p0, Landroid/support/v7/internal/widget/aa;->o:I

    .line 83
    iput v1, p0, Landroid/support/v7/internal/widget/aa;->q:I

    .line 93
    iput-object p1, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    .line 94
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->i()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/aa;->i:Ljava/lang/CharSequence;

    .line 95
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->j()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/aa;->j:Ljava/lang/CharSequence;

    .line 96
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/aa;->h:Z

    .line 97
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/aa;->g:Landroid/graphics/drawable/Drawable;

    .line 99
    if-eqz p2, :cond_f

    .line 100
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    invoke-static {v0, v2, v3, v4, v1}, Lcom/handmark/pulltorefresh/library/internal/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/handmark/pulltorefresh/library/internal/e;

    move-result-object v0

    .line 103
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_title:I

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/internal/e;->c(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 104
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/aa;->b(Ljava/lang/CharSequence;)V

    .line 108
    :cond_0
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_subtitle:I

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/internal/e;->c(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 109
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1296
    iput-object v3, p0, Landroid/support/v7/internal/widget/aa;->j:Ljava/lang/CharSequence;

    .line 1297
    iget v4, p0, Landroid/support/v7/internal/widget/aa;->b:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    .line 1298
    iget-object v4, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 113
    :cond_1
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_logo:I

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/internal/e;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 114
    if-eqz v3, :cond_2

    .line 115
    invoke-direct {p0, v3}, Landroid/support/v7/internal/widget/aa;->c(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_2
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_icon:I

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/internal/e;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 119
    iget-object v4, p0, Landroid/support/v7/internal/widget/aa;->g:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_3

    if-eqz v3, :cond_3

    .line 120
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/aa;->a(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :cond_3
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/internal/e;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 124
    if-eqz v3, :cond_4

    .line 1631
    iput-object v3, p0, Landroid/support/v7/internal/widget/aa;->g:Landroid/graphics/drawable/Drawable;

    .line 1632
    invoke-direct {p0}, Landroid/support/v7/internal/widget/aa;->t()V

    .line 128
    :cond_4
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_displayOptions:I

    invoke-virtual {v0, v3, v1}, Lcom/handmark/pulltorefresh/library/internal/e;->a(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/aa;->c(I)V

    .line 130
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_customNavigationLayout:I

    invoke-virtual {v0, v3, v1}, Lcom/handmark/pulltorefresh/library/internal/e;->f(II)I

    move-result v3

    .line 132
    if-eqz v3, :cond_5

    .line 133
    iget-object v4, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4, v3, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/aa;->a(Landroid/view/View;)V

    .line 135
    iget v3, p0, Landroid/support/v7/internal/widget/aa;->b:I

    or-int/lit8 v3, v3, 0x10

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/aa;->c(I)V

    .line 138
    :cond_5
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v0, v3, v1}, Lcom/handmark/pulltorefresh/library/internal/e;->e(II)I

    move-result v3

    .line 139
    if-lez v3, :cond_6

    .line 140
    iget-object v4, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 141
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    iget-object v3, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    :cond_6
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_contentInsetStart:I

    invoke-virtual {v0, v3, v6}, Lcom/handmark/pulltorefresh/library/internal/e;->c(II)I

    move-result v3

    .line 147
    sget v4, Landroid/support/v7/appcompat/R$styleable;->ActionBar_contentInsetEnd:I

    invoke-virtual {v0, v4, v6}, Lcom/handmark/pulltorefresh/library/internal/e;->c(II)I

    move-result v4

    .line 149
    if-gez v3, :cond_7

    if-ltz v4, :cond_8

    .line 150
    :cond_7
    iget-object v5, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Landroid/support/v7/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 154
    :cond_8
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_titleTextStyle:I

    invoke-virtual {v0, v3, v1}, Lcom/handmark/pulltorefresh/library/internal/e;->f(II)I

    move-result v3

    .line 155
    if-eqz v3, :cond_9

    .line 156
    iget-object v4, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v5, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/support/v7/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 159
    :cond_9
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_subtitleTextStyle:I

    invoke-virtual {v0, v3, v1}, Lcom/handmark/pulltorefresh/library/internal/e;->f(II)I

    move-result v3

    .line 161
    if-eqz v3, :cond_a

    .line 162
    iget-object v4, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v5, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 165
    :cond_a
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_popupTheme:I

    invoke-virtual {v0, v3, v1}, Lcom/handmark/pulltorefresh/library/internal/e;->f(II)I

    move-result v1

    .line 166
    if-eqz v1, :cond_b

    .line 167
    iget-object v3, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 170
    :cond_b
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/e;->b()V

    .line 172
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/e;->c()Landroid/support/v7/internal/widget/Y;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/aa;->p:Landroid/support/v7/internal/widget/Y;

    .line 3207
    :goto_1
    iget v0, p0, Landroid/support/v7/internal/widget/aa;->q:I

    if-eq p3, v0, :cond_c

    .line 3210
    iput p3, p0, Landroid/support/v7/internal/widget/aa;->q:I

    .line 3211
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->k()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3212
    iget v0, p0, Landroid/support/v7/internal/widget/aa;->q:I

    .line 3650
    if-nez v0, :cond_11

    move-object v0, v2

    .line 4644
    :goto_2
    iput-object v0, p0, Landroid/support/v7/internal/widget/aa;->k:Ljava/lang/CharSequence;

    .line 4645
    invoke-direct {p0}, Landroid/support/v7/internal/widget/aa;->s()V

    .line 180
    :cond_c
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->k()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/aa;->k:Ljava/lang/CharSequence;

    .line 182
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->p:Landroid/support/v7/internal/widget/Y;

    invoke-virtual {v0, p4}, Landroid/support/v7/internal/widget/Y;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5218
    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->r:Landroid/graphics/drawable/Drawable;

    if-eq v1, v0, :cond_d

    .line 5219
    iput-object v0, p0, Landroid/support/v7/internal/widget/aa;->r:Landroid/graphics/drawable/Drawable;

    .line 5220
    invoke-direct {p0}, Landroid/support/v7/internal/widget/aa;->t()V

    .line 184
    :cond_d
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Landroid/support/v7/internal/widget/ab;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ab;-><init>(Landroid/support/v7/internal/widget/aa;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void

    :cond_e
    move v0, v1

    .line 96
    goto/16 :goto_0

    .line 2225
    :cond_f
    const/16 v0, 0xb

    .line 2227
    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 2228
    const/16 v0, 0xf

    .line 174
    :cond_10
    iput v0, p0, Landroid/support/v7/internal/widget/aa;->b:I

    .line 176
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/widget/Y;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/Y;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/aa;->p:Landroid/support/v7/internal/widget/Y;

    goto :goto_1

    .line 4240
    :cond_11
    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3650
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/aa;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/aa;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/widget/aa;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->l:Landroid/view/Window$Callback;

    return-object v0
.end method

.method private c(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Landroid/support/v7/internal/widget/aa;->f:Landroid/graphics/drawable/Drawable;

    .line 362
    invoke-direct {p0}, Landroid/support/v7/internal/widget/aa;->r()V

    .line 363
    return-void
.end method

.method private c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 283
    iput-object p1, p0, Landroid/support/v7/internal/widget/aa;->i:Ljava/lang/CharSequence;

    .line 284
    iget v0, p0, Landroid/support/v7/internal/widget/aa;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    return-void
.end method

.method static synthetic d(Landroid/support/v7/internal/widget/aa;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/aa;->m:Z

    return v0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 366
    const/4 v0, 0x0

    .line 367
    iget v1, p0, Landroid/support/v7/internal/widget/aa;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 368
    iget v0, p0, Landroid/support/v7/internal/widget/aa;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->f:Landroid/graphics/drawable/Drawable;

    .line 374
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 375
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 371
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 654
    iget v0, p0, Landroid/support/v7/internal/widget/aa;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/internal/widget/aa;->q:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 664
    iget v0, p0, Landroid/support/v7/internal/widget/aa;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 665
    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->g:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 667
    :cond_0
    return-void

    .line 665
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->r:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 345
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->p:Landroid/support/v7/internal/widget/Y;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/Y;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aa;->a(Landroid/graphics/drawable/Drawable;)V

    .line 346
    return-void

    .line 345
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Landroid/support/v7/internal/widget/aa;->e:Landroid/graphics/drawable/Drawable;

    .line 351
    invoke-direct {p0}, Landroid/support/v7/internal/widget/aa;->r()V

    .line 352
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/v;Landroid/support/v7/internal/view/menu/h;)V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/Toolbar;->setMenuCallbacks(Landroid/support/v7/internal/view/menu/v;Landroid/support/v7/internal/view/menu/h;)V

    .line 704
    return-void
.end method

.method public final a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 469
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 471
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/aa;->c:Landroid/view/View;

    .line 480
    return-void
.end method

.method public final a(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/v;)V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/aa;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 411
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    sget v1, Landroid/support/v7/appcompat/R$id;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(I)V

    .line 413
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/v;)V

    .line 414
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    check-cast p1, Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/Toolbar;->setMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 415
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/aa;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 589
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/aa;->d:Landroid/view/View;

    .line 590
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/internal/widget/aa;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 593
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Landroid/support/v7/internal/widget/aa;->l:Landroid/view/Window$Callback;

    .line 261
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/aa;->h:Z

    if-nez v0, :cond_0

    .line 267
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/aa;->c(Ljava/lang/CharSequence;)V

    .line 269
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setCollapsible(Z)V

    .line 495
    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 356
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->p:Landroid/support/v7/internal/widget/Y;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/Y;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/aa;->c(Landroid/graphics/drawable/Drawable;)V

    .line 357
    return-void

    .line 356
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 683
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/aa;->h:Z

    .line 279
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/aa;->c(Ljava/lang/CharSequence;)V

    .line 280
    return-void
.end method

.method public final c(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 429
    iget v0, p0, Landroid/support/v7/internal/widget/aa;->b:I

    .line 430
    xor-int/2addr v0, p1

    .line 431
    iput p1, p0, Landroid/support/v7/internal/widget/aa;->b:I

    .line 432
    if-eqz v0, :cond_3

    .line 433
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 434
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 435
    invoke-direct {p0}, Landroid/support/v7/internal/widget/aa;->t()V

    .line 436
    invoke-direct {p0}, Landroid/support/v7/internal/widget/aa;->s()V

    .line 442
    :cond_0
    :goto_0
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    .line 443
    invoke-direct {p0}, Landroid/support/v7/internal/widget/aa;->r()V

    .line 446
    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 447
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 448
    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/internal/widget/aa;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/internal/widget/aa;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 456
    :cond_2
    :goto_1
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 457
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_6

    .line 458
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 464
    :cond_3
    :goto_2
    return-void

    .line 438
    :cond_4
    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 451
    :cond_5
    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 460
    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->g()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->h()V

    .line 256
    return-void
.end method

.method public final d(I)V
    .locals 2

    .prologue
    .line 602
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 603
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/support/v7/internal/widget/ac;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ac;-><init>(Landroid/support/v7/internal/widget/aa;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    if-nez p1, :cond_0

    .line 619
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/support/v7/internal/widget/ad;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ad;-><init>(Landroid/support/v7/internal/widget/aa;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 304
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 309
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->a()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->b()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->c()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->d()Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->e()Z

    move-result v0

    return v0
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/aa;->m:Z

    .line 405
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->f()V

    .line 420
    return-void
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Landroid/support/v7/internal/widget/aa;->b:I

    return v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Landroid/view/View;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->d:Landroid/view/View;

    return-object v0
.end method

.method public final q()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->m()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method
