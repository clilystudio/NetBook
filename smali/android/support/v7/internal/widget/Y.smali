.class public final Landroid/support/v7/internal/widget/Y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field private static final b:Landroid/graphics/PorterDuff$Mode;

.field private static final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/support/v7/internal/widget/Y;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Landroid/support/v7/internal/widget/Z;

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I


# instance fields
.field private final k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/v7/internal/widget/Y;->a:Z

    .line 51
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v7/internal/widget/Y;->b:Landroid/graphics/PorterDuff$Mode;

    .line 53
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/support/v7/internal/widget/Y;->c:Ljava/util/WeakHashMap;

    .line 54
    new-instance v0, Landroid/support/v7/internal/widget/Z;

    const/4 v3, 0x6

    invoke-direct {v0, v3}, Landroid/support/v7/internal/widget/Z;-><init>(I)V

    sput-object v0, Landroid/support/v7/internal/widget/Y;->d:Landroid/support/v7/internal/widget/Z;

    .line 60
    new-array v0, v6, [I

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    aput v3, v0, v2

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I

    aput v3, v0, v1

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    aput v3, v0, v5

    sput-object v0, Landroid/support/v7/internal/widget/Y;->e:[I

    .line 70
    const/16 v0, 0xc

    new-array v0, v0, [I

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_ab_back_mtrl_am_alpha:I

    aput v3, v0, v2

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_go_search_api_mtrl_alpha:I

    aput v3, v0, v1

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_search_api_mtrl_alpha:I

    aput v3, v0, v5

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v3, v0, v6

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_clear_mtrl_alpha:I

    aput v3, v0, v7

    const/4 v3, 0x5

    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    aput v4, v0, v3

    const/4 v3, 0x6

    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v4, v0, v3

    const/4 v3, 0x7

    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    aput v4, v0, v3

    const/16 v3, 0x8

    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    aput v4, v0, v3

    const/16 v3, 0x9

    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v4, v0, v3

    const/16 v3, 0xa

    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_moreoverflow_mtrl_alpha:I

    aput v4, v0, v3

    const/16 v3, 0xb

    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_ic_voice_search_api_mtrl_alpha:I

    aput v4, v0, v3

    sput-object v0, Landroid/support/v7/internal/widget/Y;->f:[I

    .line 89
    new-array v0, v7, [I

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    aput v3, v0, v2

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    aput v3, v0, v1

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    aput v3, v0, v5

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_text_cursor_mtrl_alpha:I

    aput v3, v0, v6

    sput-object v0, Landroid/support/v7/internal/widget/Y;->g:[I

    .line 100
    new-array v0, v6, [I

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I

    aput v3, v0, v2

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    aput v3, v0, v1

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v3, v0, v5

    sput-object v0, Landroid/support/v7/internal/widget/Y;->h:[I

    .line 110
    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_edit_text_material:I

    aput v3, v0, v2

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_tab_indicator_material:I

    aput v3, v0, v1

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_material:I

    aput v3, v0, v5

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    aput v3, v0, v6

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    aput v3, v0, v7

    const/4 v3, 0x5

    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_full_material:I

    aput v4, v0, v3

    const/4 v3, 0x6

    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    aput v4, v0, v3

    const/4 v3, 0x7

    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    aput v4, v0, v3

    const/16 v3, 0x8

    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    aput v4, v0, v3

    const/16 v3, 0x9

    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_btn_borderless_material:I

    aput v4, v0, v3

    sput-object v0, Landroid/support/v7/internal/widget/Y;->i:[I

    .line 128
    new-array v0, v5, [I

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_btn_check_material:I

    aput v3, v0, v2

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_btn_radio_material:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/internal/widget/Y;->j:[I

    return-void

    :cond_0
    move v0, v2

    .line 47
    goto/16 :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/Y;->k:Ljava/lang/ref/WeakReference;

    .line 163
    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    .line 1261
    sget-object v0, Landroid/support/v7/internal/widget/Y;->f:[I

    invoke-static {v0, p1}, Landroid/support/v7/internal/widget/Y;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v7/internal/widget/Y;->e:[I

    invoke-static {v0, p1}, Landroid/support/v7/internal/widget/Y;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v7/internal/widget/Y;->g:[I

    invoke-static {v0, p1}, Landroid/support/v7/internal/widget/Y;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v7/internal/widget/Y;->i:[I

    invoke-static {v0, p1}, Landroid/support/v7/internal/widget/Y;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v7/internal/widget/Y;->h:[I

    invoke-static {v0, p1}, Landroid/support/v7/internal/widget/Y;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v7/internal/widget/Y;->j:[I

    invoke-static {v0, p1}, Landroid/support/v7/internal/widget/Y;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_material:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 142
    :goto_0
    if-eqz v0, :cond_2

    .line 143
    invoke-static {p0}, Landroid/support/v7/internal/widget/Y;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/Y;

    move-result-object v0

    .line 2166
    invoke-virtual {v0, p1, v1}, Landroid/support/v7/internal/widget/Y;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    .line 1261
    goto :goto_0

    .line 145
    :cond_2
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v7/internal/widget/Y;
    .locals 2

    .prologue
    .line 153
    sget-object v0, Landroid/support/v7/internal/widget/Y;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/Y;

    .line 154
    if-nez v0, :cond_0

    .line 155
    new-instance v0, Landroid/support/v7/internal/widget/Y;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/Y;-><init>(Landroid/content/Context;)V

    .line 156
    sget-object v1, Landroid/support/v7/internal/widget/Y;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 575
    if-nez p2, :cond_0

    .line 577
    sget-object p2, Landroid/support/v7/internal/widget/Y;->b:Landroid/graphics/PorterDuff$Mode;

    .line 581
    :cond_0
    sget-object v0, Landroid/support/v7/internal/widget/Y;->d:Landroid/support/v7/internal/widget/Z;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/internal/widget/Z;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    .line 583
    if-nez v0, :cond_1

    .line 585
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 586
    sget-object v1, Landroid/support/v7/internal/widget/Y;->d:Landroid/support/v7/internal/widget/Z;

    invoke-virtual {v1, p1, p2, v0}, Landroid/support/v7/internal/widget/Z;->a(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    .line 589
    :cond_1
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 590
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/arcsoft/hpay100/c/c;)V
    .locals 4

    .prologue
    .line 556
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 557
    iget-boolean v0, p1, Lcom/arcsoft/hpay100/c/c;->d:Z

    if-eqz v0, :cond_2

    .line 558
    iget-object v0, p1, Lcom/arcsoft/hpay100/c/c;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    iget-object v3, p1, Lcom/arcsoft/hpay100/c/c;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget-boolean v0, p1, Lcom/arcsoft/hpay100/c/c;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/arcsoft/hpay100/c/c;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/support/v7/internal/widget/Y;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 567
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 570
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 572
    :cond_0
    return-void

    .line 558
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 564
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1
.end method

.method private static a([II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 252
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    .line 253
    if-ne v3, p1, :cond_1

    .line 254
    const/4 v0, 0x1

    .line 257
    :cond_0
    return v0

    .line 252
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/Y;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final a(IZ)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 170
    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 171
    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-object v1

    .line 173
    :cond_0
    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_3

    .line 176
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    .line 178
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 181
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/Y;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 182
    if-eqz v2, :cond_4

    .line 184
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 185
    invoke-static {v0, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2273
    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne p1, v2, :cond_2

    .line 2274
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 189
    :cond_2
    if-eqz v1, :cond_3

    .line 190
    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_3
    :goto_1
    move-object v1, v0

    .line 206
    goto :goto_0

    .line 192
    :cond_4
    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_material:I

    if-ne p1, v2, :cond_5

    .line 193
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    .line 3166
    invoke-virtual {p0, v2, v4}, Landroid/support/v7/internal/widget/Y;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 193
    aput-object v2, v0, v4

    const/4 v2, 0x1

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    .line 4166
    invoke-virtual {p0, v3, v4}, Landroid/support/v7/internal/widget/Y;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 193
    aput-object v3, v0, v2

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 198
    :cond_5
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/Y;->a(ILandroid/graphics/drawable/Drawable;)Z

    move-result v2

    .line 199
    if-nez v2, :cond_3

    if-eqz p2, :cond_3

    move-object v0, v1

    .line 202
    goto :goto_1
.end method

.method public final a(ILandroid/graphics/drawable/Drawable;)Z
    .locals 8

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 210
    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 211
    if-nez v0, :cond_0

    move v0, v1

    .line 248
    :goto_0
    return v0

    .line 213
    :cond_0
    const/4 v6, 0x0

    .line 218
    sget-object v3, Landroid/support/v7/internal/widget/Y;->e:[I

    invoke-static {v3, p1}, Landroid/support/v7/internal/widget/Y;->a([II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 219
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    move v5, v3

    move-object v7, v6

    move v6, v2

    move v3, v4

    .line 234
    :goto_1
    if-eqz v6, :cond_5

    .line 235
    invoke-static {v0, v5}, Landroid/support/v7/internal/widget/V;->a(Landroid/content/Context;I)I

    move-result v0

    .line 236
    invoke-static {p2, v0, v7}, Landroid/support/v7/internal/widget/Y;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 238
    if-eq v3, v4, :cond_1

    .line 239
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    move v0, v2

    .line 246
    goto :goto_0

    .line 221
    :cond_2
    sget-object v3, Landroid/support/v7/internal/widget/Y;->g:[I

    invoke-static {v3, p1}, Landroid/support/v7/internal/widget/Y;->a([II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 222
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    move v5, v3

    move-object v7, v6

    move v6, v2

    move v3, v4

    .line 223
    goto :goto_1

    .line 224
    :cond_3
    sget-object v3, Landroid/support/v7/internal/widget/Y;->h:[I

    invoke-static {v3, p1}, Landroid/support/v7/internal/widget/Y;->a([II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 225
    const v3, 0x1010031

    .line 227
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move v6, v2

    move-object v7, v5

    move v5, v3

    move v3, v4

    goto :goto_1

    .line 228
    :cond_4
    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v3, :cond_6

    .line 229
    const v5, 0x1010030

    .line 231
    const v3, 0x42233333    # 40.8f

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object v7, v6

    move v6, v2

    goto :goto_1

    :cond_5
    move v0, v1

    .line 248
    goto :goto_0

    :cond_6
    move v3, v4

    move v5, v1

    move-object v7, v6

    move v6, v1

    goto :goto_1
.end method

.method public final b(I)Landroid/content/res/ColorStateList;
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 281
    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 282
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 318
    :cond_0
    :goto_0
    return-object v0

    .line 285
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->l:Landroid/util/SparseArray;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->l:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    .line 287
    :goto_1
    if-nez v1, :cond_10

    .line 289
    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_edit_text_material:I

    if-ne p1, v2, :cond_4

    .line 4462
    new-array v1, v9, [[I

    .line 4463
    new-array v2, v9, [I

    .line 4467
    sget-object v3, Landroid/support/v7/internal/widget/V;->a:[I

    aput-object v3, v1, v6

    .line 4468
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/V;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v6

    .line 4471
    sget-object v3, Landroid/support/v7/internal/widget/V;->g:[I

    aput-object v3, v1, v7

    .line 4472
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/V;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v7

    .line 4476
    sget-object v3, Landroid/support/v7/internal/widget/V;->h:[I

    aput-object v3, v1, v8

    .line 4477
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/V;->a(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v8

    .line 4480
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 309
    :goto_2
    if-eqz v0, :cond_0

    .line 310
    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->l:Landroid/util/SparseArray;

    if-nez v1, :cond_2

    .line 312
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/support/v7/internal/widget/Y;->l:Landroid/util/SparseArray;

    .line 315
    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->l:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 285
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 291
    :cond_4
    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne p1, v2, :cond_5

    .line 5394
    new-array v1, v9, [[I

    .line 5395
    new-array v2, v9, [I

    .line 5399
    sget-object v3, Landroid/support/v7/internal/widget/V;->a:[I

    aput-object v3, v1, v6

    .line 5400
    const v3, 0x1010030

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v0, v3, v4}, Landroid/support/v7/internal/widget/V;->a(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v2, v6

    .line 5403
    sget-object v3, Landroid/support/v7/internal/widget/V;->e:[I

    aput-object v3, v1, v7

    .line 5404
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v0, v3, v4}, Landroid/support/v7/internal/widget/V;->a(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v2, v7

    .line 5408
    sget-object v3, Landroid/support/v7/internal/widget/V;->h:[I

    aput-object v3, v1, v8

    .line 5409
    const v3, 0x1010030

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v0, v3, v4}, Landroid/support/v7/internal/widget/V;->a(Landroid/content/Context;IF)I

    move-result v0

    aput v0, v2, v8

    .line 5412
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_2

    .line 293
    :cond_5
    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne p1, v2, :cond_7

    .line 5416
    new-array v1, v9, [[I

    .line 5417
    new-array v2, v9, [I

    .line 5420
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/V;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 5423
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5428
    sget-object v4, Landroid/support/v7/internal/widget/V;->a:[I

    aput-object v4, v1, v6

    .line 5429
    aget-object v4, v1, v6

    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    aput v4, v2, v6

    .line 5432
    sget-object v4, Landroid/support/v7/internal/widget/V;->e:[I

    aput-object v4, v1, v7

    .line 5433
    sget v4, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v0, v4}, Landroid/support/v7/internal/widget/V;->a(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v7

    .line 5437
    sget-object v0, Landroid/support/v7/internal/widget/V;->h:[I

    aput-object v0, v1, v8

    .line 5438
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    aput v0, v2, v8

    .line 5458
    :goto_3
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/16 :goto_2

    .line 5444
    :cond_6
    sget-object v3, Landroid/support/v7/internal/widget/V;->a:[I

    aput-object v3, v1, v6

    .line 5445
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/V;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v6

    .line 5448
    sget-object v3, Landroid/support/v7/internal/widget/V;->e:[I

    aput-object v3, v1, v7

    .line 5449
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/V;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v7

    .line 5453
    sget-object v3, Landroid/support/v7/internal/widget/V;->h:[I

    aput-object v3, v1, v8

    .line 5454
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/V;->a(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v8

    goto :goto_3

    .line 295
    :cond_7
    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    if-eq p1, v2, :cond_8

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_btn_borderless_material:I

    if-ne p1, v2, :cond_9

    .line 5484
    :cond_8
    new-array v1, v10, [[I

    .line 5485
    new-array v2, v10, [I

    .line 5488
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/V;->a(Landroid/content/Context;I)I

    move-result v3

    .line 5489
    sget v4, Landroid/support/v7/appcompat/R$attr;->colorControlHighlight:I

    invoke-static {v0, v4}, Landroid/support/v7/internal/widget/V;->a(Landroid/content/Context;I)I

    move-result v4

    .line 5492
    sget-object v5, Landroid/support/v7/internal/widget/V;->a:[I

    aput-object v5, v1, v6

    .line 5493
    sget v5, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I

    invoke-static {v0, v5}, Landroid/support/v7/internal/widget/V;->c(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v6

    .line 5496
    sget-object v0, Landroid/support/v7/internal/widget/V;->d:[I

    aput-object v0, v1, v7

    .line 5497
    invoke-static {v4, v3}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v0

    aput v0, v2, v7

    .line 5500
    sget-object v0, Landroid/support/v7/internal/widget/V;->b:[I

    aput-object v0, v1, v8

    .line 5501
    invoke-static {v4, v3}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v0

    aput v0, v2, v8

    .line 5505
    sget-object v0, Landroid/support/v7/internal/widget/V;->h:[I

    aput-object v0, v1, v9

    .line 5506
    aput v3, v2, v9

    .line 5509
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/16 :goto_2

    .line 298
    :cond_9
    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq p1, v2, :cond_a

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    if-ne p1, v2, :cond_b

    .line 5513
    :cond_a
    new-array v1, v9, [[I

    .line 5514
    new-array v2, v9, [I

    .line 5518
    sget-object v3, Landroid/support/v7/internal/widget/V;->a:[I

    aput-object v3, v1, v6

    .line 5519
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/V;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v6

    .line 5522
    sget-object v3, Landroid/support/v7/internal/widget/V;->g:[I

    aput-object v3, v1, v7

    .line 5523
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/V;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v7

    .line 5526
    sget-object v3, Landroid/support/v7/internal/widget/V;->h:[I

    aput-object v3, v1, v8

    .line 5527
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/V;->a(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v8

    .line 5530
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/16 :goto_2

    .line 301
    :cond_b
    sget-object v2, Landroid/support/v7/internal/widget/Y;->f:[I

    invoke-static {v2, p1}, Landroid/support/v7/internal/widget/Y;->a([II)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 302
    sget v1, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/V;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto/16 :goto_2

    .line 303
    :cond_c
    sget-object v2, Landroid/support/v7/internal/widget/Y;->i:[I

    invoke-static {v2, p1}, Landroid/support/v7/internal/widget/Y;->a([II)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 6322
    iget-object v1, p0, Landroid/support/v7/internal/widget/Y;->m:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_d

    .line 6328
    sget v1, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/V;->a(Landroid/content/Context;I)I

    move-result v1

    .line 6329
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v0, v2}, Landroid/support/v7/internal/widget/V;->a(Landroid/content/Context;I)I

    move-result v2

    .line 6332
    const/4 v3, 0x7

    new-array v3, v3, [[I

    .line 6333
    const/4 v4, 0x7

    new-array v4, v4, [I

    .line 6337
    sget-object v5, Landroid/support/v7/internal/widget/V;->a:[I

    aput-object v5, v3, v6

    .line 6338
    sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v0, v5}, Landroid/support/v7/internal/widget/V;->c(Landroid/content/Context;I)I

    move-result v0

    aput v0, v4, v6

    .line 6341
    sget-object v0, Landroid/support/v7/internal/widget/V;->b:[I

    aput-object v0, v3, v7

    .line 6342
    aput v2, v4, v7

    .line 6345
    sget-object v0, Landroid/support/v7/internal/widget/V;->c:[I

    aput-object v0, v3, v8

    .line 6346
    aput v2, v4, v8

    .line 6349
    sget-object v0, Landroid/support/v7/internal/widget/V;->d:[I

    aput-object v0, v3, v9

    .line 6350
    aput v2, v4, v9

    .line 6353
    sget-object v0, Landroid/support/v7/internal/widget/V;->e:[I

    aput-object v0, v3, v10

    .line 6354
    aput v2, v4, v10

    .line 6357
    const/4 v0, 0x5

    sget-object v5, Landroid/support/v7/internal/widget/V;->f:[I

    aput-object v5, v3, v0

    .line 6358
    const/4 v0, 0x5

    aput v2, v4, v0

    .line 6362
    const/4 v0, 0x6

    sget-object v2, Landroid/support/v7/internal/widget/V;->h:[I

    aput-object v2, v3, v0

    .line 6363
    const/4 v0, 0x6

    aput v1, v4, v0

    .line 6366
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/Y;->m:Landroid/content/res/ColorStateList;

    .line 6368
    :cond_d
    iget-object v0, p0, Landroid/support/v7/internal/widget/Y;->m:Landroid/content/res/ColorStateList;

    goto/16 :goto_2

    .line 305
    :cond_e
    sget-object v2, Landroid/support/v7/internal/widget/Y;->j:[I

    invoke-static {v2, p1}, Landroid/support/v7/internal/widget/Y;->a([II)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 6372
    new-array v1, v9, [[I

    .line 6373
    new-array v2, v9, [I

    .line 6377
    sget-object v3, Landroid/support/v7/internal/widget/V;->a:[I

    aput-object v3, v1, v6

    .line 6378
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/V;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v6

    .line 6381
    sget-object v3, Landroid/support/v7/internal/widget/V;->e:[I

    aput-object v3, v1, v7

    .line 6382
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/V;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v7

    .line 6386
    sget-object v3, Landroid/support/v7/internal/widget/V;->h:[I

    aput-object v3, v1, v8

    .line 6387
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v0, v3}, Landroid/support/v7/internal/widget/V;->a(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v8

    .line 6390
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/16 :goto_2

    :cond_f
    move-object v0, v1

    goto/16 :goto_2

    :cond_10
    move-object v0, v1

    goto/16 :goto_0
.end method
