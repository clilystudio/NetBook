.class abstract Landroid/support/design/widget/H;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final b:[I

.field static final c:[I

.field static final d:[I


# instance fields
.field final e:Landroid/view/View;

.field final f:Landroid/support/design/widget/N;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/design/widget/H;->b:[I

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/design/widget/H;->c:[I

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/support/design/widget/H;->d:[I

    return-void

    .line 31
    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 33
    :array_1
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method constructor <init>(Landroid/view/View;Landroid/support/design/widget/N;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/support/design/widget/H;->e:Landroid/view/View;

    .line 42
    iput-object p2, p0, Landroid/support/design/widget/H;->f:Landroid/support/design/widget/N;

    .line 43
    return-void
.end method


# virtual methods
.method final a(ILandroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/design/widget/H;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Landroid/support/design/widget/H;->d()Landroid/support/design/widget/i;

    move-result-object v1

    .line 69
    sget v2, Landroid/support/design/R$color;->fab_stroke_top_outer_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget v3, Landroid/support/design/R$color;->fab_stroke_top_inner_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget v4, Landroid/support/design/R$color;->fab_stroke_end_inner_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget v5, Landroid/support/design/R$color;->fab_stroke_end_outer_color:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/support/design/widget/i;->a(IIII)V

    .line 74
    int-to-float v0, p1

    invoke-virtual {v1, v0}, Landroid/support/design/widget/i;->a(F)V

    .line 75
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/design/widget/i;->a(I)V

    .line 76
    return-object v1
.end method

.method abstract a()V
.end method

.method abstract a(F)V
.end method

.method abstract a(I)V
.end method

.method abstract a(Landroid/content/res/ColorStateList;)V
.end method

.method abstract a(Landroid/graphics/PorterDuff$Mode;)V
.end method

.method abstract a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
.end method

.method abstract a([I)V
.end method

.method abstract b()V
.end method

.method abstract b(F)V
.end method

.method abstract c()V
.end method

.method d()Landroid/support/design/widget/i;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Landroid/support/design/widget/i;

    invoke-direct {v0}, Landroid/support/design/widget/i;-><init>()V

    return-object v0
.end method
