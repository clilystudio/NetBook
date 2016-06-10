.class public Lcom/handmark/pulltorefresh/library/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/res/TypedArray;

.field private c:Landroid/support/v7/internal/widget/Y;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0

    .prologue
    .line 2053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2054
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/e;->a:Landroid/content/Context;

    .line 2055
    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/e;->b:Landroid/content/res/TypedArray;

    .line 2056
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/handmark/pulltorefresh/library/internal/e;
    .locals 2

    .prologue
    .line 2043
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2044
    new-instance v1, Lcom/handmark/pulltorefresh/library/internal/e;

    invoke-direct {v1, p0, v0}, Lcom/handmark/pulltorefresh/library/internal/e;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/handmark/pulltorefresh/library/internal/e;
    .locals 2

    .prologue
    .line 2049
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2050
    new-instance v1, Lcom/handmark/pulltorefresh/library/internal/e;

    invoke-direct {v1, p0, v0}, Lcom/handmark/pulltorefresh/library/internal/e;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v1
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1061
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public a(IF)F
    .locals 2

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->b:Landroid/content/res/TypedArray;

    const/high16 v1, -0x40800000

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method public a()I
    .locals 1

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    return v0
.end method

.method public a(II)I
    .locals 1

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method public a(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2060
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->b:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 2061
    if-eqz v0, :cond_0

    .line 2062
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/e;->c()Landroid/support/v7/internal/widget/Y;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/Y;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2065
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public a(IZ)Z
    .locals 1

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public b(II)I
    .locals 1

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    return v0
.end method

.method public b(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2070
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->b:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 2071
    if-eqz v0, :cond_0

    .line 2072
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/e;->c()Landroid/support/v7/internal/widget/Y;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/widget/Y;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2075
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 2183
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2184
    return-void
.end method

.method public c(II)I
    .locals 1

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    return v0
.end method

.method public c()Landroid/support/v7/internal/widget/Y;
    .locals 1

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->c:Landroid/support/v7/internal/widget/Y;

    if-nez v0, :cond_0

    .line 2192
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/internal/widget/Y;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/Y;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->c:Landroid/support/v7/internal/widget/Y;

    .line 2194
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->c:Landroid/support/v7/internal/widget/Y;

    return-object v0
.end method

.method public c(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public d(II)I
    .locals 1

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    return v0
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(II)I
    .locals 1

    .prologue
    .line 2147
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    return v0
.end method

.method public e(I)Z
    .locals 1

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    return v0
.end method

.method public f(II)I
    .locals 1

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/e;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method
