.class public abstract Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field static final a:Landroid/view/animation/Interpolator;


# instance fields
.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/view/View;

.field protected final d:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field protected final e:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

.field private final f:Lcom/bettycc/fancypulltorefresh/RefreshingView;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/view/View;

.field private i:Z

.field private final j:Landroid/widget/TextView;

.field private final k:Landroid/widget/TextView;

.field private l:Ljava/lang/CharSequence;

.field private m:Ljava/lang/CharSequence;

.field private n:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 3

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 69
    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 70
    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    .line 72
    sget v0, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrTabMode:I

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 73
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/d;->a:[I

    invoke-virtual {p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 79
    if-eqz v0, :cond_a

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/handmark/pulltorefresh/library/R$layout;->pull_to_refresh_header_vertical_tab:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    :goto_0
    sget v0, Lcom/handmark/pulltorefresh/library/R$id;->fl_inner:I

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/FrameLayout;

    .line 88
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/FrameLayout;

    sget v1, Lcom/handmark/pulltorefresh/library/R$id;->pull_to_refresh_text:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/FrameLayout;

    sget v1, Lcom/handmark/pulltorefresh/library/R$id;->pull_to_refresh_progress:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/FrameLayout;

    sget v1, Lcom/handmark/pulltorefresh/library/R$id;->pull_to_refresh_sub_text:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/FrameLayout;

    sget v1, Lcom/handmark/pulltorefresh/library/R$id;->pull_to_refresh_image:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/FrameLayout;

    sget v1, Lcom/handmark/pulltorefresh/library/R$id;->pull_to_refresh_tick:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/FrameLayout;

    sget v1, Lcom/handmark/pulltorefresh/library/R$id;->refreshing_view:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bettycc/fancypulltorefresh/RefreshingView;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Lcom/bettycc/fancypulltorefresh/RefreshingView;

    .line 95
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 97
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/d;->b:[I

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 109
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    if-ne p3, v1, :cond_c

    const/16 v1, 0x50

    :goto_1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 112
    sget v0, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_pull_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    .line 113
    sget v0, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_refreshing_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->m:Ljava/lang/CharSequence;

    .line 114
    sget v0, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_release_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->n:Ljava/lang/CharSequence;

    .line 118
    :goto_2
    sget v0, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrHeaderBackground:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    sget v0, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrHeaderBackground:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    .line 1036
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_d

    .line 1065
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_0
    :goto_3
    sget v0, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrHeaderTextAppearance:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 127
    sget v1, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrHeaderTextAppearance:I

    invoke-virtual {p4, v1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 128
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 1383
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1384
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1386
    :cond_1
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 1387
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 130
    :cond_2
    sget v0, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrSubHeaderTextAppearance:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 132
    sget v1, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrSubHeaderTextAppearance:I

    invoke-virtual {p4, v1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 133
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 2371
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 2372
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 137
    :cond_3
    sget v0, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrHeaderTextColor:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    sget v0, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrHeaderTextColor:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_5

    .line 2392
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 2393
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2395
    :cond_4
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 2396
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 143
    :cond_5
    sget v0, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrHeaderSubTextColor:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 144
    sget v0, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrHeaderSubTextColor:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_6

    .line 3377
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 3378
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 151
    :cond_6
    const/4 v0, 0x0

    .line 152
    sget v1, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrDrawable:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 153
    sget v0, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrDrawable:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 158
    :cond_7
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/d;->b:[I

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    .line 161
    sget v1, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrDrawableStart:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 162
    sget v0, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrDrawableStart:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 180
    :cond_8
    :goto_4
    if-nez v0, :cond_9

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 185
    :cond_9
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k()V

    .line 188
    return-void

    .line 75
    :pswitch_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/handmark/pulltorefresh/library/R$layout;->pull_to_refresh_header_horizontal:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 82
    :cond_a
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/handmark/pulltorefresh/library/R$layout;->pull_to_refresh_header_vertical:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 99
    :pswitch_1
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    if-ne p3, v1, :cond_b

    const/16 v1, 0x30

    :goto_5
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 102
    sget v0, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_from_bottom_pull_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    .line 103
    sget v0, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_from_bottom_refreshing_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->m:Ljava/lang/CharSequence;

    .line 104
    sget v0, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_from_bottom_release_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->n:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 99
    :cond_b
    const/4 v1, 0x3

    goto :goto_5

    .line 109
    :cond_c
    const/4 v1, 0x5

    goto/16 :goto_1

    .line 1039
    :cond_d
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 163
    :cond_e
    sget v1, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrDrawableTop:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 164
    const-string v0, "ptrDrawableTop"

    const-string v1, "ptrDrawableStart"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget v0, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrDrawableTop:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4

    .line 170
    :pswitch_2
    sget v1, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrDrawableEnd:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 171
    sget v0, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrDrawableEnd:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4

    .line 172
    :cond_f
    sget v1, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrDrawableBottom:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 173
    const-string v0, "ptrDrawableBottom"

    const-string v1, "ptrDrawableEnd"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget v0, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrDrawableBottom:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_4

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 97
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 158
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(F)V
.end method

.method protected abstract a(Landroid/graphics/drawable/Drawable;)V
.end method

.method protected abstract b()V
.end method

.method public final b(F)V
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Z

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->a(F)V

    .line 231
    :cond_0
    return-void
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method protected abstract e()I
.end method

.method public final f()I
    .locals 2

    .prologue
    .line 203
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/d;->a:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 208
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    .line 205
    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final g()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 213
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    :cond_3
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->a()V

    .line 240
    return-void
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :cond_0
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Z

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    :cond_1
    return-void

    .line 251
    :cond_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b()V

    goto :goto_0
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->n:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->c()V

    .line 266
    return-void
.end method

.method public final k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 269
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Z

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    :cond_1
    :goto_1
    return-void

    .line 278
    :cond_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->d()V

    goto :goto_0

    .line 285
    :cond_3
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final l()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 322
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    :cond_3
    return-void
.end method

.method public final m()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 405
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Lcom/bettycc/fancypulltorefresh/RefreshingView;

    invoke-virtual {v0, v1}, Lcom/bettycc/fancypulltorefresh/RefreshingView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Lcom/bettycc/fancypulltorefresh/RefreshingView;

    .line 5025
    invoke-virtual {v0, v1}, Lcom/bettycc/fancypulltorefresh/RefreshingView;->setVisibility(I)V

    .line 407
    return-void
.end method

.method public final n()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Lcom/bettycc/fancypulltorefresh/RefreshingView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bettycc/fancypulltorefresh/RefreshingView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f:Lcom/bettycc/fancypulltorefresh/RefreshingView;

    .line 5029
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bettycc/fancypulltorefresh/RefreshingView;->setVisibility(I)V

    .line 412
    return-void
.end method

.method public final setHeight(I)V
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 192
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 193
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->requestLayout()V

    .line 194
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 292
    .line 4355
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4356
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4357
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    .line 4359
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4363
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 4364
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i:Z

    .line 301
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->a(Landroid/graphics/drawable/Drawable;)V

    .line 302
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->l:Ljava/lang/CharSequence;

    .line 306
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->m:Ljava/lang/CharSequence;

    .line 310
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->n:Ljava/lang/CharSequence;

    .line 314
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 319
    return-void
.end method

.method public final setWidth(I)V
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 198
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 199
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->requestLayout()V

    .line 200
    return-void
.end method
