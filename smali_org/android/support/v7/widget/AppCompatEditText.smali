.class public Landroid/support/v7/widget/AppCompatEditText;
.super Landroid/widget/EditText;
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
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100d4

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/AppCompatEditText;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 54
    sget v0, Landroid/support/v7/appcompat/R$attr;->editTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-static {p1}, Landroid/support/v7/internal/widget/W;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    sget-boolean v0, Landroid/support/v7/internal/widget/Y;->a:Z

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/AppCompatEditText;->a:[I

    invoke-static {v0, p2, v1, p3, v3}, Lcom/handmark/pulltorefresh/library/internal/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/handmark/pulltorefresh/library/internal/e;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/internal/e;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/e;->c()Landroid/support/v7/internal/widget/Y;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2}, Lcom/handmark/pulltorefresh/library/internal/e;->f(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/Y;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    invoke-direct {p0, v1}, Landroid/support/v7/widget/AppCompatEditText;->a(Landroid/content/res/ColorStateList;)V

    .line 69
    :cond_0
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/e;->c()Landroid/support/v7/internal/widget/Y;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatEditText;->d:Landroid/support/v7/internal/widget/Y;

    .line 70
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/e;->b()V

    .line 72
    :cond_1
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->c:Lcom/arcsoft/hpay100/c/c;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->c:Lcom/arcsoft/hpay100/c/c;

    invoke-static {p0, v0}, Landroid/support/v7/internal/widget/Y;->a(Landroid/view/View;Lcom/arcsoft/hpay100/c/c;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lcom/arcsoft/hpay100/c/c;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lcom/arcsoft/hpay100/c/c;

    invoke-static {p0, v0}, Landroid/support/v7/internal/widget/Y;->a(Landroid/view/View;Lcom/arcsoft/hpay100/c/c;)V

    goto :goto_0
.end method

.method private a(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 164
    if-eqz p1, :cond_1

    .line 165
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lcom/arcsoft/hpay100/c/c;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/arcsoft/hpay100/c/c;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/c/c;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lcom/arcsoft/hpay100/c/c;

    .line 168
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lcom/arcsoft/hpay100/c/c;

    iput-object p1, v0, Lcom/arcsoft/hpay100/c/c;->a:Landroid/content/res/ColorStateList;

    .line 169
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lcom/arcsoft/hpay100/c/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/arcsoft/hpay100/c/c;->d:Z

    .line 173
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatEditText;->a()V

    .line 174
    return-void

    .line 171
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lcom/arcsoft/hpay100/c/c;

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 150
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatEditText;->a()V

    .line 151
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->c:Lcom/arcsoft/hpay100/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->c:Lcom/arcsoft/hpay100/c/c;

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
    .line 144
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->c:Lcom/arcsoft/hpay100/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->c:Lcom/arcsoft/hpay100/c/c;

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
    .line 83
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatEditText;->a(Landroid/content/res/ColorStateList;)V

    .line 86
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 78
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->d:Landroid/support/v7/internal/widget/Y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->d:Landroid/support/v7/internal/widget/Y;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/Y;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatEditText;->a(Landroid/content/res/ColorStateList;)V

    .line 79
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->c:Lcom/arcsoft/hpay100/c/c;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/arcsoft/hpay100/c/c;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/c/c;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->c:Lcom/arcsoft/hpay100/c/c;

    .line 100
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->c:Lcom/arcsoft/hpay100/c/c;

    iput-object p1, v0, Lcom/arcsoft/hpay100/c/c;->a:Landroid/content/res/ColorStateList;

    .line 101
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->c:Lcom/arcsoft/hpay100/c/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/arcsoft/hpay100/c/c;->d:Z

    .line 103
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatEditText;->a()V

    .line 104
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->c:Lcom/arcsoft/hpay100/c/c;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/arcsoft/hpay100/c/c;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/c/c;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->c:Lcom/arcsoft/hpay100/c/c;

    .line 129
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->c:Lcom/arcsoft/hpay100/c/c;

    iput-object p1, v0, Lcom/arcsoft/hpay100/c/c;->b:Landroid/graphics/PorterDuff$Mode;

    .line 130
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->c:Lcom/arcsoft/hpay100/c/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/arcsoft/hpay100/c/c;->c:Z

    .line 132
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatEditText;->a()V

    .line 133
    return-void
.end method
