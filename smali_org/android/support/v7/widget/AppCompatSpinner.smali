.class public Landroid/support/v7/widget/AppCompatSpinner;
.super Landroid/widget/Spinner;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# static fields
.field private static final a:[I


# instance fields
.field private b:Lcom/arcsoft/hpay100/c/c;

.field private c:Lcom/arcsoft/hpay100/c/c;

.field private d:Landroid/support/v7/internal/widget/Y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/AppCompatSpinner;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010176
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    sget v0, Landroid/support/v7/appcompat/R$attr;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    sget-boolean v0, Landroid/support/v7/internal/widget/Y;->a:Z

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/AppCompatSpinner;->a:[I

    invoke-static {v0, p2, v1, p3, v3}, Lcom/handmark/pulltorefresh/library/internal/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/handmark/pulltorefresh/library/internal/e;

    move-result-object v1

    .line 68
    invoke-virtual {v1, v3}, Lcom/handmark/pulltorefresh/library/internal/e;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/e;->c()Landroid/support/v7/internal/widget/Y;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Lcom/handmark/pulltorefresh/library/internal/e;->f(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/Y;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner;->a(Landroid/content/res/ColorStateList;)V

    .line 74
    :cond_0
    invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/internal/e;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/internal/e;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_3

    .line 77
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/AppCompatSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/e;->c()Landroid/support/v7/internal/widget/Y;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->d:Landroid/support/v7/internal/widget/Y;

    .line 83
    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/e;->b()V

    .line 85
    :cond_2
    return-void

    .line 78
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_1

    .line 1104
    :try_start_0
    const-class v0, Landroid/widget/Spinner;

    const-string v3, "mPopup"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1105
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1107
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1109
    instance-of v3, v0, Landroid/widget/ListPopupWindow;

    if-eqz v3, :cond_1

    .line 1110
    check-cast v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1112
    :catch_0
    move-exception v0

    .line 1113
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 1114
    :catch_1
    move-exception v0

    .line 1115
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->c:Lcom/arcsoft/hpay100/c/c;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->c:Lcom/arcsoft/hpay100/c/c;

    invoke-static {p0, v0}, Landroid/support/v7/internal/widget/Y;->a(Landroid/view/View;Lcom/arcsoft/hpay100/c/c;)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->b:Lcom/arcsoft/hpay100/c/c;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->b:Lcom/arcsoft/hpay100/c/c;

    invoke-static {p0, v0}, Landroid/support/v7/internal/widget/Y;->a(Landroid/view/View;Lcom/arcsoft/hpay100/c/c;)V

    goto :goto_0
.end method

.method private a(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 195
    if-eqz p1, :cond_1

    .line 196
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->b:Lcom/arcsoft/hpay100/c/c;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/arcsoft/hpay100/c/c;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/c/c;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->b:Lcom/arcsoft/hpay100/c/c;

    .line 199
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->b:Lcom/arcsoft/hpay100/c/c;

    iput-object p1, v0, Lcom/arcsoft/hpay100/c/c;->a:Landroid/content/res/ColorStateList;

    .line 200
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->b:Lcom/arcsoft/hpay100/c/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/arcsoft/hpay100/c/c;->d:Z

    .line 204
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatSpinner;->a()V

    .line 205
    return-void

    .line 202
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->b:Lcom/arcsoft/hpay100/c/c;

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    .line 181
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatSpinner;->a()V

    .line 182
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->c:Lcom/arcsoft/hpay100/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->c:Lcom/arcsoft/hpay100/c/c;

    iget-object v0, v0, Lcom/arcsoft/hpay100/c/c;->a:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->c:Lcom/arcsoft/hpay100/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->c:Lcom/arcsoft/hpay100/c/c;

    iget-object v0, v0, Lcom/arcsoft/hpay100/c/c;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner;->a(Landroid/content/res/ColorStateList;)V

    .line 99
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->d:Landroid/support/v7/internal/widget/Y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->d:Landroid/support/v7/internal/widget/Y;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/Y;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner;->a(Landroid/content/res/ColorStateList;)V

    .line 92
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->c:Lcom/arcsoft/hpay100/c/c;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/arcsoft/hpay100/c/c;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/c/c;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->c:Lcom/arcsoft/hpay100/c/c;

    .line 131
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->c:Lcom/arcsoft/hpay100/c/c;

    iput-object p1, v0, Lcom/arcsoft/hpay100/c/c;->a:Landroid/content/res/ColorStateList;

    .line 132
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->c:Lcom/arcsoft/hpay100/c/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/arcsoft/hpay100/c/c;->d:Z

    .line 134
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatSpinner;->a()V

    .line 135
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->c:Lcom/arcsoft/hpay100/c/c;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/arcsoft/hpay100/c/c;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/c/c;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->c:Lcom/arcsoft/hpay100/c/c;

    .line 160
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->c:Lcom/arcsoft/hpay100/c/c;

    iput-object p1, v0, Lcom/arcsoft/hpay100/c/c;->b:Landroid/graphics/PorterDuff$Mode;

    .line 161
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->c:Lcom/arcsoft/hpay100/c/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/arcsoft/hpay100/c/c;->c:Z

    .line 163
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatSpinner;->a()V

    .line 164
    return-void
.end method
