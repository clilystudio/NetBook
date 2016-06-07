.class public final Landroid/support/design/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/u;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/support/design/internal/NavigationMenuView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field private d:I

.field private e:Landroid/support/design/internal/b;

.field private f:Landroid/view/LayoutInflater;

.field private g:Landroid/content/res/ColorStateList;

.field private h:Landroid/content/res/ColorStateList;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    return-void
.end method

.method static synthetic a(Landroid/support/design/internal/a;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/a;->f:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic b(Landroid/support/design/internal/a;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/a;->h:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic c(Landroid/support/design/internal/a;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/a;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic d(Landroid/support/design/internal/a;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/a;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic e(Landroid/support/design/internal/a;)Landroid/support/v7/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/a;->c:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic f(Landroid/support/design/internal/a;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Landroid/support/design/internal/a;->j:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/w;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    iget-object v0, p0, Landroid/support/design/internal/a;->a:Landroid/support/design/internal/NavigationMenuView;

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Landroid/support/design/internal/a;->f:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/design/R$layout;->design_navigation_menu:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuView;

    iput-object v0, p0, Landroid/support/design/internal/a;->a:Landroid/support/design/internal/NavigationMenuView;

    .line 96
    iget-object v0, p0, Landroid/support/design/internal/a;->e:Landroid/support/design/internal/b;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroid/support/design/internal/b;

    invoke-direct {v0, p0}, Landroid/support/design/internal/b;-><init>(Landroid/support/design/internal/a;)V

    iput-object v0, p0, Landroid/support/design/internal/a;->e:Landroid/support/design/internal/b;

    .line 99
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/a;->f:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/design/R$layout;->design_navigation_item_header:I

    iget-object v2, p0, Landroid/support/design/internal/a;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/design/internal/a;->b:Landroid/widget/LinearLayout;

    .line 101
    iget-object v0, p0, Landroid/support/design/internal/a;->a:Landroid/support/design/internal/NavigationMenuView;

    iget-object v1, p0, Landroid/support/design/internal/a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuView;->addHeaderView(Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Landroid/support/design/internal/a;->a:Landroid/support/design/internal/NavigationMenuView;

    iget-object v1, p0, Landroid/support/design/internal/a;->e:Landroid/support/design/internal/b;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object v0, p0, Landroid/support/design/internal/a;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v0, p0}, Landroid/support/design/internal/NavigationMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/a;->a:Landroid/support/design/internal/NavigationMenuView;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/internal/a;->d:I

    .line 154
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 2

    .prologue
    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/internal/a;->f:Landroid/view/LayoutInflater;

    .line 84
    iput-object p2, p0, Landroid/support/design/internal/a;->c:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    sget v1, Landroid/support/design/R$dimen;->navigation_padding_top_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 87
    sget v1, Landroid/support/design/R$dimen;->navigation_separator_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/a;->j:I

    .line 89
    return-void
.end method

.method public final a(Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Landroid/support/design/internal/a;->h:Landroid/content/res/ColorStateList;

    .line 217
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Landroid/support/design/internal/a;->i:Landroid/graphics/drawable/Drawable;

    .line 234
    return-void
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 172
    check-cast p1, Landroid/os/Bundle;

    .line 173
    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Landroid/support/design/internal/a;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/NavigationMenuView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 177
    :cond_0
    const-string v0, "android:menu:adapter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_1

    .line 179
    iget-object v1, p0, Landroid/support/design/internal/a;->e:Landroid/support/design/internal/b;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/b;->a(Landroid/os/Bundle;)V

    .line 181
    :cond_1
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Landroid/support/design/internal/a;->e:Landroid/support/design/internal/b;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Landroid/support/design/internal/a;->e:Landroid/support/design/internal/b;

    invoke-virtual {v0}, Landroid/support/design/internal/b;->notifyDataSetChanged()V

    .line 113
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Landroid/support/design/internal/a;->d:I

    return v0
.end method

.method public final b(I)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    iget-object v0, p0, Landroid/support/design/internal/a;->f:Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/support/design/internal/a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1198
    iget-object v1, p0, Landroid/support/design/internal/a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1200
    iget-object v1, p0, Landroid/support/design/internal/a;->a:Landroid/support/design/internal/NavigationMenuView;

    iget-object v2, p0, Landroid/support/design/internal/a;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    .line 194
    return-object v0
.end method

.method public final b(Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Landroid/support/design/internal/a;->g:Landroid/content/res/ColorStateList;

    .line 226
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/support/design/internal/a;->e:Landroid/support/design/internal/b;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Landroid/support/design/internal/a;->e:Landroid/support/design/internal/b;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/b;->a(Z)V

    .line 240
    :cond_0
    return-void
.end method

.method public final b(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    iget-object v1, p0, Landroid/support/design/internal/a;->a:Landroid/support/design/internal/NavigationMenuView;

    if-eqz v1, :cond_0

    .line 160
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 161
    iget-object v2, p0, Landroid/support/design/internal/a;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Landroid/support/design/internal/NavigationMenuView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 162
    const-string v2, "android:menu:list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 164
    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/a;->e:Landroid/support/design/internal/b;

    if-eqz v1, :cond_1

    .line 165
    const-string v1, "android:menu:adapter"

    iget-object v2, p0, Landroid/support/design/internal/a;->e:Landroid/support/design/internal/b;

    invoke-virtual {v2}, Landroid/support/design/internal/b;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 167
    :cond_1
    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/design/internal/a;->a:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 186
    if-ltz v0, :cond_0

    .line 187
    iget-object v1, p0, Landroid/support/design/internal/a;->c:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/support/design/internal/a;->e:Landroid/support/design/internal/b;

    invoke-virtual {v2, v0}, Landroid/support/design/internal/b;->a(I)Landroid/support/design/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/internal/c;->d()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->a(Landroid/view/MenuItem;Landroid/support/v7/internal/view/menu/u;I)Z

    .line 189
    :cond_0
    return-void
.end method
