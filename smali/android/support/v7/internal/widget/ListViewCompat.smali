.class public Landroid/support/v7/internal/widget/ListViewCompat;
.super Landroid/widget/ListView;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/reflect/Field;

.field private g:Landroid/support/v7/internal/widget/H;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->a:Landroid/graphics/Rect;

    .line 48
    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->b:I

    .line 49
    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->c:I

    .line 50
    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->d:I

    .line 51
    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->e:I

    .line 69
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mIsChildViewEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->f:Ljava/lang/reflect/Field;

    .line 70
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->f:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(ILandroid/view/View;)V
    .locals 5

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->a:Landroid/graphics/Rect;

    .line 206
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 209
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/support/v7/internal/widget/ListViewCompat;->b:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 210
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/support/v7/internal/widget/ListViewCompat;->c:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 211
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/support/v7/internal/widget/ListViewCompat;->d:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 212
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/support/v7/internal/widget/ListViewCompat;->e:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 217
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 218
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 219
    iget-object v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->f:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->refreshDrawableState()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_1
    return-void

    .line 219
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected final a(ILandroid/view/View;FF)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 176
    .line 1187
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1188
    if-eqz v3, :cond_3

    if-eq p1, v6, :cond_3

    move v2, v0

    .line 1189
    :goto_0
    if-eqz v2, :cond_0

    .line 1190
    invoke-virtual {v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1193
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/ListViewCompat;->a(ILandroid/view/View;)V

    .line 1195
    if-eqz v2, :cond_1

    .line 1196
    iget-object v2, p0, Landroid/support/v7/internal/widget/ListViewCompat;->a:Landroid/graphics/Rect;

    .line 1197
    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 1198
    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    .line 1199
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    :goto_1
    invoke-virtual {v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1200
    invoke-static {v3, v4, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 178
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_2

    if-eq p1, v6, :cond_2

    .line 180
    invoke-static {v0, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 182
    :cond_2
    return-void

    :cond_3
    move v2, v1

    .line 1188
    goto :goto_0

    :cond_4
    move v0, v1

    .line 1199
    goto :goto_1
.end method

.method protected final a(Z)V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->g:Landroid/support/v7/internal/widget/H;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->g:Landroid/support/v7/internal/widget/H;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/H;->a(Z)V

    .line 335
    :cond_0
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 104
    .line 1126
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1127
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1128
    if-eqz v0, :cond_0

    .line 1129
    iget-object v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1130
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 108
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 94
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 96
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ListViewCompat;->a(Z)V

    .line 1111
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1112
    if-eqz v1, :cond_0

    .line 1118
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1112
    :goto_0
    if-eqz v0, :cond_0

    .line 1113
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 98
    :cond_0
    return-void

    .line 1118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 78
    if-eqz p1, :cond_1

    new-instance v0, Landroid/support/v7/internal/widget/H;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/widget/H;-><init>(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iput-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->g:Landroid/support/v7/internal/widget/H;

    .line 79
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->g:Landroid/support/v7/internal/widget/H;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 82
    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 86
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->b:I

    .line 87
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->c:I

    .line 88
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->d:I

    .line 89
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->e:I

    .line 90
    return-void

    .line 78
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
