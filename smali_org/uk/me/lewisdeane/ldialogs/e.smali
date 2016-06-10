.class public final Luk/me/lewisdeane/ldialogs/e;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# static fields
.field public static a:Landroid/graphics/Typeface;

.field public static b:Z


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ListView;

.field private h:Luk/me/lewisdeane/ldialogs/d;

.field private i:Luk/me/lewisdeane/ldialogs/g;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Luk/me/lewisdeane/ldialogs/e;->b:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->d:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->e:Ljava/util/ArrayList;

    .line 51
    iput-object p1, p0, Luk/me/lewisdeane/ldialogs/e;->c:Landroid/content/Context;

    .line 1130
    iput-object p2, p0, Luk/me/lewisdeane/ldialogs/e;->d:Ljava/lang/String;

    .line 1131
    invoke-direct {p0}, Luk/me/lewisdeane/ldialogs/e;->a()Luk/me/lewisdeane/ldialogs/e;

    .line 1135
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1136
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->e:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1137
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->h:Luk/me/lewisdeane/ldialogs/d;

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->h:Luk/me/lewisdeane/ldialogs/d;

    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/d;->notifyDataSetChanged()V

    .line 55
    :cond_0
    sput-boolean v2, Luk/me/lewisdeane/ldialogs/e;->b:Z

    .line 2070
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/app/f;->j(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Luk/me/lewisdeane/ldialogs/e;->j:Z

    .line 2072
    invoke-virtual {p0}, Luk/me/lewisdeane/ldialogs/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "Roboto-Medium.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Luk/me/lewisdeane/ldialogs/e;->a:Landroid/graphics/Typeface;

    .line 2074
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Luk/me/lewisdeane/ldialogs/R$layout;->dialog_list_custom:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2075
    sget v0, Luk/me/lewisdeane/ldialogs/R$id;->dialog_list_custom_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->f:Landroid/widget/TextView;

    .line 2076
    sget v0, Luk/me/lewisdeane/ldialogs/R$id;->dialog_list_custom_list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->g:Landroid/widget/ListView;

    .line 2077
    sget v0, Luk/me/lewisdeane/ldialogs/R$id;->separate:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2078
    new-instance v3, Luk/me/lewisdeane/ldialogs/d;

    iget-object v4, p0, Luk/me/lewisdeane/ldialogs/e;->c:Landroid/content/Context;

    sget v5, Luk/me/lewisdeane/ldialogs/R$layout;->item_dialog_list:I

    iget-object v6, p0, Luk/me/lewisdeane/ldialogs/e;->e:Ljava/util/ArrayList;

    iget-boolean v7, p0, Luk/me/lewisdeane/ldialogs/e;->j:Z

    invoke-direct {v3, v4, v5, v6, v7}, Luk/me/lewisdeane/ldialogs/d;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Z)V

    iput-object v3, p0, Luk/me/lewisdeane/ldialogs/e;->h:Luk/me/lewisdeane/ldialogs/d;

    .line 2079
    iget-object v3, p0, Luk/me/lewisdeane/ldialogs/e;->g:Landroid/widget/ListView;

    iget-object v4, p0, Luk/me/lewisdeane/ldialogs/e;->h:Luk/me/lewisdeane/ldialogs/d;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2081
    invoke-direct {p0}, Luk/me/lewisdeane/ldialogs/e;->a()Luk/me/lewisdeane/ldialogs/e;

    .line 2100
    iget-object v3, p0, Luk/me/lewisdeane/ldialogs/e;->g:Landroid/widget/ListView;

    new-instance v4, Luk/me/lewisdeane/ldialogs/f;

    invoke-direct {v4, p0}, Luk/me/lewisdeane/ldialogs/f;-><init>(Luk/me/lewisdeane/ldialogs/e;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2085
    iget-boolean v3, p0, Luk/me/lewisdeane/ldialogs/e;->j:Z

    if-nez v3, :cond_1

    .line 2086
    sget v3, Luk/me/lewisdeane/ldialogs/R$color;->light_window_bg:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2087
    sget v3, Luk/me/lewisdeane/ldialogs/R$color;->light_line:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2088
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->g:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget v4, Luk/me/lewisdeane/ldialogs/R$color;->light_line:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2089
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->f:Landroid/widget/TextView;

    iget-object v3, p0, Luk/me/lewisdeane/ldialogs/e;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Luk/me/lewisdeane/ldialogs/R$color;->light_action_bar_bg:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    .line 2096
    invoke-super/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 57
    return-void

    .line 2091
    :cond_1
    sget v3, Luk/me/lewisdeane/ldialogs/R$color;->dark_window_bg:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2092
    sget v3, Luk/me/lewisdeane/ldialogs/R$color;->dark_line:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2093
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->g:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget v4, Luk/me/lewisdeane/ldialogs/R$color;->dark_line:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2094
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->f:Landroid/widget/TextView;

    iget-object v3, p0, Luk/me/lewisdeane/ldialogs/e;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Luk/me/lewisdeane/ldialogs/R$color;->dark_action_bar_bg:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private a()Luk/me/lewisdeane/ldialogs/e;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->f:Landroid/widget/TextView;

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->f:Landroid/widget/TextView;

    sget-object v1, Luk/me/lewisdeane/ldialogs/e;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 126
    :cond_0
    return-object p0
.end method

.method static synthetic a(Luk/me/lewisdeane/ldialogs/e;)Luk/me/lewisdeane/ldialogs/g;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->i:Luk/me/lewisdeane/ldialogs/g;

    return-object v0
.end method

.method static synthetic a(Luk/me/lewisdeane/ldialogs/e;Luk/me/lewisdeane/ldialogs/g;)Luk/me/lewisdeane/ldialogs/g;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Luk/me/lewisdeane/ldialogs/e;->i:Luk/me/lewisdeane/ldialogs/g;

    return-object p1
.end method

.method static synthetic b(Luk/me/lewisdeane/ldialogs/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Luk/me/lewisdeane/ldialogs/e;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/e;->e:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a(Luk/me/lewisdeane/ldialogs/g;)Luk/me/lewisdeane/ldialogs/e;
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Luk/me/lewisdeane/ldialogs/e;->i:Luk/me/lewisdeane/ldialogs/g;

    .line 180
    return-object p0
.end method
