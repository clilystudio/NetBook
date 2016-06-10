.class public final Landroid/support/v7/internal/view/menu/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/support/v7/internal/view/menu/v;


# instance fields
.field private a:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field private b:Landroid/support/v7/app/j;

.field private c:Landroid/support/v7/internal/view/menu/f;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/j;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;)V
    .locals 5

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 57
    new-instance v1, Landroid/support/v7/app/k;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->d()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/k;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v2, Landroid/support/v7/internal/view/menu/f;

    invoke-virtual {v1}, Landroid/support/v7/app/k;->a()Landroid/content/Context;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v2, v3, v4}, Landroid/support/v7/internal/view/menu/f;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/j;->c:Landroid/support/v7/internal/view/menu/f;

    .line 62
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/j;->c:Landroid/support/v7/internal/view/menu/f;

    invoke-virtual {v2, p0}, Landroid/support/v7/internal/view/menu/f;->a(Landroid/support/v7/internal/view/menu/v;)V

    .line 63
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/j;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/j;->c:Landroid/support/v7/internal/view/menu/f;

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->a(Landroid/support/v7/internal/view/menu/u;)V

    .line 64
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/j;->c:Landroid/support/v7/internal/view/menu/f;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/f;->d()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/app/k;->a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/k;

    .line 2282
    iget-object v2, v0, Landroid/support/v7/internal/view/menu/MenuBuilder;->c:Landroid/view/View;

    .line 68
    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v1, v2}, Landroid/support/v7/app/k;->a(Landroid/view/View;)Landroid/support/v7/app/k;

    .line 77
    :goto_0
    invoke-virtual {v1, p0}, Landroid/support/v7/app/k;->a(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/k;

    .line 80
    invoke-virtual {v1}, Landroid/support/v7/app/k;->b()Landroid/support/v7/app/j;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/j;->b:Landroid/support/v7/app/j;

    .line 81
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->b:Landroid/support/v7/app/j;

    invoke-virtual {v0, p0}, Landroid/support/v7/app/j;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 83
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->b:Landroid/support/v7/app/j;

    invoke-virtual {v0}, Landroid/support/v7/app/j;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 84
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 88
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 90
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->b:Landroid/support/v7/app/j;

    invoke-virtual {v0}, Landroid/support/v7/app/j;->show()V

    .line 91
    return-void

    .line 3278
    :cond_0
    iget-object v2, v0, Landroid/support/v7/internal/view/menu/MenuBuilder;->b:Landroid/graphics/drawable/Drawable;

    .line 73
    invoke-virtual {v1, v2}, Landroid/support/v7/app/k;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/k;

    move-result-object v2

    .line 4274
    iget-object v0, v0, Landroid/support/v7/internal/view/menu/MenuBuilder;->a:Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {v2, v0}, Landroid/support/v7/app/k;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/k;

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .prologue
    .line 151
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 5139
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->b:Landroid/support/v7/app/j;

    if-eqz v0, :cond_1

    .line 5140
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->b:Landroid/support/v7/app/j;

    invoke-virtual {v0}, Landroid/support/v7/app/j;->dismiss()V

    .line 157
    :cond_1
    return-void
.end method

.method public final a_(Landroid/support/v7/internal/view/menu/MenuBuilder;)Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/j;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->c:Landroid/support/v7/internal/view/menu/f;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/f;->d()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->a(Landroid/view/MenuItem;I)Z

    .line 169
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->c:Landroid/support/v7/internal/view/menu/f;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/j;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/view/menu/f;->a(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V

    .line 147
    return-void
.end method

.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 94
    const/16 v1, 0x52

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 95
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 97
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/j;->b:Landroid/support/v7/app/j;

    invoke-virtual {v1}, Landroid/support/v7/app/j;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 125
    :goto_0
    return v0

    .line 108
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/j;->b:Landroid/support/v7/app/j;

    invoke-virtual {v1}, Landroid/support/v7/app/j;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/j;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->a(Z)V

    .line 116
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method
