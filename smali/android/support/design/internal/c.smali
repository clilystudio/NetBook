.class final Landroid/support/design/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v7/internal/view/menu/MenuItemImpl;

.field private final b:I

.field private final c:I


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/view/menu/MenuItemImpl;II)V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object p1, p0, Landroid/support/design/internal/c;->a:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 464
    iput p2, p0, Landroid/support/design/internal/c;->b:I

    .line 465
    iput p3, p0, Landroid/support/design/internal/c;->c:I

    .line 466
    return-void
.end method

.method public static a(II)Landroid/support/design/internal/c;
    .locals 2

    .prologue
    .line 473
    new-instance v0, Landroid/support/design/internal/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Landroid/support/design/internal/c;-><init>(Landroid/support/v7/internal/view/menu/MenuItemImpl;II)V

    return-object v0
.end method

.method public static a(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Landroid/support/design/internal/c;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 469
    new-instance v0, Landroid/support/design/internal/c;

    invoke-direct {v0, p0, v1, v1}, Landroid/support/design/internal/c;-><init>(Landroid/support/v7/internal/view/menu/MenuItemImpl;II)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Landroid/support/design/internal/c;->a:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Landroid/support/design/internal/c;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Landroid/support/design/internal/c;->c:I

    return v0
.end method

.method public final d()Landroid/support/v7/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Landroid/support/design/internal/c;->a:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Landroid/support/design/internal/c;->a:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/c;->a:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/c;->a:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
